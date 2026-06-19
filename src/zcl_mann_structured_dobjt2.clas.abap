CLASS zcl_mann_structured_dobjt2 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_structured_dobjt2 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  types:begin of st_connection,
        airport_from_id type /dmo/airport_from_id,
        airport_to_id type /dmo/airport_to_id,
        carrier_name type /dmo/carrier_name,
        end of st_connection.

        types: begin of st_connection_nested,
               airport_from_id type /dmo/airport_from_id,
               airport_to_id type /dmo/airport_to_id,
               message type symsg,
               carrier_name type /dmo/carrier_name,
               end of st_connection_nested.

   data connection type st_connection.
   data connection_nested type st_connection_nested.

   connection-airport_from_id = 'ABC'.
   connection-airport_to_id = 'XYZ'.
   connection-carrier_name = 'My Airline'.

   connection_nested-message-msgty = 'E'.
   connection_nested-message-msgid = 'ABC'.
   connection_nested-message-msgno = '123'.

   out->write( connection ).
   out->write( connection_nested ).

   clear connection.
   connection = value #( airport_from_id = 'ABC'
                          airport_to_id   = 'XYZ'
                          carrier_name    = 'My Airline'
                        ).
   connection_nested = value #( airport_from_id = 'ABC'
              airport_to_id = 'XYZ'
              message = value #( msgty = 'E'
                                 msgid = 'ABC'
                                 msgno = '123' )
   carrier_name    = 'My Airline' ).

   connection_nested = connection.
    out->write(  `------------------------------------------------------------` ).
    out->write(  `Example 3: Wrong Result after direct assignment` ).
    out->write( data = connection
                name = 'Source Structure:' ).

    out->write(  |component connection_nested-message-msgid: { connection_nested-message-msgid }| ).
    out->write( |component connection_nested-carrier_name : { connection_nested-carrier_name  }| ).

     CLEAR connection_nested.
    connection_nested = CORRESPONDING #(  connection ).  "
    out->write(  `------------------------------------------------------------` ).
    out->write(  `Example 4: Correct Result after assignment with CORRESPONDING` ).
    out->write( data = connection
    name = `Source Structure:` ).
    out->write( |Component connection_nested-message-msgid: { connection_nested-message-msgid }| ).
    out->write( |Component connection_nested-carrier_name : { connection_nested-carrier_name  }| ).
  ENDMETHOD.
ENDCLASS.
