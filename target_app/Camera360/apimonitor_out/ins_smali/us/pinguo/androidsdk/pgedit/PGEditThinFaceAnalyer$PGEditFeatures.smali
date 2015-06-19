.class public Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;
.super Ljava/lang/Object;
.source "PGEditThinFaceAnalyer.java"
.field private static final FEATURES_PI:D = 3.141592653589793
.field private static final FEATURES_PI_HALF:D = 1.5707963267948966
.field private static final MOUTH_POINT_ANGLE:F = 29.618f
.field private leftBlush:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
.field private leftEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
.field private leftFace:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
.field  miLEyeX:I
.field  miLEyeY:I
.field  miMX:I
.field  miMY:I
.field  miREyeX:I
.field  miREyeY:I
.field private mouth:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
.field private mouthLeftBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
.field private mouthLeftTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
.field private mouthRightBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
.field private mouthRightTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
.field private rightBlush:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
.field private rightEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
.field private rightFace:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouth:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouthLeftTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouthRightTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouthLeftBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouthRightBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftFace:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightFace:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftBlush:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightBlush:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
return-void
.end method
.method public SetLeftEyeX(I)V
.registers 2
iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->miLEyeX:I
return-void
.end method
.method public SetLeftEyeY(I)V
.registers 2
iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->miLEyeY:I
return-void
.end method
.method public SetMouthX(I)V
.registers 2
iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->miMX:I
return-void
.end method
.method public SetMouthY(I)V
.registers 2
iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->miMY:I
return-void
.end method
.method public SetRightEyeX(I)V
.registers 2
iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->miREyeX:I
return-void
.end method
.method public SetRightEyeY(I)V
.registers 2
iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->miREyeY:I
return-void
.end method
.method public drawCircle([IIIIIII)V
.registers 20
const-wide/16 v1, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
const/4 v3, 0x0
:goto_5
float-to-double v6, v3
const-wide v8, 0x4076800000000000L
cmpg-double v6, v6, v8
if-ltz v6, :cond_10
return-void
:cond_10
float-to-double v6, v3
const-wide v8, 0x400921fb54442d18L
mul-double/2addr v6, v8
const-wide v8, 0x4066800000000000L
div-double v1, v6, v8
move/from16 v0, p4
int-to-double v6, v0
move/from16 v0, p6
int-to-double v8, v0
invoke-static {v1, v2}, Ljava/lang/Math;->cos(D)D
move-result-wide v10
mul-double/2addr v8, v10
add-double/2addr v6, v8
invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J
move-result-wide v6
long-to-int v4, v6
move/from16 v0, p5
int-to-double v6, v0
move/from16 v0, p6
int-to-double v8, v0
invoke-static {v1, v2}, Ljava/lang/Math;->sin(D)D
move-result-wide v10
mul-double/2addr v8, v10
add-double/2addr v6, v8
invoke-static {v6, v7}, Ljava/lang/Math;->round(D)J
move-result-wide v6
long-to-int v5, v6
if-lt v4, p2, :cond_4b
:cond_42
:goto_42
float-to-double v6, v3
const-wide v8, 0x3fb999999999999aL
add-double/2addr v6, v8
double-to-float v3, v6
goto :goto_5
:cond_4b
if-ge v5, p3, :cond_42
mul-int v6, v5, p2
add-int/2addr v6, v4
aput p7, p1, v6
goto :goto_42
.end method
.method public exec(FFFFFF)V
.registers 36
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move/from16 v0, p1
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move/from16 v0, p2
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move/from16 v0, p3
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move/from16 v0, p4
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouth:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move/from16 v0, p5
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouth:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move/from16 v0, p6
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move/from16 v20, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move/from16 v21, v0
sub-float v20, v20, v21
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move/from16 v21, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v22, v0
move-object/from16 v0, v22
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move/from16 v22, v0
sub-float v21, v21, v22
mul-float v20, v20, v21
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
move/from16 v21, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v22, v0
move-object/from16 v0, v22
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
move/from16 v22, v0
sub-float v21, v21, v22
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v22, v0
move-object/from16 v0, v22
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
move/from16 v22, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v23, v0
move-object/from16 v0, v23
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
move/from16 v23, v0
sub-float v22, v22, v23
mul-float v21, v21, v22
add-float v20, v20, v21
move/from16 v0, v20
float-to-double v0, v0
move-wide/from16 v20, v0
invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v20
move-wide/from16 v0, v20
double-to-float v3, v0
const/high16 v20, 0x3f00
mul-float v5, v3, v20
const v20, 0x3fcf1aa0
div-float v6, v5, v20
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move/from16 v20, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move/from16 v21, v0
sub-float v20, v20, v21
div-float v20, v20, v3
move/from16 v0, v20
float-to-double v0, v0
move-wide/from16 v20, v0
invoke-static/range {v20 .. v21}, Ljava/lang/Math;->acos(D)D
move-result-wide v20
move-wide/from16 v0, v20
double-to-float v9, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
move/from16 v20, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
move/from16 v21, v0
cmpl-float v20, v20, v21
if-lez v20, :cond_110
neg-float v9, v9
:cond_110
const/high16 v20, 0x3f00
mul-float v4, v3, v20
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move/from16 v20, v0
move/from16 v0, v20
float-to-double v0, v0
move-wide/from16 v20, v0
float-to-double v0, v4
move-wide/from16 v22, v0
float-to-double v0, v9
move-wide/from16 v24, v0
invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D
move-result-wide v24
mul-double v22, v22, v24
sub-double v20, v20, v22
move-wide/from16 v0, v20
double-to-float v13, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
move/from16 v20, v0
move/from16 v0, v20
float-to-double v0, v0
move-wide/from16 v20, v0
float-to-double v0, v4
move-wide/from16 v22, v0
float-to-double v0, v9
move-wide/from16 v24, v0
invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D
move-result-wide v24
mul-double v22, v22, v24
sub-double v20, v20, v22
move-wide/from16 v0, v20
double-to-float v14, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouth:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move/from16 v20, v0
sub-float v20, v13, v20
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouth:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move/from16 v21, v0
sub-float v21, v13, v21
mul-float v20, v20, v21
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouth:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
move/from16 v21, v0
sub-float v21, v14, v21
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouth:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v22, v0
move-object/from16 v0, v22
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
move/from16 v22, v0
sub-float v22, v14, v22
mul-float v21, v21, v22
add-float v20, v20, v21
move/from16 v0, v20
float-to-double v0, v0
move-wide/from16 v20, v0
invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v20
move-wide/from16 v0, v20
double-to-float v8, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouth:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move/from16 v20, v0
move/from16 v0, v20
float-to-double v0, v0
move-wide/from16 v20, v0
float-to-double v0, v8
move-wide/from16 v22, v0
const-wide v24, 0x3ff921fb54442d18L
float-to-double v0, v9
move-wide/from16 v26, v0
add-double v24, v24, v26
invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D
move-result-wide v24
mul-double v22, v22, v24
const-wide v24, 0x3fe8f5c28f5c28f6L
mul-double v22, v22, v24
sub-double v20, v20, v22
move-wide/from16 v0, v20
double-to-float v15, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouth:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
move/from16 v20, v0
move/from16 v0, v20
float-to-double v0, v0
move-wide/from16 v20, v0
float-to-double v0, v8
move-wide/from16 v22, v0
const-wide v24, 0x3ff921fb54442d18L
float-to-double v0, v9
move-wide/from16 v26, v0
add-double v24, v24, v26
invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D
move-result-wide v24
mul-double v22, v22, v24
const-wide v24, 0x3fe8f5c28f5c28f6L
mul-double v22, v22, v24
sub-double v20, v20, v22
move-wide/from16 v0, v20
double-to-float v0, v0
move/from16 v16, v0
const/high16 v20, 0x3f00
mul-float v17, v5, v20
float-to-double v0, v9
move-wide/from16 v20, v0
const-wide v22, 0x40008ab42d67e081L
sub-double v20, v20, v22
move-wide/from16 v0, v20
double-to-float v10, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouthLeftTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
float-to-double v0, v15
move-wide/from16 v21, v0
move/from16 v0, v17
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v10
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v0, v0
move/from16 v21, v0
move/from16 v0, v21
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouthLeftTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move/from16 v0, v16
float-to-double v0, v0
move-wide/from16 v21, v0
move/from16 v0, v17
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v10
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v0, v0
move/from16 v21, v0
move/from16 v0, v21
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
float-to-double v0, v9
move-wide/from16 v20, v0
const-wide v22, 0x3ff08ab42d67e081L
sub-double v20, v20, v22
move-wide/from16 v0, v20
double-to-float v10, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouthRightTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
float-to-double v0, v15
move-wide/from16 v21, v0
move/from16 v0, v17
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v10
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v0, v0
move/from16 v21, v0
move/from16 v0, v21
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouthRightTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move/from16 v0, v16
float-to-double v0, v0
move-wide/from16 v21, v0
move/from16 v0, v17
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v10
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v0, v0
move/from16 v21, v0
move/from16 v0, v21
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
float-to-double v0, v9
move-wide/from16 v20, v0
const-wide v22, 0x40008ab42d67e081L
add-double v20, v20, v22
move-wide/from16 v0, v20
double-to-float v10, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouthLeftBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
float-to-double v0, v15
move-wide/from16 v21, v0
move/from16 v0, v17
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v10
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v0, v0
move/from16 v21, v0
move/from16 v0, v21
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouthLeftBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move/from16 v0, v16
float-to-double v0, v0
move-wide/from16 v21, v0
move/from16 v0, v17
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v10
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v0, v0
move/from16 v21, v0
move/from16 v0, v21
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
float-to-double v0, v9
move-wide/from16 v20, v0
const-wide v22, 0x3ff08ab42d67e081L
add-double v20, v20, v22
move-wide/from16 v0, v20
double-to-float v10, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouthRightBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
float-to-double v0, v15
move-wide/from16 v21, v0
move/from16 v0, v17
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v10
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v0, v0
move/from16 v21, v0
move/from16 v0, v21
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouthRightBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move/from16 v0, v16
float-to-double v0, v0
move-wide/from16 v21, v0
move/from16 v0, v17
float-to-double v0, v0
move-wide/from16 v23, v0
float-to-double v0, v10
move-wide/from16 v25, v0
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v0, v0
move/from16 v21, v0
move/from16 v0, v21
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
const v20, 0x3fcf1aa0
div-float v7, v6, v20
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move/from16 v20, v0
move/from16 v0, v20
float-to-double v0, v0
move-wide/from16 v20, v0
float-to-double v0, v7
move-wide/from16 v22, v0
float-to-double v0, v9
move-wide/from16 v24, v0
invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D
move-result-wide v24
mul-double v22, v22, v24
sub-double v20, v20, v22
move-wide/from16 v0, v20
double-to-float v11, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
move/from16 v20, v0
move/from16 v0, v20
float-to-double v0, v0
move-wide/from16 v20, v0
float-to-double v0, v7
move-wide/from16 v22, v0
float-to-double v0, v9
move-wide/from16 v24, v0
invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D
move-result-wide v24
mul-double v22, v22, v24
sub-double v20, v20, v22
move-wide/from16 v0, v20
double-to-float v12, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftFace:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
float-to-double v0, v11
move-wide/from16 v21, v0
float-to-double v0, v8
move-wide/from16 v23, v0
const-wide v25, 0x3ff921fb54442d18L
float-to-double v0, v9
move-wide/from16 v27, v0
sub-double v25, v25, v27
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D
move-result-wide v25
mul-double v23, v23, v25
sub-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v0, v0
move/from16 v21, v0
move/from16 v0, v21
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftFace:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
float-to-double v0, v12
move-wide/from16 v21, v0
float-to-double v0, v8
move-wide/from16 v23, v0
const-wide v25, 0x3ff921fb54442d18L
float-to-double v0, v9
move-wide/from16 v27, v0
sub-double v25, v25, v27
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v0, v0
move/from16 v21, v0
move/from16 v0, v21
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move/from16 v20, v0
move/from16 v0, v20
float-to-double v0, v0
move-wide/from16 v20, v0
float-to-double v0, v7
move-wide/from16 v22, v0
float-to-double v0, v9
move-wide/from16 v24, v0
invoke-static/range {v24 .. v25}, Ljava/lang/Math;->cos(D)D
move-result-wide v24
mul-double v22, v22, v24
add-double v20, v20, v22
move-wide/from16 v0, v20
double-to-float v0, v0
move/from16 v18, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move-object/from16 v0, v20
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
move/from16 v20, v0
move/from16 v0, v20
float-to-double v0, v0
move-wide/from16 v20, v0
float-to-double v0, v7
move-wide/from16 v22, v0
float-to-double v0, v9
move-wide/from16 v24, v0
invoke-static/range {v24 .. v25}, Ljava/lang/Math;->sin(D)D
move-result-wide v24
mul-double v22, v22, v24
add-double v20, v20, v22
move-wide/from16 v0, v20
double-to-float v0, v0
move/from16 v19, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightFace:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move/from16 v0, v18
float-to-double v0, v0
move-wide/from16 v21, v0
float-to-double v0, v8
move-wide/from16 v23, v0
const-wide v25, 0x3ff921fb54442d18L
float-to-double v0, v9
move-wide/from16 v27, v0
sub-double v25, v25, v27
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D
move-result-wide v25
mul-double v23, v23, v25
sub-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v0, v0
move/from16 v21, v0
move/from16 v0, v21
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightFace:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move/from16 v0, v19
float-to-double v0, v0
move-wide/from16 v21, v0
float-to-double v0, v8
move-wide/from16 v23, v0
const-wide v25, 0x3ff921fb54442d18L
float-to-double v0, v9
move-wide/from16 v27, v0
sub-double v25, v25, v27
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v0, v0
move/from16 v21, v0
move/from16 v0, v21
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
sub-float v20, v13, v15
sub-float v21, v13, v15
mul-float v20, v20, v21
sub-float v21, v14, v16
sub-float v22, v14, v16
mul-float v21, v21, v22
add-float v20, v20, v21
move/from16 v0, v20
float-to-double v0, v0
move-wide/from16 v20, v0
invoke-static/range {v20 .. v21}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v20
const-wide v22, 0x3ff9e353f7ced917L
mul-double v20, v20, v22
move-wide/from16 v0, v20
double-to-float v2, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftBlush:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move/from16 v21, v0
move/from16 v0, v21
float-to-double v0, v0
move-wide/from16 v21, v0
float-to-double v0, v2
move-wide/from16 v23, v0
const-wide v25, 0x3ff921fb54442d18L
float-to-double v0, v9
move-wide/from16 v27, v0
sub-double v25, v25, v27
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D
move-result-wide v25
mul-double v23, v23, v25
sub-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v0, v0
move/from16 v21, v0
move/from16 v0, v21
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftBlush:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
move/from16 v21, v0
move/from16 v0, v21
float-to-double v0, v0
move-wide/from16 v21, v0
float-to-double v0, v2
move-wide/from16 v23, v0
const-wide v25, 0x3ff921fb54442d18L
float-to-double v0, v9
move-wide/from16 v27, v0
sub-double v25, v25, v27
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v0, v0
move/from16 v21, v0
move/from16 v0, v21
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightBlush:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move/from16 v21, v0
move/from16 v0, v21
float-to-double v0, v0
move-wide/from16 v21, v0
float-to-double v0, v2
move-wide/from16 v23, v0
const-wide v25, 0x3ff921fb54442d18L
float-to-double v0, v9
move-wide/from16 v27, v0
sub-double v25, v25, v27
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->cos(D)D
move-result-wide v25
mul-double v23, v23, v25
sub-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v0, v0
move/from16 v21, v0
move/from16 v0, v21
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->x:F
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightBlush:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v20, v0
move-object/from16 v0, p0
iget-object v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightEye:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget v0, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
move/from16 v21, v0
move/from16 v0, v21
float-to-double v0, v0
move-wide/from16 v21, v0
float-to-double v0, v2
move-wide/from16 v23, v0
const-wide v25, 0x3ff921fb54442d18L
float-to-double v0, v9
move-wide/from16 v27, v0
sub-double v25, v25, v27
invoke-static/range {v25 .. v26}, Ljava/lang/Math;->sin(D)D
move-result-wide v25
mul-double v23, v23, v25
add-double v21, v21, v23
move-wide/from16 v0, v21
double-to-float v0, v0
move/from16 v21, v0
move/from16 v0, v21
move-object/from16 v1, v20
iput v0, v1, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;->y:F
return-void
.end method
.method public executeBigEye()V
.registers 1
return-void
.end method
.method public executeFaceLift()V
.registers 1
return-void
.end method
.method public getLeftBlushPoint()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftBlush:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
return-object v0
.end method
.method public getLeftFacePoint()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->leftFace:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
return-object v0
.end method
.method public getMouthPoint()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;
.registers 3
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;
invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;-><init>()V
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouthLeftTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
iput-object v1, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;->leftTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouthRightTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
iput-object v1, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;->rightTop:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouthLeftBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
iput-object v1, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;->leftBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->mouthRightBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
iput-object v1, v0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$MouthPoint;->rightBottom:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
return-object v0
.end method
.method public getRightBlushPoint()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightBlush:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
return-object v0
.end method
.method public getRightFacePoint()Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$PGEditFeatures;->rightFace:Lus/pinguo/androidsdk/pgedit/PGEditThinFaceAnalyer$FloatPoint;
return-object v0
.end method