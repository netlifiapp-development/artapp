import '/backend/backend.dart';
import '/components/empty_list_widget.dart';
import '/components/logo_widget.dart';
import '/components/modal_post_widget.dart';
import '/components/post_card_widget.dart';
import '/components/side_nav2_widget.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:provider/provider.dart';
import 'home_page_model.dart';
export 'home_page_model.dart';

class HomePageWidget extends StatefulWidget {
  const HomePageWidget({Key? key}) : super(key: key);

  @override
  _HomePageWidgetState createState() => _HomePageWidgetState();
}

class _HomePageWidgetState extends State<HomePageWidget> {
  late HomePageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();
  final _unfocusNode = FocusNode();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HomePageModel());

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
      backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          context.pushNamed(
            'GenerateArtPage',
            extra: <String, dynamic>{
              kTransitionInfoKey: TransitionInfo(
                hasTransition: true,
                transitionType: PageTransitionType.bottomToTop,
                duration: Duration(milliseconds: 250),
              ),
            },
          );
        },
        backgroundColor: FlutterFlowTheme.of(context).primary,
        elevation: 8.0,
        child: Image.asset(
          'assets/images/logo_white@2x.png',
          width: 32.0,
          height: 32.0,
          fit: BoxFit.cover,
        ),
      ),
      appBar: responsiveVisibility(
        context: context,
        tabletLandscape: false,
        desktop: false,
      )
          ? AppBar(
              backgroundColor: FlutterFlowTheme.of(context).primaryBackground,
              automaticallyImplyLeading: false,
              title: wrapWithModel(
                model: _model.logoModel,
                updateCallback: () => setState(() {}),
                child: LogoWidget(),
              ),
              actions: [],
              centerTitle: false,
              elevation: 0.0,
            )
          : null,
      body: GestureDetector(
        onTap: () => FocusScope.of(context).requestFocus(_unfocusNode),
        child: Row(
          mainAxisSize: MainAxisSize.max,
          children: [
            wrapWithModel(
              model: _model.sideNav2Model,
              updateCallback: () => setState(() {}),
              child: SideNav2Widget(
                selectedNav: 1,
              ),
            ),
            Expanded(
              child: Align(
                alignment: AlignmentDirectional(0.0, 0.0),
                child: Container(
                  width: double.infinity,
                  height: double.infinity,
                  constraints: BoxConstraints(
                    maxWidth: 700.0,
                  ),
                  decoration: BoxDecoration(),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        StreamBuilder<List<PostsRecord>>(
                          stream: queryPostsRecord(
                            queryBuilder: (postsRecord) => postsRecord
                                .orderBy('time_posted', descending: true),
                          ),
                          builder: (context, snapshot) {
                            // Customize what your widget looks like when it's loading.
                            if (!snapshot.hasData) {
                              return Center(
                                child: Padding(
                                  padding: EdgeInsetsDirectional.fromSTEB(
                                      0.0, 250.0, 0.0, 0.0),
                                  child: SizedBox(
                                    width: 50.0,
                                    height: 50.0,
                                    child: SpinKitFadingCube(
                                      color:
                                          FlutterFlowTheme.of(context).primary,
                                      size: 50.0,
                                    ),
                                  ),
                                ),
                              );
                            }
                            List<PostsRecord> listViewPostsRecordList =
                                snapshot.data!;
                            if (listViewPostsRecordList.isEmpty) {
                              return Center(
                                child: Container(
                                  width:
                                      MediaQuery.of(context).size.width * 0.8,
                                  height: 400.0,
                                  child: EmptyListWidget(),
                                ),
                              );
                            }
                            return ListView.builder(
                              padding: EdgeInsets.zero,
                              shrinkWrap: true,
                              scrollDirection: Axis.vertical,
                              itemCount: listViewPostsRecordList.length,
                              itemBuilder: (context, listViewIndex) {
                                final listViewPostsRecord =
                                    listViewPostsRecordList[listViewIndex];
                                return InkWell(
                                  onTap: () async {
                                    if (MediaQuery.of(context).size.width >=
                                        820.0) {
                                      await showModalBottomSheet(
                                        isScrollControlled: true,
                                        backgroundColor: Colors.transparent,
                                        barrierColor:
                                            FlutterFlowTheme.of(context)
                                                .overlayColor,
                                        context: context,
                                        builder: (context) {
                                          return Padding(
                                            padding: MediaQuery.of(context)
                                                .viewInsets,
                                            child: Container(
                                              height: double.infinity,
                                              child: ModalPostWidget(
                                                postDocument:
                                                    listViewPostsRecord,
                                              ),
                                            ),
                                          );
                                        },
                                      ).then((value) => setState(() {}));
                                    } else {
                                      return;
                                    }
                                  },
                                  child: wrapWithModel(
                                    model: _model.postCardModels.getModel(
                                      listViewPostsRecord.reference.id,
                                      listViewIndex,
                                    ),
                                    updateCallback: () => setState(() {}),
                                    updateOnChange: true,
                                    child: PostCardWidget(
                                      key: Key(
                                        'Keygcs_${listViewPostsRecord.reference.id}',
                                      ),
                                      postInfo: listViewPostsRecord,
                                    ),
                                  ),
                                );
                              },
                            );
                          },
                        ),
                        Container(
                          width: double.infinity,
                          height: 50.0,
                          decoration: BoxDecoration(),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
