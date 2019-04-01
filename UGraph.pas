unit UGraph;

interface
uses REST.Response.Adapter, REST.Client,REST.Json,REST.Types,System.JSON,StrUtils,FireDAC.Comp.Client,SysUtils;

  type TGraph = class
  private
     FrootElement:string;
     Fquery: string;
     FPage_actual: Integer;
     FTotalPag: Integer;
     FPer_page: Integer;
     Fvariables:TJsonObject;
     ARESTRequest: TRESTRequest;
     ARESTResponse: TRESTResponse;
     ARESTResponseDataSetAdapter: TRESTResponseDataSetAdapter;
     function GetRootElement:string;
     procedure SetRootElement(element:string);
     procedure SetQuery(query:string);
     function GetQuery():string;
     procedure SeTvariables(variables:TJSONObject);
     procedure SetTotalPag(totalPag:integer);
     function GetTotalPag():integer;
  public
     property rootElement: string read GetRootElement write SetRootElement;
     property query: string read GetQuery write SetQuery;
     property totalPag: integer read GetTotalPag write SetTotalPag;
     property variables:TJSONObject write SetVariables;
     function ejecutar(query:string):TJSONObject;
    constructor Create(restClient:TRESTClient;dataset:TFDmemtable=nil);
     destructor Destroy;
  end;

implementation

uses
  uHelpers;

constructor TGraph.Create(restClient:TRESTClient;dataset:TFDmemtable=nil);
begin
    //Creacion
    inherited Create;
    ARESTRequest := TRESTRequest.Create(nil);
    ARESTResponse := TRESTResponse.Create(nil);
    ARESTResponseDataSetAdapter := TRESTResponseDataSetAdapter.Create(nil);
    //Cconfiguracion
    ARESTResponseDataSetAdapter.Dataset := dataset;
    ARESTResponseDataSetAdapter.Response := ARESTResponse;
    ARESTRequest.Client := restClient;
    ARESTRequest.Accept:='application/json, text/plain; q=0.9, text/html;q=0.8,';
    ARESTRequest.Response := ARESTResponse;
    ARESTRequest.Method := rmPOST;
    ARESTRequest.Response.RootElement:='';
    ARESTRequest.ClearBody();
    ARESTRequest.params.Clear;
    Fvariables:=TJSONObject.Create;
end;

function TGraph.GetTotalPag():integer;
begin
  Result:=FTotalPag;
end;

procedure  TGraph.SetTotalPag(totalPag:integer);
begin
    FTotalPag:= totalPag;
end;

function TGraph.ejecutar(query:string):TJSONObject;
var request,variable,dataRest,queryRest:TJSONObject;
var total,limit,token:string;
begin
  limit:='0';
   token:=uHelpers.cargarToken();
   ARESTRequest.Params.AddItem('Accept','application/json, */*; q=0.01',TRESTRequestParameterKind.pkHTTPHEADER);
   ARESTRequest.AddParameter('Authorization','Bearer '+token,TRESTRequestParameterKind.pkHTTPHEADER);
   ARESTRequest.Params.ParameterByName('Authorization').Options :=[poDoNotEncode];
   result:=TJsonObject.Create();
   request:=TJSONObject.Create();
   queryRest:=TJSONObject.Create();

   request.AddPair('query',TJSONString.Create(Fquery));

   if Fvariables.TryGetValue('variables', variable) then
      begin
         request.AddPair('variables',variable);
         if variable.TryGetValue('limit',limit) then
      end;

   ARESTRequest.AddParameter('body',request.ToString,TRESTRequestParameterKind.pkREQUESTBODY);
   ARESTRequest.Params.ParameterByName('body').ContentType:=TRESTContentType.ctAPPLICATION_JSON;
   ARESTResponseDataSetAdapter.rootElement:=FrootElement;
   ARESTRequest.Execute;

    if TJsonObject(ARESTRequest.Response.JSONValue).TryGetValue('data',dataRest) then
    begin
         queryRest:=dataRest.GetValue(query) as TJsonObject;

         if queryRest.TryGetValue('total',total) then
            begin
              if limit.ToInteger>0 then
              begin
                if total.ToInteger>limit.ToInteger then
                   begin
                      if (total.ToInteger mod limit.ToInteger) = 0 then
                         SetTotalPag(trunc(total.ToInteger div limit.ToInteger))
                      else
                         SetTotalPag(trunc(total.ToInteger div limit.ToInteger)+1)
                   end
                else
                  SetTotalPag(1);
              end;
            end;
    end;
   Result:=queryRest;
   //Result:=TJsonObject(ARESTRequest.Response.JSONValue);
  //Result:=request;
end;

function TGraph.GetQuery: string;
begin
   Result:=Fquery;
end;

function TGraph.GetRootElement:string;
begin
    Result:=FrootElement;
end;

procedure TGraph.SetQuery(query:string);
begin
    Fquery:=query;
end;

procedure TGraph.SetRootElement(element: string);
begin
    FrootElement:=element;
end;

procedure TGraph.SeTvariables(variables: TJSONObject);
begin
    Fvariables:=variables;
end;

destructor TGraph.Destroy;
begin
   ARESTRequest.Free;
   ARESTResponse.Free;
   ARESTResponseDataSetAdapter.Free;
  inherited Destroy;
end;
end.
