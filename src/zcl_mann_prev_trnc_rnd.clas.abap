CLASS zcl_mann_prev_trnc_rnd DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_prev_trnc_rnd IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data var_pack type p length 3 decimals 2.

  var_pack = 1 / 8.
  out->write(
  |1/8 = { var_pack number = user }| ).

  try.
  var_pack = exact #( 1 / 8 ).
  catch cx_sy_conversion_error.
  out->write(
  |1/8 has to be rounded. Exact triggered an exception| ).
  endtry.
  ENDMETHOD.
ENDCLASS.
