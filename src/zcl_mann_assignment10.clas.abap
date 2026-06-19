"! <p class="shorttext synchronized"> ABAP doc demonstration</p>
CLASS zcl_mann_assignment10 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_assignment10 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data(lo_flight) = new lcl_flight_mode1(  ).
        data(lt_airports) = lo_flight->get_airports(
                             iv_country = 'US' ).

           out->write( |Number of Airports: { lines( lt_airports ) }| ).

           loop AT lt_airports into data(ls_airport).
                out->write( |{ ls_airport-airport_id } - { ls_airport-name }| ).
           ENDLOOP.
  ENDMETHOD.
ENDCLASS.
