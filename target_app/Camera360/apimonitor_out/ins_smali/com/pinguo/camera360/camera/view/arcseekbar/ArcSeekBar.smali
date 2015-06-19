.class public Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;
.super Landroid/view/View;
.source "ArcSeekBar.java"
.field private static final NOT_INIT:I = -0x306e
.field private static final SCLAE_ACCESSORY_PADDING_TO_THUMB:I = 0x5
.field private static final mArcBending:F = 0.061f
.field private mAlphaTextPaint:Landroid/graphics/Paint;
.field private mArcCenterX:F
.field private mArcCenterY:F
.field private mArcCircleRadius:F
.field private mArcCircleRect:Landroid/graphics/RectF;
.field private mArcHeight:I
.field private mArcLeft:I
.field private mArcRight:I
.field private mArcStartAngleRadian:F
.field private mArcSweepAngleRadian:F
.field private mArcTop:I
.field private mArcWidth:I
.field private mCurrentScaleItem:I
.field private mDrawFilter:Landroid/graphics/DrawFilter;
.field private mGestureDetector:Landroid/view/GestureDetector;
.field private mH:I
.field private mIsScrolling:Z
.field private mIsTouching:Z
.field private mLinePaint1:Landroid/graphics/Paint;
.field private mLinePaint2:Landroid/graphics/Paint;
.field private mLineWidth:I
.field private mListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnSeekChangedListener;
.field private mScaleAdapter:Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
.field private mScaleListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;
.field private mScroller:Landroid/widget/Scroller;
.field private mScrollingListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;
.field private mSectorPaint:Landroid/graphics/Paint;
.field private mSeekRate:F
.field private mTextOffsetToLine:I
.field private mTextPaint:Landroid/graphics/Paint;
.field private mThumbDrawable:Landroid/graphics/drawable/Drawable;
.field private mThumbOffset:I
.field private mThumbPaint:Landroid/graphics/Paint;
.field private mThumbRadius:I
.field private mThumbScaleRate:F
.field private mThumbScaleScroller:Landroid/widget/Scroller;
.field private mThumbStorkeWidth:I
.field private mW:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/4 v1, 0x0
const/16 v0, -0x306e
invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mIsScrolling:Z
iput-boolean v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mIsTouching:Z
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mW:I
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mH:I
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->initSize()V
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->init()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mIsScrolling:Z
return v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbRadius:I
return v0
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->animateToOffset(I)V
return-void
.end method
.method static synthetic access$11(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mCurrentScaleItem:I
return-void
.end method
.method static synthetic access$12(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;
return-object v0
.end method
.method static synthetic access$13(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mCurrentScaleItem:I
return v0
.end method
.method static synthetic access$14(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnSeekChangedListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnSeekChangedListener;
return-object v0
.end method
.method static synthetic access$15(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcWidth:I
return v0
.end method
.method static synthetic access$16(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;F)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSeekRate:F
return-void
.end method
.method static synthetic access$17(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSeekRate:F
return v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbScaleRate:F
return v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;III)V
.registers 4
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->animateThumbScale(III)V
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mIsScrolling:Z
return-void
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScrollingListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;
return-object v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcLeft:I
return v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;F)I
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getThumbOffset(F)I
move-result v0
return v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleAdapter:Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
return-object v0
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;I)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$StandardScaleInfo;
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getStandardScale(I)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$StandardScaleInfo;
move-result-object v0
return-object v0
.end method
.method private animateThumbScale(III)V
.registers 10
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbScaleScroller:Landroid/widget/Scroller;
sub-int v4, p2, p1
move v2, p1
move v3, v1
move v5, p3
invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V
return-void
.end method
.method private animateToOffset(I)V
.registers 8
const/4 v1, 0x0
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScroller:Landroid/widget/Scroller;
iget v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbOffset:I
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbOffset:I
sub-int v4, p1, v3
const/16 v5, 0x190
move v3, v1
invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V
return-void
.end method
.method private computeAngleA(FFF)F
.registers 6
mul-float v0, p2, p2
mul-float v1, p3, p3
add-float/2addr v0, v1
mul-float v1, p1, p1
sub-float/2addr v0, v1
const/high16 v1, 0x4000
mul-float/2addr v1, p2
mul-float/2addr v1, p3
div-float/2addr v0, v1
float-to-double v0, v0
invoke-static {v0, v1}, Ljava/lang/Math;->acos(D)D
move-result-wide v0
double-to-float v0, v0
return v0
.end method
.method private computeCurrentAngleRadian(II)F
.registers 8
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcLeft:I
int-to-float v1, v1
iget v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcTop:I
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcHeight:I
add-int/2addr v2, v3
int-to-float v2, v2
int-to-float v3, p1
int-to-float v4, p2
invoke-direct {p0, v1, v2, v3, v4}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->computeDistance(FFFF)F
move-result v0
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
iget v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
invoke-direct {p0, v0, v1, v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->computeAngleA(FFF)F
move-result v1
return v1
.end method
.method private computeDistance(FFFF)F
.registers 8
sub-float v0, p4, p2
sub-float v1, p4, p2
mul-float/2addr v0, v1
sub-float v1, p3, p1
sub-float v2, p3, p1
mul-float/2addr v1, v2
add-float/2addr v0, v1
float-to-double v0, v0
invoke-static {v0, v1}, Ljava/lang/Math;->sqrt(D)D
move-result-wide v0
double-to-float v0, v0
return v0
.end method
.method private computeOffsetYOnCircle(FFFF)F
.registers 12
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterX:F
sub-float v1, p1, v1
iget v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
div-float/2addr v1, v2
float-to-double v1, v1
invoke-static {v1, v2}, Ljava/lang/Math;->acos(D)D
move-result-wide v1
double-to-float v0, v1
const/4 v1, 0x0
cmpl-float v1, v0, v1
if-lez v1, :cond_13
neg-float v0, v0
:cond_13
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterY:F
float-to-double v1, v1
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
float-to-double v3, v3
float-to-double v5, v0
invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D
move-result-wide v5
mul-double/2addr v3, v5
add-double/2addr v1, v3
double-to-float v1, v1
return v1
.end method
.method private computeTextDrawWidth(Ljava/lang/String;)F
.registers 4
invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B
move-result-object v0
array-length v0, v0
int-to-float v0, v0
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mTextPaint:Landroid/graphics/Paint;
invoke-virtual {v1}, Landroid/graphics/Paint;->getTextSize()F
move-result v1
mul-float/2addr v0, v1
const/high16 v1, 0x4000
div-float/2addr v0, v1
return v0
.end method
.method private computeXOnCircle(FFF)F
.registers 10
float-to-double v0, p1
float-to-double v2, p2
float-to-double v4, p3
invoke-static {v4, v5}, Ljava/lang/Math;->cos(D)D
move-result-wide v4
mul-double/2addr v2, v4
add-double/2addr v0, v2
double-to-float v0, v0
return v0
.end method
.method private dpToPixel(F)I
.registers 3
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v0
iget v0, v0, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v0, p1
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
return v0
.end method
.method private drawScale(Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
.registers 6
const/4 v1, 0x0
if-eqz p1, :cond_1b
invoke-interface {p1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
if-eqz v0, :cond_1c
invoke-interface {p1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {p3}, Landroid/graphics/Paint;->getAlpha()I
move-result v1
invoke-virtual {v0, v1}, Landroid/graphics/drawable/Drawable;->setAlpha(I)V
invoke-interface {p1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v0
invoke-virtual {v0, p2}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:cond_1b
:goto_1b
return-void
:cond_1c
invoke-interface {p1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;->getText()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1b
invoke-interface {p1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;->getText()Ljava/lang/String;
move-result-object v0
invoke-virtual {p2, v0, v1, v1, p3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
goto :goto_1b
.end method
.method private findCurrentThumbOnWhichScaleIndex(FFF)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$FadeScaleInfo;
.registers 10
iget-object v5, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleAdapter:Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
invoke-interface {v5}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;->getScaleViewCount()I
move-result v5
add-int/lit8 v5, v5, -0x1
int-to-float v5, v5
div-float v4, p2, v5
div-float v1, p1, v4
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v0
int-to-float v5, v0
mul-float/2addr v5, v4
sub-float v5, p1, v5
invoke-static {v5}, Ljava/lang/Math;->abs(F)F
move-result v2
cmpg-float v5, v2, v4
if-gez v5, :cond_25
new-instance v3, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$FadeScaleInfo;
div-float v5, v2, v4
invoke-direct {v3, v0, v5}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$FadeScaleInfo;-><init>(IF)V
:goto_24
return-object v3
:cond_25
const/4 v3, 0x0
goto :goto_24
.end method
.method private getStandardOffset(I)I
.registers 10
iget v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcStartAngleRadian:F
int-to-float v3, p1
iget-object v4, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleAdapter:Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
invoke-interface {v4}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;->getScaleCount()I
move-result v4
add-int/lit8 v4, v4, -0x1
int-to-float v4, v4
div-float/2addr v3, v4
iget v4, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcSweepAngleRadian:F
mul-float/2addr v3, v4
add-float v0, v2, v3
iget v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterX:F
float-to-double v2, v2
iget v4, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
float-to-double v4, v4
float-to-double v6, v0
invoke-static {v6, v7}, Ljava/lang/Math;->cos(D)D
move-result-wide v6
mul-double/2addr v4, v6
add-double/2addr v2, v4
double-to-int v1, v2
iget v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcLeft:I
sub-int v2, v1, v2
return v2
.end method
.method private getStandardScale(I)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$StandardScaleInfo;
.registers 14
iget v8, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcLeft:I
add-int/2addr p1, v8
int-to-float v8, p1
iget v9, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterX:F
iget v10, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterY:F
iget v11, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
invoke-direct {p0, v8, v9, v10, v11}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->computeOffsetYOnCircle(FFFF)F
move-result v8
float-to-int v5, v8
invoke-direct {p0, p1, v5}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->computeCurrentAngleRadian(II)F
move-result v2
iget v8, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcSweepAngleRadian:F
div-float v0, v2, v8
const/high16 v8, 0x3f80
iget-object v9, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleAdapter:Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
invoke-interface {v9}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;->getScaleCount()I
move-result v9
add-int/lit8 v9, v9, -0x1
int-to-float v9, v9
div-float v6, v8, v9
div-float v8, v0, v6
invoke-static {v8}, Ljava/lang/Math;->round(F)I
move-result v1
int-to-float v8, v1
iget v9, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcSweepAngleRadian:F
iget-object v10, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleAdapter:Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
invoke-interface {v10}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;->getScaleCount()I
move-result v10
add-int/lit8 v10, v10, -0x1
int-to-float v10, v10
div-float/2addr v9, v10
mul-float v7, v8, v9
iget v8, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterX:F
iget v9, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
iget v10, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcStartAngleRadian:F
add-float/2addr v10, v7
invoke-direct {p0, v8, v9, v10}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->computeXOnCircle(FFF)F
move-result v8
invoke-static {v8}, Ljava/lang/Math;->round(F)I
move-result v8
iget v9, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcLeft:I
sub-int v3, v8, v9
if-gez v3, :cond_55
const/4 v3, 0x0
:goto_4f
:cond_4f
new-instance v4, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$StandardScaleInfo;
invoke-direct {v4, v1, v3}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$StandardScaleInfo;-><init>(II)V
return-object v4
:cond_55
iget v8, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcWidth:I
if-le v3, v8, :cond_4f
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcWidth:I
goto :goto_4f
.end method
.method private getThumbOffset(F)I
.registers 4
invoke-static {p1}, Ljava/lang/Math;->round(F)I
move-result v0
if-gez v0, :cond_8
const/4 v0, 0x0
:cond_7
:goto_7
return v0
:cond_8
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcWidth:I
if-le v0, v1, :cond_7
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcWidth:I
goto :goto_7
.end method
.method private init()V
.registers 9
const/16 v7, 0xc8
const/high16 v6, 0x4120
const/4 v5, -0x1
const/4 v4, 0x1
new-instance v0, Landroid/graphics/PaintFlagsDrawFilter;
const/4 v1, 0x0
const/4 v2, 0x3
invoke-direct {v0, v1, v2}, Landroid/graphics/PaintFlagsDrawFilter;-><init>(II)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mDrawFilter:Landroid/graphics/DrawFilter;
new-instance v0, Landroid/widget/Scroller;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScroller:Landroid/widget/Scroller;
new-instance v0, Landroid/widget/Scroller;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbScaleScroller:Landroid/widget/Scroller;
new-instance v0, Landroid/view/GestureDetector;
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getContext()Landroid/content/Context;
move-result-object v1
new-instance v2, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;
const/4 v3, 0x0
invoke-direct {v2, p0, v3}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;-><init>(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$SeekBarGestureListener;)V
invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mGestureDetector:Landroid/view/GestureDetector;
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbPaint:Landroid/graphics/Paint;
invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbPaint:Landroid/graphics/Paint;
invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbPaint:Landroid/graphics/Paint;
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbStorkeWidth:I
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbPaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLinePaint1:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLinePaint1:Landroid/graphics/Paint;
invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLinePaint1:Landroid/graphics/Paint;
invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLinePaint1:Landroid/graphics/Paint;
invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLinePaint1:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLinePaint1:Landroid/graphics/Paint;
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLineWidth:I
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLinePaint2:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLinePaint2:Landroid/graphics/Paint;
invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLinePaint2:Landroid/graphics/Paint;
invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLinePaint2:Landroid/graphics/Paint;
invoke-virtual {v0, v7}, Landroid/graphics/Paint;->setAlpha(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLinePaint2:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLinePaint2:Landroid/graphics/Paint;
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLineWidth:I
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mTextPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mTextPaint:Landroid/graphics/Paint;
invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mTextPaint:Landroid/graphics/Paint;
invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mTextPaint:Landroid/graphics/Paint;
invoke-direct {p0, v6}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->dpToPixel(F)I
move-result v1
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mAlphaTextPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mAlphaTextPaint:Landroid/graphics/Paint;
invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mAlphaTextPaint:Landroid/graphics/Paint;
invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mAlphaTextPaint:Landroid/graphics/Paint;
invoke-direct {p0, v6}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->dpToPixel(F)I
move-result v1
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSectorPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSectorPaint:Landroid/graphics/Paint;
const/high16 v1, -0x1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSectorPaint:Landroid/graphics/Paint;
const/16 v1, 0x64
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSectorPaint:Landroid/graphics/Paint;
invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSectorPaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSectorPaint:Landroid/graphics/Paint;
const/high16 v1, 0x4316
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
return-void
.end method
.method private initArcParameter()V
.registers 9
const/high16 v6, 0x4000
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getWidth()I
move-result v1
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getPaddingLeft()I
move-result v2
sub-int v2, v1, v2
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getPaddingRight()I
move-result v3
sub-int/2addr v2, v3
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbRadius:I
mul-int/lit8 v3, v3, 0x2
sub-int/2addr v2, v3
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbStorkeWidth:I
mul-int/lit8 v3, v3, 0x2
sub-int/2addr v2, v3
iput v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcWidth:I
iget v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcWidth:I
int-to-float v2, v2
const v3, 0x3d79db23
mul-float/2addr v2, v3
float-to-int v2, v2
iput v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcHeight:I
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getPaddingLeft()I
move-result v2
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbRadius:I
add-int/2addr v2, v3
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbStorkeWidth:I
add-int/2addr v2, v3
iput v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcLeft:I
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getPaddingRight()I
move-result v2
sub-int v2, v1, v2
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbRadius:I
sub-int/2addr v2, v3
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbStorkeWidth:I
sub-int/2addr v2, v3
iput v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcRight:I
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getPaddingTop()I
move-result v2
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbRadius:I
add-int/2addr v2, v3
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbStorkeWidth:I
div-int/lit8 v3, v3, 0x2
add-int/2addr v2, v3
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLineWidth:I
sub-int/2addr v2, v3
iget-object v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mTextPaint:Landroid/graphics/Paint;
invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F
move-result v3
float-to-double v3, v3
invoke-static {v3, v4}, Ljava/lang/Math;->ceil(D)D
move-result-wide v3
double-to-int v3, v3
add-int/2addr v2, v3
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mTextOffsetToLine:I
add-int/2addr v2, v3
iput v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcTop:I
iget v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcWidth:I
int-to-float v2, v2
div-float/2addr v2, v6
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcHeight:I
int-to-float v3, v3
div-float/2addr v2, v3
float-to-double v2, v2
invoke-static {v2, v3}, Ljava/lang/Math;->atan(D)D
move-result-wide v2
double-to-float v0, v2
const-wide v2, 0x400921fb54442d18L
mul-float v4, v0, v6
float-to-double v4, v4
sub-double/2addr v2, v4
const-wide/high16 v4, 0x4000
mul-double/2addr v2, v4
double-to-float v2, v2
iput v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcSweepAngleRadian:F
const-wide v2, 0x4012d97c7f3321d2L
iget v4, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcSweepAngleRadian:F
div-float/2addr v4, v6
float-to-double v4, v4
sub-double/2addr v2, v4
double-to-float v2, v2
iput v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcStartAngleRadian:F
iget v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcWidth:I
int-to-float v2, v2
div-float/2addr v2, v6
float-to-double v2, v2
iget v4, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcSweepAngleRadian:F
div-float/2addr v4, v6
float-to-double v4, v4
invoke-static {v4, v5}, Ljava/lang/Math;->sin(D)D
move-result-wide v4
div-double/2addr v2, v4
double-to-float v2, v2
iput v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
iget v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcLeft:I
int-to-float v2, v2
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcWidth:I
int-to-float v3, v3
div-float/2addr v3, v6
add-float/2addr v2, v3
iput v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterX:F
iget v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcTop:I
int-to-float v2, v2
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
add-float/2addr v2, v3
iput v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterY:F
new-instance v2, Landroid/graphics/RectF;
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterX:F
iget v4, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
sub-float/2addr v3, v4
iget v4, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterY:F
iget v5, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
sub-float/2addr v4, v5
iget v5, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterX:F
iget v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
add-float/2addr v5, v6
iget v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterY:F
iget v7, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
add-float/2addr v6, v7
invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;-><init>(FFFF)V
iput-object v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRect:Landroid/graphics/RectF;
iget v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mCurrentScaleItem:I
if-eqz v2, :cond_d3
iget v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mCurrentScaleItem:I
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setCurrentScaleItem(I)V
:cond_d3
return-void
.end method
.method private initSize()V
.registers 3
const/high16 v1, 0x3f80
const/high16 v0, 0x40c0
invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->dpToPixel(F)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbRadius:I
invoke-direct {p0, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->dpToPixel(F)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbStorkeWidth:I
invoke-direct {p0, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->dpToPixel(F)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLineWidth:I
const/high16 v0, 0x4020
invoke-direct {p0, v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->dpToPixel(F)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mTextOffsetToLine:I
const v0, 0x3fb33333
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbScaleRate:F
return-void
.end method
.method private radianToDegree(F)F
.registers 6
const/high16 v0, 0x4334
mul-float/2addr v0, p1
float-to-double v0, v0
const-wide v2, 0x400921fb54442d18L
div-double/2addr v0, v2
double-to-float v0, v0
return v0
.end method
.method private stopAnimateThumb()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbScaleScroller:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->abortAnimation()V
return-void
.end method
.method public fadeIn()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->fadeIn(Landroid/view/animation/Animation$AnimationListener;)V
return-void
.end method
.method public fadeIn(Landroid/view/animation/Animation$AnimationListener;)V
.registers 3
invoke-static {p1}, Lcom/pinguo/camera360/camera/controller/ParameterAdvanceSettingFragment;->obtainFadeInAnimation(Landroid/view/animation/Animation$AnimationListener;)Landroid/view/animation/Animation;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->startAnimation(Landroid/view/animation/Animation;)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setVisibility(I)V
return-void
.end method
.method public fadeOut()V
.registers 2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->fadeOut(Landroid/view/animation/Animation$AnimationListener;)V
return-void
.end method
.method public fadeOut(Landroid/view/animation/Animation$AnimationListener;)V
.registers 5
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/high16 v1, 0x3f80
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v1, 0xc8
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
invoke-virtual {v0, p1}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->startAnimation(Landroid/view/animation/Animation;)V
const/4 v1, 0x4
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setVisibility(I)V
return-void
.end method
.method public getArcCenterX()F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterX:F
return v0
.end method
.method public getArcCenterY()F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterY:F
return v0
.end method
.method public getArcRaidus()F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
return v0
.end method
.method public getArcStartAngleRadian()F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcStartAngleRadian:F
return v0
.end method
.method public getArcSweepAngleRadian()F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcSweepAngleRadian:F
return v0
.end method
.method public getCurrentScaleItem()I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mCurrentScaleItem:I
return v0
.end method
.method public getCurrentSeekValue()F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSeekRate:F
return v0
.end method
.method public getLinePaint1()Landroid/graphics/Paint;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLinePaint1:Landroid/graphics/Paint;
return-object v0
.end method
.method public getLinePaint2()Landroid/graphics/Paint;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLinePaint2:Landroid/graphics/Paint;
return-object v0
.end method
.method public getThumbPaint()Landroid/graphics/Paint;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbPaint:Landroid/graphics/Paint;
return-object v0
.end method
.method public hide()V
.registers 6
new-instance v0, Landroid/view/animation/RotateAnimation;
const/4 v1, 0x0
iget v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcSweepAngleRadian:F
invoke-direct {p0, v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->radianToDegree(F)F
move-result v2
const/high16 v3, 0x40a0
add-float/2addr v2, v3
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterX:F
iget v4, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterY:F
invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V
new-instance v1, Landroid/view/animation/LinearInterpolator;
invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
const-wide/16 v1, 0x12c
invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->startAnimation(Landroid/view/animation/Animation;)V
const/4 v1, 0x4
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setVisibility(I)V
return-void
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 44
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mDrawFilter:Landroid/graphics/DrawFilter;
move-object/from16 v0, p1
invoke-virtual {v0, v4}, Landroid/graphics/Canvas;->setDrawFilter(Landroid/graphics/DrawFilter;)V
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbRadius:I
int-to-float v15, v4
const/4 v14, 0x0
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbScaleScroller:Landroid/widget/Scroller;
invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z
move-result v4
if-eqz v4, :cond_1aa
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbScaleScroller:Landroid/widget/Scroller;
invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I
move-result v4
int-to-float v15, v4
const/4 v14, 0x1
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->invalidate()V
:goto_26
:cond_26
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcSweepAngleRadian:F
move-object/from16 v0, p0
invoke-direct {v0, v4}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->radianToDegree(F)F
move-result v27
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcStartAngleRadian:F
move-object/from16 v0, p0
invoke-direct {v0, v4}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->radianToDegree(F)F
move-result v6
add-float v17, v6, v27
const/high16 v4, 0x4000
mul-float/2addr v4, v15
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
move-object/from16 v0, p0
invoke-direct {v0, v4, v5, v8}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->computeAngleA(FFF)F
move-result v39
move-object/from16 v0, p0
move/from16 v1, v39
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->radianToDegree(F)F
move-result v38
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcLeft:I
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbOffset:I
add-int v40, v4, v5
move/from16 v0, v40
int-to-float v4, v0
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterX:F
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterY:F
move-object/from16 v0, p0
iget v9, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
move-object/from16 v0, p0
invoke-direct {v0, v4, v5, v8, v9}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->computeOffsetYOnCircle(FFFF)F
move-result v4
invoke-static {v4}, Ljava/lang/Math;->round(F)I
move-result v41
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v4, :cond_1be
if-nez v14, :cond_1be
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v29
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v28
div-int/lit8 v4, v29, 0x2
sub-int v35, v40, v4
div-int/lit8 v4, v28, 0x2
sub-int v37, v41, v4
div-int/lit8 v4, v29, 0x2
add-int v36, v40, v4
div-int/lit8 v4, v28, 0x2
add-int v34, v41, v4
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
move/from16 v0, v35
move/from16 v1, v37
move/from16 v2, v36
move/from16 v3, v34
invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
move-object/from16 v0, p1
invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:goto_b8
move-object/from16 v0, p0
move/from16 v1, v40
move/from16 v2, v41
invoke-direct {v0, v1, v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->computeCurrentAngleRadian(II)F
move-result v33
move-object/from16 v0, p0
move/from16 v1, v33
invoke-direct {v0, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->radianToDegree(F)F
move-result v32
const/high16 v4, 0x4000
div-float v4, v38, v4
sub-float v7, v32, v4
const/4 v4, 0x0
cmpl-float v4, v7, v4
if-lez v4, :cond_e3
move-object/from16 v0, p0
iget-object v5, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRect:Landroid/graphics/RectF;
const/4 v8, 0x0
move-object/from16 v0, p0
iget-object v9, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLinePaint1:Landroid/graphics/Paint;
move-object/from16 v4, p1
invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
:cond_e3
sub-float v4, v17, v6
sub-float/2addr v4, v7
sub-float v4, v4, v38
const/4 v5, 0x0
cmpl-float v4, v4, v5
if-lez v4, :cond_104
move-object/from16 v0, p0
iget-object v9, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRect:Landroid/graphics/RectF;
add-float v4, v6, v7
add-float v10, v4, v38
sub-float v4, v17, v6
sub-float/2addr v4, v7
sub-float v11, v4, v38
const/4 v12, 0x0
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLinePaint1:Landroid/graphics/Paint;
move-object/from16 v8, p1
invoke-virtual/range {v8 .. v13}, Landroid/graphics/Canvas;->drawArc(Landroid/graphics/RectF;FFZLandroid/graphics/Paint;)V
:cond_104
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleAdapter:Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
if-eqz v4, :cond_18d
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcSweepAngleRadian:F
move-object/from16 v0, p0
move/from16 v1, v33
move/from16 v2, v39
invoke-direct {v0, v1, v4, v2}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->findCurrentThumbOnWhichScaleIndex(FFF)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$FadeScaleInfo;
move-result-object v18
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcLeft:I
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcWidth:I
div-int/lit8 v5, v5, 0x2
add-int v30, v4, v5
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleAdapter:Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
invoke-interface {v4}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;->getScaleViewCount()I
move-result v4
add-int/lit8 v4, v4, -0x1
int-to-float v4, v4
div-float v23, v27, v4
const/high16 v4, 0x4000
div-float v21, v27, v4
const/16 v20, 0x0
:goto_137
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleAdapter:Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
invoke-interface {v4}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;->getScaleViewCount()I
move-result v4
move/from16 v0, v20
if-lt v0, v4, :cond_1cf
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleAdapter:Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mCurrentScaleItem:I
invoke-interface {v4, v5}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;->getScale(I)Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;
move-result-object v24
if-eqz v24, :cond_18d
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I
invoke-interface/range {v24 .. v24}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v4
if-eqz v4, :cond_2f7
invoke-interface/range {v24 .. v24}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v4
invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v4
div-int/lit8 v4, v4, 0x2
sub-int v4, v40, v4
int-to-float v0, v4
move/from16 v25, v0
move/from16 v0, v41
int-to-float v4, v0
sub-float/2addr v4, v15
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbStorkeWidth:I
int-to-float v5, v5
sub-float/2addr v4, v5
const/high16 v5, 0x40a0
sub-float/2addr v4, v5
invoke-interface/range {v24 .. v24}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v5
invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v5
int-to-float v5, v5
sub-float v26, v4, v5
:goto_181
move-object/from16 v0, p1
move/from16 v1, v25
move/from16 v2, v26
invoke-virtual {v0, v1, v2}, Landroid/graphics/Canvas;->translate(FF)V
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V
:cond_18d
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z
move-result v4
if-eqz v4, :cond_1a6
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I
move-result v4
move-object/from16 v0, p0
iput v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbOffset:I
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->invalidate()V
:cond_1a6
invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
return-void
:cond_1aa
move-object/from16 v0, p0
iget-boolean v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mIsScrolling:Z
if-eqz v4, :cond_26
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbRadius:I
int-to-float v4, v4
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbScaleRate:F
mul-float v15, v4, v5
const/4 v14, 0x1
goto/16 :goto_26
:cond_1be
move/from16 v0, v40
int-to-float v4, v0
move/from16 v0, v41
int-to-float v5, v0
move-object/from16 v0, p0
iget-object v8, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbPaint:Landroid/graphics/Paint;
move-object/from16 v0, p1
invoke-virtual {v0, v4, v5, v15, v8}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
goto/16 :goto_b8
:cond_1cf
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleAdapter:Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
invoke-interface {v4}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;->getScaleViewCount()I
move-result v4
const/4 v5, 0x1
if-eq v4, v5, :cond_2a6
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleAdapter:Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
invoke-interface {v4}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;->getScaleCount()I
move-result v4
add-int/lit8 v4, v4, -0x1
move-object/from16 v0, p0
iget-object v5, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleAdapter:Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
invoke-interface {v5}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;->getScaleViewCount()I
move-result v5
add-int/lit8 v5, v5, -0x1
div-int/2addr v4, v5
mul-int v22, v4, v20
:goto_1f1
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleAdapter:Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
move/from16 v0, v22
invoke-interface {v4, v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;->getScale(I)Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;
move-result-object v24
if-eqz v24, :cond_2a2
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I
invoke-interface/range {v24 .. v24}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v4
if-eqz v4, :cond_2aa
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getPaddingTop()I
move-result v4
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mTextOffsetToLine:I
add-int/2addr v4, v5
invoke-interface/range {v24 .. v24}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v5
invoke-virtual {v5}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v5
div-int/lit8 v5, v5, 0x2
add-int v31, v4, v5
invoke-interface/range {v24 .. v24}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;->getDrawable()Landroid/graphics/drawable/Drawable;
move-result-object v4
invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v4
int-to-float v4, v4
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mTextOffsetToLine:I
int-to-float v8, v8
add-float/2addr v5, v8
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
move-object/from16 v0, p0
iget v9, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mTextOffsetToLine:I
int-to-float v9, v9
add-float/2addr v8, v9
move-object/from16 v0, p0
invoke-direct {v0, v4, v5, v8}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->computeAngleA(FFF)F
move-result v16
:goto_23e
move/from16 v0, v30
int-to-float v4, v0
move/from16 v0, v31
int-to-float v5, v0
move-object/from16 v0, p1
invoke-virtual {v0, v4, v5}, Landroid/graphics/Canvas;->translate(FF)V
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->save()I
move/from16 v0, v20
int-to-float v4, v0
mul-float v4, v4, v23
sub-float v4, v4, v21
const/high16 v5, 0x4000
div-float v5, v16, v5
move-object/from16 v0, p0
invoke-direct {v0, v5}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->radianToDegree(F)F
move-result v5
sub-float/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterX:F
move/from16 v0, v30
int-to-float v8, v0
sub-float/2addr v5, v8
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterY:F
move/from16 v0, v31
int-to-float v9, v0
sub-float/2addr v8, v9
move-object/from16 v0, p1
invoke-virtual {v0, v4, v5, v8}, Landroid/graphics/Canvas;->rotate(FFF)V
if-eqz v18, :cond_2e9
move-object/from16 v0, v18
iget v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$FadeScaleInfo;->index:I
move/from16 v0, v20
if-ne v4, v0, :cond_2e9
const/16 v19, 0x78
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mAlphaTextPaint:Landroid/graphics/Paint;
move/from16 v0, v19
int-to-float v5, v0
move-object/from16 v0, v18
iget v8, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$FadeScaleInfo;->alpha:F
mul-float/2addr v5, v8
float-to-int v5, v5
invoke-virtual {v4, v5}, Landroid/graphics/Paint;->setAlpha(I)V
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mAlphaTextPaint:Landroid/graphics/Paint;
move-object/from16 v0, p0
move-object/from16 v1, v24
move-object/from16 v2, p1
invoke-direct {v0, v1, v2, v4}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->drawScale(Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
:goto_29c
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V
invoke-virtual/range {p1 .. p1}, Landroid/graphics/Canvas;->restore()V
:cond_2a2
add-int/lit8 v20, v20, 0x1
goto/16 :goto_137
:cond_2a6
move/from16 v22, v20
goto/16 :goto_1f1
:cond_2aa
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getPaddingTop()I
move-result v4
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mTextOffsetToLine:I
add-int/2addr v4, v5
move-object/from16 v0, p0
iget-object v5, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mTextPaint:Landroid/graphics/Paint;
invoke-virtual {v5}, Landroid/graphics/Paint;->getTextSize()F
move-result v5
float-to-double v8, v5
invoke-static {v8, v9}, Ljava/lang/Math;->ceil(D)D
move-result-wide v8
double-to-int v5, v8
add-int v31, v4, v5
invoke-interface/range {v24 .. v24}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;->getText()Ljava/lang/String;
move-result-object v4
move-object/from16 v0, p0
invoke-direct {v0, v4}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->computeTextDrawWidth(Ljava/lang/String;)F
move-result v4
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mTextOffsetToLine:I
int-to-float v8, v8
add-float/2addr v5, v8
move-object/from16 v0, p0
iget v8, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCircleRadius:F
move-object/from16 v0, p0
iget v9, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mTextOffsetToLine:I
int-to-float v9, v9
add-float/2addr v8, v9
move-object/from16 v0, p0
invoke-direct {v0, v4, v5, v8}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->computeAngleA(FFF)F
move-result v16
goto/16 :goto_23e
:cond_2e9
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mTextPaint:Landroid/graphics/Paint;
move-object/from16 v0, p0
move-object/from16 v1, v24
move-object/from16 v2, p1
invoke-direct {v0, v1, v2, v4}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->drawScale(Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;Landroid/graphics/Canvas;Landroid/graphics/Paint;)V
goto :goto_29c
:cond_2f7
move/from16 v0, v40
int-to-float v4, v0
invoke-interface/range {v24 .. v24}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter$Scale;->getText()Ljava/lang/String;
move-result-object v5
move-object/from16 v0, p0
invoke-direct {v0, v5}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->computeTextDrawWidth(Ljava/lang/String;)F
move-result v5
const/high16 v8, 0x4000
div-float/2addr v5, v8
sub-float v25, v4, v5
move/from16 v0, v41
int-to-float v4, v0
sub-float/2addr v4, v15
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbStorkeWidth:I
int-to-float v5, v5
sub-float/2addr v4, v5
const/high16 v5, 0x40a0
sub-float v26, v4, v5
goto/16 :goto_181
.end method
.method protected onMeasure(II)V
.registers 10
const/16 v6, -0x306e
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v2
const/high16 v3, -0x8000
if-ne v0, v3, :cond_62
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbRadius:I
iget v4, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbStorkeWidth:I
add-int/2addr v3, v4
mul-int/lit8 v1, v3, 0x2
iget-object v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v3, :cond_21
iget-object v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v3
if-le v1, v3, :cond_5b
:goto_21
:cond_21
int-to-float v3, v1
int-to-float v4, v2
const v5, 0x3d79db23
mul-float/2addr v4, v5
add-float/2addr v3, v4
float-to-int v1, v3
int-to-float v3, v1
iget-object v4, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mTextPaint:Landroid/graphics/Paint;
invoke-virtual {v4}, Landroid/graphics/Paint;->getTextSize()F
move-result v4
iget v5, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mTextOffsetToLine:I
int-to-float v5, v5
add-float/2addr v4, v5
add-float/2addr v3, v4
float-to-int v1, v3
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getPaddingTop()I
move-result v3
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getPaddingBottom()I
move-result v4
add-int/2addr v3, v4
add-int/2addr v1, v3
invoke-virtual {p0, v2, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setMeasuredDimension(II)V
:goto_43
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mW:I
if-ne v3, v6, :cond_66
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mH:I
if-ne v3, v6, :cond_66
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->initArcParameter()V
:goto_4e
:cond_4e
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getWidth()I
move-result v3
iput v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mW:I
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getHeight()I
move-result v3
iput v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mH:I
return-void
:cond_5b
iget-object v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v3}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v1
goto :goto_21
:cond_62
invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V
goto :goto_43
:cond_66
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mW:I
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getWidth()I
move-result v4
if-ne v3, v4, :cond_76
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mH:I
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getHeight()I
move-result v4
if-eq v3, v4, :cond_4e
:cond_76
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->initArcParameter()V
goto :goto_4e
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 12
const/4 v9, 0x1
const/4 v6, 0x0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v0
packed-switch v0, :pswitch_data_100
:pswitch_9
:goto_9
iget-object v7, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mGestureDetector:Landroid/view/GestureDetector;
invoke-virtual {v7, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v1
if-nez v1, :cond_81
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v7
if-eq v7, v9, :cond_1e
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v7
const/4 v8, 0x3
if-ne v7, v8, :cond_81
:cond_1e
iget-boolean v7, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mIsScrolling:Z
if-eqz v7, :cond_3b
iput-boolean v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mIsScrolling:Z
iget v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbRadius:I
int-to-float v6, v6
iget v7, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbScaleRate:F
mul-float/2addr v6, v7
float-to-int v6, v6
iget v7, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbRadius:I
const/16 v8, 0x64
invoke-direct {p0, v6, v7, v8}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->animateThumbScale(III)V
iget-object v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScrollingListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;
if-eqz v6, :cond_3b
iget-object v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScrollingListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;
invoke-interface {v6, p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;->onStopScrolling(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)V
:cond_3b
iget-object v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleAdapter:Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
if-eqz v6, :cond_75
iget v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbOffset:I
invoke-direct {p0, v6}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getStandardScale(I)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$StandardScaleInfo;
move-result-object v4
iget v6, v4, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$StandardScaleInfo;->currentX:I
invoke-direct {p0, v6}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->animateToOffset(I)V
iget v5, v4, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$StandardScaleInfo;->currentItem:I
iget v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mCurrentScaleItem:I
if-eq v6, v5, :cond_5d
iput v5, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mCurrentScaleItem:I
iget-object v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;
if-eqz v6, :cond_5d
iget-object v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;
iget v7, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mCurrentScaleItem:I
invoke-interface {v6, v7}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;->onScaleChanged(I)V
:cond_5d
iget-object v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnSeekChangedListener;
if-eqz v6, :cond_75
iget v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcWidth:I
if-eqz v6, :cond_75
iget v6, v4, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$StandardScaleInfo;->currentX:I
int-to-float v6, v6
iget v7, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcWidth:I
int-to-float v7, v7
div-float/2addr v6, v7
iput v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSeekRate:F
iget-object v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnSeekChangedListener;
iget v7, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSeekRate:F
invoke-interface {v6, v7}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnSeekChangedListener;->onSeekValueChanged(F)V
:cond_75
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->invalidate()V
const/4 v1, 0x1
:cond_79
:goto_79
move v6, v1
:cond_7a
return v6
:pswitch_7b
iput-boolean v9, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mIsTouching:Z
goto :goto_9
:pswitch_7e
iput-boolean v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mIsTouching:Z
goto :goto_9
:cond_81
if-nez v1, :cond_79
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v7
const/4 v8, 0x2
if-ne v7, v8, :cond_79
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v3
iget v7, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcLeft:I
int-to-float v7, v7
sub-float v7, v3, v7
invoke-direct {p0, v7}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getThumbOffset(F)I
move-result v2
iget-boolean v7, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mIsScrolling:Z
if-nez v7, :cond_c2
iget v7, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbOffset:I
sub-int v7, v2, v7
invoke-static {v7}, Ljava/lang/Math;->abs(I)I
move-result v7
iget v8, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbRadius:I
mul-int/lit8 v8, v8, 0x2
if-gt v7, v8, :cond_7a
iget v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbRadius:I
iget v7, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbRadius:I
int-to-float v7, v7
iget v8, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbScaleRate:F
mul-float/2addr v7, v8
float-to-int v7, v7
const/16 v8, 0x190
invoke-direct {p0, v6, v7, v8}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->animateThumbScale(III)V
iput-boolean v9, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mIsScrolling:Z
iget-object v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScrollingListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;
if-eqz v6, :cond_c2
iget-object v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScrollingListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;
invoke-interface {v6, p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;->onStartScrolling(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;)V
:cond_c2
iput v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbOffset:I
iget-object v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleAdapter:Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
if-eqz v6, :cond_e1
iget v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbOffset:I
invoke-direct {p0, v6}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getStandardScale(I)Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$StandardScaleInfo;
move-result-object v4
iget v5, v4, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$StandardScaleInfo;->currentItem:I
iget v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mCurrentScaleItem:I
if-eq v6, v5, :cond_e1
iput v5, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mCurrentScaleItem:I
iget-object v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;
if-eqz v6, :cond_e1
iget-object v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;
iget v7, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mCurrentScaleItem:I
invoke-interface {v6, v7}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;->onScaleChanged(I)V
:cond_e1
iget-object v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnSeekChangedListener;
if-eqz v6, :cond_f9
iget v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcWidth:I
if-eqz v6, :cond_f9
iget v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbOffset:I
int-to-float v6, v6
iget v7, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcWidth:I
int-to-float v7, v7
div-float/2addr v6, v7
iput v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSeekRate:F
iget-object v6, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnSeekChangedListener;
iget v7, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSeekRate:F
invoke-interface {v6, v7}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnSeekChangedListener;->onSeekValueChanged(F)V
:cond_f9
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->invalidate()V
const/4 v1, 0x1
goto/16 :goto_79
nop
:pswitch_data_100
.packed-switch 0x0
:pswitch_7b
:pswitch_7e
:pswitch_9
:pswitch_7e
:pswitch_7e
.end packed-switch
.end method
.method public setCurrentScaleItem(I)V
.registers 4
if-ltz p1, :cond_15
iget-object v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleAdapter:Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
invoke-interface {v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;->getScaleCount()I
move-result v1
if-ge p1, v1, :cond_15
iput p1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mCurrentScaleItem:I
invoke-direct {p0, p1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getStandardOffset(I)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbOffset:I
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->invalidate()V
:cond_15
return-void
.end method
.method public setCurrentSeekValue(F)V
.registers 5
const/high16 v2, 0x3f80
const/4 v1, 0x0
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSeekRate:F
cmpl-float v0, v0, v2
if-lez v0, :cond_1a
iput v2, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSeekRate:F
:goto_b
:cond_b
iput p1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSeekRate:F
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcWidth:I
int-to-float v0, v0
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSeekRate:F
mul-float/2addr v0, v1
float-to-int v0, v0
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbOffset:I
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->invalidate()V
return-void
:cond_1a
iget v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSeekRate:F
cmpg-float v0, v0, v1
if-gez v0, :cond_b
iput v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mSeekRate:F
goto :goto_b
.end method
.method public setLineWidth(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mLineWidth:I
return-void
.end method
.method public setOnScaleChangedListener(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScaleChangedListener;
return-void
.end method
.method public setOnScrollingListener(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScrollingListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnScrollingListener;
return-void
.end method
.method public setOnSeekChangedListener(Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnSeekChangedListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mListener:Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar$OnSeekChangedListener;
return-void
.end method
.method public setScaleAdapter(Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mScaleAdapter:Lcom/pinguo/camera360/camera/view/arcseekbar/ScaleAdapter;
return-void
.end method
.method public setThumbDrawable(I)V
.registers 3
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v0
div-int/lit8 v0, v0, 0x2
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbRadius:I
const/4 v0, 0x0
iput v0, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbStorkeWidth:I
return-void
.end method
.method public setThumbRadius(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mThumbRadius:I
return-void
.end method
.method public show()V
.registers 6
new-instance v0, Landroid/view/animation/RotateAnimation;
iget v1, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcSweepAngleRadian:F
invoke-direct {p0, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->radianToDegree(F)F
move-result v1
const/high16 v2, 0x40a0
add-float/2addr v1, v2
const/4 v2, 0x0
iget v3, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterX:F
iget v4, p0, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->mArcCenterY:F
invoke-direct {v0, v1, v2, v3, v4}, Landroid/view/animation/RotateAnimation;-><init>(FFFF)V
new-instance v1, Landroid/view/animation/LinearInterpolator;
invoke-direct {v1}, Landroid/view/animation/LinearInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/RotateAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
const-wide/16 v1, 0x12c
invoke-virtual {v0, v1, v2}, Landroid/view/animation/RotateAnimation;->setDuration(J)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->startAnimation(Landroid/view/animation/Animation;)V
const/4 v1, 0x0
invoke-virtual {p0, v1}, Lcom/pinguo/camera360/camera/view/arcseekbar/ArcSeekBar;->setVisibility(I)V
return-void
.end method