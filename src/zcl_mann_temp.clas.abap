CLASS zcl_mann_temp DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_temp IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  DATA : variable TYPE c length 5 value 'MANOJ' .
  out->write( variable ).
  ENDMETHOD.
ENDCLASS.
