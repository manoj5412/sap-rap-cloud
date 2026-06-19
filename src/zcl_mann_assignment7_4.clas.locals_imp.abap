*"* use this source file for the definition and implementation of
*"* local helper classes, interface definitions and type
*"* declarations
class lcl_document definition ABSTRACT.

  public section.
  METHODS print abstract.
  protected section.
  private section.

endclass.

class lcl_document implementation.

endclass.

class lcl_pdf_document definition final inHERITING FROM lcl_document.

  public section.
  meTHODS print REDEFINITION.
  protected section.
  private section.

endclass.

class lcl_pdf_document implementation.

  method print.
  endmethod.

endclass.
