import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'offerta_comp_model.dart';
export 'offerta_comp_model.dart';

class OffertaCompWidget extends StatefulWidget {
  const OffertaCompWidget({Key? key}) : super(key: key);

  @override
  _OffertaCompWidgetState createState() => _OffertaCompWidgetState();
}

class _OffertaCompWidgetState extends State<OffertaCompWidget> {
  late OffertaCompModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => OffertaCompModel());

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
                              'Оферта компаньона',
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
                                  'Общество с ограниченной ответственностью «МАМАОК» в лице Генерального директора Гоникман Алины Леонидовны, действующего на основании устава, который, в соответствии с законом РФ от 7 февраля 1992 г. № 2300-I «О защите прав потребителей», является владельцем агрегатора информации о товарах (услугах), именуемый в дальнейшем «Служба», публикует настоящий договор о предоставлении услуг Компаньону, который является договором публичной оферты (предложением) в соответствии с п.2 ст.437 Гражданского Кодекса РФ в адрес любого физического лица, именуемого в дальнейшем Исполнитель (Компаньон).\n1.Термины и определения\nКлиент (Заказчик) – совершеннолетнее дееспособное физическое лицо, являющееся Заказчиком Услуг на основании Заказов, размещенных посредством сервисов Службы, предусмотренными Пользовательским соглашением. (уточнить у юриста)\nИсполнитель (Компаньон) – совершеннолетнее дееспособное физическое лицо, оказывающее Услуги Клиентам и указанным ими пожилым родственникам или иным близким лицам (знакомые, друзья и т.д.) (Выгодоприобретатели, Подопечные) на основании Заказов, в порядке и на условиях, предусмотренных настоящим Договором, Договором на оказание услуг и Пользовательским соглашением.\nВыгодоприобретатель (Подопечный) – совершеннолетнее дееспособное физическое лицо, близкий человек Клиента (родственник, знакомый, друг и т.д.), которому оказываются услуги на основании Заказов Клиента.\nСлужба – общество с ограниченной ответственностью «МАМАОК» ИНН 9705175920, КПП 770501001, которое, в соответствии с законом РФ от 7 февраля 1992 г. № 2300-I «О защите прав потребителей», является владельцем агрегатора информации о товарах (услугах).\nСервис – совокупность информационных, технических и материальных ресурсов Службы, позволяющих Клиентам и Исполнителям (Компаньоном) осуществлять взаимодействие по размещению и принятию к исполнению Заказов, который также принимает на себя ряд функций по упрощению такого взаимодействия, при соблюдении сторонами условий пользования Сервиса, в том числе условий Пользовательского соглашения. Сервис включает в себя Сайт Службы, Приложение для мобильных операционных систем Apple iOS и Android «MAMAOK», программное обеспечение Службы, а также внутренние службы, осуществляющие информационные, консультационные функции и иные функции по взаимодействию с Клиентами и Исполнителями (Компаньонами).\nСервис действует на территории г. Москвы, а также на ограниченной территории Московской области.\nСайт – интернет-сервис Службы, расположенный по адресу: mama-ok.ru и являющийся неотъемлемой частью Сервиса. Сайт, представляющий из себя совокупность программных продуктов, информационных баз, интерактивных сервисов и графических данных, направлен на информирование фактических и потенциальных Клиентов, размещение Клиентом Заявок и Заказов, заключение договоров между Клиентами и Исполнителями (Компаньонами), а также позволяет осуществлять иные действия, предусмотренные функционалом данного интернет-сервиса.\nУслуги – платные услуги по улучшению качества жизни Выгодоприобретателя, в том числе по сопровождению Выгодоприобретателя (Подопечного) вне дома, во время прогулок, эмоциональной поддержке, помощи в организации решения бытовых проблем, работе с телефонами, планшетами, ноутбуками и интернет-ресурсами и т.д., а также иные услуги, выполняемые Исполнителем (Компаньоном) на основании Заказов Клиента.\nЗаказ - предложение Клиента о заключении договора на оказание услуг, адресованное Исполнителю (Компаньону), оформленное посредством функционала Личного кабинета Клиента на Сайте или иным способом, предусмотренным Пользовательским соглашением. Порядок размещения Заказа, а также условия оказания Услуг изложены в настоящем Договоре, Договоре на оказание услуг и Пользовательском соглашении. \nДоговор на оказание услуг –договор на оказание услуг, являющийся, в соответствии со ст. 437 Гражданского кодекса РФ публичной офертой, размещенной на Сайте по адресу: mama-ok.ru  Договор на оказание услуг является неотъемлемой частью Заказа Клиента и считается заключенным посредством сервисов Сайта в момент принятия Исполнителем Заказа Клиента либо в момент принятия Клиентом Предложения Исполнителя (Компаньона).\nЛичный кабинет – персонализированная страница Клиента на Сайте, доступная ему после прохождения процедуры регистрации, предназначенная для размещения Заказов, приемки и оплаты Услуг, а также для совершения иных действий, предусмотренных функционалом Сайта. \nПользовательское соглашение – соглашение, размещенное на Сайте по адресу: www.mama-ok.ru, являющееся в соответствии со ст. 437 Гражданского кодекса РФ публичной офертой, после принятий условий (акцепта) которой Клиенту предоставляется право пользования сервисами Сайта, доступными для зарегистрированных пользователей.\nАкцепт оферты – полное и безоговорочное принятие условий настоящей оферты (далее по тексту Договор) выражается в регистрации лица как Исполнителя (Компаньона) посредством сервиса интернет-сайта mama-ok.ru, принадлежащем Службе.\n\n2.Предмет Договора\n2.1.Служба обязуется от имени и за счет Компаньона находить и передавать Компаньону Заказы на его услуги посредством программного обеспечения, установленного на электронное устройство Компаньона или посредством электронного документооборота.\n2.2.В рамках настоящего Договора Служба также обязуется принимать на свой счет денежные средства от Клиентов и перечислять их Компаньону за вычетом своего вознаграждения и за вычетом понесенных расходов, связанных с исполнением своих обязательств по настоящему Договору.\n2.3.Услуги, оказываемые Клиентам и Выгодоприобретателям (Подопечным), оказывает непосредственно Компаньон, Служба Клиентам и Выгодоприобретателям (Подопечным) услуги не оказывает и ответственности за них не несет. Компаньон самостоятельно несет ответственность перед клиентами, Заказы от которых были им получены от Службы.\n2.4.Компаньон понимает, что правоотношения по настоящему Договору ни при каких обстоятельствах не могут быть рассмотрены как трудовые, Компаньон самостоятельно определяет график работы, количество выполняемых заказов и вправе отказаться от выполнения заказов в предусмотренном настоящим Договором случаях.\n\n3.Оказываемые Компаньоном Выгодоприобретателям (Подопечным) услуги\n3.1.Услуги, оказываемые Выгодоприобретателям (Подопечным) состоят в сопровождении Выгодоприобретателей (Подопечных) в прогулках, походах в магазин или медицинские учреждения, организации доставки на дом любых необходимых товаров (помощь в оформлении заказов в интернет-магазинах, помощи в посещении государственных учреждений (МФЦ, банки), организации развлечений и досуга: кино, театр, выставки, музеи, настольные игры, хобби, терапевтическом общении, проведении когнитивных упражнений и т.д.\n3.2.\t\tПри оказании Услуг Компаньон вправе:\n-\t\tзаходить на территорию дома, квартиры, оговоренную с Клиентом и проводить время с Выгодоприобретателем (Подопечным), посещать те комнаты и помещения, в которых находится Выгодоприобретатель (Подопечный);\n-\t\tвоспользоваться туалетной комнатой;\n-\t\tготовить вместе с Выгодоприобретателем (Подопечным), используя продукты, которые есть в доме и которые предоставляет Клиент или Выгодоприобретатель (Подопечный);\n-\t\tвключать компьютер, телевизор и другие гаджеты вместе с Выгодоприобретателем (Подопечным);\n-\t\tсопровождать Выгодоприобретателя (Подопечного) при выходе из дома, предварительно оценив его способность к безопасному перемещению и преодолению лестницы;\n-\t\tиметь набор игр и занятий для заполнения досуга Выгодоприобретателя (Подопечного);\n-\t\tпроводить беседы с Выгодоприобретателем (Подопечным) в любое время на всем продолжении визита;\n-\t\tпроводить досуговые и развивающие занятия;\n-\t\tнапоминать Выгодоприобретателю (Подопечному) о необходимости принятия пищи, воды, таблеток (если о них известно);\n-\t\tпо отдельному требованию Клиента давать короткое описание деятельности и досуга Выгодоприобретателя (Подопечного) в рамках визита, предоставлять Клиенту фотоотчет о визите, информировать о необходимости пополнить холодильник (если Выгодоприобретатель (Подопечный) проживает один);\n-\t\tпо согласованию с Клиентом осуществлять заказ продуктов с помощью приложений. При этом оплата товаров осуществляется Клиентом или Выгодоприобретателем (Подопечным). Оплата товаров Компаньоном осуществляется без последующей компенсации соответствующих сумм.\n3.3.\t\tПри оказании Услуг Компаньон не вправе:\n-\t\tприходить к Выгодоприобретателю (Подопечному) в плохом настроении;\n-\t\tприходить к Выгодоприобретателю (Подопечному) в состоянии болезни или с признаками простуды;\n-\t\tприходить к Выгодоприобретателю (Подопечному) с детьми, знакомыми, домашними животными и т.д. без согласия Выгодоприобретателя (Подопечного)\n-\t\tвместо себя посылать к Выгодоприобретателю (Подопечному) третьих лиц (ребенка, родственника, знакомого и т.д.);\n-\t\tдавать Клиенту, Выгодоприобретателю (Подопечному) или проживающим с ними лицам советы по лечению заболеваний традиционными или нетрадиционными методами лечения, даже основываясь на собственном опыте;\n-\t\tоказывать медицинский и немедицинский уход за тяжелобольным (проводить гигиенические процедуры, смену постельного и нательного и впитывающего белья и т.д.);\n-\t\tпроводить любые медицинские манипуляции (уколы, капельницы, предлагать свои собственные таблетки и т.д.);\n-\t\tоткрывать шкафы, ящики и иные места хранения в квартире или доме Клиента или Выгодоприобретателя (Подопечного) за исключением его прямой просьбы и в его присутствии;\n-\t\tперемещать предметы в квартире или доме Клиента, или Выгодоприобретателя (Подопечного), за исключением тех, которые используются для занятий с Выгодоприобретателем (Подопечным);\n-\t\tспорить с Клиентом или Выгодоприобретателем (Подопечным) при возникновении конфликтной ситуации, доказывая свою правоту. При всех конфликтных ситуациях необходимо срочно связаться со Службой и описать ситуацию в подробностях и без эмоций;\n-\t\tбрать деньги у Клиента или Выгодоприобретателя (Подопечного) в долг или в качестве оплаты услуг;\n-\t\tдавать Клиенту или Выгодоприобретателю (Подопечному) свой личный номер мобильного телефона без согласования со Службой;\n-\t\tдоговариваться о графике визитов напрямую с Клиентом или Выгодоприобретателем (Подопечным), минуя внесения данных в личный кабинет Клиента посредством Службы.\n- вправе запрашивать у Клиента всю необходимую информацию и разъяснения по всем вопросам, возникающим в ходе оказания Услуг, а также любую дополнительную информацию, необходимую для выполнения своих обязательств по настоящему Договору.\n- вправе приостановить оказание Услуг по Заказам Клиента в случае нарушения Клиентом сроков оплаты более чем на 5 (пять) календарных дней.\n- вправе перенести исполнение Заказа в случае невозможности его выполнения по объективным причинам, не зависящим от воли сторон (таким, например, как болезнь Исполнителя).\n- вправе в любое время отказаться от оказания Услуг в случае, если Клиентом и/или Выгодоприобретателем (Подопечным) были допущены в адрес Исполнителя (Компаньона) высказывания и/или действия, которые в общепринятом смысле являются оскорбительными, то есть унижающими честь и достоинство Исполнителя (Компаньона), либо представляющие угрозу жизни и/или здоровью Исполнителя (Компаньона), при нарушении Клиентом или Выгодоприобретателем (Подопечным) условий оказания Услуг, а также без объяснения причин. При этом Клиент обязан оплатить Исполнителю (Компаньону) стоимость фактически оказанных Услуг.\n3.4.\t\tКомпаньон всегда должен иметь с собой:\n-\t\tсредства индивидуальной защиты (маски, перчатки);\n-\t\tводу и салфетки в случае, если предстоит прогулка;\n-\t\tработающий мобильный телефон для экстренной связи, желательно иметь powerbank и зарядное устройство;\n-\t\tнеобходимые предметы или пособия для проведения когнитивных и других упражнений и времяпровождения.\n3.4.\t\tКомпаньон обязан:\n-\t\tиметь в доступе всегда включенные и работающие средства связи (мобильный телефон, доступ к электронной почте), всегда быть на связи в процессе выполнения заказа, однако во время визита сотовый телефон должен быть включен на беззвучный режим;\n-\t\tпридерживаться согласованного графика работы, приходить на визит вовремя, никогда не опаздывать на визит даже на несколько минут. В случае возможного опоздания незамедлительно оповестить Службу;\n-\t\tиметь опрятный и соответствующий планируемому времяпровождению внешний вид.\n-  обеспечить качественное выполнение Услуг.\n-\t учитывая специфику оказываемых услуг, Исполнитель (Компаньон) оказывает услуги в соответствии с условиями Заказа и указаниями Клиента, однако при выборе занятий во время оказания услуг основополагающим являются состояние здоровья, настроение и пожелания Выгодоприобретателя (Подопечного). В случае, если состояние здоровья, настроение и пожелания Выгодоприобретателя (Подопечного) прямо противоречат указаниям Клиента, Исполнитель (Компаньон) вправе отступать от этих указаний, если это не представляет прямую угрозу для состояния здоровья Выгодоприобретателя, о чем Исполнитель (Компаньон) был заблаговременно уведомлен Клиентом. Исполнитель (Компаньон) обязан уведомить Клиента о допущенных отступлениях в своем отчете об оказанных услугах.\n\n4.Порядок получения Заказов и оказания Компаньоном услуг \n4.1.Компаньон обязуется ежемесячно, не позднее 25 числа месяца предоставлять Службе график рабочего времени на следующий месяц. \n4.2.Служба подбирает Компаньону заказы в соответствии с предоставленным им графиком.\n4.3.Принимая Заказ, Компаньон вступает в договорные отношения непосредственно с Клиентом и принимает оферту, выраженную в Заказе и автоматически подписывает Договор на оказание услуг с Клиентом.\n4.4.Компаньон не вправе отказаться от Заказа в отношении нового Выгодоприобретателя (Подопечного) в случае, если время исполнения Заказа совпадает с графиком рабочего времени Компаньона.\n4.5.Компаньон вправе в любое время отказаться от Заказа в случае, если Клиентом и/или Выгодоприобретателем (Подопечным) были допущены в адрес Компаньона высказывания и/или действия, которые в общепринятом смысле являются оскорбительными, то есть унижающими честь и достоинство Компаньона, либо представляющие угрозу жизни и/или здоровью Компаньона, при нарушении Клиентом или Выгодоприобретателем (Подопечным) условий оказания услуг.\n4.6.Компаньон вправе перенести исполнение Заказа в случае невозможности его выполнения по объективным причинам, не зависящим от воли сторон (таким, например, как болезнь Компаньона).\n4.7.Компаньон оказывает услуги в соответствии с условиями Заказа и указаниями Клиента, однако при выборе занятий во время оказания услуг основополагающим являются состояние здоровья, настроение и пожелания Выгодоприобретателя (Подопечного). В случае, если состояние здоровья, настроение и пожелания Выгодоприобретателя (Подопечного) прямо противоречат указаниям Клиента, Исполнитель (Компаньон) вправе отступать от этих указаний, если это не представляет прямую угрозу для состояния здоровья Выгодоприобретателя, о чем Компаньон был заблаговременно уведомлен Клиентом. Компаньон обязан уведомить Клиента о допущенных отступлениях в своем отчете об оказанных услугах.\n4.8.При посещении Выгодоприобретателя (Подопечного) при входе в квартиру Компаньон обязан отправить сообщение в чат «Вошел/Вошла» и поставить телефон на беззвучный режим, а после окончании визита отправить сообщение в чат «Закончил/Закончила визит».\n4.9.После каждого визита Компаньон обязуется заполнить короткий отчет о ходе визита, который включает в себя: описание поведения Выгодоприобретателя (Подопечного), описание действий и помощи, которая была оказана Выгодоприобретателю (Подопечному), 1-2 фото (по запросу Клиента и при наличии соответствующего согласия Выгодоприобретателя (Подопечного) в письменной форме).\n4.10.В случае, если количество часов Заказа заканчивается, а Выгодоприобретатель (Подопечный) выражает желание продолжить визит, то Компаньон должен сообщить об этом Службе для согласования продления с Клиентом. В случае если Компаньон не согласовал со Службой такое продление, то данные услуги не оплачиваются.\n\n5.Финансовые условия Договора\n5.1.Стоимость услуг Компаньона составляет 400 (четыреста) рублей за 1 (один) час. Стоимость услуг для Клиентов устанавливается Службой в зависимости от количества часов оказания услуг, оплачиваемых Клиентом.\n5.2.Компаньон понимает, что Служба не является источником дохода Компаньона в смысле ст. 11 Налогового Кодекса РФ и не выступает в качестве налогового агента  Компаньона в смысле ст. 226 Налогового Кодекса РФ при перечислении ему денежных средств, Компаньон обязан самостоятельно отчитаться о полученном доходе и уплатить налог с заработанной им суммы вознаграждения в соответствии с требованиями действующего законодательства.\n5.3.Вознаграждение Службы составляет разницу между полученными от Клиента суммами и стоимостью услуг Компаньона, указанной в пункте 5.1. настоящего Договора. Вознаграждение Службы учитывает ее расходы на маркетинг и рекламу, поддержание Сайта и все иные расходы Службы.\n5.4.Услуги Компаньона считаются выполненными, совершения Клиентом действия, посредством сервисов Службы, расположенных по интернет-адресу mama-ok.ru действий по завершению заказа (кнопка «Заказ выполнен»). Составление акта выполненных услуг не требуется.\n5.5.Перечисление денежных средств Компаньону осуществляется помимо вычета суммы вознаграждения Службы в течение 3 (трех) рабочих дней с момента принятия услуг Клиентом. Перечисление денежных средств осуществляется отдельно за каждый выполненный Заказ по реквизитам. Компаньона, указанным в настоящем Договоре.\n5.6.Компаньон обязуется незамедлительно по получении от Службы суммы вознаграждения совершить действия, необходимые для формирования чека в соответствии со ст. 14 Закона № 422-ФЗ и направить сформированный чек в электронном виде Службе. Невыполнение данной обязанности влечет за собой приостановление выполнения Службой своих обязательств по настоящему Договору.\n\n6.Электронный документооборот\n6.1.Электронный документооборот между Сторонами по настоящему Договору имеет юридическую силу равную юридической силе обычного письменного документооборота. \nПисьменная форма соответствующих договоров считается соблюденной в соответствии с п. 2 и п. 3 ст. 434 ГК РФ.\nОтсутствие подписанного между сторонами экземпляра Договора на бумажном носителе не является основанием считать Договор оказания услуг незаключенным. \nОбмен документами и сообщениями посредством телефонной связи, электронной почты или иных каналов связи, является юридически значимым. Такие документы равнозначны документам, составленным в письменной форме. Сообщения, направленные любым из указанных способов, признаются сообщениями, содержащими волеизъявление отправившей стороны на установление, изменение или прекращение правоотношений сторон. Стороны признают получение такого сообщения юридическим фактом.\nЭлектронный документ, отправленный Клиентом в Службу с заявленных Клиентом электронных контактных данных, считается направленным Клиентом и подписанным его простой электронной подписью.\n \n6.2.Стороны признают юридическую силу за электронными письмами – документами, направленными по электронной почте (e-mail), по адресам, указанным в настоящем Договоре. Такие документы являются документами, составленными в простой письменной форме и подписанными аналогом собственноручной подписи (адресом электронной почты), поскольку только сами Стороны и уполномоченные ими лица имеют доступ к соответствующим средствам связи – адресам электронной почты.\n6.3.Документы, отправленные по электронной почте одной Стороной, считаются полученными другой Стороной в день их фактического получения, а сроки, течение которых зависит от времени получения документа Стороной, начинают исчисляться со следующего дня.\n6.4.Электронные документы, в соответствии с настоящим Договором, в полной мере могут быть использованы для подтверждения заключенных и совершенных сделок, правоотношений Сторон, в том числе могут быть использованы в качестве доказательств в правоохранительных органах, третейском суде, судебных органах, при рассмотрении споров по гражданско-правовым сделкам и т.п., а также подтверждают их действительность и юридическую силу.\n\n7.\t Ответственность сторон. Порядок разрешения споров и претензий.\n7.1.\tВ случае неисполнения или ненадлежащего исполнения своих обязательств по настоящему договору Стороны несут ответственность в соответствии с действующим законодательством Российской Федерации.\n7.2.\tКаждая из сторон освобождается от ответственности за частичное или полное неисполнение обязательств по настоящему Договору, если неисполнение обязательств явилось следствием обстоятельств непреодолимой силы, возникших после заключения настоящего Договора в результате событий чрезвычайного характера, которые сторона не могла ни предвидеть, ни предотвратить разумными мерами. К обстоятельствам непреодолимой силы относятся события, на которые сторона не может оказать влияния и за возникновение которых она не несет ответственности.\n7.3.\tВсе споры и претензии, связанные с исполнением сторонами условий настоящего Договора, будут разрешаться сторонами путем переговоров. Досудебный порядок рассмотрения споров и претензий является для сторон обязательным. Срок рассмотрения претензии составляет 10 (Десять) дней с момента ее получения. В случае если стороны не придут к соглашению, споры рассматриваются в судебном порядке, в соответствии с действующим законодательством Российской Федерации.\n7.4.\tВсе споры, возникающие между Исполнителем (Компаньоном) и Службой в рамках настоящей оферты, подлежат разрешению при непосредственном участии Службы.\n7.5.\t Исполнитель (Компаньон) самостоятельно несёт ответственность перед Клиентом и Выгодоприобретателем (Подопечным) за качество оказания услуг, а также за вред, причинённый Исполнителем (Компаньоном) в результате своих действий либо ненадлежащего оказания услуг.\n\n8.Особые условия\n8.1 В экстренных случаях при угрозе жизни или здоровью Выгодоприобретателя (Подопечного) Компаньон обязан незамедлительно позвонить по телефону, предоставленному Клиентом для экстренной скорой помощи, а в случае его отсутствия, - по телефону скорой помощи 112 (03), а затем – Службе, и оставаться с Выгодоприобретателем (Подопечным) по необходимости.\n8.2Компаньон обязан соблюдать принцип конфиденциальности любой информации, полученной в связи с выполнением обязательств по настоящему Договору и оказанием услуг Выгодоприобретателям (Подопечным), и не вправе передавать ее третьим лицам или использовать для иных целей, кроме как для выполнения обязательств по настоящему Договору и договорам оказания услуг.\n8.3Служба ведет учет оказанных Компаньоном услуг и ежемесячно не позднее 5 (пятого) числа месяца, следующего за отчетным, направляет Компаньону отчет о полученных и выполненных им Заказах за предшествующий месяц. Отчет направляется Компаньону по электронной почте. В случае, если в течение 5 (пяти) дней с момента получения отчета Компаньоном не будут предоставлены на него возражения, отчет считается согласованным и принятым Компаньоном в полном объеме.\n\n9Реквизиты \nСлужба\t\nООО «МАМАОК»\nИНН 9705175920\nКПП 770501001\nЮр. Адрес: 115114, г. Москва, Внутригородская территория города федерального значения МУНИЦИПАЛЬНЫЙ ОКРУГ ЗАМОСКВОРЕЧЬЕ, УЛ КОЖЕВНИЧЕСКАЯ, 1, 6/607\nр/с 40702810801500145171 в Филиале Точка Публичного акционерного общества Банка «Финансовая Корпорация Открытие»\nБИК 044525999\nк/с 30101810845250000999\nТелефон +7 (495) 414-48-15\ne-mail: info@mama-ok.ru\nГенеральный директор\nГоникман Алина Леонидовна',
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
