CLASS zcl_mann_intrltable2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_intrltable2 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data number type i value 1234.
  data numbers type table of i.
    out->write(  `----------------` ).
    out->write(  `Example 1: APPEND` ).
    out->write(  `-----------------` ).
  append 5678 to numbers.
  append number to numbers.
  append 2 * number to numbers.
  append 3 * number to numbers.

    out->write(  `----------------` ).
    out->write(  `Example 2: CLEAR` ).
    out->write(  `----------------` ).
*  clear numbers.
  out->write( numbers ).

    out->write(  `---------------------------` ).
    out->write(  `Example 3: Table Expression` ).
    out->write(  `---------------------------` ).
  number = numbers[ 2 ].

  out->write( |content of row 2: { number }|   ).
  out->write( |content of row 1: { numbers[ 1 ]  }| ).

    out->write(  `---------------------------` ).
    out->write(  `Example 4: LOOP ... ENDLOOP` ).
    out->write(  `---------------------------` ).
  loop at numbers into number.
    out->write( |row: { sy-tabix  } content { number }| ).
  endloop.

    out->write(  `-----------------------------` ).
    out->write(  `Example 5: Inline Declaration` ).
    out->write(  `-----------------------------` ).
  loop at numbers into data(number_inline).
   out->write( |Row:{ sy-tabix } content { number_inline }| ).
  endloop.
  ENDMETHOD.
ENDCLASS.
