CLASS zcl_mann_funtlmethods DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_funtlmethods IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

   DATA connection  TYPE REF TO lcl_connection.
   DATA connections  TYPE TABLE OF REF TO lcl_connection.

   connection = NEW #(  ).
   connection->set_attributes(
   EXPORTING
   i_carrier_id    = 'LH'
   i_connection_id = '0400'
   ).
   APPEND connection TO connections.

   DATA(result) = connection->get_output( ).
   IF connection->get_output(  ) IS NOT INITIAL.

   LOOP AT connection->get_output(  ) INTO DATA(line).
   ENDLOOP.
   out->write( data = connection->get_output( ) name = `  ` ).
   ENDIF.
  ENDMETHOD.
ENDCLASS.
