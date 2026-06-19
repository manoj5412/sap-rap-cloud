CLASS zcl_mann_localtypes DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_localtypes IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
* LOCAL TYPE
*  types my_type type p length 3 decimals 2.
*  types my_type type i.
*  types my_type type string.
  types my_type type n length 10.

  data my_variable type my_type.

  out->write( 'my_variable (type my_type)' ).
  out->write( my_variable ).
*GLOBAL TYPE
  data airport type /dmo/airport_id value 'AFN' .
  out->write( 'airport (type/dmo/airport_id ) ' ).
  out->write( airport ).

*Constants
  constants c_text type string value 'Hello World' .
  constants c_number type i value 12345.

  out->write( 'c_text (TYPE STRING)' ).
  out->write( c_text ).
  out->write( '----------' ).

*Literals
  out->write( '12345     ' ).
  out->write( '12345     ' ).
  out->write( 12345        ).
  ENDMETHOD.
ENDCLASS.
