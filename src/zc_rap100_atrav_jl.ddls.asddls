@AccessControl.authorizationCheck: #CHECK
@Metadata.allowExtensions: true
@EndUserText.label: '##GENERATED Travel App (###)'
@Search.searchable: true
@ObjectModel.semanticKey: ['TravelID'] //case-sensitive
define root view entity ZC_RAP100_ATRAV_JL
  provider contract transactional_query
  as projection on ZR_RAP100_ATRAV_JL
{
       @Search.defaultSearchElement: true
      @Search.fuzzinessThreshold: 0.90
  key TravelId,
  
      @Search.defaultSearchElement: true
      @ObjectModel.text.element: ['AgencyName'] //case-sensitive
      @Consumption.valueHelpDefinition: [{ entity : {name: '/DMO/I_Agency_StdVH', element: 'AgencyID' }, useForValidation: true }]
      AgencyId,
      _Agency.Name              as AgencyName,

      @Search.defaultSearchElement: true
      @ObjectModel.text.element: ['CustomerName'] //case-sensitive
      @Consumption.valueHelpDefinition: [{ entity : {name: '/DMO/I_Customer_StdVH', element: 'CustomerID' }, useForValidation: true }]
      CustomerId,
      _Customer.LastName        as CustomerName,
  
      BeginDate,
      EndDate,
      BookingFee,
      TotalPrice,
      
      @Consumption.valueHelpDefinition: [{ entity: {name: 'I_CurrencyStdVH', element: 'Currency' }, useForValidation: true }]
      CurrencyCode,
      Description,
      
      @ObjectModel.text.element: ['OverallStatusText'] //case-sensitive
      @Consumption.valueHelpDefinition: [{ entity: {name: '/DMO/I_Overall_Status_VH', element: 'OverallStatus' }, useForValidation: true }]
      OverallStatus,
      _OverallStatus._Text.Text as OverallStatusText : localized,
      
      Attachment,
      MimeType,
      FileName,
      LocalLastChangedAt
}
