@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'cds for task'
@Metadata.ignorePropagatedAnnotations: true
define view entity zi_carrier_mann
  as select from zcarrier_mann

  association [0..*] to zi_conn_mann as _connections
    on $projection.Carrid = _connections.Carrid

{
  key carrid   as Carrid,
      name     as Name,
      currcode as Currcode,

      _connections
}
