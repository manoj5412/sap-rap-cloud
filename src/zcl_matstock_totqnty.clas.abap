CLASS zcl_matstock_totqnty DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_matstock_totqnty IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  DATA: lt_result TYPE TABLE OF zdb_stock_items.

SELECT
    material_id,
    SUM( quantity ) AS total_quantity
  FROM zdb_stock_items
  GROUP BY material_id
  HAVING SUM( quantity ) > 100
  INTO TABLE @DATA(lt_qty).

out->write( lt_qty ).
  ENDMETHOD.
ENDCLASS.
