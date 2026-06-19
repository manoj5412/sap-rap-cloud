CLASS zcl_mann_assignment7_3 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_assignment7_3 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA(lo_emp) = NEW lcl_employee( ).
  lo_emp->set_name( 'MANOJ' ).
  lo_emp->set_id( 420 ).
  out->write( lo_emp->name ).
  out->write( lo_emp->employee_id ).


  ENDMETHOD.
ENDCLASS.
