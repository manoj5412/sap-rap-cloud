CLASS zcl_mann_abap_sql DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_abap_sql IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  types: begin of st_connection,
         airport_from_id type /dmo/airport_from_id,
         airport_to_id type /dmo/airport_to_id,
         carrier_name type /dmo/carrier_name,
         end of st_connection.

         types: begin of st_connection_short,
                departureairport type /dmo/airport_from_id,
                destinationairport type /dmo/airport_to_id,
                end of st_connection_short.

         data connection type st_connection.
         data connection_short type st_connection_short.
         data connection_full type /dmo/i_connection.

         select single
         from /dmo/i_connection
         fields departureairport, destinationairport, \_airline-name
         where airlineid = 'LH'
         and connectionid = '0400'
         into @connection.

    out->write(  `------------------------------` ).
    out->write(  `Example 1: Field List and INTO` ).
    out->write( connection ).

    select single
    from /dmo/i_connection
    fields *
    where airlineid = 'LH'
    and connectionid = '0400'
    into @connection_full.

    out->write(  `----------------------------` ).
    out->write(  `Example 2: FIELDS * and INTO` ).
    out->write( connection_full ).

    select single
    from /dmo/i_connection
    fields *
    where airlineid = 'LH'
    and connectionid = '0400'
    into corresponding fields of @connection_short.

    out->write(  `---------------------------------------------------` ).
    out->write(  `Example 3: FIELDS * and INTO CORRESPONDING FIELDS OF` ).
    out->write( connection_short ).

    clear connection.
    select single
      from /dmo/i_Connection
    fields departureairport as airport_from_id,
           \_airline-name   as carrier_name
     where airlineid    = 'LH'
       and connectionid = '0400'
      into corresponding fields of @connection..

    out->write(  `--------------------------------------------------` ).
    out->write(  `Example 4: Aliases and INTO CORRESPONDING FIELDS OF` ).
    out->write( connection ).

    select single
    from /dmo/i_connection
    fields departureairport, destinationairport as arrivalairport, \_airline-name as carrier_name
    where airlineid = 'LH'
    and connectionid = '0400'
    into @data(connection_inline).

    out->write(  `-----------------------------------------` ).
    out->write(  `Example 5: Aliases and Inline Declaration` ).
    out->write( connection_inline ).

      select single
      from (  /dmo/connection as c
      left outer join /dmo/airport as f
        on c~airport_from_id = f~airport_id )
      left outer join /dmo/airport as t
        on c~airport_to_id = t~airport_id
    fields c~airport_from_id, c~airport_to_id,
           f~name as airport_from_name, t~name as airport_to_name
     where c~carrier_id    = 'LH'
      and c~connection_id = '0400'
      into @data(connection_join).

    out->write(  `------------------------------------------` ).
    out->write(  `Example 6: Join of Connection and Airports` ).
    out->write( connection_join ).

  ENDMETHOD.
ENDCLASS.
