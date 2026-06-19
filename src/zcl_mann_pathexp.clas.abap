CLASS zcl_mann_pathexp DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun .
ENDCLASS.



CLASS zcl_mann_pathexp IMPLEMENTATION.

  METHOD if_oo_adt_classrun~main.

   SELECT
  connid,
  carrid,
 \_carrier-currcode,
 \_carrier-name
  from ZI_conn_mann
  INTO TABLE @DATA(lt_data).
  out->write( lt_data ).

  ENDMETHOD.

ENDCLASS.
