#############for implement view##################
use innodb;
#create table temp_a as SELECT p.personid, p.firstname, p.lastname, p.username, p.email, w.website_id, w.wname, w.visits, w.wupdate , w.developerwebid from person p join website w on developer_person_generalization = developerwebid;
#create table temp_b as SELECT t.*, wr.webrole from temp_a t join website_role wr on website_id = wrwebsiteid  and developerwebid=developerwid;
create table temp_a as SELECT p.personid, p.firstname, p.lastname, p.username, p.email,p.developer_person_generalization as developerid1, wrwebsiteid, wr.webrole from person p join website_role wr on developer_person_generalization = developerwid;
create table temp_b as SELECT t.*, w.wname, w.visits, w.wupdate from temp_a t join website w on website_id = wrwebsiteid;
drop table temp_a;
create table temp_c as SELECT t.*, wp.webpriviledge from temp_b t join website_priviledge wp on wrwebsiteid = wpwebsiteid and developerid1 = developerid;
drop table temp_b;
create table temp_d as SELECT t.*, p.page_id as pid_use, p.title, p.views, p.updated from temp_c t left join page p on wrwebsiteid = websitepid;
drop table temp_c;
create table temp_e as SELECT t.*, p.role_id from temp_d t left join page_role p on  developerid1 = developer_id and pid_use = page_id;
drop table temp_d;
create table implement_view as SELECT t.*, p.pagepriviledgeid from temp_e t left join page_priviledge p on developerid1 = ppdeveloperid and pid_use = pppageid;
drop table temp_e;
select * from implement_view;
#############for implement view##################
#1
	#a retrive all developer
	select distinct firstname, lastname from implement_view;
	#b Retrieve a developer with id equal to 34 
    select distinct personid, firstname, lastname from implement_view where personid = 34;
    #c Retrieve all developers who have a role in Twitter other than owner 
    select distinct personid, firstname, lastname, webrole from implement_view where wname = 'Twitter' and webrole != 1; #role = 1 is owner
    #d Retrieve all developers who are page reviewers of pages with less than 300000 visits
    select distinct personid, firstname, lastname, wname, pid_use, role_id, title, views  from implement_view where views < 300000 and role_id = 5; 
    #e Retrieve the writer developer who added a heading widget to CNET's home page 
    select distinct personid, firstname, lastname, wname, pid_use, role_id, title  from implement_view where role_id = 3 and wname = 'CNET' and title = 'Home';
    
#2
	#a Retrieve the website with the least number of visits
    select 	wrwebsiteid, wname, min(visits) from implement_view;
    #b Retrieve the name of a website whose id is 678 
	select 	website_id, wname from website where website_id = 678;
    #c Retrieve all websites with videos reviewed by bob
    select 	DISTINCT wrwebsiteid, wname from implement_view where firstname = 'Bob' and role_id = 5 and title = 'Preferences';
    #d Retrieve all websites where alice is an owner 
    select 	DISTINCT wrwebsiteid, wname from implement_view where firstname = 'Alice' and webrole = 1;
    #e Retrieve all websites where charlie is an admin and get more than 6000000 visits
    select 	DISTINCT wrwebsiteid, wname, visits from implement_view where firstname = 'Charlie' and webrole = 2 and visits > 6000000;

#3
	#a Retrieve the page with the most number of views
	select 	DISTINCT page_id, title, max(views) from page;
    #b Retrieve the title of a page whose id is 234
    select 	DISTINCT page_id, title from page where page_id = 234;
    #c Retrieve all pages where alice is an editor 
    select 	DISTINCT pid_use, title from implement_view where firstname = 'Alice' and role_id = 4;
    #d Retrieve the total number of pageviews in CNET
	select sum(DISTINCT views) as all_views_of_CNET from implement_view where wname = 'CNET'; 
    #e Retrieve the average number of page views in the Website Wikipedia
	select avg(views) as average_views_of_Wikipedia from implement_view where wname = 'Wikipedia';

#4
	#a Retrieve all widgets in CNET's Home page
    select widget_id, name, DTYPE from widget where pageid in (select pid_use from implement_view where wname = 'CNET' and title = 'Home');
    #b Retrieve all youtube widgets in CNN
    select widget_id, name, DTYPE from widget where pageid in (select pid_use from implement_view where wname = 'CNN') and DTYPE = 'youtube';
    #c Retrieve all image widgets on pages reviewed by Alice
    select widget_id, name, DTYPE from widget where pageid in (select pid_use from implement_view where firstname = 'Alice' and role_id = 5) and DTYPE = 'image';
    #d Retrieve how many widgets are in Wikipedia
    select count(widget_id) from widget where pageid in (select pid_use from implement_view where wname = 'Wikipedia');
    
#5
	#a Retrieve the names of all the websites where Bob has DELETE privileges.
    select DISTINCT wname from implement_view where firstname = 'Bob' and webpriviledge = 4;
    #b Retrieve the names of all the pages where Charlie has CREATE privileges
    select DISTINCT  title from implement_view where firstname = 'Charlie' and pagepriviledgeid = 1;
    
####################Implement Updates################
#1 (3pts.) Update developer - Update Charlie's primary phone number to 333-444-5555
update phone set phone = '333-444-5555' where pho_person_id = (select personid from person where firstname = 'Charlie') and ph_primary = 1 ;
#2 Update widget - Update the relative order of widget head345 on the page so that it's new order is 3. Note that the other widget's order needs to update as well
update widget set widget_order = 3 where name = head345; 
update widget set widget_order = 4 where name = intro456;
update widget set widget_order = 5 where name = image345;  
#3 Update page - Append 'CNET - ' to the beginning of all CNET's page titles
update page set title = concat('CNET - ',title) where websitepid = (select website_id from website where wname = 'CNET');
#4 Update roles - Swap Charlie's and Bob's role in CNET's Home page
set @var1 = (select DISTINCT webrole from implement_view where firstname = 'Charlie' and wname = 'CNET');
set @var2 = (select DISTINCT webrole from implement_view where firstname = 'Bob' and wname = 'CNET');
update website_role set webrole = @var2 where developerwid = (select developer_person_generalization from person where firstname = 'Charlie') and wrwebsiteid = (select website_id from website where wname = 'CNET');
update website_role set webrole = @var1 where developerwid = (select developer_person_generalization from person where firstname = 'Bob') and wrwebsiteid = (select website_id from website where wname = 'CNET');

#################Implement delete####################
#1 Delete developer - Delete Alice's primary address
delete from address where add_person_id = (select personid from person where firstname = 'Alice') and add_primary = 1;
#2 Delete widget - Remove the last widget in the Contact page. The last widget is the one with the highest value in the order field
delete from widget where widget_order = (select max(widget_order) from widget);
#3 Delete page - Remove the last updated page in Wikipedia
delete from page where updated = (select max(updated) from page) and websitepid = (select website_id from website where wname = 'Wikipedia');
#4 Delete website - Remove the CNET web site, as well as all related roles and privileges relating developers to the Website and Pages
delete from page_role where page_id in (select page_id from page where websitepid = (select website_id from website where wname = 'CNET'));
delete from widget where pageid in (select page_id from page where websitepid = (select website_id from website where wname = 'CNET'));
delete from page where websitepid = (select website_id from website where wname = 'CNET');
delete from website_role where wrwebsiteid = (select website_id from website where wname = 'CNET');
delete from website where wname = 'CNET';
