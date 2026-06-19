CLASS zcl_testclass DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_testclass IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  SELECT *
  FROM zi_stock_inventory
  INTO TABLE @DATA(lt_inventory).

out->write( lt_inventory ).
  ENDMETHOD.
ENDCLASS.
