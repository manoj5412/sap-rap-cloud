CLASS zcl_mann_pitfalls_tc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_pitfalls_tc IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data var_string type string.
  data var_int type i.
  data var_data type d.

  var_string = '12345'.
  var_int = var_string.

  var_string = '20230101'.
  var_data = var_string.

  ENDMETHOD.
ENDCLASS.
