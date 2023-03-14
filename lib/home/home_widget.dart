import '../backend/api_requests/api_calls.dart';
import '../description/description_widget.dart';
import '../flutter_flow/flutter_flow_icon_button.dart';
import '../flutter_flow/flutter_flow_theme.dart';
import '../flutter_flow/flutter_flow_util.dart';
import '../t_vshow_list/t_vshow_list_widget.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart'
as smooth_page_indicator;
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeWidget extends StatefulWidget {
  const HomeWidget({Key? key}) : super(key: key);

  @override
  _HomeWidgetState createState() => _HomeWidgetState();
}

class _HomeWidgetState extends State<HomeWidget> {
  PageController? pageViewController;
  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      body: SafeArea(
        child: GestureDetector(
          onTap: () => FocusScope.of(context).unfocus(),
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Stack(
                  children: [
                    Align(
                      alignment: AlignmentDirectional(0, 0),
                      child: Container(
                        height: 380,
                        decoration: BoxDecoration(
                          boxShadow: [
                            BoxShadow(
                              blurRadius: 4,
                              color: Color(0x33000000),
                              offset: Offset(0, 2),
                            )
                          ],
                        ),
                        child: Container(
                          width: double.infinity,
                          height: 500,
                          child: Stack(
                            children: [
                              PageView(
                                controller: pageViewController ??=
                                    PageController(initialPage: 0),
                                scrollDirection: Axis.horizontal,
                                children: [
                                  Stack(
                                    children: [
                                      Image.network(
                                        'https://picsum.photos/seed/0/600',
                                        width: 400,
                                        height: 380,
                                        fit: BoxFit.cover,
                                      ),
                                      Align(
                                        alignment: AlignmentDirectional(0, 1),
                                        child: Container(
                                          width: double.infinity,
                                          height: 200,
                                          decoration: BoxDecoration(
                                            gradient: LinearGradient(
                                              colors: [
                                                Colors.transparent,
                                                FlutterFlowTheme.of(context)
                                                    .primaryBackground
                                              ],
                                              stops: [0, 1],
                                              begin:
                                              AlignmentDirectional(0, -1),
                                              end: AlignmentDirectional(0, 1),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Stack(
                                        children: [
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.79, 0.64),
                                            child: Text(
                                              'Bullet Train',
                                              style: FlutterFlowTheme.of(
                                                  context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                color: FlutterFlowTheme.of(
                                                    context)
                                                    .secondaryText,
                                                fontSize: 20,
                                                fontWeight: FontWeight.bold,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                -0.75, 0.75),
                                            child: Text(
                                              'Action. Drama. Adventure',
                                              style:
                                              FlutterFlowTheme.of(context)
                                                  .bodyText1
                                                  .override(
                                                fontFamily: 'Poppins',
                                                fontSize: 12,
                                                fontWeight:
                                                FontWeight.w500,
                                              ),
                                            ),
                                          ),
                                          Align(
                                            alignment: AlignmentDirectional(
                                                0.81, 0.67),
                                            child: FlutterFlowIconButton(
                                              borderColor: Colors.transparent,
                                              borderRadius: 30,
                                              borderWidth: 1,
                                              buttonSize: 50,
                                              fillColor:
                                              FlutterFlowTheme.of(context)
                                                  .primaryColor,
                                              icon: Icon(
                                                Icons.play_arrow,
                                                color: Colors.white,
                                                size: 30,
                                              ),
                                              onPressed: () {
                                                print('IconButton pressed ...');
                                              },
                                            ),
                                          ),
                                        ],
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                              Align(
                                alignment: AlignmentDirectional(0, 1),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0, 0, 280, 10),
                                  child:
                                  smooth_page_indicator.SmoothPageIndicator(
                                    controller: pageViewController ??=
                                        PageController(initialPage: 0),
                                    count: 1,
                                    axisDirection: Axis.horizontal,
                                    onDotClicked: (i) {
                                      pageViewController!.animateToPage(
                                        i,
                                        duration: Duration(milliseconds: 500),
                                        curve: Curves.ease,
                                      );
                                    },
                                    effect: smooth_page_indicator
                                        .ExpandingDotsEffect(
                                      expansionFactor: 2,
                                      spacing: 8,
                                      radius: 16,
                                      dotWidth: 16,
                                      dotHeight: 8,
                                      dotColor: Color(0xFF9E9E9E),
                                      activeDotColor: Color(0xFFF20230),
                                      paintStyle: PaintingStyle.fill,
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.2),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 30, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Text(
                            'Now Playing',
                            style:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryText,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(170, 0, 0, 0),
                          child: Text(
                            'see all',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                              fontFamily: 'Poppins',
                              color:
                              FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xFF686868),
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.65),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [

                          //
                          Container(
                            width: 400,
                            height: MediaQuery.of(context).size.height * 0.28,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryBackground,
                            ),
                            child: FutureBuilder<ApiCallResponse>(
                              future: NowPlayingCall.call(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context).primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                final listViewNowPlayingResponse = snapshot.data!;
                                return Builder(
                                  builder: (context) {
                                    final NowPlayingResponse = getJsonField(
                                      listViewNowPlayingResponse.jsonBody,
                                      r'''$.results''',
                                    ).toList().take(8).toList();
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: NowPlayingResponse.length,
                                      itemBuilder: (context, NowPlayingIndex) {
                                        final NowPlayingItem =
                                        NowPlayingResponse[NowPlayingIndex];
                                        return Align(
                                          alignment: AlignmentDirectional(-0.95, 0.65),
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                20, 0, 0, 0),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional.fromSTEB(
                                                        0, 0, 10, 10),
                                                    child: Container(
                                                      width: 100,
                                                      height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                          0.22,
                                                      decoration: BoxDecoration(
                                                        color:
                                                        FlutterFlowTheme.of(context)
                                                            .primaryBackground,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize: MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize.max,
                                                            children: [
                                                              InkWell(
                                                                onTap: () async {
                                                                  context.pushNamed(
                                                                      'description');
                                                                },
                                                                child: ClipRRect(
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .circular(10),
                                                                  child: Image.network(
                                                                    'https://www.themoviedb.org/t/p/w1280/${getJsonField(
                                                                      NowPlayingItem,
                                                                      r'''$.poster_path''',
                                                                    ).toString()}',
                                                                    width: 100,
                                                                    height: MediaQuery.of(
                                                                        context)
                                                                        .size
                                                                        .height *
                                                                        0.17,
                                                                    fit: BoxFit.cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize.max,
                                                            children: [
                                                              Text(
                                                                getJsonField(
                                                                  NowPlayingItem,
                                                                  r'''$.title''',
                                                                )
                                                                    .toString()
                                                                    .maybeHandleOverflow(
                                                                    maxChars: 10),
                                                                style:
                                                                FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                  'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .secondaryText,
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize.max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    5, 0, 0, 0),
                                                                child: Text(
                                                                  '1h 37m',
                                                                  style:
                                                                  FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontSize: 9,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    25, 0, 0, 0),
                                                                child: Icon(
                                                                  Icons.star_rate,
                                                                  color:
                                                                  Color(0xFFCF9924),
                                                                  size: 13,
                                                                ),
                                                              ),
                                                              Text(
                                                                '8.9',
                                                                style:
                                                                FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                  'Poppins',
                                                                  fontSize: 9,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                          ),

                          //
                          /*Container(
                            width: 400,
                            height: MediaQuery.of(context).size.height * 0.28,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: FutureBuilder<ApiCallResponse>(
                              future: PopularCall.call(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                final listViewPopularResponse = snapshot.data!;
                                return Builder(
                                  builder: (context) {
                                    final popularMovies = getJsonField(
                                      listViewPopularResponse.jsonBody,
                                      r'''$.results''',
                                    ).toList().take(8).toList();
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: popularMovies.length,
                                      itemBuilder:
                                          (context, popularMoviesIndex) {
                                        final popularMoviesItem =
                                        popularMovies[popularMoviesIndex];
                                        return Align(
                                          alignment:
                                          AlignmentDirectional(-0.95, 0.65),
                                          child: Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20, 0, 0, 0),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 0, 10, 10),
                                                    child: Container(
                                                      width: 100,
                                                      height:
                                                      MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                          0.22,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                            .of(context)
                                                            .primaryBackground,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              InkWell(
                                                                onTap:
                                                                    () async {
                                                                  context.pushNamed(
                                                                      'description');
                                                                },
                                                                child:
                                                                ClipRRect(
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                      10),
                                                                  child: Image
                                                                      .network(
                                                                    'https://picsum.photos/seed/19/600',
                                                                    width: 100,
                                                                    height: MediaQuery.of(context)
                                                                        .size
                                                                        .height *
                                                                        0.17,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Text(
                                                                'Name',
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                  'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                  12,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    5,
                                                                    0,
                                                                    0,
                                                                    0),
                                                                child: Text(
                                                                  '1h 37m',
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontSize:
                                                                    9,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    25,
                                                                    0,
                                                                    0,
                                                                    0),
                                                                child: Icon(
                                                                  Icons
                                                                      .star_rate,
                                                                  color: Color(
                                                                      0xFFCF9924),
                                                                  size: 13,
                                                                ),
                                                              ),
                                                              Text(
                                                                '8.9',
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                  'Poppins',
                                                                  fontSize:
                                                                  9,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                          ),*/
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.2),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Text(
                            'On TV',
                            style:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryText,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(220, 0, 0, 0),
                          child: Text(
                            'see all',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                              fontFamily: 'Poppins',
                              color:
                              FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xFF686868),
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.65),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 20, 0, 0),
                    child: SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisSize: MainAxisSize.max,
                        children: [
                          //
                          Container(
                            width: 400,
                            height: MediaQuery.of(context).size.height * 0.28,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context).primaryBackground,
                            ),
                            child: FutureBuilder<ApiCallResponse>(
                              future: OnTvCall.call(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context).primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                final listViewOnTvResponse = snapshot.data!;
                                return Builder(
                                  builder: (context) {
                                    final OnTvResponse = getJsonField(
                                      listViewOnTvResponse.jsonBody,
                                      r'''$.results''',
                                    ).toList().take(8).toList();
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: OnTvResponse.length,
                                      itemBuilder: (context, OnTvIndex) {
                                        final OnTvItem =
                                        OnTvResponse[OnTvIndex];
                                        return Align(
                                          alignment: AlignmentDirectional(-0.95, 0.65),
                                          child: Padding(
                                            padding: EdgeInsetsDirectional.fromSTEB(
                                                20, 0, 0, 0),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment: MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional.fromSTEB(
                                                        0, 0, 10, 10),
                                                    child: Container(
                                                      width: 100,
                                                      height: MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                          0.28,
                                                      decoration: BoxDecoration(
                                                        color:
                                                        FlutterFlowTheme.of(context)
                                                            .primaryBackground,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize: MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize.max,
                                                            children: [
                                                              InkWell(
                                                                onTap: () async {
                                                                  context.pushNamed(
                                                                      'description');
                                                                },
                                                                child: ClipRRect(
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .circular(10),
                                                                  child: Image.network(
                                                                    'https://www.themoviedb.org/t/p/w1280/${getJsonField(
                                                                      OnTvItem,
                                                                      r'''$.poster_path''',
                                                                    ).toString()}',
                                                                    width: 100,
                                                                    height: MediaQuery.of(
                                                                        context)
                                                                        .size
                                                                        .height *
                                                                        0.17,
                                                                    fit: BoxFit.cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize.max,
                                                            children: [
                                                              Text(
                                                                getJsonField(
                                                                  OnTvItem,
                                                                  r'''$.name''',
                                                                )
                                                                    .toString()
                                                                    .maybeHandleOverflow(
                                                                    maxChars: 10),
                                                                style:
                                                                FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                  'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .secondaryText,
                                                                  fontSize: 12,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize.max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    5, 0, 0, 0),
                                                                child: Text(
                                                                  '1h 37m',
                                                                  style:
                                                                  FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontSize: 9,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    25, 0, 0, 0),
                                                                child: Icon(
                                                                  Icons.star_rate,
                                                                  color:
                                                                  Color(0xFFCF9924),
                                                                  size: 13,
                                                                ),
                                                              ),
                                                              Text(
                                                                '8.9',
                                                                style:
                                                                FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                  'Poppins',
                                                                  fontSize: 9,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                          ),
                          //

                          /*Container(
                            width: 400,
                            height: MediaQuery.of(context).size.height * 0.28,
                            decoration: BoxDecoration(
                              color: FlutterFlowTheme.of(context)
                                  .primaryBackground,
                            ),
                            child: FutureBuilder<ApiCallResponse>(
                              future: PopularCall.call(),
                              builder: (context, snapshot) {
                                // Customize what your widget looks like when it's loading.
                                if (!snapshot.hasData) {
                                  return Center(
                                    child: SizedBox(
                                      width: 50,
                                      height: 50,
                                      child: CircularProgressIndicator(
                                        color: FlutterFlowTheme.of(context)
                                            .primaryColor,
                                      ),
                                    ),
                                  );
                                }
                                final listViewPopularResponse = snapshot.data!;
                                return Builder(
                                  builder: (context) {
                                    final popularMovies = getJsonField(
                                      listViewPopularResponse.jsonBody,
                                      r'''$.results''',
                                    ).toList().take(8).toList();
                                    return ListView.builder(
                                      padding: EdgeInsets.zero,
                                      primary: false,
                                      shrinkWrap: true,
                                      scrollDirection: Axis.horizontal,
                                      itemCount: popularMovies.length,
                                      itemBuilder:
                                          (context, popularMoviesIndex) {
                                        final popularMoviesItem =
                                        popularMovies[popularMoviesIndex];
                                        return Align(
                                          alignment:
                                          AlignmentDirectional(-0.95, 0.65),
                                          child: Padding(
                                            padding:
                                            EdgeInsetsDirectional.fromSTEB(
                                                20, 0, 0, 0),
                                            child: SingleChildScrollView(
                                              scrollDirection: Axis.horizontal,
                                              child: Row(
                                                mainAxisSize: MainAxisSize.max,
                                                mainAxisAlignment:
                                                MainAxisAlignment.end,
                                                children: [
                                                  Padding(
                                                    padding:
                                                    EdgeInsetsDirectional
                                                        .fromSTEB(
                                                        0, 0, 10, 10),
                                                    child: Container(
                                                      width: 100,
                                                      height:
                                                      MediaQuery.of(context)
                                                          .size
                                                          .height *
                                                          0.22,
                                                      decoration: BoxDecoration(
                                                        color: FlutterFlowTheme
                                                            .of(context)
                                                            .primaryBackground,
                                                      ),
                                                      child: Column(
                                                        mainAxisSize:
                                                        MainAxisSize.max,
                                                        children: [
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              InkWell(
                                                                onTap:
                                                                    () async {
                                                                  context.pushNamed(
                                                                      'TVshowList');
                                                                },
                                                                child:
                                                                ClipRRect(
                                                                  borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                      10),
                                                                  child: Image
                                                                      .network(
                                                                    'https://picsum.photos/seed/19/600',
                                                                    width: 100,
                                                                    height: MediaQuery.of(context)
                                                                        .size
                                                                        .height *
                                                                        0.17,
                                                                    fit: BoxFit
                                                                        .cover,
                                                                  ),
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Text(
                                                                'Name',
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                  'Poppins',
                                                                  color: FlutterFlowTheme.of(
                                                                      context)
                                                                      .secondaryText,
                                                                  fontSize:
                                                                  12,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                          Row(
                                                            mainAxisSize:
                                                            MainAxisSize
                                                                .max,
                                                            children: [
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    5,
                                                                    0,
                                                                    0,
                                                                    0),
                                                                child: Text(
                                                                  '1h 37m',
                                                                  style: FlutterFlowTheme.of(
                                                                      context)
                                                                      .bodyText1
                                                                      .override(
                                                                    fontFamily:
                                                                    'Poppins',
                                                                    fontSize:
                                                                    9,
                                                                  ),
                                                                ),
                                                              ),
                                                              Padding(
                                                                padding:
                                                                EdgeInsetsDirectional
                                                                    .fromSTEB(
                                                                    25,
                                                                    0,
                                                                    0,
                                                                    0),
                                                                child: Icon(
                                                                  Icons
                                                                      .star_rate,
                                                                  color: Color(
                                                                      0xFFCF9924),
                                                                  size: 13,
                                                                ),
                                                              ),
                                                              Text(
                                                                '8.9',
                                                                style: FlutterFlowTheme.of(
                                                                    context)
                                                                    .bodyText1
                                                                    .override(
                                                                  fontFamily:
                                                                  'Poppins',
                                                                  fontSize:
                                                                  9,
                                                                ),
                                                              ),
                                                            ],
                                                          ),
                                                        ],
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                          ),
                                        );
                                      },
                                    );
                                  },
                                );
                              },
                            ),
                          ),*/
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: AlignmentDirectional(0, 0.2),
                  child: Padding(
                    padding: EdgeInsetsDirectional.fromSTEB(0, 10, 0, 0),
                    child: Row(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(20, 0, 0, 0),
                          child: Text(
                            'Popular Movies',
                            style:
                            FlutterFlowTheme.of(context).bodyText1.override(
                              fontFamily: 'Poppins',
                              color: FlutterFlowTheme.of(context)
                                  .secondaryText,
                              fontSize: 16,
                            ),
                          ),
                        ),
                        Padding(
                          padding: EdgeInsetsDirectional.fromSTEB(145, 0, 0, 0),
                          child: Text(
                            'see all',
                            style: FlutterFlowTheme.of(context)
                                .bodyText1
                                .override(
                              fontFamily: 'Poppins',
                              color:
                              FlutterFlowTheme.of(context).primaryText,
                            ),
                          ),
                        ),
                        Icon(
                          Icons.keyboard_arrow_right,
                          color: Color(0xFF686868),
                          size: 24,
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  width: 400,
                  height: MediaQuery.of(context).size.height * 0.28,
                  decoration: BoxDecoration(
                    color: FlutterFlowTheme.of(context).primaryBackground,
                  ),
                  child: FutureBuilder<ApiCallResponse>(
                    future: PopularCall.call(),
                    builder: (context, snapshot) {
                      // Customize what your widget looks like when it's loading.
                      if (!snapshot.hasData) {
                        return Center(
                          child: SizedBox(
                            width: 50,
                            height: 50,
                            child: CircularProgressIndicator(
                              color: FlutterFlowTheme.of(context).primaryColor,
                            ),
                          ),
                        );
                      }
                      final listViewPopularResponse = snapshot.data!;
                      return Builder(
                        builder: (context) {
                          final popularMovies = getJsonField(
                            listViewPopularResponse.jsonBody,
                            r'''$.results''',
                          ).toList().take(8).toList();
                          return ListView.builder(
                            padding: EdgeInsets.zero,
                            primary: false,
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemCount: popularMovies.length,
                            itemBuilder: (context, popularMoviesIndex) {
                              final popularMoviesItem =
                              popularMovies[popularMoviesIndex];
                              return Align(
                                alignment: AlignmentDirectional(-0.95, 0.65),
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      20, 0, 0, 0),
                                  child: SingleChildScrollView(
                                    scrollDirection: Axis.horizontal,
                                    child: Row(
                                      mainAxisSize: MainAxisSize.max,
                                      mainAxisAlignment: MainAxisAlignment.end,
                                      children: [
                                        Padding(
                                          padding:
                                          EdgeInsetsDirectional.fromSTEB(
                                              0, 0, 10, 10),
                                          child: Container(
                                            width: 100,
                                            height: MediaQuery.of(context)
                                                .size
                                                .height *
                                                0.22,
                                            decoration: BoxDecoration(
                                              color:
                                              FlutterFlowTheme.of(context)
                                                  .primaryBackground,
                                            ),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              children: [
                                                Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    InkWell(
                                                      onTap: () async {
                                                        context.pushNamed(
                                                            'description');
                                                      },
                                                      child: ClipRRect(
                                                        borderRadius:
                                                        BorderRadius
                                                            .circular(10),
                                                        child: Image.network(
                                                          'https://www.themoviedb.org/t/p/w1280/${getJsonField(
                                                            popularMoviesItem,
                                                            r'''$.poster_path''',
                                                          ).toString()}',
                                                          width: 100,
                                                          height: MediaQuery.of(
                                                              context)
                                                              .size
                                                              .height *
                                                              0.17,
                                                          fit: BoxFit.cover,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Text(
                                                      getJsonField(
                                                        popularMoviesItem,
                                                        r'''$.title''',
                                                      )
                                                          .toString()
                                                          .maybeHandleOverflow(
                                                          maxChars: 10),
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyText1
                                                          .override(
                                                        fontFamily:
                                                        'Poppins',
                                                        color: FlutterFlowTheme.of(
                                                            context)
                                                            .secondaryText,
                                                        fontSize: 12,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                Row(
                                                  mainAxisSize:
                                                  MainAxisSize.max,
                                                  children: [
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          5, 0, 0, 0),
                                                      child: Text(
                                                        '1h 37m',
                                                        style:
                                                        FlutterFlowTheme.of(
                                                            context)
                                                            .bodyText1
                                                            .override(
                                                          fontFamily:
                                                          'Poppins',
                                                          fontSize: 9,
                                                        ),
                                                      ),
                                                    ),
                                                    Padding(
                                                      padding:
                                                      EdgeInsetsDirectional
                                                          .fromSTEB(
                                                          25, 0, 0, 0),
                                                      child: Icon(
                                                        Icons.star_rate,
                                                        color:
                                                        Color(0xFFCF9924),
                                                        size: 13,
                                                      ),
                                                    ),
                                                    Text(
                                                      '8.9',
                                                      style:
                                                      FlutterFlowTheme.of(
                                                          context)
                                                          .bodyText1
                                                          .override(
                                                        fontFamily:
                                                        'Poppins',
                                                        fontSize: 9,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                              );
                            },
                          );
                        },
                      );
                    },
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
