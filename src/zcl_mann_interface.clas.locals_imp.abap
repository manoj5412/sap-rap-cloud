*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
INTERFACE lif_player_info.
METHODS : get_summary RETURNING VALUE(rv_summary) TYPE string.
ENDINTERFACE.

    class lcl_cricket definition.

  public section.
  INTERFACES lif_player_info.
    METHODS: constructor
      IMPORTING
        i_player TYPE string
        i_player_runs TYPE i,
        get_details
        RETURNING VALUE(res) type string.

  protected section.
  DATA: player type string,
        player_runs type i.
  private section.

endclass.

class lcl_cricket implementation.

  method constructor.

    me->player = i_player.
    me->player_runs = i_player_runs.

  endmethod.

  method get_details.
 res = |player:{ player }, player_runs:{ player_runs }|.
  endmethod.
  method lif_player_info~get_summary.
rv_summary = |player:{ player },TOTAL RUNS:{ player_runs }|.
  endmethod.

endclass.

class lcl_test_match definition INHERITING FROM lcl_cricket.

  public section.
    METHODS: constructor
      IMPORTING
        i_player TYPE string
        i_player_runs_1 TYPE i
        i_century TYPE i,

        get_details REDEFINITION,
        lif_player_info~get_summary REDEFINITION.

  protected section.
  private section.
  DATA century type i.

endclass.

class lcl_test_match implementation.

  method constructor.

    super->constructor( i_player = i_player i_player_runs = i_player_runs_1 ).

    me->century = i_century.
*    me->player = i_player.
*    me->player_runs = i_player_runs_1.

  endmethod.

  method get_details.
   res = |career->{ super->get_details( ) }, century:{ century }|.
  endmethod.

  method lif_player_info~get_summary.
rv_summary = |test match ->{ super->lif_player_info~get_summary( ) }, centuries:{ century }|.
  endmethod.

endclass.

class lcl_OODImatch definition INHERITING FROM lcl_cricket.

  public section.
    METHODS : constructor
      IMPORTING
        i_player TYPE string
        i_player_runs_1 TYPE i
        i_fifty TYPE i,
        get_details REDEFINITION.
  protected section.
  private section.
  DATA fifty type i.

endclass.

class lcl_OODImatch implementation.

  method constructor.

    super->constructor( i_player = i_player i_player_runs = i_player_runs_1 ).

    me->fifty = i_fifty.
    me->player = i_player.
    me->player_runs = i_player_runs_1.

  endmethod.

  method get_details.
res = |career->{ super->get_details( ) }, fifty:{ fifty }|.
  endmethod.

endclass.
