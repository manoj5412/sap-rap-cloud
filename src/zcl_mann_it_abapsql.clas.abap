CLASS zcl_mann_it_abapsql DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zcl_mann_it_abapsql IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

  types: begin of st_airport,
         airportid type /dmo/airport_id,
         name type /dmo/airport_name,
         end of st_airport.

         types tt_airports type standard table of st_airport with non-unique key airportid.

         data airports type tt_airports.

         data airport_full type /dmo/i_airport.
         select single
         from /dmo/i_airport
         fields airportid, name, city, countrycode
         where city = 'zurich'
         into @airport_full.

    out->write(  `-------------------------------------` ).
    out->write(  `Example 1: SELECT SINGLE ... INTO ...` ).
    out->write(  data = airport_full
                 name = `One of the airports in Zurich (Structure):` ).

    data airports_full type standard table of /DMO/I_Airport
                            with non-unique key AirportID.
    select
      from /DMO/I_Airport
    fields airportid, Name, City, CountryCode
     where City = 'London'
      into table @airports_full.
    out->write(  `------------------------------------` ).
    out->write(  `Example 2: SELECT ... INTO TABLE ...` ).
    out->write(  data = airports_full
                 name = `All airports in London (Internal Table):` ).

    select
    from /dmo/i_airport
    fields *
    where city = 'London'
    into corresponding fields of table @airports.

    out->write(  `---------------------------------------------------------` ).
    out->write(  `Example 3: FIELDS * and INTO CORRESPONDING FIELDS OF TABLE` ).
    out->write(  data = airports
                 name = `Internal Table AIRPORTS:` ).

    select
    from /dmo/i_airport
    fields airportid, name as airportname
    where city = 'London'
    into table @data(airports_inline).

    out->write(  `---------------------------------------------------------` ).
    out->write(  `Example 4: Inline Declaration after INTO TABLE` ).
    out->write(  data = airports_inline
                 name = `Internal Table AIRPORTS_INLINE:` ).

*    select
*      from /DMO/I_Airport
*      fields distinct CountryCode
*     ORDER BY CountryCode
*     INTO TABLE @DATA(countryCodes).
*
*    out->write(  countryCodes ).

     SELECT FROM /DMO/I_Carrier
           FIELDS 'Airline' AS type, AirlineID AS Id, Name
           WHERE CurrencyCode = 'GBP'
    UNION ALL
    SELECT FROM /DMO/I_Airport
           FIELDS 'Airport' AS type, AirportID AS Id,  Name
           WHERE City = 'London'
*    ORDER BY type, Id
    INTO TABLE @DATA(names).
    out->write(  `----------------------------------------------` ).
    out->write(  `Example 5: UNION ALL of Airlines and Airports ` ).
    out->write(  data = names
                 name = `ID and Name of Airlines and Airports:` ).
  ENDMETHOD.
ENDCLASS.
