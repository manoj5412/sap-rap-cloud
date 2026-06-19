CLASS zcl_mann_doloop DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_doloop IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
*  constants c_number type i value 3.
*  constants c_number type i value 5.
  constants c_number type i value 10.

data number type i.

    out->write(  `----------------------------------` ).
    out->write(  `Example 1: DO ... ENDDO with TIMES` ).
    out->write(  `----------------------------------` ).

do c_number times.
out->write( 'Hello World' ).
enddo.

    out->write(  `-------------------------------` ).
    out->write(  `Example 2: With Abort Condition` ).
    out->write(  `-------------------------------` ).

    number = c_number * c_number.
    do.
    out->write( |{ sy-index }: Value of number: {  number }| ).
      number = number - 1.
    if number <= c_number.
       exit.
    endif.
   enddo.
  ENDMETHOD.
ENDCLASS.
