CLASS zcl_mann_ass5 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_ass5 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
    DATA: lv_email TYPE /dmo/email_address.

*  select
*          c~name,
*          co~airport_from_id
*          from /dmo/carrier as c
*          inner join /dmo/connection as co
*          on c~carrier_id = co~carrier_id
*          into table @data(result).
*
*          loop at result into data(result1).
*
*          out->write( |{ result1-name } { result1-airport_from_id }| ).
*          endloop.



*DATA lv_phone TYPE /dmo/phone_number.
*
*    SELECT SINGLE phone_number
*      FROM /dmo/customer
*      WHERE customer_id = '000001'
*      INTO @lv_phone.
*
*    IF matches(
*         val   = lv_phone
*         regex = '^\+[0-9]+$'
*          ).
*
*      out->write( |Valid Phone Number: { lv_phone }| ).
*
*    ELSE.
*
*      out->write( |Invalid Phone Number: { lv_phone }| ).
*
*    ENDIF.



DATA: lv_connection_id TYPE /dmo/connection-connection_id,
          lv_new_id        TYPE string.

    SELECT SINGLE connection_id
      FROM /dmo/connection
      INTO @lv_connection_id.

    IF lv_connection_id+0(2) = '00'.
      lv_new_id = substring(
                    val = lv_connection_id
                    off = 2 ).

      out->write( |Original ID : { lv_connection_id }| ).
      out->write( |New ID      : { lv_new_id }| ).

    ELSE.

      out->write( |No leading zeros found : { lv_connection_id }| ).

    ENDIF.

  ENDMETHOD.
ENDCLASS.
