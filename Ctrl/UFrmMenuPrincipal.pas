unit UFrmMenuPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, JvExExtCtrls,
  JvExtComponent, JvPanel, Classe.Functions, JvExControls, JvSpeedButton,
  JvGradientHeaderPanel, Vcl.WinXPanels, JvXPCore, JvXPBar, Classe.Sistema.Mensagens,
  Vcl.StdCtrls, Vcl.Mask, JvGradient, JvExMask, JvToolEdit, JvMaskEdit;

type
  TFrmMenuPrincipal = class(TForm)
    PnlFundoMenuPrincipal: TJvPanel;
    PnlTituloJanela: TJvPanel;
    PnlBtClose: TJvPanel;
    BtClose: TJvSpeedButton;
    PnlStatusSistema: TJvPanel;
    PnlMenuLateral1: TJvPanel;
    BtFerramentas: TJvSpeedButton;
    BtManejoAgricola: TJvSpeedButton;
    BtParametros: TJvSpeedButton;
    PnlMenuLateral2: TJvPanel;
    HdrBtParametros: TJvGradientHeaderPanel;
    CrdPnlMenuLateral2: TCardPanel;
    CrdBtParametros: TCard;
    CrdBtManejoAgricola: TCard;
    CrdBtFerramentas: TCard;
    HdrBtManejoAgricola: TJvGradientHeaderPanel;
    HdrBtFerramentas: TJvGradientHeaderPanel;
    ImgBtFerramentas: TImage;
    ImgBtManejoAgricola: TImage;
    ImgBtParametros: TImage;
    BarParametros1: TJvXPBar;
    BarParametros2: TJvXPBar;
    procedure FormResize(Sender: TObject);
    procedure BtCloseClick(Sender: TObject);
    procedure BtParametrosClick(Sender: TObject);
    procedure BtManejoAgricolaClick(Sender: TObject);
    procedure BtFerramentasClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure BarParametros1Items0Click(Sender: TObject);
    procedure BarParametros2Items2Click(Sender: TObject);
    procedure BarParametros2Items3Click(Sender: TObject);
    procedure BarParametros2Items1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FrmMenuPrincipal: TFrmMenuPrincipal;

implementation

uses
     UFrmModel1, UFrmMensagemSistema, UFrmCadastroUsuario, UFrmPesquisaAuxiliar, UFrmCadastroTalhao,
  UFrmCadastroSafra, UFrmConfigServidor, UFrmCadastroPropriedadeRural;

{$R *.dfm}

procedure TFrmMenuPrincipal.BtFerramentasClick(Sender: TObject);
begin
      pMenuRetratil(CrdBtFerramentas,PnlMenuLateral2,BtFerramentas.Tag);
end;

procedure TFrmMenuPrincipal.BtManejoAgricolaClick(Sender: TObject);
begin
      pMenuRetratil(CrdBtManejoAgricola,PnlMenuLateral2,BtManejoAgricola.Tag);
end;

procedure TFrmMenuPrincipal.BtParametrosClick(Sender: TObject);
begin
      pMenuRetratil(CrdBtParametros,PnlMenuLateral2,BtParametros.Tag);
end;

procedure TFrmMenuPrincipal.FormResize(Sender: TObject);
begin
      pCentralizaPanel(PnlFundoMenuPrincipal,FrmMenuPrincipal);
end;

procedure TFrmMenuPrincipal.FormShow(Sender: TObject);
begin
      PnlMenuLateral2.Width := 0;
end;

procedure TFrmMenuPrincipal.BarParametros1Items0Click(Sender: TObject);
begin
      try
           Application.CreateForm(TFrmCadastroUsuario,FrmCadastroUsuario);
           FrmCadastroUsuario.ShowModal;
      finally
            FreeAndNil(FrmCadastroUsuario);
      end;
end;

procedure TFrmMenuPrincipal.BarParametros2Items1Click(Sender: TObject);
begin
     try
           Application.CreateForm(TFrmCadastroPropriedadeRural,FrmCadastroPropriedadeRural);
           FrmCadastroPropriedadeRural.ShowModal;
      finally
            FreeAndNil(FrmCadastroPropriedadeRural);
      end;
end;

procedure TFrmMenuPrincipal.BarParametros2Items2Click(Sender: TObject);
begin
     try
           Application.CreateForm(TFrmCadastroTalhao,FrmCadastroTalhao);
           FrmCadastroTalhao.ShowModal;
      finally
            FreeAndNil(FrmCadastroTalhao);
      end;
end;

procedure TFrmMenuPrincipal.BarParametros2Items3Click(Sender: TObject);
begin
       try
           Application.CreateForm(TFrmCadastroSafra,FrmCadastroSafra);
           FrmCadastroSafra.ShowModal;
      finally
            FreeAndNil(FrmCadastroSafra);
      end;

end;

procedure TFrmMenuPrincipal.BtCloseClick(Sender: TObject);
begin
      Application.Terminate;
end;

end.
