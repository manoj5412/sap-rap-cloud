*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
class lcx_no_connection definition inheriting from cx_static_check.
  public section.
  interfaces if_t100_message.

  data airlined type /dmo/carrier_id read-only.
  data connectionnumber type /dmo/connection_id read-only.
  METHODS constructor
    IMPORTING
      textid LIKE if_t100_message=>t100key OPTIONAL
      previous LIKE previous OPTIONAL
      airlined TYPE /dmo/carrier_id OPTIONAL
      connectionnumber TYPE /dmo/connection_id OPTIONAL.

  CONSTANTS:
  BEGIN OF lcx_no_connection,
    msgid TYPE symsgid VALUE 'ZCL_MAN_B2U8_EXCEPTS',
    msgno TYPE symsgno VALUE '001',
    attr1 TYPE scx_attrname VALUE 'AIRLINEID',
    attr2 TYPE scx_attrname VALUE 'CONNECTIONNUMBER',
    attr3 TYPE scx_attrname VALUE '',
    attr4 TYPE scx_attrname VALUE '',
  END OF lcx_no_connection..

  protected section.
  private section.

endclass.

class lcx_no_connection implementation.

  method constructor.

    super->constructor( previous = previous ).

    me->airlined = airlined.
    me->connectionnumber = connectionnumber.

    clear me->textid.
    if textid is initial.
      if_t100_message~t100key = if_t100_message=>default_textid.
    else.
      if_t100_message~t100key = textid.
    endif.

  endmethod.

endclass.
