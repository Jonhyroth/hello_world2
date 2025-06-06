@AbapCatalog.viewEnhancementCategory: [#NONE]
@AccessControl.authorizationCheck: #NOT_REQUIRED
@EndUserText.label: 'CORA DATA SERVICES'
@Metadata.ignorePropagatedAnnotations: true
@Metadata.allowExtensions: true
@ObjectModel.usageType:{
    serviceQuality: #X,
    sizeCategory: #S,
    dataClass: #MIXED
}



define view entity Zcds_Toru_Art as select from ztttoru_tab_art
{
    key id_art as IdArt,
    descripcion as Descripcion,
    desc2 as Desc2,
    color as Color,
    piezas as Piezas,
    stock as Stock,
    url as Url,
    
    case
    when stock = 0 then 0
    when stock  between 1 and 10 then 1
    when stock  between 11 and 99 then 2
    when stock >= 100 then 3
    else 0
    end as status
}
