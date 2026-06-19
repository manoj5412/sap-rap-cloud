@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'case distinctions in abap cds'
@Metadata.ignorePropagatedAnnotations: true
define view entity zdd_mann_case_distinctions as select from /dmo/customer
{
    case title
    when 'Mr' then 'Mister'
    when 'Mrs' then 'Misses'
    else 'Unknown'
  end as TitleLong
    
}
