CLASS zcl_avgcalc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_avgcalc IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  SELECT
    material_id,
    AVG( priceperunit ) AS avg_price
  FROM zdb_stock_items
  GROUP BY material_id
  INTO TABLE @DATA(lt_avg).

out->write( lt_avg ).
  ENDMETHOD.
ENDCLASS.
