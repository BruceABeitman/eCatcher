.class public final Lqr/recognize/view/ViewfinderView;
.super Landroid/view/View;
.source "ViewfinderView.java"
.field private static final ANIMATION_DELAY:J = 0xaL
.field private static CORNER_WIDTH:I = 0x0
.field private static final MIDDLE_LINE_PADDING:I = 0x5
.field private static final MIDDLE_LINE_WIDTH:I = 0x6
.field private static final OPAQUE:I = 0xff
.field private static final SPEEN_DISTANCE:I = 0x5
.field private static final TAG:Ljava/lang/String; = "ViewfinderView"
.field private static final TEXT_PADDING_TOP:I = 0x1e
.field private static final TEXT_SIZE:I = 0x10
.field private static density:F
.field private ScreenRate:I
.field  isFirst:Z
.field private mDrawable:Landroid/graphics/drawable/Drawable;
.field private mFrame:Landroid/graphics/Rect;
.field private mIsDrawLine:Z
.field private mIsStopDrawView:Z
.field private mScroller:Landroid/widget/Scroller;
.field private final maskColor:I
.field private paint:Landroid/graphics/Paint;
.field private possibleResultPoints:Ljava/util/Collection;
.field private resultBitmap:Landroid/graphics/Bitmap;
.field private final resultColor:I
.field private slideBottom:I
.field private slideTop:I
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 7
invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v1, 0x1
iput-boolean v1, p0, Lqr/recognize/view/ViewfinderView;->mIsDrawLine:Z
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;
move-result-object v1
iget v1, v1, Landroid/util/DisplayMetrics;->density:F
sput v1, Lqr/recognize/view/ViewfinderView;->density:F
const/high16 v1, 0x4180
sget v2, Lqr/recognize/view/ViewfinderView;->density:F
mul-float/2addr v1, v2
float-to-int v1, v1
iput v1, p0, Lqr/recognize/view/ViewfinderView;->ScreenRate:I
new-instance v1, Landroid/graphics/Paint;
invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V
iput-object v1, p0, Lqr/recognize/view/ViewfinderView;->paint:Landroid/graphics/Paint;
invoke-virtual {p0}, Lqr/recognize/view/ViewfinderView;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f070030
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
iput v1, p0, Lqr/recognize/view/ViewfinderView;->maskColor:I
const v1, 0x7f07002f
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
iput v1, p0, Lqr/recognize/view/ViewfinderView;->resultColor:I
const/4 v1, 0x4
invoke-static {v1}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I
move-result v1
sput v1, Lqr/recognize/view/ViewfinderView;->CORNER_WIDTH:I
invoke-virtual {p0}, Lqr/recognize/view/ViewfinderView;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f020405
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
iput-object v1, p0, Lqr/recognize/view/ViewfinderView;->mDrawable:Landroid/graphics/drawable/Drawable;
new-instance v1, Landroid/widget/Scroller;
invoke-virtual {p0}, Lqr/recognize/view/ViewfinderView;->getContext()Landroid/content/Context;
move-result-object v2
new-instance v3, Landroid/view/animation/LinearInterpolator;
invoke-direct {v3}, Landroid/view/animation/LinearInterpolator;-><init>()V
invoke-direct {v1, v2, v3}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V
iput-object v1, p0, Lqr/recognize/view/ViewfinderView;->mScroller:Landroid/widget/Scroller;
return-void
.end method
.method public addPossibleResultPoint(Lcom/google/zxing/ResultPoint;)V
.registers 2
return-void
.end method
.method public drawViewfinder()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lqr/recognize/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;
invoke-virtual {p0}, Lqr/recognize/view/ViewfinderView;->invalidate()V
return-void
.end method
.method public onDraw(Landroid/graphics/Canvas;)V
.registers 11
const/4 v8, 0x1
const/4 v6, 0x0
invoke-static {}, Lqr/recognize/camera/QRManager;->get()Lqr/recognize/camera/QRManager;
move-result-object v0
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
if-eqz v0, :cond_8
iget-boolean v0, p0, Lqr/recognize/view/ViewfinderView;->isFirst:Z
if-nez v0, :cond_19
iput-boolean v8, p0, Lqr/recognize/view/ViewfinderView;->isFirst:Z
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->bottom:I
iput v0, p0, Lqr/recognize/view/ViewfinderView;->slideBottom:I
:cond_19
iget-object v1, p0, Lqr/recognize/view/ViewfinderView;->paint:Landroid/graphics/Paint;
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_41
iget v0, p0, Lqr/recognize/view/ViewfinderView;->resultColor:I
:goto_21
invoke-virtual {v1, v0}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;
if-eqz v0, :cond_44
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->paint:Landroid/graphics/Paint;
const/16 v1, 0xff
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->resultBitmap:Landroid/graphics/Bitmap;
iget-object v1, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
int-to-float v1, v1
iget-object v2, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
int-to-float v2, v2
iget-object v3, p0, Lqr/recognize/view/ViewfinderView;->paint:Landroid/graphics/Paint;
invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
goto :goto_8
:cond_41
iget v0, p0, Lqr/recognize/view/ViewfinderView;->maskColor:I
goto :goto_21
:cond_44
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->paint:Landroid/graphics/Paint;
invoke-virtual {p0}, Lqr/recognize/view/ViewfinderView;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f070035
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
int-to-float v1, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->top:I
int-to-float v2, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
iget v3, p0, Lqr/recognize/view/ViewfinderView;->ScreenRate:I
add-int/2addr v0, v3
int-to-float v3, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->top:I
sget v4, Lqr/recognize/view/ViewfinderView;->CORNER_WIDTH:I
add-int/2addr v0, v4
int-to-float v4, v0
iget-object v5, p0, Lqr/recognize/view/ViewfinderView;->paint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
int-to-float v1, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->top:I
int-to-float v2, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
sget v3, Lqr/recognize/view/ViewfinderView;->CORNER_WIDTH:I
add-int/2addr v0, v3
int-to-float v3, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->top:I
iget v4, p0, Lqr/recognize/view/ViewfinderView;->ScreenRate:I
add-int/2addr v0, v4
int-to-float v4, v0
iget-object v5, p0, Lqr/recognize/view/ViewfinderView;->paint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->right:I
iget v1, p0, Lqr/recognize/view/ViewfinderView;->ScreenRate:I
sub-int/2addr v0, v1
int-to-float v1, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->top:I
int-to-float v2, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->right:I
int-to-float v3, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->top:I
sget v4, Lqr/recognize/view/ViewfinderView;->CORNER_WIDTH:I
add-int/2addr v0, v4
int-to-float v4, v0
iget-object v5, p0, Lqr/recognize/view/ViewfinderView;->paint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->right:I
sget v1, Lqr/recognize/view/ViewfinderView;->CORNER_WIDTH:I
sub-int/2addr v0, v1
int-to-float v1, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->top:I
int-to-float v2, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->right:I
int-to-float v3, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->top:I
iget v4, p0, Lqr/recognize/view/ViewfinderView;->ScreenRate:I
add-int/2addr v0, v4
int-to-float v4, v0
iget-object v5, p0, Lqr/recognize/view/ViewfinderView;->paint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
int-to-float v1, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->bottom:I
sget v2, Lqr/recognize/view/ViewfinderView;->CORNER_WIDTH:I
sub-int/2addr v0, v2
int-to-float v2, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
iget v3, p0, Lqr/recognize/view/ViewfinderView;->ScreenRate:I
add-int/2addr v0, v3
int-to-float v3, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->bottom:I
int-to-float v4, v0
iget-object v5, p0, Lqr/recognize/view/ViewfinderView;->paint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
int-to-float v1, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->bottom:I
iget v2, p0, Lqr/recognize/view/ViewfinderView;->ScreenRate:I
sub-int/2addr v0, v2
int-to-float v2, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
sget v3, Lqr/recognize/view/ViewfinderView;->CORNER_WIDTH:I
add-int/2addr v0, v3
int-to-float v3, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->bottom:I
int-to-float v4, v0
iget-object v5, p0, Lqr/recognize/view/ViewfinderView;->paint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->right:I
iget v1, p0, Lqr/recognize/view/ViewfinderView;->ScreenRate:I
sub-int/2addr v0, v1
int-to-float v1, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->bottom:I
sget v2, Lqr/recognize/view/ViewfinderView;->CORNER_WIDTH:I
sub-int/2addr v0, v2
int-to-float v2, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->right:I
int-to-float v3, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->bottom:I
int-to-float v4, v0
iget-object v5, p0, Lqr/recognize/view/ViewfinderView;->paint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->right:I
sget v1, Lqr/recognize/view/ViewfinderView;->CORNER_WIDTH:I
sub-int/2addr v0, v1
int-to-float v1, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->bottom:I
iget v2, p0, Lqr/recognize/view/ViewfinderView;->ScreenRate:I
sub-int/2addr v0, v2
int-to-float v2, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->right:I
int-to-float v3, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->bottom:I
int-to-float v4, v0
iget-object v5, p0, Lqr/recognize/view/ViewfinderView;->paint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
invoke-static {v8}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I
move-result v7
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
iget v1, p0, Lqr/recognize/view/ViewfinderView;->ScreenRate:I
add-int/2addr v0, v1
int-to-float v1, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->top:I
int-to-float v2, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->right:I
iget v3, p0, Lqr/recognize/view/ViewfinderView;->ScreenRate:I
sub-int/2addr v0, v3
int-to-float v3, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->top:I
add-int/2addr v0, v7
int-to-float v4, v0
iget-object v5, p0, Lqr/recognize/view/ViewfinderView;->paint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
iget v1, p0, Lqr/recognize/view/ViewfinderView;->ScreenRate:I
add-int/2addr v0, v1
int-to-float v1, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->bottom:I
sub-int/2addr v0, v7
int-to-float v2, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->right:I
iget v3, p0, Lqr/recognize/view/ViewfinderView;->ScreenRate:I
sub-int/2addr v0, v3
int-to-float v3, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->bottom:I
int-to-float v4, v0
iget-object v5, p0, Lqr/recognize/view/ViewfinderView;->paint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
int-to-float v1, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->top:I
iget v2, p0, Lqr/recognize/view/ViewfinderView;->ScreenRate:I
add-int/2addr v0, v2
int-to-float v2, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
add-int/2addr v0, v7
int-to-float v3, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->bottom:I
iget v4, p0, Lqr/recognize/view/ViewfinderView;->ScreenRate:I
sub-int/2addr v0, v4
int-to-float v4, v0
iget-object v5, p0, Lqr/recognize/view/ViewfinderView;->paint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->right:I
sub-int/2addr v0, v7
int-to-float v1, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->top:I
iget v2, p0, Lqr/recognize/view/ViewfinderView;->ScreenRate:I
add-int/2addr v0, v2
int-to-float v2, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->right:I
int-to-float v3, v0
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->bottom:I
iget v4, p0, Lqr/recognize/view/ViewfinderView;->ScreenRate:I
sub-int/2addr v0, v4
int-to-float v4, v0
iget-object v5, p0, Lqr/recognize/view/ViewfinderView;->paint:Landroid/graphics/Paint;
move-object v0, p1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
iget-boolean v0, p0, Lqr/recognize/view/ViewfinderView;->mIsDrawLine:Z
if-eqz v0, :cond_22c
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->computeScrollOffset()Z
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mScroller:Landroid/widget/Scroller;
invoke-virtual {v0}, Landroid/widget/Scroller;->getCurrX()I
move-result v0
iput v0, p0, Lqr/recognize/view/ViewfinderView;->slideTop:I
iget v0, p0, Lqr/recognize/view/ViewfinderView;->slideTop:I
iget-object v1, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->bottom:I
add-int/lit8 v1, v1, -0x14
if-lt v0, v1, :cond_20f
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mScroller:Landroid/widget/Scroller;
iget-object v1, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->top:I
iget-object v2, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
iget-object v3, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->top:I
sub-int/2addr v2, v3
add-int/lit8 v3, v2, -0x14
const/16 v5, 0xbb8
move v2, v6
move v4, v6
invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V
:cond_20f
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mDrawable:Landroid/graphics/drawable/Drawable;
iget-object v1, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
iget v2, p0, Lqr/recognize/view/ViewfinderView;->slideTop:I
iget-object v3, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->right:I
iget v4, p0, Lqr/recognize/view/ViewfinderView;->slideTop:I
const/16 v5, 0xc
invoke-static {v5}, Lcom/pinguo/lib/util/Util;->dpToPixel(I)I
move-result v5
add-int/2addr v4, v5
invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mDrawable:Landroid/graphics/drawable/Drawable;
invoke-virtual {v0, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V
:cond_22c
iget-boolean v0, p0, Lqr/recognize/view/ViewfinderView;->mIsStopDrawView:Z
if-nez v0, :cond_8
const-wide/16 v1, 0xa
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->left:I
add-int/lit8 v3, v0, -0xa
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v4, v0, Landroid/graphics/Rect;->top:I
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->right:I
add-int/lit8 v5, v0, 0xa
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v0, v0, Landroid/graphics/Rect;->bottom:I
add-int/lit8 v6, v0, 0x14
move-object v0, p0
invoke-virtual/range {v0 .. v6}, Lqr/recognize/view/ViewfinderView;->postInvalidateDelayed(JIIII)V
goto/16 :goto_8
.end method
.method public setIsDrawLine(Z)V
.registers 2
iput-boolean p1, p0, Lqr/recognize/view/ViewfinderView;->mIsDrawLine:Z
return-void
.end method
.method public setIsStopDrawView(Z)V
.registers 8
const/4 v2, 0x0
iput-boolean p1, p0, Lqr/recognize/view/ViewfinderView;->mIsStopDrawView:Z
iget-boolean v0, p0, Lqr/recognize/view/ViewfinderView;->mIsStopDrawView:Z
if-nez v0, :cond_55
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
if-nez v0, :cond_3e
invoke-static {}, Lqr/recognize/camera/QRManager;->get()Lqr/recognize/camera/QRManager;
move-result-object v0
invoke-virtual {v0}, Lqr/recognize/camera/QRManager;->getFramingRect()Landroid/graphics/Rect;
move-result-object v0
iput-object v0, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
const-string/jumbo v0, "ViewfinderView"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v3, "mFrame.left = "
invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v3, "/"
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v3, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->right:I
invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:cond_3e
iget-object v0, p0, Lqr/recognize/view/ViewfinderView;->mScroller:Landroid/widget/Scroller;
iget-object v1, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->top:I
iget-object v3, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->bottom:I
iget-object v4, p0, Lqr/recognize/view/ViewfinderView;->mFrame:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->top:I
sub-int/2addr v3, v4
add-int/lit8 v3, v3, -0x14
const/16 v5, 0xbb8
move v4, v2
invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V
:cond_55
return-void
.end method