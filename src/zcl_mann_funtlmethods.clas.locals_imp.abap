*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
class lcl_connection definition.

  public section.

  DATA carrier_id    TYPE /dmo/carrier_id.
  DATA connection_id TYPE /dmo/connection_id.

  methods set_attributes
  importing
  i_carrier_id type /dmo/carrier_id default 'LH'
  i_connection_id type /dmo/connection_id.


  METHODS get_output
  returning value(r_output) TYPE string_table.

  protected section.
  private section.

endclass.

class lcl_connection implementation.

  METHOD set_attributes.
  carrier_id    = i_carrier_id.
  connection_id = i_connection_id.
  ENDMETHOD.
  METHOD get_output.

  APPEND |------------------------------| TO r_output.
  APPEND |Carrier:     { carrier_id    }| TO r_output.
  APPEND |Connection:  { connection_id }| TO r_output.
  ENDMETHOD.
endclass.
