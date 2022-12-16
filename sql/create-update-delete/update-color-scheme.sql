/*
    updates color scheme of open apartments in buildings that were renovated more than two years ago
*/

update apartment set bathroom_color = 'Blue', carpet_color = 'Red', appliance_color = 'White' 
where apt_number = (select apt_number 
                     from openold 
                     where openold.apt_number = apartment.apt_number);