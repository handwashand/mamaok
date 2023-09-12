import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'offerta_ward_model.dart';
export 'offerta_ward_model.dart';

class OffertaWardWidget extends StatefulWidget {
  const OffertaWardWidget({Key? key}) : super(key: key);

  @override
  _OffertaWardWidgetState createState() => _OffertaWardWidgetState();
}

class _OffertaWardWidgetState extends State<OffertaWardWidget> {
  late OffertaWardModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OffertaWardModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => FocusScope.of(context).requestFocus(_model.unfocusNode),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
        body: SafeArea(
          top: true,
          child: Container(
            width: double.infinity,
            height: double.infinity,
            decoration: BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  FlutterFlowTheme.of(context).primaryBackground,
                  FlutterFlowTheme.of(context).secondaryBackground
                ],
                stops: [0.0, 1.0],
                begin: AlignmentDirectional(0.0, -1.0),
                end: AlignmentDirectional(0, 1.0),
              ),
            ),
            child: Padding(
              padding: EdgeInsetsDirectional.fromSTEB(16.0, 0.0, 16.0, 0.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 48.0, 0.0, 0.0),
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              FFIcons.kvector3Stroke,
                              color: FlutterFlowTheme.of(context).primaryText,
                              size: 20.0,
                            ),
                            onPressed: () async {
                              context.safePop();
                            },
                          ),
                          Align(
                            alignment: AlignmentDirectional(0.0, -0.88),
                            child: Text(
                              'Согласие подопечного',
                              style: FlutterFlowTheme.of(context)
                                  .headlineSmall
                                  .override(
                                    fontFamily: 'DIN Round Pro',
                                    fontSize: 16.0,
                                    fontWeight: FontWeight.w500,
                                    useGoogleFonts: false,
                                  ),
                            ),
                          ),
                          FlutterFlowIconButton(
                            borderColor: Colors.transparent,
                            borderRadius: 30.0,
                            borderWidth: 1.0,
                            buttonSize: 40.0,
                            icon: Icon(
                              FFIcons.kvector3Stroke,
                              color:
                                  FlutterFlowTheme.of(context).primaryBtnText,
                              size: 20.0,
                            ),
                            onPressed: () {
                              print('IconButton pressed ...');
                            },
                          ),
                        ],
                      ),
                    ),
                    Padding(
                      padding:
                          EdgeInsetsDirectional.fromSTEB(0.0, 30.0, 0.0, 0.0),
                      child: RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text:
                                  'Общество с ограниченной ответственностью «МАМАОК» в лице Генерального директора Гоникман Алины Леонидовны, действующего на основании устава, который, в соответствии с законом РФ от 7 февраля 1992 г. № 2300-I «О защите прав потребителей», является владельцем агрегатора информации о товарах (услугах), именуемая в дальнейшем «Служба», публикует настоящее Согласие подопечного, которое является договором публичной оферты (предложением) по предоставления согласия Выгодоприобретателя (Подопечного) для которого Клиент акцептировал оферту, расположенную посредством интернет-ресурса https://www.mama-ok.ru.\nПринимая условия данного согласия, посредством сервисов интернет-ресурса https://www.mama-ok.ru в соответствии со статьями 9, 10, 11 Федерального закона от 27.07.2006 г. № 152-ФЗ «О персональных данных» Выгодоприобретатель (Подопечный) даёт своё согласие свободно, своей волей и в своем интересе ООО «МАМАОК» на обработку своих персональных данных, - имени, отчества, даты рождения, семейного положения, адреса проживания, на обработку специальных категорий своих персональных данных, - состояния здоровья, на обработку своих биометрических персональных данных – своих цифровых изображений (фотографий), в целях обеспечения и организации получения услуг от Компаньонов Службы, а также передачи отчетов о состоявшихся встречах (визитах) Клиенту, оплатившему услуги.\nОбработка персональных данных может осуществляться как автоматизированным, так и неавтоматизированным способом.\nНастоящим, Выгодоприобретатель (Подопечный) в соответствии с пунктом 1 статьи 152.1. Гражданского кодекса Российской Федерации даёт свое согласие на использование своих фотографий исключительно в вышеуказанных целях.\nДанное согласие действует с даты его подписания в течение 10 (десяти) лет.\nНастоящее согласие может быть отозвано, путём отправки сообщения к на электронный адрес Службы, указанный на сайте https://www.mama-ok.ru.\n',
                              style: TextStyle(),
                            )
                          ],
                          style: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'DIN Round Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                useGoogleFonts: false,
                              ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
