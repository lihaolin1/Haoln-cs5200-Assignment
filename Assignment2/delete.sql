use innodb;
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