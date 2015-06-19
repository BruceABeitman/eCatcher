.class public Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;
.super Landroid/view/View;
.source "PGSeekBar.java"
.field protected mGestureDetector:Landroid/view/GestureDetector;
.field private mIsVertical:Z
.field private mLinePaint1:Landroid/graphics/Paint;
.field private mLinePaint2:Landroid/graphics/Paint;
.field private mLineWidth:I
.field private mListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;
.field private mOnDrawListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnDrawListener;
.field private mScroller:Landroid/widget/Scroller;
.field private mSeekLength:I
.field private mSeekLineEnd:I
.field private mSeekLineStart:I
.field private mSeekRate:F
.field protected mThumbDrawable:Landroid/graphics/drawable/Drawable;
.field private mThumbOffset:I
.field private mThumbPaint:Landroid/graphics/Paint;
.field protected mThumbRadius:I
.field private mThumbStorkeWidth:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 5
const/high16 v1, 0x3fc0
invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x6
invoke-static {v0}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
invoke-static {v1}, Lcom/pinguo/lib/util/Util;->dpToPixel(F)F
move-result v0
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
invoke-static {v1}, Lcom/pinguo/lib/util/Util;->dpToPixel(F)F
move-result v0
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLineWidth:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mIsVertical:Z
invoke-direct {p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->init()V
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mIsVertical:Z
return v0
.end method
.method static synthetic access$1(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineEnd:I
return v0
.end method
.method static synthetic access$10(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)Landroid/widget/Scroller;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mScroller:Landroid/widget/Scroller;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;F)I
.registers 3
invoke-direct {p0, p1}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getThumbOffset(F)I
move-result v0
return v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbOffset:I
return-void
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineStart:I
return v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;
return-object v0
.end method
.method static synthetic access$6(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLength:I
return v0
.end method
.method static synthetic access$7(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbOffset:I
return v0
.end method
.method static synthetic access$8(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;F)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekRate:F
return-void
.end method
.method static synthetic access$9(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;)F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekRate:F
return v0
.end method
.method private getThumbOffset(F)I
.registers 4
float-to-int v0, p1
if-gez v0, :cond_5
const/4 v0, 0x0
:goto_4
:cond_4
return v0
:cond_5
iget v1, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLength:I
if-le v0, v1, :cond_4
iget v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLength:I
goto :goto_4
.end method
.method private init()V
.registers 8
const/16 v6, 0xc8
const/4 v5, 0x1
const/4 v4, -0x1
new-instance v0, Landroid/widget/Scroller;
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mScroller:Landroid/widget/Scroller;
new-instance v0, Landroid/view/GestureDetector;
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getContext()Landroid/content/Context;
move-result-object v1
new-instance v2, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;
const/4 v3, 0x0
invoke-direct {v2, p0, v3}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;-><init>(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$SeekBarGestureListener;)V
invoke-direct {v0, v1, v2}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mGestureDetector:Landroid/view/GestureDetector;
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbPaint:Landroid/graphics/Paint;
invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbPaint:Landroid/graphics/Paint;
invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbPaint:Landroid/graphics/Paint;
iget v1, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
int-to-float v1, v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbPaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLinePaint1:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLinePaint1:Landroid/graphics/Paint;
invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLinePaint1:Landroid/graphics/Paint;
invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLinePaint1:Landroid/graphics/Paint;
invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLinePaint2:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLinePaint2:Landroid/graphics/Paint;
invoke-virtual {v0, v5}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLinePaint2:Landroid/graphics/Paint;
invoke-virtual {v0, v4}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLinePaint2:Landroid/graphics/Paint;
invoke-virtual {v0, v6}, Landroid/graphics/Paint;->setAlpha(I)V
return-void
.end method
.method public getCurrentSeekValue()F
.registers 2
iget v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekRate:F
return v0
.end method
.method public getLinePaint1()Landroid/graphics/Paint;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLinePaint1:Landroid/graphics/Paint;
return-object v0
.end method
.method public getProgress()I
.registers 3
iget v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekRate:F
const/high16 v1, 0x42c8
mul-float/2addr v0, v1
invoke-static {v0}, Ljava/lang/Math;->round(F)I
move-result v0
return v0
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 30
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLength:I
if-nez v4, :cond_62
move-object/from16 v0, p0
iget-boolean v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mIsVertical:Z
if-eqz v4, :cond_17d
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getHeight()I
move-result v12
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getPaddingTop()I
move-result v4
sub-int v4, v12, v4
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getPaddingBottom()I
move-result v5
sub-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
mul-int/lit8 v5, v5, 0x2
sub-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
mul-int/lit8 v5, v5, 0x2
sub-int/2addr v4, v5
move-object/from16 v0, p0
iput v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLength:I
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getPaddingTop()I
move-result v4
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
add-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
add-int/2addr v4, v5
move-object/from16 v0, p0
iput v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineStart:I
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getPaddingBottom()I
move-result v4
sub-int v4, v12, v4
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
sub-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
sub-int/2addr v4, v5
move-object/from16 v0, p0
iput v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineEnd:I
:goto_53
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLength:I
int-to-float v4, v4
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekRate:F
mul-float/2addr v4, v5
float-to-int v4, v4
move-object/from16 v0, p0
iput v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbOffset:I
:cond_62
move-object/from16 v0, p0
iget-boolean v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mIsVertical:Z
if-eqz v4, :cond_1c6
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getPaddingLeft()I
move-result v4
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
add-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
div-int/lit8 v5, v5, 0x2
add-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLineWidth:I
div-int/lit8 v5, v5, 0x2
sub-int v13, v4, v5
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getPaddingLeft()I
move-result v4
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLineWidth:I
add-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
add-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
div-int/lit8 v5, v5, 0x2
add-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLineWidth:I
div-int/lit8 v5, v5, 0x2
sub-int v15, v4, v5
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineEnd:I
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbOffset:I
sub-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
div-int/lit8 v5, v5, 0x2
add-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
sub-int v11, v4, v5
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineStart:I
if-le v11, v4, :cond_ca
int-to-float v5, v13
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineStart:I
int-to-float v6, v4
int-to-float v7, v15
int-to-float v8, v11
move-object/from16 v0, p0
iget-object v9, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLinePaint2:Landroid/graphics/Paint;
move-object/from16 v4, p1
invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
:cond_ca
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
mul-int/lit8 v4, v4, 0x2
add-int v26, v11, v4
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineEnd:I
move/from16 v0, v26
if-le v4, v0, :cond_ed
int-to-float v5, v13
move/from16 v0, v26
int-to-float v6, v0
int-to-float v7, v15
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineEnd:I
int-to-float v8, v4
move-object/from16 v0, p0
iget-object v9, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLinePaint1:Landroid/graphics/Paint;
move-object/from16 v4, p1
invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
:goto_ed
:cond_ed
move-object/from16 v0, p0
iget-boolean v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mIsVertical:Z
if-eqz v4, :cond_26b
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
div-int/lit8 v5, v5, 0x2
add-int/2addr v4, v5
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getPaddingLeft()I
move-result v5
add-int v23, v4, v5
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineEnd:I
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbOffset:I
sub-int v24, v4, v5
:goto_10e
move/from16 v0, v23
int-to-float v4, v0
move/from16 v0, v24
int-to-float v5, v0
move-object/from16 v0, p0
iget v6, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
int-to-float v6, v6
move-object/from16 v0, p0
iget-object v7, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbPaint:Landroid/graphics/Paint;
move-object/from16 v0, p1
invoke-virtual {v0, v4, v5, v6, v7}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v4, :cond_160
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v18
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v17
div-int/lit8 v4, v18, 0x2
sub-int v20, v23, v4
div-int/lit8 v4, v17, 0x2
sub-int v22, v24, v4
div-int/lit8 v4, v18, 0x2
add-int v21, v23, v4
div-int/lit8 v4, v17, 0x2
add-int v19, v24, v4
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
move/from16 v0, v20
move/from16 v1, v22
move/from16 v2, v21
move/from16 v3, v19
invoke-virtual {v4, v0, v1, v2, v3}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
move-object/from16 v0, p1
invoke-virtual {v4, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:cond_160
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v4}, Landroid/widget/Scroller;->computeScrollOffset()Z
move-result v4
if-eqz v4, :cond_179
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v4}, Landroid/widget/Scroller;->getCurrY()I
move-result v4
move-object/from16 v0, p0
iput v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbOffset:I
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->invalidate()V
:cond_179
invoke-super/range {p0 .. p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
return-void
:cond_17d
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getWidth()I
move-result v27
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getPaddingLeft()I
move-result v4
sub-int v4, v27, v4
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getPaddingRight()I
move-result v5
sub-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
mul-int/lit8 v5, v5, 0x2
sub-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
mul-int/lit8 v5, v5, 0x2
sub-int/2addr v4, v5
move-object/from16 v0, p0
iput v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLength:I
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getPaddingLeft()I
move-result v4
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
add-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
add-int/2addr v4, v5
move-object/from16 v0, p0
iput v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineStart:I
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getPaddingRight()I
move-result v4
sub-int v4, v27, v4
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
sub-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
sub-int/2addr v4, v5
move-object/from16 v0, p0
iput v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineEnd:I
goto/16 :goto_53
:cond_1c6
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getPaddingTop()I
move-result v4
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
add-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
div-int/lit8 v5, v5, 0x2
add-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLineWidth:I
div-int/lit8 v5, v5, 0x2
sub-int v25, v4, v5
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getPaddingTop()I
move-result v4
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLineWidth:I
add-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
add-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
div-int/lit8 v5, v5, 0x2
add-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLineWidth:I
div-int/lit8 v5, v5, 0x2
sub-int v10, v4, v5
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineStart:I
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbOffset:I
add-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
div-int/lit8 v5, v5, 0x2
add-int/2addr v4, v5
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
sub-int v16, v4, v5
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineStart:I
move/from16 v0, v16
if-le v0, v4, :cond_22e
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineStart:I
int-to-float v5, v4
move/from16 v0, v25
int-to-float v6, v0
move/from16 v0, v16
int-to-float v7, v0
int-to-float v8, v10
move-object/from16 v0, p0
iget-object v9, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLinePaint1:Landroid/graphics/Paint;
move-object/from16 v4, p1
invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
:cond_22e
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
mul-int/lit8 v4, v4, 0x2
add-int v14, v16, v4
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineEnd:I
if-le v4, v14, :cond_24f
int-to-float v5, v14
move/from16 v0, v25
int-to-float v6, v0
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineEnd:I
int-to-float v7, v4
int-to-float v8, v10
move-object/from16 v0, p0
iget-object v9, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLinePaint2:Landroid/graphics/Paint;
move-object/from16 v4, p1
invoke-virtual/range {v4 .. v9}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
:cond_24f
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mOnDrawListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnDrawListener;
if-eqz v4, :cond_ed
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mOnDrawListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnDrawListener;
move-object/from16 v0, p0
iget v6, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineStart:I
move-object/from16 v0, p0
iget v9, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineEnd:I
move-object/from16 v5, p1
move/from16 v7, v16
move v8, v14
invoke-interface/range {v4 .. v9}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnDrawListener;->onHorizontalDrawLineFinish(Landroid/graphics/Canvas;IIII)V
goto/16 :goto_ed
:cond_26b
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
div-int/lit8 v5, v5, 0x2
add-int/2addr v4, v5
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getPaddingTop()I
move-result v5
add-int v24, v4, v5
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLineStart:I
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbOffset:I
add-int v23, v4, v5
goto/16 :goto_10e
.end method
.method protected onMeasure(II)V
.registers 9
const/high16 v5, -0x8000
iget-boolean v4, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mIsVertical:Z
if-eqz v4, :cond_4a
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v2
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v1
if-ne v2, v5, :cond_46
iget v4, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
iget v5, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
add-int/2addr v4, v5
mul-int/lit8 v4, v4, 0x2
iget v5, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLineWidth:I
if-le v4, v5, :cond_3c
iget v4, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
iget v5, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
add-int/2addr v4, v5
mul-int/lit8 v3, v4, 0x2
:goto_22
iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v4, :cond_2e
iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v4
if-le v3, v4, :cond_3f
:goto_2e
:cond_2e
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getPaddingLeft()I
move-result v4
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getPaddingRight()I
move-result v5
add-int/2addr v4, v5
add-int/2addr v3, v4
invoke-virtual {p0, v3, v1}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->setMeasuredDimension(II)V
:goto_3b
return-void
:cond_3c
iget v3, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLineWidth:I
goto :goto_22
:cond_3f
iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I
move-result v3
goto :goto_2e
:cond_46
invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V
goto :goto_3b
:cond_4a
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v3
if-ne v0, v5, :cond_8a
iget v4, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
iget v5, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
add-int/2addr v4, v5
mul-int/lit8 v4, v4, 0x2
iget v5, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLineWidth:I
if-le v4, v5, :cond_80
iget v4, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbRadius:I
iget v5, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbStorkeWidth:I
add-int/2addr v4, v5
mul-int/lit8 v1, v4, 0x2
:goto_66
iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
if-eqz v4, :cond_72
iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v4
if-le v1, v4, :cond_83
:cond_72
:goto_72
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getPaddingTop()I
move-result v4
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->getPaddingBottom()I
move-result v5
add-int/2addr v4, v5
add-int/2addr v1, v4
invoke-virtual {p0, v3, v1}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->setMeasuredDimension(II)V
goto :goto_3b
:cond_80
iget v1, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mLineWidth:I
goto :goto_66
:cond_83
iget-object v4, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v4}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I
move-result v1
goto :goto_72
:cond_8a
invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V
goto :goto_3b
.end method
.method public onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mGestureDetector:Landroid/view/GestureDetector;
invoke-virtual {v0, p1}, Landroid/view/GestureDetector;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method public setCurrentSeekValue(F)V
.registers 5
const/high16 v2, 0x3f80
const/4 v1, 0x0
iget v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekRate:F
cmpl-float v0, v0, v2
if-lez v0, :cond_1a
iput v2, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekRate:F
:goto_b
:cond_b
iput p1, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekRate:F
iget v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekLength:I
int-to-float v0, v0
iget v1, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekRate:F
mul-float/2addr v0, v1
float-to-int v0, v0
iput v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mThumbOffset:I
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->invalidate()V
return-void
:cond_1a
iget v0, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekRate:F
cmpg-float v0, v0, v1
if-gez v0, :cond_b
iput v1, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mSeekRate:F
goto :goto_b
.end method
.method public setOnSeekChangedListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnSeekChangedListener;
return-void
.end method
.method public setOrientation(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mIsVertical:Z
invoke-virtual {p0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->requestLayout()V
return-void
.end method
.method public setProgress(I)V
.registers 4
int-to-float v0, p1
const/high16 v1, 0x42c8
div-float/2addr v0, v1
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->setCurrentSeekValue(F)V
return-void
.end method
.method public setmOnDrawListener(Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnDrawListener;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar;->mOnDrawListener:Lcom/pinguo/camera360/lib/camera/widget/PGSeekBar$OnDrawListener;
return-void
.end method