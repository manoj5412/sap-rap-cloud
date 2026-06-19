CLASS zcl_mann_assignment7_4 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_assignment7_4 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  DATA(lo_doc) = NEW lcl_pdf_document( ).

  out->write( 'Printing PDF Document' ).

  ENDMETHOD.
ENDCLASS.
