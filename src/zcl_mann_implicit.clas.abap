CLASS zcl_mann_implicit DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_implicit IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data my_int type c length 4.
  data my_pack type p length 8 decimals 2.
  data my_char10 type c length 10 value 'abcdefghij' .
  data my_char4 type c length 4.
  data my_string type string.

*implicit type conversions
  my_int = '1234' .
  my_pack = '-273.15'.
*  my_int = my_char4.
  my_char4 = my_char10.
  my_string = 'Hello  m  ' .
  out->write( my_char4 ).
  out->write( my_string ).
  ENDMETHOD.
ENDCLASS.
