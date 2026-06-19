CLASS zcl_mann_processstrng DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_processstrng IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data(amount1) = 10000.
  data(amount2) = 15000.
  data(curr_code) = 'INR' .
  out->write( |Hello World| ).
  out->write( |{ amount1 + amount2 } | ).
  out->write( |Total: { amount1 + amount2 } EUR| ).
  out->write( |Total: { amount1 + amount2 } { curr_code }| ).
  ENDMETHOD.
ENDCLASS.
