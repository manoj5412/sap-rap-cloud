@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'timestamp conversion'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_mann_tstmp as select from /dmo/travel
{
    tstmp_to_dats(  cast( lastchangedat as abap.dec( 15,0 ) ),
    cast( 'EST' as abap.char( 6 ) ),
    cast( '001' as abap.clnt ),
    'FAIL'
    ) as date_est
}
