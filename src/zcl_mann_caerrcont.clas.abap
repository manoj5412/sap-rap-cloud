CLASS zcl_mann_caerrcont DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_caerrcont IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

*  select from /dmo/carrier
*  inner join /dmo/connection
*  on /dmo/carrier~carrier_id = /dmo/connection~carrier_id
*
*  fields /dmo/carrier~carrier_id,
*  /dmo/carrier~name      as carrier_name,
*  /dmo/connection~connection_id,
*  /dmo/connection~airport_from_id,
*  /dmo/connection~airport_to_id
*
*  where /dmo/carrier~currency_code = 'EUR'
*  into table @data(it_flights).
*
*  out->write( it_flights ).

*select from /dmo/carrier as a
*  inner join /dmo/connection as c
*    ON a~carrier_id = c~carrier_id
*  fields
*    a~carrier_id,
*    a~name AS carrier_name,
*    c~connection_id,
*    c~airport_from_id,
*    c~airport_to_id
*  where a~currency_code = 'EUR'
*  into table @data(lt_result).
*
*out->write( lt_result ).


*select from /dmo/connection as a
*inner join /dmo/connection as b
*on a~airport_to_id = b~airport_from_id
*and a~airport_from_id <> b~airport_to_id
*
*fields a~airport_from_id,
*concat_with_space( a~carrier_id , a~connection_id , 1 ) as first_leg,
*a~airport_to_id as via_airport_id,
*
*concat_with_space( b~carrier_id , b~connection_id, 1 ) as second_leg,
*b~airport_to_id
*
*where a~airport_from_id = 'FRA'
*into table @data(it_result).
*
*out->write( it_result ).


*select from /dmo/carrier as a left outer join /dmo/connection as c
*on a~carrier_id = c~carrier_id
*
*fields a~carrier_id,
*name as carrier_name,
*connection_id,
*airport_from_id,
*airport_to_id
*where a~currency_code = 'EUR'
*into table @data(it_result).
*
*out->write( it_result ).


*select from /dmo/carrier as a
*left outer join /dmo/connection as c
*on a~carrier_id = c~carrier_id
*FIELDS
*        a~carrier_id,
*        a~name AS carrier_name,
*        c~connection_id,
*        c~airport_from_id,
*        c~airport_to_id
*      INTO TABLE @DATA(lt_result1).
*
*    out->write( 'Example 1: Carrier + Connection' ).
*    out->write( lt_result1 ).



select from ( /dmo/carrier as a
left outer join /dmo/connection as c
on a~carrier_id = c~carrier_id
)
left outer join /dmo/airport as apf
on c~airport_from_id = apf~airport_id
FIELDS
        a~carrier_id,
        a~name AS carrier_name,
        c~connection_id,
        c~airport_from_id,
        apf~name AS airport_from_name
      INTO TABLE @DATA(lt_result2).

    out->write( 'Example 2: Carrier + Connection + From Airport' ).
    out->write( lt_result2 ).



select from ( ( /dmo/carrier as a
left outer join /dmo/connection as c
on a~carrier_id = c~carrier_id
)
left outer join /dmo/airport as apf
on c~airport_from_id = apf~airport_id
)
left outer join /dmo/airport as apt
on c~airport_to_id = apt~airport_id
 FIELDS
        a~carrier_id,
        a~name AS carrier_name,
        c~connection_id,
        c~airport_from_id,
        apf~name AS airport_from_name,
        c~airport_to_id,
        apt~name AS airport_to_name
      INTO TABLE @DATA(lt_result3).

    out->write( 'Example 3: Complete Join' ).
    out->write( lt_result3 ).


  ENDMETHOD.
ENDCLASS.
