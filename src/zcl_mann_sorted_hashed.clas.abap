CLASS zcl_mann_sorted_hashed DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_sorted_hashed IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

DATA standard_tab TYPE STANDARD TABLE OF /dmo/carrier WITH EMPTY KEY.

DATA sorted_tab   TYPE SORTED TABLE OF /dmo/carrier WITH UNIQUE KEY carrier_id.

DATA hashed_tab   TYPE HASHED TABLE OF /dmo/carrier WITH UNIQUE KEY carrier_id.


SELECT FROM /dmo/carrier FIELDS * INTO TABLE @standard_tab.
SELECT FROM /dmo/carrier FIELDS * INTO TABLE @sorted_tab.
SELECT FROM /dmo/carrier FIELDS * INTO TABLE @hashed_tab.


DATA(row_std) = standard_tab[ 1 ].
out->write( 'Standard Table (Row 1):' ).
out->write( row_std ).

DATA(row_sort) = sorted_tab[ carrier_id = 'AA' ].
out->write( 'Sorted table (key AA):' ).
out->write( row_sort ).

DATA(row_hash) = hashed_tab[ carrier_id = 'AA' ].
out->write( 'hashed table (key AA):' ).
out->write( row_hash ).


  ENDMETHOD.
ENDCLASS.
