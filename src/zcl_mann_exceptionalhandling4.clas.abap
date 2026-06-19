CLASS zcl_mann_exceptionalhandling4 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_exceptionalhandling4 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    data number type i value 2000000.
  data number2 type p length 2 decimals 1 value '0.5'.
*  data number2 type i value 0.
  data result type i.

 try.
 result = number / number2.

 catch cx_sy_arithmetic_error.
 out->write( 'Using common super class caught the exception' ).

 endtry.

 out->write( result ).
  ENDMETHOD.
ENDCLASS.
