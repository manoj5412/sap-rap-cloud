CLASS zcl_mann_dict_struct DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_dict_struct IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA ls_person TYPE zstruct_include.

  ls_person-first_name  = 'Manoj'.
  ls_person-last_name   = 'M'.
  ls_person-street      = 'MG Road'.
  ls_person-postal_code = '560001'.
  ls_person-city        = 'Bangalore'.
  ls_person-country_code = 'IN'.
  ls_person-status      = 'A'.

  out->write( ls_person ).
  ENDMETHOD.
ENDCLASS.
