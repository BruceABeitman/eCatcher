.class public Lcom/pinguo/camera360/puzzle/PuzzleItem;
.super Ljava/lang/Object;
.source "PuzzleItem.java"
.implements Lcom/pinguo/camera360/puzzle/interfaces/PuzzleItemInterface;
.field static final BG_COLOR:I = 0x0
.field public static final COMMON_SAVE_COUNT:I = 0xa
.field public static final DEFAULT_SIZE:I = -0x1
.field public static final SCALE_MAX:F = 8.0f
.field public static final SCALE_MIN:F = 0.5f
.field public static final SCALE_NONE:F = 1.0f
.field private static final TAG:Ljava/lang/String; = "PuzzleItem"
.field public id:Ljava/lang/String;
.field private mBitmapInitHeight:F
.field private mBitmapInitWidth:F
.field private mBitmapRect:Landroid/graphics/Rect;
.field private mBoundsRect:Landroid/graphics/RectF;
.field private mClipPath:Landroid/graphics/Path;
.field private mClipPathOveride:Landroid/graphics/Path;
.field private mDeltaX:F
.field private mDeltaY:F
.field private mDrawType:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
.field private mDstRect:Landroid/graphics/RectF;
.field private mIsSelected:Z
.field private mNeedRelaodPhoto:Z
.field private mPaint:Landroid/graphics/Paint;
.field private mPhotoPath:Ljava/lang/String;
.field private mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
.field private mRegion:Landroid/graphics/Region;
.field private mScale:F
.field private mSelectedBoundsColor:I
.field private mSelectedBoundsSize:I
.field public type:I
.method static constructor <clinit>()V
.registers 1
const/16 v0, 0xc9
invoke-static {v0, v0, v0}, Landroid/graphics/Color;->rgb(III)I
move-result v0
sput v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->BG_COLOR:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 6
const/4 v3, 0x0
const/4 v2, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string/jumbo v1, "deflalt"
iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->id:Ljava/lang/String;
iput v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->type:I
new-instance v1, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
invoke-direct {v1}, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
new-instance v1, Landroid/graphics/RectF;
invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
new-instance v1, Landroid/graphics/RectF;
invoke-direct {v1}, Landroid/graphics/RectF;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapRect:Landroid/graphics/Rect;
new-instance v1, Landroid/graphics/Region;
invoke-direct {v1}, Landroid/graphics/Region;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mRegion:Landroid/graphics/Region;
new-instance v1, Landroid/graphics/Paint;
invoke-direct {v1}, Landroid/graphics/Paint;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
new-instance v1, Landroid/graphics/Path;
invoke-direct {v1}, Landroid/graphics/Path;-><init>()V
iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mClipPath:Landroid/graphics/Path;
iput v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaX:F
iput v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaY:F
const/high16 v1, 0x3f80
iput v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mScale:F
iput v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapInitWidth:F
iput v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapInitHeight:F
iput-boolean v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mIsSelected:Z
const/4 v1, -0x1
iput v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mSelectedBoundsSize:I
sget-object v1, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;->PUZZLING:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDrawType:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
iput-boolean v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mNeedRelaodPhoto:Z
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setAntiAlias(Z)V
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
const/high16 v2, 0x4160
invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V
invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f070045
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mSelectedBoundsColor:I
const v1, 0x7f0b005d
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
iput v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mSelectedBoundsSize:I
return-void
.end method
.method private drawItemInfo(Landroid/graphics/Canvas;)V
.registers 10
const/4 v7, -0x1
const/high16 v6, -0x100
const/high16 v5, 0x3f80
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
const/high16 v3, 0x4160
invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setTextSize(F)V
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
sget-object v3, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iget v2, v2, Landroid/graphics/RectF;->left:F
const/high16 v3, 0x4000
add-float v0, v2, v3
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iget v2, v2, Landroid/graphics/RectF;->top:F
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v3}, Landroid/graphics/Paint;->getTextSize()F
move-result v3
add-float v1, v2, v3
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v2, v5}, Landroid/graphics/Paint;->setStrokeWidth(F)V
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "\u8fb9\u6846:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
invoke-virtual {v3}, Landroid/graphics/RectF;->width()F
move-result v3
float-to-int v3, v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " x "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
invoke-virtual {v3}, Landroid/graphics/RectF;->height()F
move-result v3
float-to-int v3, v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
add-float v3, v1, v5
iget-object v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "\u8fb9\u6846:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
invoke-virtual {v3}, Landroid/graphics/RectF;->width()F
move-result v3
float-to-int v3, v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " x "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
invoke-virtual {v3}, Landroid/graphics/RectF;->height()F
move-result v3
float-to-int v3, v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v2}, Landroid/graphics/Paint;->getTextSize()F
move-result v2
const/high16 v3, 0x40a0
add-float/2addr v2, v3
add-float/2addr v1, v2
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v2, v6}, Landroid/graphics/Paint;->setColor(I)V
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
if-eqz v2, :cond_106
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "\u7167\u7247:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
invoke-virtual {v3}, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->getWidth()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " x "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
invoke-virtual {v3}, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->getHeight()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
add-float v3, v1, v5
iget-object v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v2, v0, v3, v4}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
invoke-virtual {v2, v7}, Landroid/graphics/Paint;->setColor(I)V
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "\u7167\u7247:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
invoke-virtual {v3}, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->getWidth()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string/jumbo v3, " x "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
invoke-virtual {v3}, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->getHeight()I
move-result v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v2, v0, v1, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
:cond_106
return-void
.end method
.method private initSrcRect()V
.registers 12
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapRect:Landroid/graphics/Rect;
invoke-virtual {v5}, Landroid/graphics/Rect;->isEmpty()Z
move-result v5
if-nez v5, :cond_55
invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getWidth()F
move-result v1
invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getHeight()F
move-result v0
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapRect:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->right:I
int-to-float v4, v5
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapRect:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->bottom:I
int-to-float v3, v5
div-float v5, v1, v0
div-float v6, v4, v3
cmpl-float v5, v5, v6
if-lez v5, :cond_56
div-float v2, v1, v4
:goto_24
mul-float v5, v4, v2
iput v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapInitWidth:F
mul-float v5, v3, v2
iput v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapInitHeight:F
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
invoke-virtual {v5}, Landroid/graphics/RectF;->isEmpty()Z
move-result v5
if-nez v5, :cond_3a
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDrawType:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
sget-object v6, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;->PUZZLING:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
if-ne v5, v6, :cond_55
:cond_3a
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iget v6, v6, Landroid/graphics/RectF;->left:F
iget-object v7, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iget v7, v7, Landroid/graphics/RectF;->top:F
iget-object v8, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iget v8, v8, Landroid/graphics/RectF;->left:F
iget v9, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapInitWidth:F
add-float/2addr v8, v9
iget-object v9, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iget v9, v9, Landroid/graphics/RectF;->top:F
iget v10, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapInitHeight:F
add-float/2addr v9, v10
invoke-virtual {v5, v6, v7, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V
:cond_55
return-void
:cond_56
div-float v2, v0, v3
goto :goto_24
.end method
.method private resetScale()V
.registers 4
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget v1, v1, Landroid/graphics/RectF;->left:F
iget v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapInitWidth:F
add-float/2addr v1, v2
iput v1, v0, Landroid/graphics/RectF;->right:F
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget v1, v1, Landroid/graphics/RectF;->top:F
iget v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapInitHeight:F
add-float/2addr v1, v2
iput v1, v0, Landroid/graphics/RectF;->bottom:F
const/high16 v0, 0x3f80
iput v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mScale:F
return-void
.end method
.method public autoFit()V
.registers 1
return-void
.end method
.method public checkBitmapPosition()V
.registers 8
const/4 v6, 0x0
const-string/jumbo v3, "test"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "check : bounds = "
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v5, ", mDst"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
invoke-virtual {v3}, Landroid/graphics/RectF;->width()F
move-result v3
iget-object v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
invoke-virtual {v4}, Landroid/graphics/RectF;->width()F
move-result v4
cmpg-float v3, v3, v4
if-ltz v3, :cond_46
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
invoke-virtual {v3}, Landroid/graphics/RectF;->height()F
move-result v3
iget-object v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
invoke-virtual {v4}, Landroid/graphics/RectF;->height()F
move-result v4
cmpg-float v3, v3, v4
if-gez v3, :cond_7e
:cond_46
const-string/jumbo v3, "test"
const-string/jumbo v4, "check scale small"
invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->resetScale()V
:goto_52
const/4 v2, 0x0
const/4 v1, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget v3, v3, Landroid/graphics/RectF;->left:F
iget-object v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iget v4, v4, Landroid/graphics/RectF;->left:F
sub-float v0, v3, v4
cmpl-float v3, v0, v6
if-lez v3, :cond_88
neg-float v1, v0
:cond_63
:goto_63
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget v3, v3, Landroid/graphics/RectF;->top:F
iget-object v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iget v4, v4, Landroid/graphics/RectF;->top:F
sub-float v0, v3, v4
cmpl-float v3, v0, v6
if-lez v3, :cond_98
neg-float v2, v0
:cond_72
:goto_72
cmpl-float v3, v1, v6
if-nez v3, :cond_7a
cmpl-float v3, v2, v6
if-eqz v3, :cond_7d
:cond_7a
invoke-virtual {p0, v1, v2}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->moveBitmapBy(FF)V
:cond_7d
return-void
:cond_7e
const-string/jumbo v3, "test"
const-string/jumbo v4, "check scale ok"
invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_52
:cond_88
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget v3, v3, Landroid/graphics/RectF;->right:F
iget-object v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iget v4, v4, Landroid/graphics/RectF;->right:F
sub-float v0, v3, v4
cmpg-float v3, v0, v6
if-gez v3, :cond_63
neg-float v1, v0
goto :goto_63
:cond_98
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget v3, v3, Landroid/graphics/RectF;->bottom:F
iget-object v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iget v4, v4, Landroid/graphics/RectF;->bottom:F
sub-float v0, v3, v4
cmpg-float v3, v0, v6
if-gez v3, :cond_72
neg-float v2, v0
goto :goto_72
.end method
.method public clear()V
.registers 3
const/4 v1, 0x0
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPhotoPath:Ljava/lang/String;
invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->releaseBitmap()V
const/high16 v0, 0x3f80
iput v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mScale:F
iput v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaX:F
iput v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaY:F
return-void
.end method
.method public copy(Landroid/content/Context;)Lcom/pinguo/camera360/puzzle/PuzzleItem;
.registers 5
new-instance v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;
invoke-direct {v0, p1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->id:Ljava/lang/String;
iput-object v1, v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->id:Ljava/lang/String;
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPhotoPath:Ljava/lang/String;
iput-object v1, v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPhotoPath:Ljava/lang/String;
iget v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mScale:F
iput v1, v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mScale:F
iget v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaX:F
iput v1, v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaX:F
iget v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaY:F
iput v1, v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaY:F
new-instance v1, Landroid/graphics/RectF;
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
invoke-direct {v1, v2}, Landroid/graphics/RectF;-><init>(Landroid/graphics/RectF;)V
iput-object v1, v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
iput-object v1, v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
return-object v0
.end method
.method public copy(Landroid/content/Context;F)Lcom/pinguo/camera360/puzzle/PuzzleItem;
.registers 6
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->copy(Landroid/content/Context;)Lcom/pinguo/camera360/puzzle/PuzzleItem;
move-result-object v0
iget-object v1, v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget v2, v1, Landroid/graphics/RectF;->top:F
mul-float/2addr v2, p2
iput v2, v1, Landroid/graphics/RectF;->top:F
iget v2, v1, Landroid/graphics/RectF;->left:F
mul-float/2addr v2, p2
iput v2, v1, Landroid/graphics/RectF;->left:F
iget v2, v1, Landroid/graphics/RectF;->right:F
mul-float/2addr v2, p2
iput v2, v1, Landroid/graphics/RectF;->right:F
iget v2, v1, Landroid/graphics/RectF;->bottom:F
mul-float/2addr v2, p2
iput v2, v1, Landroid/graphics/RectF;->bottom:F
iget v2, v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaX:F
mul-float/2addr v2, p2
iput v2, v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaX:F
iget v2, v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaY:F
mul-float/2addr v2, p2
iput v2, v0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaY:F
return-object v0
.end method
.method public final draw(Landroid/graphics/Canvas;)V
.registers 8
iget-boolean v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mNeedRelaodPhoto:Z
if-eqz v2, :cond_7
invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->loadPhoto()V
:cond_7
if-nez p1, :cond_a
:goto_9
return-void
:cond_a
invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I
move-result v0
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mClipPathOveride:Landroid/graphics/Path;
if-nez v1, :cond_68
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mClipPath:Landroid/graphics/Path;
invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
:goto_17
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
if-eqz v2, :cond_37
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
invoke-virtual {v2}, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->canDraw()Z
move-result v2
if-eqz v2, :cond_37
sget v2, Lcom/pinguo/camera360/puzzle/PuzzleItem;->BG_COLOR:I
invoke-virtual {p1, v2}, Landroid/graphics/Canvas;->drawColor(I)V
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
invoke-virtual {v2}, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->getBitMap()Landroid/graphics/Bitmap;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapRect:Landroid/graphics/Rect;
iget-object v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget-object v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v2, v3, v4, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/RectF;Landroid/graphics/Paint;)V
:cond_37
iget-boolean v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mIsSelected:Z
if-eqz v2, :cond_64
iget v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mSelectedBoundsColor:I
if-eqz v2, :cond_64
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDrawType:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
sget-object v3, Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;->PUZZLING:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
if-ne v2, v3, :cond_64
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
iget v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mSelectedBoundsColor:I
invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setColor(I)V
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
iget v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mSelectedBoundsSize:I
int-to-float v3, v3
invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStrokeWidth(F)V
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
sget-object v3, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v2, v3}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
if-nez v1, :cond_6c
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v2, v3}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V
:cond_64
:goto_64
invoke-virtual {p1, v0}, Landroid/graphics/Canvas;->restoreToCount(I)V
goto :goto_9
:cond_68
invoke-virtual {p1, v1}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;)Z
goto :goto_17
:cond_6c
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
goto :goto_64
.end method
.method public getBitMap()Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
return-object v0
.end method
.method public getCentreX()F
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
invoke-virtual {v0}, Landroid/graphics/RectF;->centerX()F
move-result v0
return v0
.end method
.method public getCentreY()F
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
invoke-virtual {v0}, Landroid/graphics/RectF;->centerY()F
move-result v0
return v0
.end method
.method public getHeight()F
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iget v0, v0, Landroid/graphics/RectF;->bottom:F
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iget v1, v1, Landroid/graphics/RectF;->top:F
sub-float/2addr v0, v1
return v0
.end method
.method public getPhotoPath()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPhotoPath:Ljava/lang/String;
return-object v0
.end method
.method public getPositionOnSystem()Landroid/graphics/RectF;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
return-object v0
.end method
.method public getPositionOnSystemX()F
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iget v0, v0, Landroid/graphics/RectF;->left:F
return v0
.end method
.method public getPositionOnSystemY()F
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iget v0, v0, Landroid/graphics/RectF;->top:F
return v0
.end method
.method public getWidth()F
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iget v0, v0, Landroid/graphics/RectF;->right:F
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iget v1, v1, Landroid/graphics/RectF;->left:F
sub-float/2addr v0, v1
return v0
.end method
.method public isSelected()Z
.registers 2
iget-boolean v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mIsSelected:Z
return v0
.end method
.method public isTouched(FF)Z
.registers 6
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mClipPathOveride:Landroid/graphics/Path;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mRegion:Landroid/graphics/Region;
float-to-int v1, p1
float-to-int v2, p2
invoke-virtual {v0, v1, v2}, Landroid/graphics/Region;->contains(II)Z
move-result v0
:goto_c
return v0
:cond_d
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->contains(FF)Z
move-result v0
goto :goto_c
.end method
.method public layout(FFFF)V
.registers 9
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iput p1, v0, Landroid/graphics/RectF;->left:F
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iput p2, v0, Landroid/graphics/RectF;->top:F
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iput p3, v0, Landroid/graphics/RectF;->right:F
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iput p4, v0, Landroid/graphics/RectF;->bottom:F
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mClipPath:Landroid/graphics/Path;
invoke-virtual {v0}, Landroid/graphics/Path;->reset()V
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mClipPath:Landroid/graphics/Path;
invoke-virtual {v0, p1, p2}, Landroid/graphics/Path;->moveTo(FF)V
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mClipPath:Landroid/graphics/Path;
invoke-virtual {v0, p3, p2}, Landroid/graphics/Path;->lineTo(FF)V
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mClipPath:Landroid/graphics/Path;
invoke-virtual {v0, p3, p4}, Landroid/graphics/Path;->lineTo(FF)V
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mClipPath:Landroid/graphics/Path;
invoke-virtual {v0, p1, p4}, Landroid/graphics/Path;->lineTo(FF)V
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mClipPath:Landroid/graphics/Path;
invoke-virtual {v0}, Landroid/graphics/Path;->close()V
invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->initSrcRect()V
const-string/jumbo v1, "PuzzleItem"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v0, "layout mBoundsRect = is Rect :"
invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z
move-result v0
if-eqz v0, :cond_a7
const/4 v0, 0x0
:goto_45
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, ","
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
invoke-virtual {v2}, Landroid/graphics/RectF;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, ", mBoundsBL : "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
invoke-virtual {v2}, Landroid/graphics/RectF;->width()F
move-result v2
iget-object v3, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
invoke-virtual {v3}, Landroid/graphics/RectF;->height()F
move-result v3
div-float/2addr v2, v3
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v2, ", mClipPath.isEmpty() = "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mClipPath:Landroid/graphics/Path;
invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z
move-result v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v0, "PuzzleItem"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "layout mClipPath.isEmpty() = "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mClipPath:Landroid/graphics/Path;
invoke-virtual {v2}, Landroid/graphics/Path;->isEmpty()Z
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_a7
const/4 v0, 0x1
goto :goto_45
.end method
.method public layout(Landroid/graphics/RectF;)V
.registers 6
iget v0, p1, Landroid/graphics/RectF;->left:F
iget v1, p1, Landroid/graphics/RectF;->top:F
iget v2, p1, Landroid/graphics/RectF;->right:F
iget v3, p1, Landroid/graphics/RectF;->bottom:F
invoke-virtual {p0, v0, v1, v2, v3}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->layout(FFFF)V
return-void
.end method
.method public loadForOutputType()V
.registers 5
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPhotoPath:Ljava/lang/String;
invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getWidth()F
move-result v2
invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getHeight()F
move-result v3
invoke-virtual {v0, v1, v2, v3}, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->loadForOutput(Ljava/lang/String;FF)V
const-string/jumbo v0, "PuzzleItem"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, " item size : "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getWidth()F
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " x "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getHeight()F
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mNeedRelaodPhoto:Z
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setBitMap(Lcom/pinguo/camera360/puzzle/PuzzleDrawable;)V
return-void
.end method
.method public loadPhoto()V
.registers 8
const/4 v6, 0x0
iget-boolean v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mNeedRelaodPhoto:Z
iput-boolean v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mNeedRelaodPhoto:Z
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPhotoPath:Ljava/lang/String;
invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getWidth()F
move-result v2
invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getHeight()F
move-result v3
iget-object v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDrawType:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->loadForPuzzle(Ljava/lang/String;FFLcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;Z)V
const-string/jumbo v0, "PuzzleItem"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, " item size : "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getWidth()F
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " x "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getHeight()F
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iput-boolean v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mNeedRelaodPhoto:Z
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setBitMap(Lcom/pinguo/camera360/puzzle/PuzzleDrawable;)V
return-void
.end method
.method public moveBitmapBy(FF)V
.registers 6
iget v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaX:F
add-float/2addr v0, p1
iput v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaX:F
iget v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaY:F
add-float/2addr v0, p2
iput v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaY:F
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
invoke-virtual {v0, p1, p2}, Landroid/graphics/RectF;->offset(FF)V
const-string/jumbo v0, "test"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "mDelta : "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaX:F
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, " : "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaY:F
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", move by : "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, ", "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public neenRefresh()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public onLongPress()V
.registers 3
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/pinguo/camera360/puzzle/PuzzleItem; onLongPress "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
const/16 v1, 0xb4
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
const-string v1, " - Lcom/pinguo/camera360/puzzle/PuzzleItem; onLongPress"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onLongPressCancel()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPaint:Landroid/graphics/Paint;
const/16 v1, 0xff
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAlpha(I)V
return-void
.end method
.method public releaseBitmap()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->recycle()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setBitMap(Lcom/pinguo/camera360/puzzle/PuzzleDrawable;)V
:cond_d
return-void
.end method
.method public resetPosition()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iget v1, v1, Landroid/graphics/RectF;->left:F
iput v1, v0, Landroid/graphics/RectF;->left:F
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBoundsRect:Landroid/graphics/RectF;
iget v1, v1, Landroid/graphics/RectF;->top:F
iput v1, v0, Landroid/graphics/RectF;->top:F
invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->resetScale()V
return-void
.end method
.method public resetRotationAndMirror()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->resetRotateAndrMirror()V
return-void
.end method
.method public rever()V
.registers 3
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->mirror(Z)V
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setBitMap(Lcom/pinguo/camera360/puzzle/PuzzleDrawable;)V
goto :goto_4
.end method
.method public rotate()V
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
invoke-virtual {v0}, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->rotate()V
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setBitMap(Lcom/pinguo/camera360/puzzle/PuzzleDrawable;)V
goto :goto_4
.end method
.method public scaleBitmap(F)V
.registers 12
const v7, 0x3d4ccccd
iget v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mScale:F
mul-float v4, v6, p1
iget v5, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mScale:F
const/high16 v6, 0x4100
cmpl-float v6, v4, v6
if-gtz v6, :cond_15
const/high16 v6, 0x3f00
cmpg-float v6, v4, v6
if-gez v6, :cond_16
:cond_15
:goto_15
return-void
:cond_16
iget v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mScale:F
sub-float v1, v6, v4
const v0, 0x3d4ccccd
const/4 v3, 0x0
const/4 v2, 0x0
invoke-static {v1}, Ljava/lang/Math;->abs(F)F
move-result v6
cmpl-float v6, v6, v7
if-lez v6, :cond_7a
const/4 v6, 0x0
cmpl-float v6, v1, v6
if-lez v6, :cond_74
iget v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mScale:F
sub-float/2addr v6, v7
iput v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mScale:F
:goto_31
iget v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapInitWidth:F
iget v7, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mScale:F
sub-float/2addr v7, v5
mul-float/2addr v6, v7
float-to-int v3, v6
iget v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapInitHeight:F
iget v7, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mScale:F
sub-float/2addr v7, v5
mul-float/2addr v6, v7
float-to-int v2, v6
iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget-object v7, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget v7, v7, Landroid/graphics/RectF;->left:F
div-int/lit8 v8, v3, 0x2
int-to-float v8, v8
sub-float/2addr v7, v8
iput v7, v6, Landroid/graphics/RectF;->left:F
iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget-object v7, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget v7, v7, Landroid/graphics/RectF;->left:F
iget v8, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapInitWidth:F
iget v9, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mScale:F
mul-float/2addr v8, v9
add-float/2addr v7, v8
iput v7, v6, Landroid/graphics/RectF;->right:F
iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget-object v7, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget v7, v7, Landroid/graphics/RectF;->top:F
div-int/lit8 v8, v2, 0x2
int-to-float v8, v8
sub-float/2addr v7, v8
iput v7, v6, Landroid/graphics/RectF;->top:F
iget-object v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget-object v7, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDstRect:Landroid/graphics/RectF;
iget v7, v7, Landroid/graphics/RectF;->top:F
iget v8, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapInitHeight:F
iget v9, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mScale:F
mul-float/2addr v8, v9
add-float/2addr v7, v8
iput v7, v6, Landroid/graphics/RectF;->bottom:F
goto :goto_15
:cond_74
iget v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mScale:F
add-float/2addr v6, v7
iput v6, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mScale:F
goto :goto_31
:cond_7a
iput v4, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mScale:F
goto :goto_31
.end method
.method public setBitMap(Lcom/pinguo/camera360/puzzle/PuzzleDrawable;)V
.registers 5
const/4 v1, 0x0
const/4 v2, 0x0
if-nez p1, :cond_9
iput v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapInitWidth:F
iput v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapInitHeight:F
:goto_8
return-void
:cond_9
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapRect:Landroid/graphics/Rect;
iput v1, v0, Landroid/graphics/Rect;->left:I
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapRect:Landroid/graphics/Rect;
iput v1, v0, Landroid/graphics/Rect;->top:I
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapRect:Landroid/graphics/Rect;
invoke-virtual {p1}, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->getWidth()I
move-result v1
iput v1, v0, Landroid/graphics/Rect;->right:I
iget-object v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mBitmapRect:Landroid/graphics/Rect;
invoke-virtual {p1}, Lcom/pinguo/camera360/puzzle/PuzzleDrawable;->getHeight()I
move-result v1
iput v1, v0, Landroid/graphics/Rect;->bottom:I
const/high16 v0, 0x3f80
iput v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mScale:F
iput v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaX:F
iput v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDeltaY:F
invoke-direct {p0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->initSrcRect()V
goto :goto_8
.end method
.method public setDrawType(Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mDrawType:Lcom/pinguo/camera360/puzzle/PuzzleTemplateEntity$DrawType;
return-void
.end method
.method public setOverRidePath(Landroid/graphics/Path;)V
.registers 9
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mClipPathOveride:Landroid/graphics/Path;
if-nez p1, :cond_5
:goto_4
return-void
:cond_5
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
const/4 v1, 0x1
invoke-virtual {p1, v0, v1}, Landroid/graphics/Path;->computeBounds(Landroid/graphics/RectF;Z)V
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mRegion:Landroid/graphics/Region;
invoke-virtual {v1}, Landroid/graphics/Region;->setEmpty()V
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mRegion:Landroid/graphics/Region;
new-instance v2, Landroid/graphics/Region;
iget v3, v0, Landroid/graphics/RectF;->left:F
float-to-int v3, v3
iget v4, v0, Landroid/graphics/RectF;->top:F
float-to-int v4, v4
iget v5, v0, Landroid/graphics/RectF;->right:F
float-to-int v5, v5
iget v6, v0, Landroid/graphics/RectF;->bottom:F
float-to-int v6, v6
invoke-direct {v2, v3, v4, v5, v6}, Landroid/graphics/Region;-><init>(IIII)V
invoke-virtual {v1, p1, v2}, Landroid/graphics/Region;->setPath(Landroid/graphics/Path;Landroid/graphics/Region;)Z
invoke-virtual {v0}, Landroid/graphics/RectF;->isEmpty()Z
move-result v1
if-eqz v1, :cond_46
const-string/jumbo v1, "PuzzleItem"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "get an empty rect from path , rect infomation : "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_4
:cond_46
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->layout(Landroid/graphics/RectF;)V
goto :goto_4
.end method
.method public setPhotoPath(Ljava/lang/String;)V
.registers 4
const/4 v0, 0x1
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPhotoPath:Ljava/lang/String;
if-nez v1, :cond_a
iput-boolean v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mNeedRelaodPhoto:Z
:goto_7
iput-object p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPhotoPath:Ljava/lang/String;
return-void
:cond_a
iget-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPhotoPath:Ljava/lang/String;
invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_13
const/4 v0, 0x0
:cond_13
iput-boolean v0, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mNeedRelaodPhoto:Z
goto :goto_7
.end method
.method public setSelected(Z)V
.registers 2
iput-boolean p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mIsSelected:Z
return-void
.end method
.method public setSelectedBounds(I)V
.registers 2
iput p1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mSelectedBoundsColor:I
return-void
.end method
.method public swapContent(Lcom/pinguo/camera360/puzzle/PuzzleItem;)V
.registers 5
invoke-virtual {p1}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->getBitMap()Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
move-result-object v0
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPuzzleDrawable:Lcom/pinguo/camera360/puzzle/PuzzleDrawable;
invoke-virtual {p1, v2}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setBitMap(Lcom/pinguo/camera360/puzzle/PuzzleDrawable;)V
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/puzzle/PuzzleItem;->setBitMap(Lcom/pinguo/camera360/puzzle/PuzzleDrawable;)V
iget-object v1, p1, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPhotoPath:Ljava/lang/String;
iget-object v2, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPhotoPath:Ljava/lang/String;
iput-object v2, p1, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPhotoPath:Ljava/lang/String;
iput-object v1, p0, Lcom/pinguo/camera360/puzzle/PuzzleItem;->mPhotoPath:Ljava/lang/String;
return-void
.end method