CLASS zcl_mann_expressions DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_expressions IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data my_var1 type string.
  data my_var2 type i.
  data my_var3 type i.
  data my_var4 type i.
  my_var1 = 'Hello World' .
  my_var2 = 17.
  my_var3 = my_var2.
  my_var4 = my_var2 + my_var3.

  out->write( my_var1 ).
  out->write( my_var2 ).
  out->write( my_var3 ).
  out->write( my_var4 ).
  ENDMETHOD.
ENDCLASS.
