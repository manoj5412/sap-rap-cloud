CLASS zcl_mann_exceptionalhandling5 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_exceptionalhandling5 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    data number type i value 2000000000.
  data number2 type p length 2 decimals 1 value '0.5'.
  data result type i.

 try.
 result = number / number2.

 catch cx_root.
 out->write( 'Caught any exception using cx_root' ).

 endtry.

 out->write( result ).
  ENDMETHOD.
ENDCLASS.
