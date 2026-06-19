CLASS zcl_mann_intrltable DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_intrltable IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data number type i value 1234.
  data numbers type table of i.

  append 1234 to numbers.
  append 567 to numbers.
  append 12 to numbers.
  append 8910 to numbers.
  append 11213 to numbers.
  append 1911 to numbers.
  append 0312 to numbers.

  out->write( numbers ).
  ENDMETHOD.
ENDCLASS.
