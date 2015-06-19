.class public Lcom/facebook/katana/util/ScaleGestureDetector;
.super Ljava/lang/Object;
.source "ScaleGestureDetector.java"
.field private static final PRESSURE_THRESHOLD:F = 0.67f
.field private final mContext:Landroid/content/Context;
.field private mCurrEvent:Landroid/view/MotionEvent;
.field private mCurrFingerDiffX:F
.field private mCurrFingerDiffY:F
.field private mCurrLen:F
.field private mCurrPressure:F
.field private mFocusX:F
.field private mFocusY:F
.field private mGestureInProgress:Z
.field private final mListener:Lcom/facebook/katana/util/ScaleGestureDetector$OnScaleGestureListener;
.field private mPrevEvent:Landroid/view/MotionEvent;
.field private mPrevFingerDiffX:F
.field private mPrevFingerDiffY:F
.field private mPrevLen:F
.field private mPrevPressure:F
.field private mScaleFactor:F
.field private mTimeDelta:J
.method public constructor <init>(Landroid/content/Context;Lcom/facebook/katana/util/ScaleGestureDetector$OnScaleGestureListener;)V
.registers 3
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mContext:Landroid/content/Context;
iput-object p2, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mListener:Lcom/facebook/katana/util/ScaleGestureDetector$OnScaleGestureListener;
return-void
.end method
.method private reset()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;
invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V
iput-object v1, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;
:cond_c
iget-object v0, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;
invoke-virtual {v0}, Landroid/view/MotionEvent;->recycle()V
iput-object v1, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;
:cond_17
return-void
.end method
.method private setContext(Landroid/view/MotionEvent;)V
.registers 22
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/util/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;
move-object/from16 v16, v0
if-eqz v16, :cond_11
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/util/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;
move-object/from16 v16, v0
invoke-virtual/range {v16 .. v16}, Landroid/view/MotionEvent;->recycle()V
:cond_11
invoke-static/range {p1 .. p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
move-result-object v16
move-object/from16 v0, v16
move-object/from16 v1, p0
iput-object v0, v1, Lcom/facebook/katana/util/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;
const/high16 v16, -0x4080
move/from16 v0, v16
move-object/from16 v1, p0
iput v0, v1, Lcom/facebook/katana/util/ScaleGestureDetector;->mCurrLen:F
const/high16 v16, -0x4080
move/from16 v0, v16
move-object/from16 v1, p0
iput v0, v1, Lcom/facebook/katana/util/ScaleGestureDetector;->mPrevLen:F
const/high16 v16, -0x4080
move/from16 v0, v16
move-object/from16 v1, p0
iput v0, v1, Lcom/facebook/katana/util/ScaleGestureDetector;->mScaleFactor:F
move-object/from16 v0, p0
iget-object v0, v0, Lcom/facebook/katana/util/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;
move-object v9, v0
const/16 v16, 0x0
move-object v0, v9
move/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F
move-result v12
const/16 v16, 0x0
move-object v0, v9
move/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F
move-result v14
const/16 v16, 0x1
move-object v0, v9
move/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F
move-result v13
const/16 v16, 0x1
move-object v0, v9
move/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F
move-result v15
const/16 v16, 0x0
move-object/from16 v0, p1
move/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F
move-result v5
const/16 v16, 0x0
move-object/from16 v0, p1
move/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F
move-result v7
const/16 v16, 0x1
move-object/from16 v0, p1
move/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getX(I)F
move-result v6
const/16 v16, 0x1
move-object/from16 v0, p1
move/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getY(I)F
move-result v8
sub-float v10, v13, v12
sub-float v11, v15, v14
sub-float v3, v6, v5
sub-float v4, v8, v7
move v0, v10
move-object/from16 v1, p0
iput v0, v1, Lcom/facebook/katana/util/ScaleGestureDetector;->mPrevFingerDiffX:F
move v0, v11
move-object/from16 v1, p0
iput v0, v1, Lcom/facebook/katana/util/ScaleGestureDetector;->mPrevFingerDiffY:F
move v0, v3
move-object/from16 v1, p0
iput v0, v1, Lcom/facebook/katana/util/ScaleGestureDetector;->mCurrFingerDiffX:F
move v0, v4
move-object/from16 v1, p0
iput v0, v1, Lcom/facebook/katana/util/ScaleGestureDetector;->mCurrFingerDiffY:F
const/high16 v16, 0x3f00
mul-float v16, v16, v3
add-float v16, v16, v5
move/from16 v0, v16
move-object/from16 v1, p0
iput v0, v1, Lcom/facebook/katana/util/ScaleGestureDetector;->mFocusX:F
const/high16 v16, 0x3f00
mul-float v16, v16, v4
add-float v16, v16, v7
move/from16 v0, v16
move-object/from16 v1, p0
iput v0, v1, Lcom/facebook/katana/util/ScaleGestureDetector;->mFocusY:F
invoke-virtual/range {p1 .. p1}, Landroid/view/MotionEvent;->getEventTime()J
move-result-wide v16
invoke-virtual {v9}, Landroid/view/MotionEvent;->getEventTime()J
move-result-wide v18
sub-long v16, v16, v18
move-wide/from16 v0, v16
move-object/from16 v2, p0
iput-wide v0, v2, Lcom/facebook/katana/util/ScaleGestureDetector;->mTimeDelta:J
const/16 v16, 0x0
move-object/from16 v0, p1
move/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F
move-result v16
const/16 v17, 0x1
move-object/from16 v0, p1
move/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F
move-result v17
add-float v16, v16, v17
move/from16 v0, v16
move-object/from16 v1, p0
iput v0, v1, Lcom/facebook/katana/util/ScaleGestureDetector;->mCurrPressure:F
const/16 v16, 0x0
move-object v0, v9
move/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F
move-result v16
const/16 v17, 0x1
move-object v0, v9
move/from16 v1, v17
invoke-virtual {v0, v1}, Landroid/view/MotionEvent;->getPressure(I)F
move-result v17
add-float v16, v16, v17
move/from16 v0, v16
move-object/from16 v1, p0
iput v0, v1, Lcom/facebook/katana/util/ScaleGestureDetector;->mPrevPressure:F
return-void
.end method
.method public getCurrentSpan()F
.registers 5
iget v2, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mCurrLen:F
const/high16 v3, -0x4080
cmpl-float v2, v2, v3
if-nez v2, :cond_19
iget v0, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mCurrFingerDiffX:F
iget v1, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mCurrFingerDiffY:F
mul-float v2, v0, v0
mul-float v3, v1, v1
add-float/2addr v2, v3
float-to-double v2, v2
invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v2
double-to-float v2, v2
iput v2, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mCurrLen:F
:cond_19
iget v2, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mCurrLen:F
return v2
.end method
.method public getEventTime()J
.registers 3
iget-object v0, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mCurrEvent:Landroid/view/MotionEvent;
invoke-virtual {v0}, Landroid/view/MotionEvent;->getEventTime()J
move-result-wide v0
return-wide v0
.end method
.method public getFocusX()F
.registers 2
iget v0, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mFocusX:F
return v0
.end method
.method public getFocusY()F
.registers 2
iget v0, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mFocusY:F
return v0
.end method
.method public getPreviousSpan()F
.registers 5
iget v2, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mPrevLen:F
const/high16 v3, -0x4080
cmpl-float v2, v2, v3
if-nez v2, :cond_19
iget v0, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mPrevFingerDiffX:F
iget v1, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mPrevFingerDiffY:F
mul-float v2, v0, v0
mul-float v3, v1, v1
add-float/2addr v2, v3
float-to-double v2, v2
invoke-static {v2, v3}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v2
double-to-float v2, v2
iput v2, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mPrevLen:F
:cond_19
iget v2, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mPrevLen:F
return v2
.end method
.method public getScaleFactor()F
.registers 3
iget v0, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mScaleFactor:F
const/high16 v1, -0x4080
cmpl-float v0, v0, v1
if-nez v0, :cond_13
invoke-virtual {p0}, Lcom/facebook/katana/util/ScaleGestureDetector;->getCurrentSpan()F
move-result v0
invoke-virtual {p0}, Lcom/facebook/katana/util/ScaleGestureDetector;->getPreviousSpan()F
move-result v1
div-float/2addr v0, v1
iput v0, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mScaleFactor:F
:cond_13
iget v0, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mScaleFactor:F
return v0
.end method
.method public getTimeDelta()J
.registers 3
iget-wide v0, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mTimeDelta:J
return-wide v0
.end method
.method public isInProgress()Z
.registers 2
iget-boolean v0, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mGestureInProgress:Z
return v0
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 8
const/4 v5, 0x0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
const/4 v1, 0x1
iget-boolean v4, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mGestureInProgress:Z
if-nez v4, :cond_31
const/4 v4, 0x5
if-eq v0, v4, :cond_11
const/16 v4, 0x105
if-ne v0, v4, :cond_30
:cond_11
invoke-virtual {p1}, Landroid/view/MotionEvent;->getPointerCount()I
move-result v4
const/4 v5, 0x2
if-lt v4, v5, :cond_30
invoke-direct {p0}, Lcom/facebook/katana/util/ScaleGestureDetector;->reset()V
invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
move-result-object v4
iput-object v4, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;
const-wide/16 v4, 0x0
iput-wide v4, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mTimeDelta:J
invoke-direct {p0, p1}, Lcom/facebook/katana/util/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V
iget-object v4, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mListener:Lcom/facebook/katana/util/ScaleGestureDetector$OnScaleGestureListener;
invoke-interface {v4, p0}, Lcom/facebook/katana/util/ScaleGestureDetector$OnScaleGestureListener;->onScaleBegin(Lcom/facebook/katana/util/ScaleGestureDetector;)Z
move-result v4
iput-boolean v4, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mGestureInProgress:Z
:cond_30
:goto_30
return v1
:cond_31
sparse-switch v0, :sswitch_data_8a
goto :goto_30
:sswitch_35
invoke-direct {p0, p1}, Lcom/facebook/katana/util/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V
iget v4, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mCurrPressure:F
iget v5, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mPrevPressure:F
div-float/2addr v4, v5
const v5, 0x3f2b851f
cmpl-float v4, v4, v5
if-lez v4, :cond_30
iget-object v4, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mListener:Lcom/facebook/katana/util/ScaleGestureDetector$OnScaleGestureListener;
invoke-interface {v4, p0}, Lcom/facebook/katana/util/ScaleGestureDetector$OnScaleGestureListener;->onScale(Lcom/facebook/katana/util/ScaleGestureDetector;)Z
move-result v3
if-eqz v3, :cond_30
iget-object v4, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;
invoke-virtual {v4}, Landroid/view/MotionEvent;->recycle()V
invoke-static {p1}, Landroid/view/MotionEvent;->obtain(Landroid/view/MotionEvent;)Landroid/view/MotionEvent;
move-result-object v4
iput-object v4, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mPrevEvent:Landroid/view/MotionEvent;
goto :goto_30
:sswitch_58
invoke-direct {p0, p1}, Lcom/facebook/katana/util/ScaleGestureDetector;->setContext(Landroid/view/MotionEvent;)V
const v4, 0xff00
and-int/2addr v4, v0
shr-int/lit8 v4, v4, 0x8
if-nez v4, :cond_7c
const/4 v4, 0x1
move v2, v4
:goto_65
invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getX(I)F
move-result v4
iput v4, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mFocusX:F
invoke-virtual {p1, v2}, Landroid/view/MotionEvent;->getY(I)F
move-result v4
iput v4, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mFocusY:F
iget-object v4, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mListener:Lcom/facebook/katana/util/ScaleGestureDetector$OnScaleGestureListener;
invoke-interface {v4, p0}, Lcom/facebook/katana/util/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/facebook/katana/util/ScaleGestureDetector;)V
iput-boolean v5, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mGestureInProgress:Z
invoke-direct {p0}, Lcom/facebook/katana/util/ScaleGestureDetector;->reset()V
goto :goto_30
:cond_7c
move v2, v5
goto :goto_65
:sswitch_7e
iget-object v4, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mListener:Lcom/facebook/katana/util/ScaleGestureDetector$OnScaleGestureListener;
invoke-interface {v4, p0}, Lcom/facebook/katana/util/ScaleGestureDetector$OnScaleGestureListener;->onScaleEnd(Lcom/facebook/katana/util/ScaleGestureDetector;)V
iput-boolean v5, p0, Lcom/facebook/katana/util/ScaleGestureDetector;->mGestureInProgress:Z
invoke-direct {p0}, Lcom/facebook/katana/util/ScaleGestureDetector;->reset()V
goto :goto_30
nop
:sswitch_data_8a
.sparse-switch
0x2 -> :sswitch_35
0x3 -> :sswitch_7e
0x6 -> :sswitch_58
0x106 -> :sswitch_58
.end sparse-switch
.end method