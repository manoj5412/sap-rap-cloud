CLASS zcl_mann_it_secondarykeys DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_it_secondarykeys IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  data connections type sorted table of /dmo/connection
  with non-unique key carrier_id connection_id
  with non-unique sorted key k_from components airport_from_id.

  select from /dmo/connection
  fields *
  into table @connections.

  data(connection) = connections[ key k_from airport_from_id = 'SIN' ].

  loop at connections into connection.
  out->write( connection ).
  endloop.

  ENDMETHOD.
ENDCLASS.
