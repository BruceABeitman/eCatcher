.class public final Lcom/pinguo/album/utils/MotionEventHelper;
.super Ljava/lang/Object;
.source "MotionEventHelper.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static getPointerCoords(Landroid/view/MotionEvent;)[Landroid/view/MotionEvent$PointerCoords;
.registers 5
invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I
move-result v1
new-array v2, v1, [Landroid/view/MotionEvent$PointerCoords;
const/4 v0, 0x0
:goto_7
if-lt v0, v1, :cond_a
return-object v2
:cond_a
new-instance v3, Landroid/view/MotionEvent$PointerCoords;
invoke-direct {v3}, Landroid/view/MotionEvent$PointerCoords;-><init>()V
aput-object v3, v2, v0
aget-object v3, v2, v0
invoke-virtual {p0, v0, v3}, Landroid/view/MotionEvent;->getPointerCoords(ILandroid/view/MotionEvent$PointerCoords;)V
add-int/lit8 v0, v0, 0x1
goto :goto_7
.end method
.method private static getPointerIds(Landroid/view/MotionEvent;)[I
.registers 5
invoke-virtual {p0}, Landroid/view/MotionEvent;->getPointerCount()I
move-result v1
new-array v2, v1, [I
const/4 v0, 0x0
:goto_7
if-lt v0, v1, :cond_a
return-object v2
:cond_a
invoke-virtual {p0, v0}, Landroid/view/MotionEvent;->getPointerId(I)I
move-result v3
aput v3, v2, v0
add-int/lit8 v0, v0, 0x1
goto :goto_7
.end method
.method private static transformAngle(Landroid/graphics/Matrix;F)F
.registers 10
const/4 v5, 0x1
const/4 v4, 0x0
const-wide v6, 0x400921fb54442d18L
const/4 v2, 0x2
new-array v1, v2, [F
float-to-double v2, p1
invoke-static {v2, v3}, Ljava/lang/Math;->sin(D)D
move-result-wide v2
double-to-float v2, v2
aput v2, v1, v4
float-to-double v2, p1
invoke-static {v2, v3}, Ljava/lang/Math;->cos(D)D
move-result-wide v2
double-to-float v2, v2
neg-float v2, v2
aput v2, v1, v5
invoke-virtual {p0, v1}, Landroid/graphics/Matrix;->mapVectors([F)V
aget v2, v1, v4
float-to-double v2, v2
aget v4, v1, v5
neg-float v4, v4
float-to-double v4, v4
invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->atan2(DD)D
move-result-wide v2
double-to-float v0, v2
float-to-double v2, v0
const-wide v4, -0x4006de04abbbd2e8L
cmpg-double v2, v2, v4
if-gez v2, :cond_38
float-to-double v2, v0
add-double/2addr v2, v6
double-to-float v0, v2
:cond_37
:goto_37
return v0
:cond_38
float-to-double v2, v0
const-wide v4, 0x3ff921fb54442d18L
cmpl-double v2, v2, v4
if-lez v2, :cond_37
float-to-double v2, v0
sub-double/2addr v2, v6
double-to-float v0, v2
goto :goto_37
.end method
.method public static transformEvent(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;
.registers 3
sget-boolean v0, Lcom/pinguo/album/common/ApiHelper;->HAS_MOTION_EVENT_TRANSFORM:Z
if-eqz v0, :cond_9
invoke-static {p0, p1}, Lcom/pinguo/album/utils/MotionEventHelper;->transformEventNew(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;
move-result-object v0
:goto_8
return-object v0
:cond_9
invoke-static {p0, p1}, Lcom/pinguo/album/utils/MotionEventHelper;->transformEventOld(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;
move-result-object v0
goto :goto_8
.end method
.method private static transformEventNew(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;
.registers 3
invoke-static {p0}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/view/MotionEvent;->transform(Landroid/graphics/Matrix;)V
return-object v0
.end method
.method private static transformEventOld(Landroid/view/MotionEvent;Landroid/graphics/Matrix;)Landroid/view/MotionEvent;
.registers 24
invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDownTime()J
move-result-wide v2
invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEventTime()J
move-result-wide v4
invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getAction()I
move-result v6
invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getPointerCount()I
move-result v7
invoke-static/range {p0 .. p0}, Lcom/pinguo/album/utils/MotionEventHelper;->getPointerIds(Landroid/view/MotionEvent;)[I
move-result-object v8
invoke-static/range {p0 .. p0}, Lcom/pinguo/album/utils/MotionEventHelper;->getPointerCoords(Landroid/view/MotionEvent;)[Landroid/view/MotionEvent$PointerCoords;
move-result-object v9
invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getMetaState()I
move-result v10
invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getXPrecision()F
move-result v11
invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getYPrecision()F
move-result v12
invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getDeviceId()I
move-result v13
invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getEdgeFlags()I
move-result v14
invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getSource()I
move-result v15
invoke-virtual/range {p0 .. p0}, Landroid/view/MotionEvent;->getFlags()I
move-result v16
array-length v0, v9
move/from16 v20, v0
mul-int/lit8 v20, v20, 0x2
move/from16 v0, v20
new-array v0, v0, [F
move-object/from16 v19, v0
const/16 v17, 0x0
:goto_41
move/from16 v0, v17
if-lt v0, v7, :cond_57
move-object/from16 v0, p1
move-object/from16 v1, v19
invoke-virtual {v0, v1}, Landroid/graphics/Matrix;->mapPoints([F)V
const/16 v17, 0x0
:goto_4e
move/from16 v0, v17
if-lt v0, v7, :cond_74
invoke-static/range {v2 .. v16}, Landroid/view/MotionEvent;->obtain(JJII[I[Landroid/view/MotionEvent$PointerCoords;IFFIIII)Landroid/view/MotionEvent;
move-result-object v18
return-object v18
:cond_57
mul-int/lit8 v20, v17, 0x2
aget-object v21, v9, v17
move-object/from16 v0, v21
iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->x:F
move/from16 v21, v0
aput v21, v19, v20
mul-int/lit8 v20, v17, 0x2
add-int/lit8 v20, v20, 0x1
aget-object v21, v9, v17
move-object/from16 v0, v21
iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->y:F
move/from16 v21, v0
aput v21, v19, v20
add-int/lit8 v17, v17, 0x1
goto :goto_41
:cond_74
aget-object v20, v9, v17
mul-int/lit8 v21, v17, 0x2
aget v21, v19, v21
move/from16 v0, v21
move-object/from16 v1, v20
iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->x:F
aget-object v20, v9, v17
mul-int/lit8 v21, v17, 0x2
add-int/lit8 v21, v21, 0x1
aget v21, v19, v21
move/from16 v0, v21
move-object/from16 v1, v20
iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->y:F
aget-object v20, v9, v17
aget-object v21, v9, v17
move-object/from16 v0, v21
iget v0, v0, Landroid/view/MotionEvent$PointerCoords;->orientation:F
move/from16 v21, v0
move-object/from16 v0, p1
move/from16 v1, v21
invoke-static {v0, v1}, Lcom/pinguo/album/utils/MotionEventHelper;->transformAngle(Landroid/graphics/Matrix;F)F
move-result v21
move/from16 v0, v21
move-object/from16 v1, v20
iput v0, v1, Landroid/view/MotionEvent$PointerCoords;->orientation:F
add-int/lit8 v17, v17, 0x1
goto :goto_4e
.end method