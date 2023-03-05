fr_persons 
   person_id number /nn /pk
   full_name vc /nn
   birthdate date
   country vc
   city vc
   phone vc

fr_groups   
   group_id number /nn /pk
   group_name vc /nn 

fr_persons_groups
   person_id number /nn /fk fr_persons
   group_id number /nn /fk fr_groups

fr_relateion_types
   relation_id number /nn /pk 
   relation_name vc /nn 
   relation_description vc
   is_master_detail vc(3) /nn /check yes,no

fr_persons_relations 
   person_id_master number /nn /fk fr_persons 
   person_id_detail number /nn /fk fr_persons
   relation_id number /nn /fk fr_relateion_types
