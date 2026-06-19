*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
class lcl_cricket definition abstract.

  public section.
    METHODS :
    constructor
      IMPORTING
        i_player TYPE string,

        get_match_type abstract returning value(rv_type) type string,
        get_player_name returning value(rv_name) type string.
  protected section.
  data player type string.
  private section.

endclass.

class lcl_cricket implementation.

  method constructor.

    me->player = i_player.

  endmethod.

  method get_player_name.
  rv_name = player.
  endmethod.

endclass.

class lcl_test_match definition inheriting from lcl_cricket.

  public section.
    METHODS: get_match_type REDEFINITION.
  protected section.
  private section.

endclass.

class lcl_test_match implementation.

  method get_match_type.
  rv_type = 'This is a 5-day test match'.
  endmethod.

endclass.
