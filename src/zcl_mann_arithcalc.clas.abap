CLASS zcl_mann_arithcalc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_arithcalc IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  types t_result type p length 8 decimals 2.
*  types t_result type p length 8 decimals 0.
*  types t_result type i.
  data result type t_result.

*  result = 2 + 3.
*   result = 2 - 3.
*  result = 2 * 3.
*  result = 2 / 3.

*  result = sqrt( 2 ).
*  result = ipow( base = 2 exp = 3 ).

*  result = ( 8 * 7 - 6 ) / ( 5 + 4 ).
  result = 8 * 7 - 6 / 5 + 4 .
  out->write( result ).
  ENDMETHOD.
ENDCLASS.
