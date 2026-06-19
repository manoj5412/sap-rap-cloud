CLASS zcl_mann_hw DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_hw IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA(text) = '##ABAP_is_cool'.

    out->write( |to_upper            : { to_upper( text ) }| ).
    out->write( |to_mixed            : { to_mixed( val = text sep = '_' ) }| ).
    out->write( |reverse             : { reverse( text ) }| ).
    out->write( |shift_left          : { shift_left( val = text places = 2 ) }| ).
    out->write( |shift_left circular : { shift_left( val = text circular = 2 ) }| ).
    out->write( |substring           : { substring( val = text off = 2 len = 4 ) }| ).
    out->write( |substring_after     : { substring_after( val = text sub = 'is' ) }| ).
    out->write( |substring_from      : { substring_from( val = text sub = 'is' ) }| ).
    out->write( |segment index 2     : { segment( val = text sep = '_' index = 2 ) }| ).
    out->write( |segment index 3     : { segment( val = text sep = '_' index = 3 ) }| ).

  ENDMETHOD.
ENDCLASS.
