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
    