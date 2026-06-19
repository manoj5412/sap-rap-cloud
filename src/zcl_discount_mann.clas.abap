CLASS zcl_discount_mann DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_discount_mann IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA:
    lt_travel   TYPE TABLE OF /dmo/travel,
    lt_discount TYPE TABLE OF zdiscount_mann.

  SELECT *
    FROM /dmo/travel
    WHERE status = 'A'
    INTO TABLE @lt_travel.

  LOOP AT lt_travel INTO DATA(ls_travel).

    APPEND VALUE #(
      travelid      = ls_travel-travel_id
      carrierid     = ls_travel-agency_id
      description   = ls_travel-description
      originalprice = ls_travel-total_price
      discountprice = ls_travel-total_price * 90 / 100
      status        = ls_travel-status
    ) TO lt_discount.

  ENDLOOP.

  INSERT zdiscount_mann FROM TABLE @lt_discount.

  out->write( |Records Inserted: { lines( lt_discount ) }| ).

  ENDMETHOD.
ENDCLASS.
