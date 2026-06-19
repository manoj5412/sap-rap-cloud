CLASS zcl_mann_class3 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_class3 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  constants c_carrier_id type /dmo/carrier_id  value 'LH'.
  constants c_connection_id type /dmo/connection_id value '0400'.

  data connection type ref to lcl_connection.
  data connections type table of ref to lcl_connection.

  connection = new #(  ).

  out->write( |i_carrier_id = '{ c_carrier_id }'| ).
  out->write( |i_connection_id = '{ c_connection_id }'| ).

  try.
  connection->set_attributes(
  exporting
  i_carrier_id = c_carrier_id
  i_connection_id = c_connection_id
  ).

  append connection to connections.
  out->write( 'Method call successful' ).
  catch cx_abap_invalid_value.
  out->write( 'Method call failed' ).
  endtry.
  ENDMETHOD.
ENDCLASS.
