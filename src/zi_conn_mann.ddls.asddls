@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'data definition for connection'
@Metadata.ignorePropagatedAnnotations: true

define view entity zi_conn_mann
  as select from zconn_mann

  association [1..1] to zi_carrier_mann as _carrier
    on $projection.Carrid = _carrier.Carrid

{
  key carrid   as Carrid,
  key connid   as Connid,
      cityfrom as Cityfrom,
      cityto   as Cityto,

      _carrier.Name     as AirlineName,
      _carrier.Currcode as Currcode,

      _carrier
}
