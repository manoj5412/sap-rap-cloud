*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
class lcl_flight_mode1 definition.

  public section.

 "! Type for returning parameter of method {@link .METH:get_airports}
    types tt_airports type stANDARD TABLE OF /dmo/airport
    with nON-UNIQUE key airport_id.
    "! This method returns a list of airports for a given country
    "! There is an authorization check. Possible activities are
    "! contained in the interface {@link zcl_nav_constants }
    "! @parameter iv_country | Country key
    "! @parameter rt_airports | List of airports
    methods get_airports
        importing iv_country type land1
        returning value(rt_airports) type tt_airports.
  protected section.
  private section.

endclass.

class lcl_flight_mode1 implementation.

  method get_airports.
    select *
        from /dmo/airport
        where country = @iv_country
        into table @rt_airports.

  endmethod.

endclass.
