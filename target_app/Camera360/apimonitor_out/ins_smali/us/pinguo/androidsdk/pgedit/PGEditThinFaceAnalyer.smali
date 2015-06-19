.class public Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;
.super Ljava/lang/Object;
.source "PGEditThinFaceAnalyer.java"
.field private static final PI_VALUE:D = 3.141592653589793
.field private static final PI_VALUE_2:D = 1.5707963267948966
.field  mFeatures:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;
.field  m_fEdgeRadius:F
.field  m_fThinFaceLevel:F
.field  m_faceRect:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;
.field  m_leftDstThinFacePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
.field  m_leftEyePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
.field  m_leftSrcThinFacePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
.field  m_mouthPosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
.field  m_rightDstThinFacePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
.field  m_rightEyePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
.field  m_rightSrcThinFacePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
.method public constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_leftEyePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
iput-object p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_rightEyePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
iput-object p3, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_mouthPosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->mFeatures:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;
const/high16 v0, 0x42a0
iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_fThinFaceLevel:F
return-void
.end method
.method private FaceAndDegree(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)V
.registers 32
invoke-direct/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->faceRadian()F
move-result v13
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_leftEyePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-object/from16 v19, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_rightEyePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-object/from16 v20, v0
new-instance v21, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-direct/range {v21 .. v21}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V
move-object/from16 v0, p0
move-object/from16 v1, v19
move-object/from16 v2, v21
invoke-direct {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->PointEqualToPoint(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)Z
move-result v21
if-nez v21, :cond_1f0
new-instance v21, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-direct/range {v21 .. v21}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V
move-object/from16 v0, p0
move-object/from16 v1, v20
move-object/from16 v2, v21
invoke-direct {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->PointEqualToPoint(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)Z
move-result v21
if-nez v21, :cond_1f0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_faceRect:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;
move-object/from16 v18, v0
move-object/from16 v0, v18
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;->point:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget v5, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move-object/from16 v0, v18
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;->point:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget v6, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move-object/from16 v0, v18
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;->size:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$SizeType;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget v4, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$SizeType;->width:F
move-object/from16 v0, v18
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;->size:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$SizeType;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget v3, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$SizeType;->height:F
move-object/from16 v0, v19
iget v9, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move-object/from16 v0, v19
iget v10, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
float-to-double v0, v9
move-wide/from16 v21, v0
sub-float v23, v5, v9
move/from16 v0, v23
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v13
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
sub-float v23, v6, v10
move/from16 v0, v23
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v13
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D
move-result-wide v25
mul-double v23, v23, v25
sub-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v11, v0
float-to-double v0, v10
move-wide/from16 v21, v0
sub-float v23, v6, v10
move/from16 v0, v23
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v13
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
sub-float v23, v5, v9
move/from16 v0, v23
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v13
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v12, v0
float-to-double v0, v9
move-wide/from16 v21, v0
add-float v23, v5, v4
sub-float v23, v23, v9
move/from16 v0, v23
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v13
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
sub-float v23, v6, v10
move/from16 v0, v23
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v13
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D
move-result-wide v25
mul-double v23, v23, v25
sub-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v0, v0
move/from16 v16, v0
float-to-double v0, v10
move-wide/from16 v21, v0
sub-float v23, v6, v10
move/from16 v0, v23
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v13
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
add-float v23, v5, v4
sub-float v23, v23, v9
move/from16 v0, v23
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v13
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v0, v0
move/from16 v17, v0
float-to-double v0, v9
move-wide/from16 v21, v0
sub-float v23, v5, v9
move/from16 v0, v23
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v13
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
add-float v23, v6, v3
sub-float v23, v23, v10
move/from16 v0, v23
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v13
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D
move-result-wide v25
mul-double v23, v23, v25
sub-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v14, v0
float-to-double v0, v10
move-wide/from16 v21, v0
add-float v23, v6, v3
sub-float v23, v23, v10
move/from16 v0, v23
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v13
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
sub-float v23, v5, v9
move/from16 v0, v23
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v13
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v15, v0
float-to-double v0, v9
move-wide/from16 v21, v0
add-float v23, v5, v4
sub-float v23, v23, v9
move/from16 v0, v23
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v13
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
add-float v23, v6, v3
sub-float v23, v23, v10
move/from16 v0, v23
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v13
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D
move-result-wide v25
mul-double v23, v23, v25
sub-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v7, v0
float-to-double v0, v10
move-wide/from16 v21, v0
add-float v23, v6, v3
sub-float v23, v23, v10
move/from16 v0, v23
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v13
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
add-float v23, v5, v4
sub-float v23, v23, v9
move/from16 v0, v23
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v13
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v8, v0
move-object/from16 v0, p1
iput v11, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move-object/from16 v0, p1
iput v12, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move/from16 v0, v16
move-object/from16 v1, p2
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move/from16 v0, v17
move-object/from16 v1, p2
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move-object/from16 v0, p3
iput v14, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move-object/from16 v0, p3
iput v15, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move-object/from16 v0, p4
iput v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move-object/from16 v0, p4
iput v8, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
:cond_1f0
return-void
.end method
.method private PointEqualToPoint(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)Z
.registers 5
iget v0, p1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
iget v1, p2, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
cmpl-float v0, v0, v1
if-nez v0, :cond_12
iget v0, p1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
iget v1, p2, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
cmpl-float v0, v0, v1
if-nez v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method private distance(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)F
.registers 7
iget v2, p1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
iget v3, p2, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
sub-float v0, v2, v3
iget v2, p1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
iget v3, p2, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
sub-float v1, v2, v3
mul-float v2, v0, v0
mul-float v3, v1, v1
add-float/2addr v2, v3
float-to-double v2, v2
invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v2
double-to-float v2, v2
return v2
.end method
.method private execCalcDstThinFace()Ljava/lang/String;
.registers 37
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_leftEyePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-object/from16 v25, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_rightEyePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-object/from16 v30, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_mouthPosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-object/from16 v27, v0
invoke-virtual/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->leftSrcThinFacePosition()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v24
invoke-virtual/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->RightSrcThinFacePosition()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v29
move-object/from16 v0, v30
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move/from16 v32, v0
move-object/from16 v0, v25
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move/from16 v33, v0
sub-float v20, v32, v33
move-object/from16 v0, v30
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move/from16 v32, v0
move-object/from16 v0, v25
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move/from16 v33, v0
sub-float v21, v32, v33
const/high16 v32, 0x3f00
mul-float v20, v20, v32
const/high16 v32, 0x3f00
mul-float v21, v21, v32
move-object/from16 v0, v25
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move/from16 v32, v0
add-float v32, v32, v20
move-object/from16 v0, v25
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move/from16 v33, v0
add-float v33, v33, v21
move-object/from16 v0, p0
move/from16 v1, v32
move/from16 v2, v33
invoke-direct {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->pointMake(FF)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v3
move-object/from16 v0, v27
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move/from16 v32, v0
iget v0, v3, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move/from16 v33, v0
sub-float v20, v32, v33
move-object/from16 v0, v27
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move/from16 v32, v0
iget v0, v3, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move/from16 v33, v0
sub-float v21, v32, v33
const/high16 v32, 0x3f00
mul-float v20, v20, v32
const/high16 v32, 0x3f00
mul-float v21, v21, v32
iget v0, v3, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move/from16 v32, v0
add-float v32, v32, v20
iget v0, v3, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move/from16 v33, v0
add-float v33, v33, v21
move-object/from16 v0, p0
move/from16 v1, v32
move/from16 v2, v33
invoke-direct {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->pointMake(FF)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v26
move-object/from16 v0, p0
move-object/from16 v1, v25
move-object/from16 v2, v26
invoke-direct {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->distance(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)F
move-result v12
move-object/from16 v0, p0
move-object/from16 v1, v30
move-object/from16 v2, v26
invoke-direct {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->distance(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)F
move-result v19
move-object/from16 v0, p0
move-object/from16 v1, v27
move-object/from16 v2, v26
invoke-direct {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->distance(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)F
move-result v18
add-float v32, v12, v19
add-float v32, v32, v18
const/high16 v33, 0x4040
div-float v13, v32, v33
const/high16 v32, 0x3fc0
mul-float v13, v13, v32
const/4 v6, 0x0
move-object/from16 v0, v30
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move/from16 v32, v0
move-object/from16 v0, v25
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move/from16 v33, v0
sub-float v32, v32, v33
const/high16 v33, 0x3f00
mul-float v5, v32, v33
const v7, 0x3e32b8c2
const v14, 0x3e32b8c2
invoke-direct/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->faceRadian()F
move-result v4
new-instance v23, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-direct/range {v23 .. v23}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V
new-instance v28, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-direct/range {v28 .. v28}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V
const/16 v32, 0x0
cmpl-float v32, v4, v32
if-lez v32, :cond_2af
const-wide v32, 0x3ff921fb54442d18L
float-to-double v0, v4
move-wide/from16 v34, v0
sub-double v32, v32, v34
float-to-double v0, v7
move-wide/from16 v34, v0
add-double v32, v32, v34
move-wide/from16 v0, v32
double-to-float v7, v0
add-float/2addr v14, v4
move-object/from16 v0, p0
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_fThinFaceLevel:F
move/from16 v32, v0
const v33, 0x3c23d70a
mul-float v32, v32, v33
mul-float v32, v32, v13
const v33, 0x3f75c28f
mul-float v10, v32, v33
float-to-double v0, v10
move-wide/from16 v32, v0
float-to-double v0, v7
move-wide/from16 v34, v0
invoke-static/range {v34 .. v35}, Ljava/lang/Math;->tan(D)D
move-result-wide v34
div-double v32, v32, v34
move-wide/from16 v0, v32
double-to-float v11, v0
move-object/from16 v0, p0
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_fThinFaceLevel:F
move/from16 v32, v0
const v33, 0x3c23d70a
mul-float v32, v32, v33
mul-float v32, v32, v13
const v33, 0x3f75c28f
mul-float v16, v32, v33
move/from16 v0, v16
float-to-double v0, v0
move-wide/from16 v32, v0
float-to-double v0, v14
move-wide/from16 v34, v0
invoke-static/range {v34 .. v35}, Ljava/lang/Math;->tan(D)D
move-result-wide v34
mul-double v32, v32, v34
move-wide/from16 v0, v32
double-to-float v0, v0
move/from16 v17, v0
move-object/from16 v0, v24
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move/from16 v32, v0
add-float v32, v32, v10
move-object/from16 v0, v24
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move/from16 v33, v0
add-float v33, v33, v11
move-object/from16 v0, p0
move/from16 v1, v32
move/from16 v2, v33
invoke-direct {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->pointMake(FF)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v23
move-object/from16 v0, v29
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move/from16 v32, v0
sub-float v32, v32, v16
move-object/from16 v0, v29
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move/from16 v33, v0
sub-float v33, v33, v17
move-object/from16 v0, p0
move/from16 v1, v32
move/from16 v2, v33
invoke-direct {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->pointMake(FF)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v28
:goto_172
move v8, v13
const v9, 0x3dcccccd
move v15, v13
const v22, 0x3dcccccd
move-object/from16 v0, v23
move-object/from16 v1, p0
iput-object v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_leftDstThinFacePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-object/from16 v0, v28
move-object/from16 v1, p0
iput-object v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_rightDstThinFacePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-object/from16 v0, p0
iput v13, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_fEdgeRadius:F
new-instance v31, Ljava/lang/StringBuilder;
invoke-direct/range {v31 .. v31}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v32, "leftEyePos="
invoke-virtual/range {v31 .. v32}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v25
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move/from16 v33, v0
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v32
const-string/jumbo v33, ","
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v25
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move/from16 v33, v0
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v32
const-string/jumbo v33, ";rightEyePos="
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v30
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move/from16 v33, v0
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v32
const-string/jumbo v33, ","
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v30
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move/from16 v33, v0
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v32
const-string/jumbo v33, ";eyeStrong="
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v32
invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v32
const-string/jumbo v33, ";eyeRadius="
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v32
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v32
const-string/jumbo v33, ";leftEdgeSrcPos="
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v24
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move/from16 v33, v0
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v32
const-string/jumbo v33, ","
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v24
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move/from16 v33, v0
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v32
const-string/jumbo v33, ";leftEdgeDstPos="
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v23
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move/from16 v33, v0
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v32
const-string/jumbo v33, ","
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v23
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move/from16 v33, v0
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v32
const-string/jumbo v33, ";leftEdgeRadius="
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v32
invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v32
const-string/jumbo v33, ";leftEdgeStrong="
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v32
invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v32
const-string/jumbo v33, ";rightEdgeSrcPos="
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v29
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move/from16 v33, v0
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v32
const-string/jumbo v33, ","
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v29
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move/from16 v33, v0
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v32
const-string/jumbo v33, ";rightEdgeDstPos="
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v28
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move/from16 v33, v0
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v32
const-string/jumbo v33, ","
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v28
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move/from16 v33, v0
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v32
const-string/jumbo v33, ";rightEdgeRadius="
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v32
invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v32
const-string/jumbo v33, ";rightEdgeStrong="
invoke-virtual/range {v32 .. v33}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v32
move-object/from16 v0, v32
move/from16 v1, v22
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
invoke-virtual/range {v31 .. v31}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v32
return-object v32
:cond_2af
neg-float v4, v4
add-float/2addr v7, v4
const-wide v32, 0x3ff921fb54442d18L
float-to-double v0, v4
move-wide/from16 v34, v0
sub-double v32, v32, v34
float-to-double v0, v14
move-wide/from16 v34, v0
add-double v32, v32, v34
move-wide/from16 v0, v32
double-to-float v14, v0
move-object/from16 v0, p0
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_fThinFaceLevel:F
move/from16 v32, v0
const v33, 0x3c23d70a
mul-float v32, v32, v33
mul-float v32, v32, v13
const v33, 0x3f75c28f
mul-float v10, v32, v33
float-to-double v0, v10
move-wide/from16 v32, v0
float-to-double v0, v7
move-wide/from16 v34, v0
invoke-static/range {v34 .. v35}, Ljava/lang/Math;->tan(D)D
move-result-wide v34
mul-double v32, v32, v34
move-wide/from16 v0, v32
double-to-float v11, v0
move-object/from16 v0, p0
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_fThinFaceLevel:F
move/from16 v32, v0
const v33, 0x3c23d70a
mul-float v32, v32, v33
mul-float v32, v32, v13
const v33, 0x3f75c28f
mul-float v16, v32, v33
move/from16 v0, v16
float-to-double v0, v0
move-wide/from16 v32, v0
float-to-double v0, v14
move-wide/from16 v34, v0
invoke-static/range {v34 .. v35}, Ljava/lang/Math;->tan(D)D
move-result-wide v34
div-double v32, v32, v34
move-wide/from16 v0, v32
double-to-float v0, v0
move/from16 v17, v0
move-object/from16 v0, v24
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move/from16 v32, v0
add-float v32, v32, v10
move-object/from16 v0, v24
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move/from16 v33, v0
sub-float v33, v33, v11
move-object/from16 v0, p0
move/from16 v1, v32
move/from16 v2, v33
invoke-direct {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->pointMake(FF)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v23
move-object/from16 v0, v29
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move/from16 v32, v0
sub-float v32, v32, v16
move-object/from16 v0, v29
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move/from16 v33, v0
add-float v33, v33, v17
move-object/from16 v0, p0
move/from16 v1, v32
move/from16 v2, v33
invoke-direct {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->pointMake(FF)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v28
goto/16 :goto_172
.end method
.method private execCalcFaceRect()V
.registers 12
const v10, 0x3f333333
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_leftEyePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_rightEyePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
new-instance v8, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-direct {v8}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V
invoke-direct {p0, v6, v8}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->PointEqualToPoint(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)Z
move-result v8
if-nez v8, :cond_3b
new-instance v8, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-direct {v8}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V
invoke-direct {p0, v7, v8}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->PointEqualToPoint(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)Z
move-result v8
if-nez v8, :cond_3b
const v4, 0x4019999a
iget v8, v7, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
iget v9, v6, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
sub-float v5, v8, v9
iget v8, v6, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
mul-float v9, v5, v10
sub-float v2, v8, v9
iget v8, v6, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
mul-float v9, v5, v10
sub-float v3, v8, v9
mul-float v1, v5, v4
move v0, v1
invoke-direct {p0, v2, v3, v1, v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->rectMake(FFFF)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;
move-result-object v8
iput-object v8, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_faceRect:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;
:cond_3b
return-void
.end method
.method private execCalcSrcThinFace()V
.registers 37
move-object/from16 v0, p0
iget-object v5, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->mFeatures:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;
if-eqz v5, :cond_19a
move-object/from16 v0, p0
iget-object v5, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->mFeatures:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;
move-object/from16 v0, p0
iget-object v6, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_leftEyePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
iget v6, v6, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move-object/from16 v0, p0
iget-object v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_leftEyePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
iget v7, v7, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move-object/from16 v0, p0
iget-object v8, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_rightEyePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
iget v8, v8, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move-object/from16 v0, p0
iget-object v9, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_rightEyePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
iget v9, v9, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move-object/from16 v0, p0
iget-object v10, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_mouthPosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
iget v10, v10, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move-object/from16 v0, p0
iget-object v11, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_mouthPosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
iget v11, v11, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
invoke-virtual/range {v5 .. v11}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->exec(FFFFFF)V
const/16 v21, 0x0
const/16 v22, 0x0
const/16 v23, 0x0
const/16 v24, 0x0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_mouthPosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-object/from16 v29, v0
new-instance v26, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-direct/range {v26 .. v26}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V
new-instance v31, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-direct/range {v31 .. v31}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V
new-instance v30, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-direct/range {v30 .. v30}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V
new-instance v35, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-direct/range {v35 .. v35}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V
new-instance v34, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-direct/range {v34 .. v34}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V
new-instance v25, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-direct/range {v25 .. v25}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V
move-object/from16 v0, p0
move-object/from16 v1, v30
move-object/from16 v2, v35
move-object/from16 v3, v34
move-object/from16 v4, v25
invoke-direct {v0, v1, v2, v3, v4}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->FaceAndDegree(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)V
move-object/from16 v26, v34
move-object/from16 v31, v25
move-object/from16 v0, v29
iget v5, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move-object/from16 v0, v26
iget v6, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
sub-float/2addr v5, v6
const/high16 v6, 0x3f00
mul-float v13, v5, v6
move-object/from16 v0, v26
iget v5, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move-object/from16 v0, v29
iget v6, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
sub-float/2addr v5, v6
const/high16 v6, 0x3f00
mul-float v14, v5, v6
move-object/from16 v0, v31
iget v5, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move-object/from16 v0, v29
iget v6, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
sub-float/2addr v5, v6
const/high16 v6, 0x3f00
mul-float v17, v5, v6
move-object/from16 v0, v31
iget v5, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move-object/from16 v0, v29
iget v6, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
sub-float/2addr v5, v6
const/high16 v6, 0x3f00
mul-float v18, v5, v6
invoke-direct/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->leftFacePosition()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v27
invoke-direct/range {p0 .. p0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->rightFacePosition()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v32
move-object/from16 v0, v29
iget v5, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
sub-float/2addr v5, v13
move-object/from16 v0, v29
iget v6, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
add-float/2addr v6, v14
move-object/from16 v0, p0
invoke-direct {v0, v5, v6}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->pointMake(FF)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v28
move-object/from16 v0, v29
iget v5, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
add-float v5, v5, v17
move-object/from16 v0, v29
iget v6, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
add-float v6, v6, v18
move-object/from16 v0, p0
invoke-direct {v0, v5, v6}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->pointMake(FF)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v33
const v12, -0x40b6f025
move-object/from16 v0, v28
iget v5, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
float-to-double v5, v5
move-object/from16 v0, v27
iget v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move-object/from16 v0, v28
iget v8, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
sub-float/2addr v7, v8
float-to-double v7, v7
float-to-double v9, v12
invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D
move-result-wide v9
mul-double/2addr v7, v9
add-double/2addr v5, v7
move-object/from16 v0, v27
iget v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move-object/from16 v0, v28
iget v8, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
sub-float/2addr v7, v8
float-to-double v7, v7
float-to-double v9, v12
invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D
move-result-wide v9
mul-double/2addr v7, v9
sub-double/2addr v5, v7
double-to-float v15, v5
move-object/from16 v0, v28
iget v5, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
float-to-double v5, v5
move-object/from16 v0, v27
iget v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move-object/from16 v0, v28
iget v8, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
sub-float/2addr v7, v8
float-to-double v7, v7
float-to-double v9, v12
invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D
move-result-wide v9
mul-double/2addr v7, v9
add-double/2addr v5, v7
move-object/from16 v0, v27
iget v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move-object/from16 v0, v28
iget v8, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
sub-float/2addr v7, v8
float-to-double v7, v7
float-to-double v9, v12
invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D
move-result-wide v9
mul-double/2addr v7, v9
add-double/2addr v5, v7
double-to-float v0, v5
move/from16 v16, v0
neg-float v12, v12
move-object/from16 v0, v33
iget v5, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
float-to-double v5, v5
move-object/from16 v0, v32
iget v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move-object/from16 v0, v33
iget v8, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
sub-float/2addr v7, v8
float-to-double v7, v7
float-to-double v9, v12
invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D
move-result-wide v9
mul-double/2addr v7, v9
add-double/2addr v5, v7
move-object/from16 v0, v32
iget v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move-object/from16 v0, v33
iget v8, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
sub-float/2addr v7, v8
float-to-double v7, v7
float-to-double v9, v12
invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D
move-result-wide v9
mul-double/2addr v7, v9
sub-double/2addr v5, v7
double-to-float v0, v5
move/from16 v19, v0
move-object/from16 v0, v33
iget v5, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
float-to-double v5, v5
move-object/from16 v0, v32
iget v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
move-object/from16 v0, v33
iget v8, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
sub-float/2addr v7, v8
float-to-double v7, v7
float-to-double v9, v12
invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D
move-result-wide v9
mul-double/2addr v7, v9
add-double/2addr v5, v7
move-object/from16 v0, v32
iget v7, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
move-object/from16 v0, v33
iget v8, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
sub-float/2addr v7, v8
float-to-double v7, v7
float-to-double v9, v12
invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D
move-result-wide v9
mul-double/2addr v7, v9
add-double/2addr v5, v7
double-to-float v0, v5
move/from16 v20, v0
move/from16 v21, v15
move/from16 v22, v16
move/from16 v23, v19
move/from16 v24, v20
move-object/from16 v0, p0
move/from16 v1, v21
move/from16 v2, v22
invoke-direct {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->pointMake(FF)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v5
move-object/from16 v0, p0
iput-object v5, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_leftSrcThinFacePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-object/from16 v0, p0
move/from16 v1, v23
move/from16 v2, v24
invoke-direct {v0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->pointMake(FF)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v5
move-object/from16 v0, p0
iput-object v5, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_rightSrcThinFacePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
:cond_19a
return-void
.end method
.method private faceRadian()F
.registers 10
iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_leftEyePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_rightEyePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
iget v7, v6, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
iget v8, v5, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
sub-float v0, v7, v8
iget v7, v6, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
iget v8, v5, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
sub-float v1, v7, v8
mul-float v7, v0, v0
mul-float v8, v1, v1
add-float/2addr v7, v8
float-to-double v7, v7
invoke-static {v7, v8}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v7
double-to-float v2, v7
div-float v4, v1, v2
float-to-double v7, v4
invoke-static {v7, v8}, Ljava/lang/Math;->asin(D)D
move-result-wide v7
double-to-float v3, v7
return v3
.end method
.method private leftFacePosition()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
.registers 4
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->mFeatures:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;
if-eqz v1, :cond_1d
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->mFeatures:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->getLeftFacePoint()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-result-object v1
iget v1, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->mFeatures:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->getLeftFacePoint()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-result-object v2
iget v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
invoke-direct {p0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->pointMake(FF)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v0
:cond_1d
return-object v0
.end method
.method private pointMake(FF)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
.registers 4
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V
iput p1, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
iput p2, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
return-object v0
.end method
.method private rectMake(FFFF)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;
.registers 7
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;-><init>()V
iget-object v1, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;->point:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
iput p1, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
iget-object v1, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;->point:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
iput p2, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
iget-object v1, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;->size:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$SizeType;
iput p3, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$SizeType;->width:F
iget-object v1, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;->size:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$SizeType;
iput p4, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$SizeType;->height:F
return-object v0
.end method
.method private rightFacePosition()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
.registers 4
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;-><init>()V
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->mFeatures:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;
if-eqz v1, :cond_1d
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->mFeatures:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;
invoke-virtual {v1}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->getRightFacePoint()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-result-object v1
iget v1, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->mFeatures:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->getRightFacePoint()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-result-object v2
iget v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
invoke-direct {p0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->pointMake(FF)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v0
:cond_1d
return-object v0
.end method
.method public RightSrcThinFacePosition()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_rightSrcThinFacePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
return-object v0
.end method
.method public edgeRadius()F
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_fEdgeRadius:F
return v0
.end method
.method public edgeStrong()F
.registers 2
const v0, 0x3e19999a
return v0
.end method
.method public execCalc()Ljava/lang/String;
.registers 2
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->execCalcFaceRect()V
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->execCalcSrcThinFace()V
invoke-direct {p0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->execCalcDstThinFace()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public leftDstThinFacePosition()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_leftDstThinFacePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
return-object v0
.end method
.method public leftSrcThinFacePosition()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_leftSrcThinFacePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
return-object v0
.end method
.method public nosePosition()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;
.registers 5
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;-><init>()V
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->mFeatures:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;
if-eqz v2, :cond_5f
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->mFeatures:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;
invoke-virtual {v2}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->getMouthPoint()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;
move-result-object v1
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->leftTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v2
iget-object v3, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;->leftTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
iget v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
iput v3, v2, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->leftTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v2
iget-object v3, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;->leftTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
iget v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
iput v3, v2, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->leftBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v2
iget-object v3, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;->leftBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
iget v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
iput v3, v2, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->leftBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v2
iget-object v3, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;->leftBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
iget v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
iput v3, v2, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->rightTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v2
iget-object v3, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;->rightTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
iget v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
iput v3, v2, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->rightTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v2
iget-object v3, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;->rightTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
iget v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
iput v3, v2, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->rightBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v2
iget-object v3, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;->rightBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
iget v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
iput v3, v2, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->x:F
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->rightBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$NoseType;)Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
move-result-object v2
iget-object v3, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;->rightBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
iget v3, v3, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
iput v3, v2, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;->y:F
:cond_5f
return-object v0
.end method
.method public rightDstThinFacePosition()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_rightDstThinFacePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
return-object v0
.end method
.method public setFaceRect(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_faceRect:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$RectType;
return-void
.end method
.method public setLeftEyePosition(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_leftEyePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
return-void
.end method
.method public setMouthPosition(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_mouthPosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
return-void
.end method
.method public setRightPosition(Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_rightEyePosition:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PointType;
return-void
.end method
.method public setThinFaceLevel(F)V
.registers 2
iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer;->m_fThinFaceLevel:F
return-void
.end method