use innodb;
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
