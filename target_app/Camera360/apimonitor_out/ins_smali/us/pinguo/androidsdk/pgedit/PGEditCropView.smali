.class public Lus/pinguo/androidsdk/pgedit/PGEditCropView;
.super Landroid/view/View;
.source "PGEditCropView.java"
.implements Landroid/view/View$OnTouchListener;
.field private static final EDGE_DISTANCE:I = 0x14
.field private static final MIN_RECT:I = 0x1e
.field private static final ROUND_WIDTH:I = 0x15
.field private static final STROKE_WIDTH:I = 0x5
.field private edgeDistance:I
.field private height:I
.field private isBottomSideSelected:Z
.field private isLeftBottomRoundSelected:Z
.field private isLeftSideSelected:Z
.field private isLeftTopRoundSelected:Z
.field private isRectSelected:Z
.field private isRightBottomRoundSelected:Z
.field private isRightSideSelected:Z
.field private isRightTopRoundSelected:Z
.field private isTopSideSelected:Z
.field private mBottomSideRect:Landroid/graphics/Rect;
.field private mContext:Landroid/content/Context;
.field private mCrop11Rect:Landroid/graphics/Rect;
.field private mCrop169Rect:Landroid/graphics/Rect;
.field private mCrop23Rect:Landroid/graphics/Rect;
.field private mCrop32Rect:Landroid/graphics/Rect;
.field private mCrop34Rect:Landroid/graphics/Rect;
.field private mCrop43Rect:Landroid/graphics/Rect;
.field private mCrop916Rect:Landroid/graphics/Rect;
.field private mCropFreeRect:Landroid/graphics/Rect;
.field private mDottedLinesPaint:Landroid/graphics/Paint;
.field private mLastX:F
.field private mLastY:F
.field private mLeftBottomRoundRect:Landroid/graphics/Rect;
.field private mLeftSideRect:Landroid/graphics/Rect;
.field private mLeftTopRoundRect:Landroid/graphics/Rect;
.field private mMaskPaint:Landroid/graphics/Paint;
.field private mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
.field private mPaint:Landroid/graphics/Paint;
.field private mRightBottomRoundRect:Landroid/graphics/Rect;
.field private mRightSideRect:Landroid/graphics/Rect;
.field private mRightTopRoundRect:Landroid/graphics/Rect;
.field private mRoundBitmap:Landroid/graphics/Bitmap;
.field private mShowRect:Landroid/graphics/Rect;
.field private mTopSideRect:Landroid/graphics/Rect;
.field private mWhitePaint:Landroid/graphics/Paint;
.field private minRect:I
.field private photoBottom:I
.field private photoHeight:I
.field private photoLeft:I
.field private photoRight:I
.field private photoTop:I
.field private photoWidth:I
.field private width:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 7
const/4 v2, -0x1
const/4 v4, 0x0
invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mWhitePaint:Landroid/graphics/Paint;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mWhitePaint:Landroid/graphics/Paint;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mWhitePaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mWhitePaint:Landroid/graphics/Paint;
const/high16 v1, 0x40a0
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
new-instance v1, Landroid/graphics/DashPathEffect;
const/4 v2, 0x4
new-array v2, v2, [F
fill-array-data v2, :array_94
const/high16 v3, 0x3f80
invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
const/high16 v1, 0x4080
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mMaskPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mMaskPaint:Landroid/graphics/Paint;
const/16 v1, 0x80
invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I
move-result v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mMaskPaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mPaint:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftTopRoundRect:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightTopRoundRect:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftBottomRoundRect:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightBottomRoundRect:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mShowRect:Landroid/graphics/Rect;
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mContext:Landroid/content/Context;
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->init()V
return-void
:array_94
.array-data 0x4
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
.end array-data
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 8
const/4 v2, -0x1
const/4 v4, 0x0
invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mWhitePaint:Landroid/graphics/Paint;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mWhitePaint:Landroid/graphics/Paint;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mWhitePaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mWhitePaint:Landroid/graphics/Paint;
const/high16 v1, 0x40a0
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
new-instance v1, Landroid/graphics/DashPathEffect;
const/4 v2, 0x4
new-array v2, v2, [F
fill-array-data v2, :array_94
const/high16 v3, 0x3f80
invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
const/high16 v1, 0x4080
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mMaskPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mMaskPaint:Landroid/graphics/Paint;
const/16 v1, 0x80
invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I
move-result v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mMaskPaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mPaint:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftTopRoundRect:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightTopRoundRect:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftBottomRoundRect:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightBottomRoundRect:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mShowRect:Landroid/graphics/Rect;
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mContext:Landroid/content/Context;
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->init()V
return-void
:array_94
.array-data 0x4
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
.end array-data
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 9
const/4 v2, -0x1
const/4 v4, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mWhitePaint:Landroid/graphics/Paint;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mWhitePaint:Landroid/graphics/Paint;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mWhitePaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mWhitePaint:Landroid/graphics/Paint;
const/high16 v1, 0x40a0
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
invoke-virtual {v0, v2}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
new-instance v1, Landroid/graphics/DashPathEffect;
const/4 v2, 0x4
new-array v2, v2, [F
fill-array-data v2, :array_94
const/high16 v3, 0x3f80
invoke-direct {v1, v2, v3}, Landroid/graphics/DashPathEffect;-><init>([FF)V
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
const/high16 v1, 0x4080
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mMaskPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mMaskPaint:Landroid/graphics/Paint;
const/16 v1, 0x80
invoke-static {v1, v4, v4, v4}, Landroid/graphics/Color;->argb(IIII)I
move-result v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mMaskPaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mPaint:Landroid/graphics/Paint;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftTopRoundRect:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightTopRoundRect:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftBottomRoundRect:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightBottomRoundRect:Landroid/graphics/Rect;
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mShowRect:Landroid/graphics/Rect;
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mContext:Landroid/content/Context;
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->init()V
return-void
:array_94
.array-data 0x4
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
0x0t 0x0t 0xa0t 0x40t
.end array-data
.end method
.method static synthetic access$0(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastX:F
return v0
.end method
.method static synthetic access$1(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastY:F
return v0
.end method
.method static synthetic access$10(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Paint;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mWhitePaint:Landroid/graphics/Paint;
return-object v0
.end method
.method static synthetic access$11(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftTopRoundRect:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$12(Lus/pinguo/androidsdk/pgedit/PGEditCropView;Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
.registers 3
invoke-direct {p0, p1, p2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->drawRoundItem(Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
return-void
.end method
.method static synthetic access$13(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftBottomRoundRect:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$14(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightTopRoundRect:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$15(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightBottomRoundRect:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$16(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Paint;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
return-object v0
.end method
.method static synthetic access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic access$18(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mTopSideRect:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$19(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightSideRect:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$2(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoLeft:I
return v0
.end method
.method static synthetic access$20(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mBottomSideRect:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$21(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftSideRect:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$22(Lus/pinguo/androidsdk/pgedit/PGEditCropView;F)V
.registers 2
iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastX:F
return-void
.end method
.method static synthetic access$23(Lus/pinguo/androidsdk/pgedit/PGEditCropView;F)V
.registers 2
iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastY:F
return-void
.end method
.method static synthetic access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
return v0
.end method
.method static synthetic access$25(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCropFreeRect:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$26(Lus/pinguo/androidsdk/pgedit/PGEditCropView;Landroid/graphics/Rect;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mTopSideRect:Landroid/graphics/Rect;
return-void
.end method
.method static synthetic access$27(Lus/pinguo/androidsdk/pgedit/PGEditCropView;Landroid/graphics/Rect;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightSideRect:Landroid/graphics/Rect;
return-void
.end method
.method static synthetic access$28(Lus/pinguo/androidsdk/pgedit/PGEditCropView;Landroid/graphics/Rect;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mBottomSideRect:Landroid/graphics/Rect;
return-void
.end method
.method static synthetic access$29(Lus/pinguo/androidsdk/pgedit/PGEditCropView;Landroid/graphics/Rect;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftSideRect:Landroid/graphics/Rect;
return-void
.end method
.method static synthetic access$3(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoRight:I
return v0
.end method
.method static synthetic access$30(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop11Rect:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$31(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop23Rect:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$32(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop32Rect:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$33(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop34Rect:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$34(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop43Rect:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$35(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop169Rect:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$36(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop916Rect:Landroid/graphics/Rect;
return-object v0
.end method
.method static synthetic access$4(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoTop:I
return v0
.end method
.method static synthetic access$5(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoBottom:I
return v0
.end method
.method static synthetic access$6(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->width:I
return v0
.end method
.method static synthetic access$7(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Paint;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mMaskPaint:Landroid/graphics/Paint;
return-object v0
.end method
.method static synthetic access$8(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
.registers 2
iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->height:I
return v0
.end method
.method static synthetic access$9(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
.registers 2
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
return-object v0
.end method
.method private drawRoundItem(Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
.registers 7
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
iget v1, p1, Landroid/graphics/Rect;->left:I
int-to-float v1, v1
iget v2, p1, Landroid/graphics/Rect;->top:I
int-to-float v2, v2
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
return-void
.end method
.method private newHorizontalRect(FLandroid/graphics/Rect;)V
.registers 7
iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->width:I
iget v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoWidth:I
sub-int/2addr v2, v3
int-to-float v2, v2
const/high16 v3, 0x4000
div-float/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v2
iget v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->edgeDistance:I
add-int/2addr v2, v3
iput v2, p2, Landroid/graphics/Rect;->left:I
iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->width:I
iget v3, p2, Landroid/graphics/Rect;->left:I
sub-int/2addr v2, v3
iput v2, p2, Landroid/graphics/Rect;->right:I
iget v2, p2, Landroid/graphics/Rect;->right:I
iget v3, p2, Landroid/graphics/Rect;->left:I
sub-int v1, v2, v3
int-to-float v2, v1
mul-float/2addr v2, p1
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v0
iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->height:I
sub-int/2addr v2, v0
div-int/lit8 v2, v2, 0x2
iput v2, p2, Landroid/graphics/Rect;->top:I
iget v2, p2, Landroid/graphics/Rect;->top:I
add-int/2addr v2, v0
iput v2, p2, Landroid/graphics/Rect;->bottom:I
return-void
.end method
.method private newVerticalRect(FLandroid/graphics/Rect;)V
.registers 7
iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->height:I
iget v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoHeight:I
sub-int/2addr v2, v3
int-to-float v2, v2
const/high16 v3, 0x4000
div-float/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v2
iget v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->edgeDistance:I
add-int/2addr v2, v3
iput v2, p2, Landroid/graphics/Rect;->top:I
iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->height:I
iget v3, p2, Landroid/graphics/Rect;->top:I
sub-int/2addr v2, v3
iput v2, p2, Landroid/graphics/Rect;->bottom:I
iget v2, p2, Landroid/graphics/Rect;->bottom:I
iget v3, p2, Landroid/graphics/Rect;->top:I
sub-int v0, v2, v3
int-to-float v2, v0
div-float/2addr v2, p1
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v1
iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->width:I
sub-int/2addr v2, v1
div-int/lit8 v2, v2, 0x2
iput v2, p2, Landroid/graphics/Rect;->left:I
iget v2, p2, Landroid/graphics/Rect;->left:I
add-int/2addr v2, v1
iput v2, p2, Landroid/graphics/Rect;->right:I
return-void
.end method
.method private scaleBitmap(Landroid/util/DisplayMetrics;)V
.registers 8
const/high16 v5, 0x41a8
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
iget v3, p1, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v3, v5
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
iget v4, p1, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v4, v5
invoke-static {v4}, Ljava/lang/Math;->round(F)I
move-result v4
const/4 v5, 0x1
invoke-static {v2, v3, v4, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
if-ne v2, v3, :cond_2f
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I
move-result v3
if-eq v2, v3, :cond_36
:cond_2f
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
:cond_36
return-void
.end method
.method  getCropRectF()Landroid/graphics/RectF;
.registers 4
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
if-nez v1, :cond_6
const/4 v0, 0x0
:goto_5
return-object v0
:cond_6
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
iget-object v1, v1, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoLeft:I
sub-int/2addr v1, v2
int-to-float v1, v1
iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoWidth:I
int-to-float v2, v2
div-float/2addr v1, v2
iput v1, v0, Landroid/graphics/RectF;->left:F
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
iget-object v1, v1, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->top:I
iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoTop:I
sub-int/2addr v1, v2
int-to-float v1, v1
iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoHeight:I
int-to-float v2, v2
div-float/2addr v1, v2
iput v1, v0, Landroid/graphics/RectF;->top:F
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
iget-object v1, v1, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoLeft:I
sub-int/2addr v1, v2
int-to-float v1, v1
iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoWidth:I
int-to-float v2, v2
div-float/2addr v1, v2
iput v1, v0, Landroid/graphics/RectF;->right:F
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
iget-object v1, v1, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->bottom:I
iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoTop:I
sub-int/2addr v1, v2
int-to-float v1, v1
iget v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoHeight:I
int-to-float v2, v2
div-float/2addr v1, v2
iput v1, v0, Landroid/graphics/RectF;->bottom:F
goto :goto_5
.end method
.method  init()V
.registers 4
invoke-virtual {p0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mContext:Landroid/content/Context;
const-string/jumbo v2, "pg_sdk_edit_crop_round"
invoke-static {v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getDrawable(Landroid/content/Context;Ljava/lang/String;)I
move-result v1
invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
return-void
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 3
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
if-eqz v0, :cond_9
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
invoke-virtual {v0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->drawView(Landroid/graphics/Canvas;)V
:cond_9
return-void
.end method
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
.registers 8
const/4 v3, 0x0
const/4 v4, 0x1
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v2
if-nez v2, :cond_9d
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v2
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v0
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v2
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftTopRoundRect:Landroid/graphics/Rect;
invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z
move-result v2
if-eqz v2, :cond_2f
iput-boolean v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isLeftTopRoundSelected:Z
:cond_22
:goto_22
invoke-virtual {p2}, Landroid/view/MotionEvent;->getX()F
move-result v2
iput v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastX:F
invoke-virtual {p2}, Landroid/view/MotionEvent;->getY()F
move-result v2
iput v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastY:F
:goto_2e
:cond_2e
return v4
:cond_2f
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightTopRoundRect:Landroid/graphics/Rect;
invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z
move-result v2
if-eqz v2, :cond_3a
iput-boolean v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isRightTopRoundSelected:Z
goto :goto_22
:cond_3a
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftBottomRoundRect:Landroid/graphics/Rect;
invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z
move-result v2
if-eqz v2, :cond_45
iput-boolean v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isLeftBottomRoundSelected:Z
goto :goto_22
:cond_45
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightBottomRoundRect:Landroid/graphics/Rect;
invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z
move-result v2
if-eqz v2, :cond_50
iput-boolean v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isRightBottomRoundSelected:Z
goto :goto_22
:cond_50
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mTopSideRect:Landroid/graphics/Rect;
if-eqz v2, :cond_5f
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mTopSideRect:Landroid/graphics/Rect;
invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z
move-result v2
if-eqz v2, :cond_5f
iput-boolean v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isTopSideSelected:Z
goto :goto_22
:cond_5f
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightSideRect:Landroid/graphics/Rect;
if-eqz v2, :cond_6e
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightSideRect:Landroid/graphics/Rect;
invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z
move-result v2
if-eqz v2, :cond_6e
iput-boolean v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isRightSideSelected:Z
goto :goto_22
:cond_6e
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mBottomSideRect:Landroid/graphics/Rect;
if-eqz v2, :cond_7d
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mBottomSideRect:Landroid/graphics/Rect;
invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z
move-result v2
if-eqz v2, :cond_7d
iput-boolean v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isBottomSideSelected:Z
goto :goto_22
:cond_7d
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftSideRect:Landroid/graphics/Rect;
if-eqz v2, :cond_8c
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftSideRect:Landroid/graphics/Rect;
invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z
move-result v2
if-eqz v2, :cond_8c
iput-boolean v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isLeftSideSelected:Z
goto :goto_22
:cond_8c
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
if-eqz v2, :cond_22
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
iget-object v2, v2, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
invoke-virtual {v2, v0, v1}, Landroid/graphics/Rect;->contains(II)Z
move-result v2
if-eqz v2, :cond_22
iput-boolean v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isRectSelected:Z
goto :goto_22
:cond_9d
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v2
if-ne v2, v4, :cond_b7
iput-boolean v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isLeftTopRoundSelected:Z
iput-boolean v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isRightTopRoundSelected:Z
iput-boolean v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isLeftBottomRoundSelected:Z
iput-boolean v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isRightBottomRoundSelected:Z
iput-boolean v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isRectSelected:Z
iput-boolean v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isTopSideSelected:Z
iput-boolean v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isRightSideSelected:Z
iput-boolean v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isBottomSideSelected:Z
iput-boolean v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isLeftSideSelected:Z
goto/16 :goto_2e
:cond_b7
invoke-virtual {p2}, Landroid/view/MotionEvent;->getAction()I
move-result v2
const/4 v3, 0x2
if-ne v2, v3, :cond_2e
iget-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isLeftTopRoundSelected:Z
if-eqz v2, :cond_c9
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
invoke-virtual {v2, p2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->scaleLeftTop(Landroid/view/MotionEvent;)V
goto/16 :goto_2e
:cond_c9
iget-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isRightTopRoundSelected:Z
if-eqz v2, :cond_d4
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
invoke-virtual {v2, p2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->scaleRightTop(Landroid/view/MotionEvent;)V
goto/16 :goto_2e
:cond_d4
iget-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isLeftBottomRoundSelected:Z
if-eqz v2, :cond_df
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
invoke-virtual {v2, p2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->scaleLeftBottom(Landroid/view/MotionEvent;)V
goto/16 :goto_2e
:cond_df
iget-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isRightBottomRoundSelected:Z
if-eqz v2, :cond_ea
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
invoke-virtual {v2, p2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->scaleRightBottom(Landroid/view/MotionEvent;)V
goto/16 :goto_2e
:cond_ea
iget-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isTopSideSelected:Z
if-eqz v2, :cond_f5
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
invoke-virtual {v2, p2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->moveSideTop(Landroid/view/MotionEvent;)V
goto/16 :goto_2e
:cond_f5
iget-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isRightSideSelected:Z
if-eqz v2, :cond_100
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
invoke-virtual {v2, p2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->moveSideRight(Landroid/view/MotionEvent;)V
goto/16 :goto_2e
:cond_100
iget-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isBottomSideSelected:Z
if-eqz v2, :cond_10b
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
invoke-virtual {v2, p2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->moveSideBottom(Landroid/view/MotionEvent;)V
goto/16 :goto_2e
:cond_10b
iget-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isLeftSideSelected:Z
if-eqz v2, :cond_116
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
invoke-virtual {v2, p2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->moveSideLeft(Landroid/view/MotionEvent;)V
goto/16 :goto_2e
:cond_116
iget-boolean v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->isRectSelected:Z
if-eqz v2, :cond_2e
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
invoke-virtual {v2, p2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->moveRect(Landroid/view/MotionEvent;)V
goto/16 :goto_2e
.end method
.method  setWidthHeight(IIIILandroid/util/DisplayMetrics;)V
.registers 15
const/high16 v8, 0x3fc0
const v7, 0x3fab851f
const/high16 v6, 0x3f80
const/high16 v5, 0x3f40
const v4, 0x3f2b851f
iput p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->width:I
iput p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->height:I
iput p3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoWidth:I
iput p4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoHeight:I
invoke-direct {p0, p5}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->scaleBitmap(Landroid/util/DisplayMetrics;)V
sub-int v1, p1, p3
div-int/lit8 v1, v1, 0x2
iput v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoLeft:I
sub-int v1, p2, p4
div-int/lit8 v1, v1, 0x2
iput v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoTop:I
sub-int v1, p1, p3
div-int/lit8 v1, v1, 0x2
add-int/2addr v1, p3
iput v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoRight:I
sub-int v1, p2, p4
div-int/lit8 v1, v1, 0x2
add-int/2addr v1, p4
iput v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoBottom:I
const/high16 v1, 0x41a0
iget v2, p5, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
iput v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->edgeDistance:I
const/high16 v1, 0x41f0
iget v2, p5, Landroid/util/DisplayMetrics;->density:F
mul-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v1
iput v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
new-instance v1, Landroid/graphics/Rect;
sub-int v2, p1, p3
div-int/lit8 v2, v2, 0x2
const/4 v3, 0x0
invoke-direct {v1, v2, v3, p3, p4}, Landroid/graphics/Rect;-><init>(IIII)V
iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCropFreeRect:Landroid/graphics/Rect;
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop11Rect:Landroid/graphics/Rect;
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop23Rect:Landroid/graphics/Rect;
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop32Rect:Landroid/graphics/Rect;
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop34Rect:Landroid/graphics/Rect;
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop43Rect:Landroid/graphics/Rect;
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop169Rect:Landroid/graphics/Rect;
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop916Rect:Landroid/graphics/Rect;
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCropFreeRect:Landroid/graphics/Rect;
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCropFreeRect:Landroid/graphics/Rect;
sub-int v2, p1, p3
div-int/lit8 v2, v2, 0x2
iput v2, v1, Landroid/graphics/Rect;->left:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCropFreeRect:Landroid/graphics/Rect;
sub-int v2, p2, p4
div-int/lit8 v2, v2, 0x2
iput v2, v1, Landroid/graphics/Rect;->top:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCropFreeRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCropFreeRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
add-int/2addr v2, p3
iput v2, v1, Landroid/graphics/Rect;->right:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCropFreeRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCropFreeRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
add-int/2addr v2, p4
iput v2, v1, Landroid/graphics/Rect;->bottom:I
int-to-float v1, p3
int-to-float v2, p4
div-float v0, v1, v2
cmpl-float v1, v0, v6
if-ltz v1, :cond_fc
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop11Rect:Landroid/graphics/Rect;
invoke-direct {p0, v6, v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->newVerticalRect(FLandroid/graphics/Rect;)V
:goto_ba
cmpl-float v1, v0, v4
if-ltz v1, :cond_102
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop23Rect:Landroid/graphics/Rect;
invoke-direct {p0, v8, v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->newVerticalRect(FLandroid/graphics/Rect;)V
:goto_c3
cmpl-float v1, v0, v8
if-ltz v1, :cond_108
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop32Rect:Landroid/graphics/Rect;
invoke-direct {p0, v4, v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->newVerticalRect(FLandroid/graphics/Rect;)V
:goto_cc
cmpl-float v1, v0, v5
if-ltz v1, :cond_10e
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop34Rect:Landroid/graphics/Rect;
invoke-direct {p0, v7, v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->newVerticalRect(FLandroid/graphics/Rect;)V
:goto_d5
cmpl-float v1, v0, v7
if-ltz v1, :cond_114
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop43Rect:Landroid/graphics/Rect;
invoke-direct {p0, v5, v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->newVerticalRect(FLandroid/graphics/Rect;)V
:goto_de
const v1, 0x3fe3d70a
cmpl-float v1, v0, v1
if-ltz v1, :cond_11a
const/high16 v1, 0x3f10
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop169Rect:Landroid/graphics/Rect;
invoke-direct {p0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->newVerticalRect(FLandroid/graphics/Rect;)V
:goto_ec
const v1, 0x3f104189
cmpl-float v1, v0, v1
if-ltz v1, :cond_122
const v1, 0x3fe3d70a
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop916Rect:Landroid/graphics/Rect;
invoke-direct {p0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->newVerticalRect(FLandroid/graphics/Rect;)V
:goto_fb
return-void
:cond_fc
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop11Rect:Landroid/graphics/Rect;
invoke-direct {p0, v6, v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->newHorizontalRect(FLandroid/graphics/Rect;)V
goto :goto_ba
:cond_102
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop23Rect:Landroid/graphics/Rect;
invoke-direct {p0, v8, v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->newHorizontalRect(FLandroid/graphics/Rect;)V
goto :goto_c3
:cond_108
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop32Rect:Landroid/graphics/Rect;
invoke-direct {p0, v4, v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->newHorizontalRect(FLandroid/graphics/Rect;)V
goto :goto_cc
:cond_10e
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop34Rect:Landroid/graphics/Rect;
invoke-direct {p0, v7, v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->newHorizontalRect(FLandroid/graphics/Rect;)V
goto :goto_d5
:cond_114
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop43Rect:Landroid/graphics/Rect;
invoke-direct {p0, v5, v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->newHorizontalRect(FLandroid/graphics/Rect;)V
goto :goto_de
:cond_11a
const/high16 v1, 0x3f10
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop169Rect:Landroid/graphics/Rect;
invoke-direct {p0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->newHorizontalRect(FLandroid/graphics/Rect;)V
goto :goto_ec
:cond_122
const v1, 0x3fe3d70a
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mCrop916Rect:Landroid/graphics/Rect;
invoke-direct {p0, v1, v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->newHorizontalRect(FLandroid/graphics/Rect;)V
goto :goto_fb
.end method
.method  showCrop11()V
.registers 2
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop11;
invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop11;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
return-void
.end method
.method  showCrop169()V
.registers 2
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop169;
invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop169;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
return-void
.end method
.method  showCrop23()V
.registers 2
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop23;
invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop23;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
return-void
.end method
.method  showCrop32()V
.registers 2
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop32;
invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop32;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
return-void
.end method
.method  showCrop34()V
.registers 2
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop34;
invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop34;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
return-void
.end method
.method  showCrop43()V
.registers 2
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop43;
invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop43;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
return-void
.end method
.method  showCrop916()V
.registers 2
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop916;
invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop916;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
return-void
.end method
.method  showCropFree()V
.registers 2
new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;
invoke-direct {v0, p0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCropFree;-><init>(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)V
iput-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
return-void
.end method