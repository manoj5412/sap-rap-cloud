*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
class lcl_bank definition .

  public section.

  METHODS constructor.
    METHODS deposit
  impoRTING iv_amount type i.
  METHODS get_balance
 RETURNING VALUE(rv_balance) type i.
  protected section.
  private section.
   data mv_balance type i.

endclass.

class lcl_bank implementation.

  method constructor.

   mv_balance = 0.

  endmethod.

  method deposit.
  if iv_amount < 0.
  return.
  ENDIF.
   mv_balance = mv_balance + iv_amount.
  endmethod.

  method get_balance.
 rv_balance = mv_balance.
  endmethod.

endclass.
