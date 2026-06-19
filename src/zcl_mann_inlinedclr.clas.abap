CLASS zcl_mann_inlinedclr DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_inlinedclr IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data(my_var1) = 'Hello World' .
  data(my_var2) = 17.
  data(my_var3) = my_var2.
  data(my_var4) = my_var2 + my_var3.

  out->write( my_var1 ).
  out->write( my_var2 ).
  out->write( my_var3 ).
  out->write( my_var4 ).
  ENDMETHOD.
ENDCLASS.
