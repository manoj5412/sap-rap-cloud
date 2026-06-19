CLASS zcl_mann_clear DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_clear IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data my_var1 type i.
  data my_var2 type i value 1234.
  data my_var3 type string.

  my_var1 = my_var2.
  my_var3 = 'Hello World' .

*  clear my_var1.
*  clear my_var2.
  clear my_var3.
  out->write( my_var1 ).
  out->write( my_var2 ).
  out->write( my_var3 ).
  ENDMETHOD.
ENDCLASS.
