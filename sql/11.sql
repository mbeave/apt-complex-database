
delete from special_features 
where special_features = (select max(special_features) 
                           from (select special_features, count(*) number_features 
                                 from new_building natural join apartment natural join special_features 
                                 group by special_features));