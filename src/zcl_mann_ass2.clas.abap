CLASS zcl_mann_ass2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_ass2 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
**  constants lv_score type i value 90.
**  constants lv_score type i value 80.
*  constants lv_score type i value 50.
*
*  if lv_score >= 90.
*  out->write( 'Grade A' ).
*  elseif lv_score >= 70 and lv_score <= 89.
*  out->write( 'Grade B' ).
*  else.
*  out->write( 'Grade c' ).
*  endif.

  data(num1) = 10.
  data(num2) = 0.

  try.
  data(result) = num1 / num2.
  out->write( result ).

  catch cx_sy_zerodivide.
  out->write( 'Error: Cannot divide by zero.' ).
  endtry.
  ENDMETHOD.
ENDCLASS.
