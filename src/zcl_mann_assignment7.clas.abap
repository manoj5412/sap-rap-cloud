CLASS zcl_mann_assignment7 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_assignment7 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA(lo_plane1) = NEW lcl_plane( ).
  DATA(lo_plane2) = NEW lcl_electrical_plane( ).
  out->write( lo_plane1->get_fuel_type( ) ).
    out->write( lo_plane2->get_fuel_type( ) ).

  ENDMETHOD.
ENDCLASS.
