unit uCalcular;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, cxGraphics, cxControls,
  cxLookAndFeels, cxLookAndFeelPainters, cxContainer, cxEdit, cxTextEdit,
  cxMaskEdit, cxDropDownEdit, cxLookupEdit, cxDBLookupEdit, cxDBLookupComboBox,
  Vcl.StdCtrls, cxSpinEdit, cxStyles, cxCustomData, cxFilter, cxData,
  cxDataStorage, cxNavigator,
  cxDataControllerConditionalFormattingRulesManagerDialog, Data.DB, cxDBData,
  cxGridLevel, cxClasses, cxGridCustomView, cxGridCustomTableView,
  cxGridTableView, cxGridDBTableView, cxGrid;

type
  TfCalcular = class(TForm)
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    cxLookupComboBox1: TcxLookupComboBox;
    Panel8: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    spnMinimo: TcxSpinEdit;
    cxSpinEdit1: TcxSpinEdit;
    Label3: TLabel;
    cxLookupComboBox3: TcxLookupComboBox;
    Label4: TLabel;
    cxLookupComboBox2: TcxLookupComboBox;
    Label5: TLabel;
    Button1: TButton;
    Label7: TLabel;
    Label6: TLabel;
    cxLookupComboBox4: TcxLookupComboBox;
    GridPanel1: TGridPanel;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fCalcular: TfCalcular;

implementation

{$R *.dfm}

end.
