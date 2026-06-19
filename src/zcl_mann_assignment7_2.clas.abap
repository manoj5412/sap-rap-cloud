CLASS zcl_mann_assignment7_2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_assignment7_2 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA(lo_bank) = NEW lcl_bank( ).

  lo_bank->deposit( iv_amount = 100 ).
  lo_bank->deposit( iv_amount = 50 ).
  lo_bank->deposit( iv_amount = -20 ).

  out->write( lo_bank->get_balance( ) ).


  ENDMETHOD.
ENDCLASS.
