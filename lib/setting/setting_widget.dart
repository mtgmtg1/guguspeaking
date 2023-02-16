import '../components/bottom_widget.dart';
import '../flutter_flow/flutter_flow_animations.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter/scheduler.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'setting_model.dart';
export 'setting_model.dart';

class SettingWidget extends StatefulWidget {
  const SettingWidget({Key? key}) : super(key: key);

  @override
  _SettingWidgetState createState() => _SettingWidgetState();
}

class _SettingWidgetState extends State<SettingWidget>
    with TickerProviderStateMixin {
  late SettingModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  final animationsMap = {
    'textOnPageLoadAnimation': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 800.ms,
          begin: Offset(0, 20),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 800.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'rowOnPageLoadAnimation1': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 800.ms,
          begin: Offset(0, 20),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 800.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'rowOnPageLoadAnimation2': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 800.ms,
          begin: Offset(0, 20),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 800.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'rowOnPageLoadAnimation3': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 800.ms,
          begin: Offset(0, 20),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 800.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'rowOnPageLoadAnimation4': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 800.ms,
          begin: Offset(0, 20),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 800.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
    'rowOnPageLoadAnimation5': AnimationInfo(
      trigger: AnimationTrigger.onPageLoad,
      effects: [
        MoveEffect(
          curve: Curves.easeInOut,
          delay: 0.ms,
          duration: 800.ms,
          begin: Offset(0, 20),
          end: Offset(0, 0),
        ),
        FadeEffect(
          curve: Curves.easeIn,
          delay: 0.ms,
          duration: 800.ms,
          begin: 0,
          end: 1,
        ),
      ],
    ),
  };

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => SettingModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    _unfocusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return Scaffold(
      key: scaffoldKey,
      backgroundColor: Colors.white,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.1,
              decoration: BoxDecoration(
                color: FlutterFlowTheme.of(context).secondaryBackground,
              ),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(20, 0, 20, 0),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  children: [
                    InkWell(
                      onTap: () async {
                        context.pop();
                      },
                      child: Icon(
                        Icons.arrow_back_rounded,
                        color: FlutterFlowTheme.of(context).customColor2,
                        size: 24,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Align(
              alignment: AlignmentDirectional(-1, 0),
              child: Padding(
                padding: EdgeInsetsDirectional.fromSTEB(35, 30, 0, 0),
                child: SelectionArea(
                    child: Text(
                  FFLocalizations.of(context).getText(
                    'bkhz8gyh' /* 앱 설정 */,
                  ),
                  style: FlutterFlowTheme.of(context).bodyText1.override(
                        fontFamily:
                            FlutterFlowTheme.of(context).bodyText1Family,
                        color: FlutterFlowTheme.of(context).customColor3,
                        fontSize: 12,
                        useGoogleFonts: GoogleFonts.asMap().containsKey(
                            FlutterFlowTheme.of(context).bodyText1Family),
                      ),
                )).animateOnPageLoad(animationsMap['textOnPageLoadAnimation']!),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectionArea(
                            child: Text(
                          FFLocalizations.of(context).getText(
                            'ymd6n8jn' /* 앱 푸시 알림 */,
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        )),
                      ],
                    ),
                    Switch(
                      value: _model.switchValue1 ??= false,
                      onChanged: (newValue) async {
                        setState(() => _model.switchValue1 = newValue!);
                        if (newValue!) {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.of(context).viewInsets,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.55,
                                  child: BottomWidget(
                                    title: '알림 설정',
                                    txt: '알림 서비스가 설정되었습니다.',
                                  ),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        }
                      },
                      activeColor: FlutterFlowTheme.of(context).customColor1,
                      inactiveTrackColor:
                          FlutterFlowTheme.of(context).customColor4,
                    ),
                  ],
                ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation1']!),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SelectionArea(
                            child: Text(
                          FFLocalizations.of(context).getText(
                            'q05h6hyj' /* 마케팅/이벤트 알림 */,
                          ),
                          style: FlutterFlowTheme.of(context).bodyText1,
                        )),
                      ],
                    ),
                    Switch(
                      value: _model.switchValue2 ??= false,
                      onChanged: (newValue) async {
                        setState(() => _model.switchValue2 = newValue!);
                        if (newValue!) {
                          await showModalBottomSheet(
                            isScrollControlled: true,
                            backgroundColor: Colors.transparent,
                            enableDrag: false,
                            context: context,
                            builder: (context) {
                              return Padding(
                                padding: MediaQuery.of(context).viewInsets,
                                child: Container(
                                  height:
                                      MediaQuery.of(context).size.height * 0.55,
                                  child: BottomWidget(
                                    title: '마케팅 알림 설정',
                                    txt: '마케팅/이벤트 알림 서비스가 설정되었습니다.',
                                  ),
                                ),
                              );
                            },
                          ).then((value) => setState(() {}));
                        }
                      },
                      activeColor: FlutterFlowTheme.of(context).customColor1,
                      inactiveTrackColor:
                          FlutterFlowTheme.of(context).customColor4,
                    ),
                  ],
                ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation2']!),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 25, 0, 0),
              child: Container(
                width: MediaQuery.of(context).size.width * 0.8,
                height: 44,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).secondaryBackground,
                ),
                child: InkWell(
                  onTap: () async {
                    context.pushNamed(
                      'text',
                      queryParams: {
                        'title': serializeParam(
                          '서비스 이용약관',
                          ParamType.String,
                        ),
                        'text': serializeParam(
                          'App 이용약관제1장 총칙제1조 (목적) 이 약관은 주식회사 에이플러스에셋어드바이저(이하 “회사”라 합니다)가 운영하는 보장분석서비스(TRD) “홈페이지”와 보플 “애플리케이션”(이하 “홈페이지”와 “애플리케이션”을 “APP”이라고 합니다)의 서비스 이용 및 제공에 관한 제반 사항의 규정을 목적으로 합니다.제2조 (용어의 정의) ① 이 약관에서 사용하는 용어의 정의는 다음과 같습니다.“서비스”라 함은 구현되는 PC, 모바일 기기를 통하여 “이용자”가 이용할 수 있는 보장분석서비스 등 회사가 제공하는 제반 서비스를 의미합니다.“이용자”란 “APP”에 접속하여 이 약관에 따라 “APP”이 제공하는 서비스를 받는 회원 및 비회원을 말합니다.“회원”이란 “APP”에 개인정보를 제공하여 회원등록을 한 자로서, “APP”이 제공하는 서비스를 이용하는 자를 말합니다.“모바일 기기”란 콘텐츠를 다운로드 받거나 설치하여 사용할 수 있는 기기로서, 휴대폰, 스마트폰, 휴대정보단말기(PDA), 태블릿 등을 의미합니다.“계정정보”란 회원의 회원번호와 내보험다보여 등 외부계정정보, 기기정보 등 회원이 회사에 제공한 정보를 의미합니다.“애플리케이션”이란 회사가 제공하는 서비스를 이용하기 위하여 모바일 기기를 통해 다운로드 받거나 설치하여 사용하는 프로그램 일체를 의미합니다.② 이 약관에서 사용하는 용어의 정의는 본 조 제1항에서 정하는 것을 제외하고는 관계법령 및 서비스별 정책에서 정하는 바에 의하며, 이에 정하지 아니한 것은 일반적인 상 관례에 따릅니다.제3조 (약관의 효력 및 변경) ① 본 약관은“APP” 내 또는 그 연결화면에 게시하거나 이용자에게 공지함으로써 효력이 발생합니다.② 회사는 불가피한 여건이나 사정이 있을 경우 「약관의 규제에 관한 법률」, 「정보통신망이용촉진 및 정보보호 등에 관한 법률」등 관련 법령에 위배하지 않는 범위에서 이 약관을 개정할 수 있습니다.③ 회사가 약관을 개정할 경우에는 적용일자 및 개정내용, 개정사유 등을 명시하여 최소한 그 적용일 7일 이전부터 “APP” 내 또는 그 연결화면에 게시하여 이용자에게 공지합니다. 다만, 변경된 내용이 회원에게 불리하거나 중대한 사항의 변경인 경우에는 그 적용일 30일 이전까지 본문과 같은 방법으로 공지하고, 회원의 전자우편주소, 전자메모, 서비스 내 쪽지, 문자메시지(LMS/SMS)의 방법으로 회원에게 통지합니다. 이 경우 개정 전 내용과 개정 후 내용을 명확하게 비교하여 회원이 알기 쉽도록 표시합니다.④ 회사가 약관을 개정할 경우 개정약관 공지 후 개정약관의 적용에 대한 회원의 동의 여부를 확인합니다. 회사는 제3항의 공지 또는 통지를 할 경우 회원이 개정약관에 대해 동의 또는 거부의 의사표시를 하지 않으면 동의한 것으로 볼 수 있다는 내용도 함께 공지 또는 통지를 하며, 회원이 이 약관 시행일까지 거부의 의사표시를 하지 않는다면 개정약관에 동의한 것으로 볼 수 있습니다. 회원이 개정약관에 대해 동의하지 않는 경우 회사 또는 회원은 서비스 이용계약을 해지할 수 있습니다.제4조 (약관 외 준칙) 이 약관에서 정하지 아니한 사항과 이 약관의 해석에 관하여는 「약관의 규제에 관한 법률」, 「정보통신망이용촉진 및 정보보호 등에 관한 법률」등 관련 법령 또는 상 관례에 따릅니다.제5조 (회원가입) ① 이용자는 “APP”에서 정한 양식에 따라 회원정보를 기입한 후 이 약관의 내용에 대하여 동의하여 회원가입 신청을 하면, 회사가 이러한 신청을 승낙하여 회원으로 가입됩니다.② 회사는 원칙적으로 전 항에 따라 회원가입신청에 대하여 승낙함을 원칙으로 합니다. 다만, 회사는 다음 각 호의 어느 하나에 해당하는 이용자에 대해서는 회원가입을 거절하거나 사후에 회원자격을 상실시킬 수 있습니다.회원정보 내용을 허위로 기재하거나 타인의 명의를 도용한 경우회사가 서비스를 제공하지 않은 국가에서 비정상적이거나 우회적인 방법을 통해 서비스를 이용하는 경우사회의 안녕과 질서 또는 미풍양속을 저해할 목적으로 신청한 경우부정한 용도로 서비스를 이용하고자 하는 경우영리를 추구할 목적으로 서비스를 이용하고자 하는 경우가입 신청자가 본 약관에 의거 이전에 회원자격을 상실한 적이 있는 경우만 14세 미만인 경우그 밖에 각 호에 준하는 사유로서 승낙이 부적절하다고 판단되는 경우③ 회원은 가입시 등록한 회원정보의 변경이 발생한 경우, 즉시 “APP”에서 직접 수정 또는 전자우편, 기타 방법으로 회사에 그 변경 사실을 알려야 합니다.제6조 (회원탈퇴 및 자격상실) ① 회원은 언제든지 서비스 이용을 원하지 않는 경우 언제든지 탈퇴를 요청할 수 있으며, 이 경우 회사는 즉시 회원탈퇴를 처리합니다. 회원탈퇴로 인해 회원이 서비스 내에서 보유한 이용정보는 모두 삭제되어 복구가 불가능하게 됩니다.② 회사는 회원이 이 약관이 금지하거나 공서양속에 반하는 행위를 하는 등 본 계약을 유지할 수 없는 중대한 사유가 있는 경우에는 회원에게 통지하고, 서비스 이용을 제한․중지하거나 회원 자격을 상실시킬 수 있습니다.③ 회사가 회원자격을 상실시키는 경우에는 회원 등록을 말소합니다. 이 경우 회원에게 이를 통지하고, 회원 등록 말소 전에 소명할 기회를 부여합니다.④ 회사는 최근의 서비스 이용일부터 연속하여 1년 동안 회사의 서비스를 이용하지 않은 회원(이하 “휴면계정”이라 합니다)의 개인정보를 보호하기 위해 이용계약을 정지 또는 해지하고 회원의 개인정보를 분리보관 또는 파기 등의 조치를 취할 수 있습니다. 이 경우 조치일 30일 전까지 계약 정지 또는 해지, 개인정보 분리보관 또는 파기 등의 조치가 취해진다는 사실 및 파기될 개인정보 등을 회원에게 통지합니다.제7조 (회원에 대한 통지) ① 회사가 회원에 대한 통지를 하는 경우, 회원이 회사에 제출한 전자우편 또는 휴대번호로 할 수 있다.② 회사는 불특정다수 회원에 대한 통지의 경우 30일 이상 “APP”에 게시함으로서 개별 통지에 갈음 할 수 있다.제8조 (회사의 의무) ① 회사는 관련 법령, 이 약관에서 정하는 권리의 행사 및 의무의 이행을 신의에 따라 성실하게 준수합니다.② 회사는 회원이 안전하게 서비스를 이용할 수 있도록 개인정보(신용정보 포함)보호를 위해 보안시스템을 갖추어야 하며 개인정보처리방침을 공시하고 준수합니다. 회사는 이 약관 및 개인정보처리방침에서 정한 경우를 제외하고는 회원의 개인정보가 제3자에게 공개 또는 제공되지 않도록 합니다.③ 회사는 계속적이고 안정적인 서비스의 제공을 위하여 서비스 개선을 하던 중 설비에 장애가 생기거나 데이터 등이 멸실․훼손된 때에는 천재지변, 비상사태, 현재의 기술로는 해결이 불가능한 장애나 결함 등 부득이한 사유가 없는 한 지체 없이 이를 수리 또는 복구하도록 최선의 노력을 다합니다.제9조 (회원의 의무) ① 회원은 회사에서 제공하는 서비스의 이용과 관련하여 다음 각 호에 해당하는 행위를 해서는 안 됩니다.이용신청 또는 회원 정보 변경 시 타인의 명의를 도용하거나 허위사실을 기재하는 행위회사의 직원이나 운영자를 가장하거나 타인의 명의를 도용하여 메일을 발송하는 행위, 타인으로 가장하거나 타인과의 관계를 허위로 명시하는 행위다른 회원의 개인정보를 무단으로 수집⋅저장⋅게시 또는 유포하는 행위서비스를 무단으로 영리, 영업, 광고, 홍보, 정치활동, 선거운동 등 본래의 용도 이외의 용도로 이용하는 행위회사의 서비스를 이용하여 얻은 정보를 무단으로 복제․유통․조장하거나 상업적으로 이용하는 행위, 알려지거나 알려지지 않은 버그를 악용하여 서비스를 이용하는 행위타인을 기망하여 이득을 취하는 행위, 회사의 서비스의 이용과 관련하여 타인에게 피해를 입히는 행위회사나 타인의 지적재산권 또는 초상권을 침해하는 행위, 타인의 명예를 훼손하거나 손해를 가하는 행위법령에 의하여 전송 또는 게시가 금지된 정보(컴퓨터 프로그램)나 컴퓨터 소프트웨어⋅하드웨어 또는 전기통신장비의 정상적인 작동을 방해⋅파괴할 목적으로 고안된 바이러스⋅컴퓨터 코드⋅파일⋅프로그램 등을 고의로 전송⋅게시⋅유포 또는 사용하는 행위회사로부터 특별한 권리를 부여받지 않고 애플리케이션을 변경하거나, 애플리케이션에 다른 프로그램을 추가⋅삽입하거나, 서버를 해킹⋅역설계하거나, 소스 코드나 애플리케이션 데이터를 유출⋅변경하거나, 별도의 서버를 구축하거나, 웹사이트의 일부분을 임의로 변경⋅도용하여 회사를 사칭하는 행위그 밖에 관련 법령에 위반되거나 선량한 풍속 기타 사회통념에 반하는 행위② 회원의 ID와 비밀번호에 관한 관리책임은 회원에게 있으며, 이를 제3자가 이용하도록 하여서는 안됩니다.③ 이용자는 본 약관 및 관련법령에 규정한 사항을 준수하여야 합니다.제10조 (서비스의 이용) ① “APP”은 다음과 같은 서비스를 회원에게 제공합니다. 단, 회사가“APP”으로 제공하는 서비스 이용을 위해 필요시 이용자에게 위치정보이용약관 및 “계정정보”의 제공에 관한 동의를 추가로 요구할 수 있으며, 동의하지 않을 경우 보험계약 조회 등 일부 서비스가 제한될 수 있습니다.보험계약 조회 및 분석정보 제공내보험다보여(한국신용정보원) APP 가입 대행이메일 수신 서비스보험상품 관련 설계사 연결 및 보장 컨설팅회사가 취급하는 보험상품의 설명 및 안내시사, 금융, 투자, 부동산, 건강관리 등 컨텐츠 제공보험금 청구 관련 서비스기타 회사가 정하는 서비스② 회사는 회원에게 별도의 동의를 받은 경우 서비스 이용에 대한 유용한 각종 정보에 대하여 “APP”에 게재하는 것 이외에 문자메시지, 푸시(Push) 알림 등의 방법으로 회원에게 제공할 수 있습니다.③ 서비스의 이용은 “APP”의 업무상 또는 기술상 특별한 지장이 없는 한 연중무휴를 원칙으로 합니다. 다만, 정기점검 등의 필요로 인하여 회사가 정한 날 및 시간에 대해서는 예외로 합니다.④ 회사는 “APP” 시스템 등의 보수, 점검, 교체, 시스템의 고장, 통신의 두절, 기타 불가항력적 사유가 발생한 경우에는 서비스의 제공을 일시적으로 중단할 수 있습니다. 다만, 서비스 중단의 경우 회사는 “APP”에 사전 통지하고, 사전에 통지할 수 없는 부득이한 사유가 있는 경우 제 조에 정한 방법으로 회원에게 통지합니다.제11조 (개인정보의 보호 및 사용) ① 회사는 이용자의 정보 수집시 원활한 서비스 제공을 위해 필요한 최소한의 정보를 수집합니다.② 회사가 이용자의 개인식별이 가능한 개인정보 및 계정정보를 수집하는 때에는 반드시 당해 이용자의 동의를 받습니다.③ 회사는 관련 법령에 의하거나, 관련 국가기관 등의 요청이 있는 경우를 제외하고는 회원의 개인정보를 본인의 동의 없이 타인에게 제공하지 않습니다.④ 이용자는 언제든지 회사가 가지고 있는 자신의 개인정보에 대해 열람 및 오류정정 또는 동의 철회를 요구할 수 있으며 회사는 이에 대해 지체 없이 필요한 조치를 취할 의무를 집니다. 이용자가 오류의 정정을 요구한 경우에는 그 오류를 정정할 때까지 해당 개인정보를 이용하지 않습니다.⑤ 기타 개인정보관련사항은 “APP”에 별도로 게시하는 개인정보취급방침에 의거합니다.제12조 (회사의 면책) ① 회사는 이 약관 제10조 제3항, 제4항의 사유로 서비스 제공이 일시적으로 중단됨으로 인하여 이용자 또는 제3자가 입은 손해에 대해서는 관련법에 특별한 규정이 없는 한 회원에게 별도의 보상을 하지 않습니다.② 회사는 회원의 고의 또는 과실로 인한 서비스 이용의 장애에 대하여는 책임을 지지 않습니다.③ 서비스와 관련하여 게재한 정보나 자료 등의 신뢰성, 정확성 등에 대하여 회사는 고의 또는 중대한 과실이 없는 한 책임을 지지 않습니다.④ 회사는 무료로 제공되는 서비스 이용과 관련하여 회원에게 발생한 손해에 대해서는 책임을 지지 않습니다.⑤ 회사는 회원이 서비스를 이용하여 기대하는 이익을 얻지 못하거나 상실한 것에 대하여 책임을 지지 않습니다.⑥ 회사는 회원이 “APP”아이디 및 비밀번호, 모바일 기기 비밀번호, 계정정보 등을 관리하지 않아 발생하는 손해에 대해 책임을 지지 않습니다.⑦ 회원이 모바일 기기의 변경, 모바일 기기의 번호 변경, 운영체제(OS) 버전의 변경, 해외 로밍, 통신사 변경 등으로 인해 콘텐츠 전부나 일부의 기능을 이용할 수 없는 경우 회사는 이에 대해 책임을 지지 않습니다.⑧ 회원이 회사가 제공하는 콘텐츠나 계정정보를 삭제한 경우 회사는 이에 대해 책임을 지지 않습니다.제13조 (저작권 등의 귀속) ① 회사가 제작한 서비스 내의 콘텐츠에 대한 저작권과 기타 지적재산권은 회사에 귀속합니다.② 회원은 회사가 제공하는 서비스를 이용하여 얻은 정보 중에서 회사 또는 제공업체에 지적재산권이 귀속된 정보를 회사 또는 제공업체의 사전 동의 없이 복제⋅전송 등의 방법(편집, 공표, 공연, 배포, 방송, 2차적 저작물 작성 등을 포함합니다. 이하 같습니다)에 의하여 영리목적으로 이용하거나 타인에게 이용하게 하여서는 안 됩니다.③ 회원의 게시물이 정보통신망법 및 저작권법 등 관련법에 위반되는 내용을 포함하는 경우, 권리자는 관련법이 정한 절차에 따라 해당 게시물의 게시중단 및 삭제 등을 요청할 수 있으며, 이로 인해 발생하는 민·형사상의 책임은 전적으로 해당 회원 본인이 부담하여야 하며, 회사는 관련법에 따라 조치를 취하여야 합니다④ 회사는 전항에 따른 권리자의 요청이 없는 경우라도 권리침해가 인정될 만한 사유가 있거나 기타 회사 정책 및 관련법에 위반되는 경우에는 관련법에 따라 해당 게시물에 대해 임시조치 등을 취할 수 있습니다.⑤ 이 조는 회사가 서비스를 운영하는 동안 유효하며, 회원 탈퇴 후에도 지속적으로 적용됩니다.제14조 (회원의 고충처리 및 분쟁해결)① 회사는 회원의 편의를 고려하여 회원의 의견이나 불만을 제시하는 방법을 서비스 내 또는 그 연결화면에 안내합니다.② 회사는 회원으로부터 제기되는 의견이나 불만이 정당하다고 객관적으로 인정될 경우에는 합리적인 기간 내에 이를 신속하게 처리합니다. 다만, 처리에 장기간이 소요되는 경우에는 회원에게 장기간이 소요되는 사유와 처리일정을 서비스 내 공지하거나 제8조에 따라 통지합니다.제15조 (재판권 및 준거법) 이 약관은 대한민국 법률에 따라 규율되고 해석됩니다. 회사와 회원 간에 발생한 분쟁으로 소송이 제기되는 경우에는 법령에 정한 절차에 따른 법원을 관할 법원으로 합니다.',
                          ParamType.String,
                        ),
                      }.withoutNulls,
                    );
                  },
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SelectionArea(
                              child: Text(
                            FFLocalizations.of(context).getText(
                              '6uy7m59r' /* 서비스 이용약관 */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          )),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: FlutterFlowTheme.of(context).customColor2,
                        size: 16,
                      ),
                    ],
                  ),
                ).animateOnPageLoad(animationsMap['rowOnPageLoadAnimation3']!),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
              child: InkWell(
                onTap: () async {
                  context.pushNamed(
                    'text',
                    queryParams: {
                      'title': serializeParam(
                        '개인정보 처리방침',
                        ParamType.String,
                      ),
                      'text': serializeParam(
                        '1. 개인정보의 처리 목적<(주)제이피 이노베이션>(‘www.urbanlaunderette.com’이하 ‘어반런드렛’) 은 다음의 목적을 위하여 개인정보를 처리하고 있으며, 다음의 목적 이외의 용도로는 이용하지 않습니다.– 고객 가입의사 확인, 고객에 대한 서비스 제공에 따른 본인 식별.인증, 회원자격 유지.관리, 물품 또는 서비스 공급에 따른 금액 결제, 물품 또는 서비스의 공급.배송 등2. 개인정보의 처리 및 보유 기간① ‘어반런드렛’은 정보주체로부터 개인정보를 수집할 때 동의 받은 개인정보 보유․이용기간 또는 법령에 따른 개인정보 보유․이용기간 내에서 개인정보를 처리․보유합니다.② 구체적인 개인정보 처리 및 보유 기간은 다음과 같습니다.– 고객 가입 및 관리 : 카카오싱크를 통한 회원가입 및 카카오채널을 통한 관리– 보유 기간 : 카카오채널 탈퇴 시, 즉시 삭제3. 정보주체와 법정대리인의 권리·의무 및 그 행사방법 이용자는 개인정보주체로써 다음과 같은 권리를 행사할 수 있습니다.① 정보주체는 ‘어반런드렛’ 에 대해 언제든지 다음 각 호의 개인정보 보호 관련 권리를 행사할 수 있습니다.1. 개인정보 열람요구2. 오류 등이 있을 경우 정정 요구3. 삭제요구4. 처리정지 요구4. 처리하는 개인정보의 항목 작성① ‘어반런드렛’은 다음의 개인정보 항목을 처리하고 있습니다.<‘어반런드렛’에서 수집하는 개인정보 항목>‘어반런드렛’ 회원 가입 및 고객 문의 시, 제공 동의를 해주시는 개인정보 수집 항목입니다.■ 회원 가입 시(회원)– 필수항목 : 이름, 이메일, 전화번호, 성별, 연령대– 선택항목 : 생년월일– 수집목적 : 어반런드렛 회원관리 및 마케팅 이용– 보유기간 : 회원 탈퇴 또는 동의철회 시 지체없이 파기■ 고객 문의 시(비회원)– 필수항목 : 문의종류, 이름, 휴대폰번호, 이메일, 문의사항– 수집목적 : 고객문의 및 상담요청에 대한 회신, 상담을 위한 서비스 이용기록 조회– 보유기간 : 문의 접수 후 2년 간 보관 (단, 관계 법령이 정한 시점까지 보존)<카카오 개인정보 제3자 제공 동의>아래는 ‘어반러드렛’ 회원 가입 시(카카오 계정을 통한 간편 가입시) 제공 동의를 해주시는 자동 수집 항목입니다.– 필수항목 : 프로필 정보(닉네임/프로필 사진), 카카오계정(이메일), 카카오계정(전화번호), 성별, 연령대, 카카오톡 채널 추가 상태 및 내역– 선택항목 : 생일, 출생연도– 수집목적 : 어반런드렛 카카오채널을 통한 회원관리 및 마케팅 이용– 보유기간 : 카카오채널 탈퇴 또는 동의철회 시 지체없이 파기② ‘어반런드렛’은 만 14세 미만 아동의 개인정보를 보호하기 위하여 회원가입은 만14세 이상만 가능하도록 함으로써 아동의 개인정보를 수집하지 않습니다.5. 개인정보의 파기‘어반런드렛’은 원칙적으로 개인정보 처리목적이 달성된 경우에는 지체없이 해당 개인정보를 파기합니다. 파기의 절차, 기한 및 방법은 다음과 같습니다.’-파기절차이용자가 입력한 정보는 목적 달성 후 별도의 DB에 옮겨져(종이의 경우 별도의 서류) 내부 방침 및 기타 관련 법령에 따라 일정기간 저장된 후 혹은 즉시 파기됩니다. 이 때, DB로 옮겨진 개인정보는 법률에 의한 경우가 아니고서는 다른 목적으로 이용되지 않습니다.-파기기한이용자의 개인정보는 개인정보의 보유기간이 경과된 경우에는 보유기간의 종료일로부터 5일 이내에, 개인정보의 처리 목적 달성, 해당 서비스의 폐지, 사업의 종료 등 그 개인정보가 불필요하게 되었을 때에는 개인정보의 처리가 불필요한 것으로 인정되는 날로부터 5일 이내에 그 개인정보를 파기합니다.6. 개인정보 자동 수집 장치의 설치•운영 및 거부에 관한 사항① ‘어반런드렛’은 개별적인 맞춤서비스를 제공하기 위해 이용정보를 저장하고 수시로 불러오는 ‘쿠키(cookie)’를 사용합니다.② 쿠키는 웹사이트를 운영하는데 이용되는 서버(https)가 이용자의 컴퓨터 브라우저에게 보내는 소량의 정보이며 이용자들의 PC 컴퓨터내의 하드디스크에 저장되기도 합니다.가. 쿠키의 사용 목적 : 이용자가 방문한 각 서비스와 웹 사이트들에 대한 방문 및 이용형태, 인기 검색어, 보안접속 여부, 등을 파악하여 이용자에게 최적화된 정보 제공을 위해 사용됩니다.나. 쿠키의 설치•운영 및 거부 : 웹브라우저 상단의 도구>인터넷 옵션>개인정보 메뉴의 옵션 설정을 통해 쿠키 저장을 거부 할 수 있습니다.다. 쿠키 저장을 거부할 경우 맞춤형 서비스 이용에 어려움이 발생할 수 있습니다.7. 개인정보 보호책임자 작성① ‘어반런드렛’은 개인정보 처리에 관한 업무를 총괄해서 책임지고, 개인정보 처리와 관련한 정보주체의 불만처리 및 피해구제 등을 위하여 아래와 같이 개인정보 보호책임자를 지정하고 있습니다.▶ 개인정보 보호책임자성명 : 손수정직책 : 대표직급 : CEO연락처 : 1577-8725, contact@jpinnovation.kr※ 개인정보 보호 담당부서로 연결됩니다.▶ 개인정보 보호 담당부서부서명 : 마케팅팀담당자 : 곽은미연락처 : 1577-8725, amykwak@jpinnovation.kr② ‘어반런드렛’의 서비스(또는 사업)을 이용하시면서 발생한 모든 개인정보 보호 관련 문의, 불만처리, 피해구제 등에 관한 사항을 개인정보 보호책임자 및 담당부서로 문의하실 수 있습니다.‘어반런드렛’은 정보주체의 문의에 대해 지체 없이 답변 및 처리해드릴 것입니다.8. 개인정보 처리방침 변경① 이 개인정보처리방침은 시행일로부터 적용되며, 법령 및 방침에 따른 변경내용의 추가, 삭제 및 정정이 있는 경우에는 변경사항의 시행 7일 전부터 공지사항을 통하여 고지할 것입니다.9. 개인정보의 안전성 확보 조치 ‘어반런드렛’은 개인정보보호법 제29조에 따라 다음과 같이 안전성 확보에 필요한 기술적/관리적 및 물리적 조치를 하고 있습니다.① 개인정보 취급 직원의 최소화 및 교육개인정보를 취급하는 직원을 지정하고 담당자에 한정시켜 최소화 하여 개인정보를 관리하는 대책을 시행하고 있습니다.② 해킹 등에 대비한 기술적 대책‘어반런드렛’은 해킹이나 컴퓨터 바이러스 등에 의한 개인정보 유출 및 훼손을 막기 위하여 보안프로그램을 설치하고 주기적인 갱신·점검을 하며 외부로부터 접근이 통제된 구역에 시스템을 설치하고 기술적/물리적으로 감시 및 차단하고 있습니다.③ 개인정보의 암호화이용자의 개인정보는 비밀번호는 암호화 되어 저장 및 관리되고 있어, 본인만이 알 수 있으며 중요한 데이터는 파일 및 전송 데이터를 암호화 하거나 파일 잠금 기능을 사용하는 등의 별도 보안기능을 사용하고 있습니다.④ 접속기록의 보관 및 위변조 방지개인정보처리시스템에 접속한 기록을 최소 6개월 이상 보관, 관리하고 있으며, 접속 기록이 위변조 및 도난, 분실되지 않도록 보안기능 사용하고 있습니다.⑤ 개인정보에 대한 접근 제한개인정보를 처리하는 데이터베이스시스템에 대한 접근권한의 부여,변경,말소를 통하여 개인정보에 대한 접근통제를 위하여 필요한 조치를 하고 있으며 침입차단시스템을 이용하여 외부로부터의 무단 접근을 통제하고 있습니다.10. 정보주체의 권익침해에 대한 구제방법아래의 기관은 (주)제이피 이노베이션 과는 별개의 기관으로서, ‘어반런드렛’의 자체적인 개인정보 불만처리, 피해구제 결과에 만족하지 못하시거나 보다 자세한 도움이 필요하시면 문의하여 주시기 바랍니다.▶ 개인정보 침해신고센터 (한국인터넷진흥원 운영)– 소관업무 : 개인정보 침해사실 신고, 상담 신청– 홈페이지 : privacy.kisa.or.kr– 전화 : (국번없이) 118– 주소 : (58324) 전남 나주시 진흥길 9(빛가람동 301-2) 3층 개인정보침해신고센터▶ 개인정보 분쟁조정위원회– 소관업무 : 개인정보 분쟁조정신청, 집단분쟁조정 (민사적 해결)– 홈페이지 : www.kopico.go.kr– 전화 : (국번없이) 1833-6972– 주소 : (03171)서울특별시 종로구 세종대로 209 정부서울청사 4층▶ 대검찰청 사이버범죄수사단 : 02-3480-3573 (www.spo.go.kr)▶ 경찰청 사이버안전국 : 182 (http://cyberbureau.police.go.kr)',
                        ParamType.String,
                      ),
                    }.withoutNulls,
                  );
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  height: 44,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SelectionArea(
                              child: Text(
                            FFLocalizations.of(context).getText(
                              'a9z4agkw' /* 개인정보 처리방침 */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          )),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: FlutterFlowTheme.of(context).customColor2,
                        size: 16,
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['rowOnPageLoadAnimation4']!),
                ),
              ),
            ),
            Padding(
              padding: EdgeInsetsDirectional.fromSTEB(0, 40, 0, 0),
              child: InkWell(
                onTap: () async {
                  await showModalBottomSheet(
                    isScrollControlled: true,
                    backgroundColor: Colors.transparent,
                    enableDrag: false,
                    context: context,
                    builder: (context) {
                      return Padding(
                        padding: MediaQuery.of(context).viewInsets,
                        child: Container(
                          height: MediaQuery.of(context).size.height * 0.55,
                          child: BottomWidget(
                            title: '최신 버전입니다.',
                            txt: '현재 최신버전(1.0.1) 상태입니다. ',
                          ),
                        ),
                      );
                    },
                  ).then((value) => setState(() {}));
                },
                child: Container(
                  width: MediaQuery.of(context).size.width * 0.8,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).secondaryBackground,
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Column(
                        mainAxisSize: MainAxisSize.max,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SelectionArea(
                              child: Text(
                            FFLocalizations.of(context).getText(
                              '2linrtic' /* 버전 정보(1.0.1) */,
                            ),
                            style: FlutterFlowTheme.of(context).bodyText1,
                          )),
                          Padding(
                            padding: EdgeInsetsDirectional.fromSTEB(0, 3, 0, 0),
                            child: SelectionArea(
                                child: Text(
                              FFLocalizations.of(context).getText(
                                'g3lqegf6' /* 최신 버전으로 업데이트 */,
                              ),
                              style: FlutterFlowTheme.of(context)
                                  .bodyText1
                                  .override(
                                    fontFamily: FlutterFlowTheme.of(context)
                                        .bodyText1Family,
                                    color: FlutterFlowTheme.of(context)
                                        .customColor3,
                                    fontSize: 12,
                                    useGoogleFonts: GoogleFonts.asMap()
                                        .containsKey(
                                            FlutterFlowTheme.of(context)
                                                .bodyText1Family),
                                  ),
                            )),
                          ),
                        ],
                      ),
                      Icon(
                        Icons.arrow_forward_ios_rounded,
                        color: FlutterFlowTheme.of(context).customColor2,
                        size: 16,
                      ),
                    ],
                  ).animateOnPageLoad(
                      animationsMap['rowOnPageLoadAnimation5']!),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
