.class  Lcom/pinguo/camera360/gallery/ui/FlingScroller;
.super Ljava/lang/Object;
.source "FlingScroller.java"
.field private static final DECELERATED_FACTOR:I = 0x4
.field private static final FLING_DURATION_PARAM:F = 50.0f
.field private static final TAG:Ljava/lang/String; = "FlingController"
.field private mCosAngle:D
.field private mCurrV:D
.field private mCurrX:I
.field private mCurrY:I
.field private mDistance:I
.field private mDuration:I
.field private mFinalX:I
.field private mFinalY:I
.field private mMaxX:I
.field private mMaxY:I
.field private mMinX:I
.field private mMinY:I
.field private mSinAngle:D
.field private mStartX:I
.field private mStartY:I
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private getV(F)D
.registers 8
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mDistance:I
mul-int/lit8 v0, v0, 0x4
mul-int/lit16 v0, v0, 0x3e8
int-to-double v0, v0
const/high16 v2, 0x3f80
sub-float/2addr v2, p1
float-to-double v2, v2
const-wide/high16 v4, 0x4008
invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->pow(DD)D
move-result-wide v2
mul-double/2addr v0, v2
iget v2, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mDuration:I
int-to-double v2, v2
div-double/2addr v0, v2
return-wide v0
.end method
.method private getX(F)I
.registers 11
const-wide/16 v7, 0x0
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mStartX:I
int-to-double v1, v1
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mDistance:I
int-to-float v3, v3
mul-float/2addr v3, p1
float-to-double v3, v3
iget-wide v5, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mCosAngle:D
mul-double/2addr v3, v5
add-double/2addr v1, v3
invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J
move-result-wide v1
long-to-int v0, v1
iget-wide v1, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mCosAngle:D
cmpl-double v1, v1, v7
if-lez v1, :cond_26
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mStartX:I
iget v2, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mMaxX:I
if-gt v1, v2, :cond_26
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mMaxX:I
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
:goto_25
:cond_25
return v0
:cond_26
iget-wide v1, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mCosAngle:D
cmpg-double v1, v1, v7
if-gez v1, :cond_25
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mStartX:I
iget v2, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mMinX:I
if-lt v1, v2, :cond_25
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mMinX:I
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
goto :goto_25
.end method
.method private getY(F)I
.registers 11
const-wide/16 v7, 0x0
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mStartY:I
int-to-double v1, v1
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mDistance:I
int-to-float v3, v3
mul-float/2addr v3, p1
float-to-double v3, v3
iget-wide v5, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mSinAngle:D
mul-double/2addr v3, v5
add-double/2addr v1, v3
invoke-static {v1, v2}, Ljava/lang/Math;->round(D)J
move-result-wide v1
long-to-int v0, v1
iget-wide v1, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mSinAngle:D
cmpl-double v1, v1, v7
if-lez v1, :cond_26
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mStartY:I
iget v2, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mMaxY:I
if-gt v1, v2, :cond_26
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mMaxY:I
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
:goto_25
:cond_25
return v0
:cond_26
iget-wide v1, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mSinAngle:D
cmpg-double v1, v1, v7
if-gez v1, :cond_25
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mStartY:I
iget v2, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mMinY:I
if-lt v1, v2, :cond_25
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mMinY:I
invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I
move-result v0
goto :goto_25
.end method
.method public computeScrollOffset(F)V
.registers 8
const/high16 v5, 0x3f80
invoke-static {p1, v5}, Ljava/lang/Math;->min(FF)F
move-result p1
sub-float v0, v5, p1
float-to-double v1, v0
const-wide/high16 v3, 0x4010
invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->pow(DD)D
move-result-wide v1
double-to-float v1, v1
sub-float v0, v5, v1
invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->getX(F)I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mCurrX:I
invoke-direct {p0, v0}, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->getY(F)I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mCurrY:I
invoke-direct {p0, p1}, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->getV(F)D
move-result-wide v1
iput-wide v1, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mCurrV:D
return-void
.end method
.method public fling(IIIIIIII)V
.registers 18
iput p1, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mStartX:I
iput p2, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mStartY:I
iput p5, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mMinX:I
move/from16 v0, p7
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mMinY:I
iput p6, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mMaxX:I
move/from16 v0, p8
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mMaxY:I
int-to-double v3, p3
int-to-double v5, p4
invoke-static {v3, v4, v5, v6}, Ljava/lang/Math;->hypot(DD)D
move-result-wide v1
int-to-double v3, p4
div-double/2addr v3, v1
iput-wide v3, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mSinAngle:D
int-to-double v3, p3
div-double/2addr v3, v1
iput-wide v3, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mCosAngle:D
const-wide/high16 v3, 0x4049
invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D
move-result-wide v5
const-wide v7, 0x3fd5555555555555L
invoke-static {v5, v6, v7, v8}, Ljava/lang/Math;->pow(DD)D
move-result-wide v5
mul-double/2addr v3, v5
invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J
move-result-wide v3
long-to-int v3, v3
iput v3, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mDuration:I
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mDuration:I
int-to-double v3, v3
mul-double/2addr v3, v1
const-wide/high16 v5, 0x4010
div-double/2addr v3, v5
const-wide v5, 0x408f400000000000L
div-double/2addr v3, v5
invoke-static {v3, v4}, Ljava/lang/Math;->round(D)J
move-result-wide v3
long-to-int v3, v3
iput v3, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mDistance:I
const/high16 v3, 0x3f80
invoke-direct {p0, v3}, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->getX(F)I
move-result v3
iput v3, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mFinalX:I
const/high16 v3, 0x3f80
invoke-direct {p0, v3}, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->getY(F)I
move-result v3
iput v3, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mFinalY:I
return-void
.end method
.method public getCurrVelocityX()I
.registers 5
iget-wide v0, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mCurrV:D
iget-wide v2, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mCosAngle:D
mul-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
move-result-wide v0
long-to-int v0, v0
return v0
.end method
.method public getCurrVelocityY()I
.registers 5
iget-wide v0, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mCurrV:D
iget-wide v2, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mSinAngle:D
mul-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->round(D)J
move-result-wide v0
long-to-int v0, v0
return v0
.end method
.method public getCurrX()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mCurrX:I
return v0
.end method
.method public getCurrY()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mCurrY:I
return v0
.end method
.method public getDuration()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mDuration:I
return v0
.end method
.method public getFinalX()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mFinalX:I
return v0
.end method
.method public getFinalY()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/FlingScroller;->mFinalY:I
return v0
.end method