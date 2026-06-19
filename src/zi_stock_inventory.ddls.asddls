@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CDS View for Stock Inventory'
@Metadata.ignorePropagatedAnnotations: true
define view entity ZI_STOCK_INVENTORY
  as select from zdb_stock_items as S
    inner join zdb_master as M
      on S.material_id = M.material_id
{
  key S.material_id,
  key S.warehouseid,

      M.material_name,
      M.unit,

      S.quantity,
      S.priceperunit,

      S.quantity * S.priceperunit as total_stock_value
}
