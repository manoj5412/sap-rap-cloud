CLASS zcl_mann_workareapractice DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_workareapractice IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*  TYPES: BEGIN OF st_carrier,
*         carrier_id    TYPE /dmo/carrier_id,
*         currency_code TYPE /dmo/currency_code,
*         name          TYPE /dmo/carrier_name,
*       END OF st_carrier.
*
*DATA CARRIERS TYPE STANDARD TABLE OF ST_CARRIER with non-UNIQUE key carrier_id.
*data carrier like line of carriers.
*
*select frOM /dmo/carrier
*       fielDS carrier_id, currency_code, name
*       into tabLE @carriers.
*
*loop at carriers into carrier where currency_code is initIAL.
*
*  carrier-currency_code = 'USD'.
*
*  MODIFY carriers from carrier.
*  endloop.
*  out->write( carriers ).



 TYPES: BEGIN OF st_carrier,
         carrier_id    TYPE /dmo/carrier_id,
         currency_code TYPE /dmo/currency_code,
         name          TYPE /dmo/carrier_name,
       END OF st_carrier.

DATA CARRIERS TYPE STANDARD TABLE OF ST_CARRIER with non-UNIQUE key carrier_id.
data carrier like line of carriers.
field-SYMBOLS <carrier> like line of carriers.

select frOM /dmo/carrier
       fielDS carrier_id, currency_code, name
       into tabLE @carriers.

loop at carriers assigning <carrier> where currency_code is initIAL.

  carrier-currency_code = 'USD'.
  <carrier>-currency_code = 'USD'.

  MODIFY carriers from carrier.
  endloop.
  out->write( carriers ).



  ENDMETHOD.
ENDCLASS.
