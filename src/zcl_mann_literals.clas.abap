CLASS zcl_mann_literals DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_literals IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  SELECT *
  FROM /dmo/travel
  WHERE status = 'A'
  INTO TABLE @DATA(lt_travel).
out->write( lt_travel ).

  ENDMETHOD.
ENDCLASS.
