CLASS zcl_mann_eml DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_eml IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA update_tab TYPE TABLE FOR UPDATE /DMO/R_AgencyTP.
  update_tab = VALUE #( ( agencyID = '070025'  Name = 'Manoj' ) ).

  MODIFY ENTITIES OF /DMO/R_AgencyTP
         ENTITY /DMO/Agency
         UPDATE FIELDS ( name )
           WITH update_tab.
  COMMIT ENTITIES.

  ENDMETHOD.
ENDCLASS.
