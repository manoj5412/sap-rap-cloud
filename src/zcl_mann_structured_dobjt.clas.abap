CLASS zcl_mann_structured_dobjt DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_structured_dobjt IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data connection_full type /dmo/i_connection.

  select single
  from /dmo/i_connection
  fields airlineid, connectionid, departureairport, destinationairport, departuretime, arrivaltime, distance, distanceunit
  where airlineid = 'LH'
  and connectionid = '0400'
  into @connection_full.

    out->write(  `--------------------------------------` ).
    out->write(  `Example 1: CDS View as Structured Type` ).
    out->write( connection_full ).

    data message type symsg.

    out->write(  `---------------------------------` ).
    out->write(  `Example 2: Global Structured Type` ).
    out->write( message ).

    types: begin of st_connection,
           airport_from_id type /dmo/airport_from_id,
           airport_to_id type /dmo/airport_to_id,
           carrier_name type /dmo/carrier_name,
           end of st_connection.

           data connection type st_connection.

           select single
           from /dmo/i_connection
           fields departureairport, destinationairport, \_airline-name
           where airlineid = 'LH'
           and connectionid = '0400'
           into @connection.

    out->write(  `---------------------------------------` ).
    out->write(  `Example 3: Local Structured Type` ).
    out->write( connection ).

    types: begin of st_nested,
           airport_from_id type /dmo/airport_from_id,
           airport_to_id type /dmo/airport_to_id,
           message type symsg,
           carrier_name type /dmo/carrier_name,
           end of st_nested.

           data connection_nested type st_nested.

    out->write(  `---------------------------------` ).
    out->write(  `Example 4: Nested Structured Type` ).
    out->write( connection_nested ).
  ENDMETHOD.
ENDCLASS.
