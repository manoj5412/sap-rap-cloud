CLASS zcl_mann_class2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_class2 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data connection type ref to lcl_connection.
  data connections type table of ref to lcl_connection.

  connection = NEW #(  ).
  connection->carrier_id = 'LH'.
  connection->connection_id = '0400'.
  append connection to connections.

  connection = NEW #(  ).
  connection->carrier_id = 'AA'.
  connection->connection_id = '0017'.
  append connection to connections.

    connection = NEW #(  ).
  connection->carrier_id = 'SQ'.
  connection->connection_id = '0001'.
  append connection to connections.

  out->write( connections ).
  ENDMETHOD.
ENDCLASS.
