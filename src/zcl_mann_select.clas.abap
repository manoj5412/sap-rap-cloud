CLASS zcl_mann_select DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_select IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.
  data airport_from_id type /dmo/airport_from_id.
  data airport_to_id type /dmo/airport_to_id.
  data airports type table of /dmo/airport_from_id.

  select single
  from /dmo/connection
  fields airport_from_id
  where carrier_id = 'LH'
  and connection_id = '0400'
  into @airport_from_id.

  out->write( `----------`  ).
  out->write( `Example 1:`  ).
  out->write( |Fligt LH 400 departs from { airport_from_id }.|  ).

  select single
  from /dmo/connection
  fields airport_from_id, airport_to_id
  where carrier_id = 'LH'
  and connection_id = '0400'
  into ( @airport_from_id, @airport_to_id ).

  out->write( `----------`  ).
  out->write( `Example 2:`  ).
  out->write(  |Flight LH 400 flies from { Airport_from_id } to { airport_to_id }| ).

  select single
  from /dmo/connection
  fields airport_from_id
  where carrier_id = 'XX'
  and connection_id = '1234'
  into @airport_from_id.

  if sy-subrc = 0.
      out->write( `----------`  ).
      out->write( `Example 3:`  ).

      out->write( |Flight XX 1234 departs from {  airport_from_id }.| ).
      else.

      out->write( `----------`  ).
      out->write( `Example 3:`  ).

      out->write( |There is no flight XX 1234, but still airport_from_id = {  airport_from_id }!| ).
    ENDIF.
  ENDMETHOD.
ENDCLASS.
