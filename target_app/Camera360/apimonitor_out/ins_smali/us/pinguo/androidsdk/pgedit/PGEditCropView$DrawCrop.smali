.class public abstract Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
.super Ljava/lang/Object;
.source "PGEditCropView.java"
.field public centerRect:Landroid/graphics/Rect;
.field final synthetic this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
.method public constructor <init>(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)V
.registers 2
iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private drawDottedLines(Landroid/graphics/Canvas;)V
.registers 11
const/high16 v8, 0x4040
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->right:I
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->left:I
sub-int/2addr v6, v7
int-to-float v6, v6
div-float/2addr v6, v8
invoke-static {v6}, Ljava/lang/Math;->round(F)I
move-result v5
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->bottom:I
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->top:I
sub-int/2addr v6, v7
int-to-float v6, v6
div-float/2addr v6, v8
invoke-static {v6}, Ljava/lang/Math;->round(F)I
move-result v4
new-instance v0, Landroid/graphics/Path;
invoke-direct {v0}, Landroid/graphics/Path;-><init>()V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->left:I
add-int/2addr v6, v5
int-to-float v6, v6
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->top:I
int-to-float v7, v7
invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->left:I
add-int/2addr v6, v5
int-to-float v6, v6
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->bottom:I
int-to-float v7, v7
invoke-virtual {v0, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$16(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Paint;
move-result-object v6
invoke-virtual {p1, v0, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
new-instance v1, Landroid/graphics/Path;
invoke-direct {v1}, Landroid/graphics/Path;-><init>()V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->left:I
mul-int/lit8 v7, v5, 0x2
add-int/2addr v6, v7
int-to-float v6, v6
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->top:I
int-to-float v7, v7
invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->left:I
mul-int/lit8 v7, v5, 0x2
add-int/2addr v6, v7
int-to-float v6, v6
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->bottom:I
int-to-float v7, v7
invoke-virtual {v1, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$16(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Paint;
move-result-object v6
invoke-virtual {p1, v1, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
new-instance v2, Landroid/graphics/Path;
invoke-direct {v2}, Landroid/graphics/Path;-><init>()V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->left:I
int-to-float v6, v6
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->top:I
add-int/2addr v7, v4
int-to-float v7, v7
invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->right:I
int-to-float v6, v6
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->top:I
add-int/2addr v7, v4
int-to-float v7, v7
invoke-virtual {v2, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$16(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Paint;
move-result-object v6
invoke-virtual {p1, v2, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
new-instance v3, Landroid/graphics/Path;
invoke-direct {v3}, Landroid/graphics/Path;-><init>()V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->left:I
int-to-float v6, v6
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->top:I
mul-int/lit8 v8, v4, 0x2
add-int/2addr v7, v8
int-to-float v7, v7
invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->moveTo(FF)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->right:I
int-to-float v6, v6
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->top:I
mul-int/lit8 v8, v4, 0x2
add-int/2addr v7, v8
int-to-float v7, v7
invoke-virtual {v3, v6, v7}, Landroid/graphics/Path;->lineTo(FF)V
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mDottedLinesPaint:Landroid/graphics/Paint;
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$16(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Paint;
move-result-object v6
invoke-virtual {p1, v3, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
return-void
.end method
.method public changeRoundValue()V
.registers 4
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftTopRoundRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$11(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
div-int/lit8 v2, v2, 0x2
sub-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->left:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftTopRoundRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$11(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->top:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
div-int/lit8 v2, v2, 0x2
sub-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->top:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftTopRoundRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$11(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftTopRoundRect:Landroid/graphics/Rect;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$11(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v1
iget v1, v1, Landroid/graphics/Rect;->left:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->right:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftTopRoundRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$11(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftTopRoundRect:Landroid/graphics/Rect;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$11(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v1
iget v1, v1, Landroid/graphics/Rect;->top:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->bottom:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightTopRoundRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$14(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
div-int/lit8 v2, v2, 0x2
sub-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->left:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightTopRoundRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$14(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->top:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
div-int/lit8 v2, v2, 0x2
sub-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->top:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightTopRoundRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$14(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightTopRoundRect:Landroid/graphics/Rect;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$14(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v1
iget v1, v1, Landroid/graphics/Rect;->left:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->right:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightTopRoundRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$14(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightTopRoundRect:Landroid/graphics/Rect;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$14(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v1
iget v1, v1, Landroid/graphics/Rect;->top:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->bottom:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftBottomRoundRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$13(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
div-int/lit8 v2, v2, 0x2
sub-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->left:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftBottomRoundRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$13(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->bottom:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
div-int/lit8 v2, v2, 0x2
sub-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->top:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftBottomRoundRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$13(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftBottomRoundRect:Landroid/graphics/Rect;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$13(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v1
iget v1, v1, Landroid/graphics/Rect;->left:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->right:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftBottomRoundRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$13(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftBottomRoundRect:Landroid/graphics/Rect;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$13(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v1
iget v1, v1, Landroid/graphics/Rect;->top:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->bottom:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightBottomRoundRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
div-int/lit8 v2, v2, 0x2
sub-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->left:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightBottomRoundRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->bottom:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
div-int/lit8 v2, v2, 0x2
sub-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->top:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightBottomRoundRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightBottomRoundRect:Landroid/graphics/Rect;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v1
iget v1, v1, Landroid/graphics/Rect;->left:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->right:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightBottomRoundRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightBottomRoundRect:Landroid/graphics/Rect;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v1
iget v1, v1, Landroid/graphics/Rect;->top:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->bottom:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mTopSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$18(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
if-eqz v0, :cond_20e
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mTopSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$18(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
div-int/lit8 v2, v2, 0x2
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->left:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mTopSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$18(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->top:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
div-int/lit8 v2, v2, 0x2
sub-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->top:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mTopSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$18(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
div-int/lit8 v2, v2, 0x2
sub-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->right:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mTopSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$18(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mTopSideRect:Landroid/graphics/Rect;
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$18(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v1
iget v1, v1, Landroid/graphics/Rect;->top:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->bottom:I
:cond_20e
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$19(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
if-eqz v0, :cond_27a
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$19(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
div-int/lit8 v2, v2, 0x2
sub-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->left:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$19(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->top:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
div-int/lit8 v2, v2, 0x2
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->top:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$19(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
div-int/lit8 v2, v2, 0x2
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->right:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$19(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->bottom:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
div-int/lit8 v2, v2, 0x2
sub-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->bottom:I
:cond_27a
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mBottomSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$20(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
if-eqz v0, :cond_2e6
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mBottomSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$20(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
div-int/lit8 v2, v2, 0x2
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->left:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mBottomSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$20(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->bottom:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
div-int/lit8 v2, v2, 0x2
sub-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->top:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mBottomSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$20(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
div-int/lit8 v2, v2, 0x2
sub-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->right:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mBottomSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$20(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->bottom:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
div-int/lit8 v2, v2, 0x2
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->bottom:I
:cond_2e6
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$21(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
if-eqz v0, :cond_352
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$21(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
div-int/lit8 v2, v2, 0x2
sub-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->left:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$21(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->top:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
div-int/lit8 v2, v2, 0x2
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->top:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$21(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v2
div-int/lit8 v2, v2, 0x2
add-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->right:I
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftSideRect:Landroid/graphics/Rect;
invoke-static {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$21(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->bottom:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRoundBitmap:Landroid/graphics/Bitmap;
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$17(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Bitmap;
move-result-object v2
invoke-virtual {v2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
div-int/lit8 v2, v2, 0x2
sub-int/2addr v1, v2
iput v1, v0, Landroid/graphics/Rect;->bottom:I
:cond_352
return-void
.end method
.method public drawView(Landroid/graphics/Canvas;)V
.registers 10
const/4 v7, 0x0
new-instance v3, Landroid/graphics/Rect;
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->width:I
invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$6(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v4
iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->top:I
invoke-direct {v3, v7, v7, v4, v5}, Landroid/graphics/Rect;-><init>(IIII)V
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mMaskPaint:Landroid/graphics/Paint;
invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$7(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Paint;
move-result-object v4
invoke-virtual {p1, v3, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
new-instance v0, Landroid/graphics/Rect;
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->bottom:I
iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->width:I
invoke-static {v5}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$6(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v5
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->height:I
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$8(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v6
invoke-direct {v0, v7, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mMaskPaint:Landroid/graphics/Paint;
invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$7(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Paint;
move-result-object v4
invoke-virtual {p1, v0, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
new-instance v1, Landroid/graphics/Rect;
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->top:I
iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->left:I
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v6, v6, Landroid/graphics/Rect;->bottom:I
invoke-direct {v1, v7, v4, v5, v6}, Landroid/graphics/Rect;-><init>(IIII)V
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mMaskPaint:Landroid/graphics/Paint;
invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$7(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Paint;
move-result-object v4
invoke-virtual {p1, v1, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
new-instance v2, Landroid/graphics/Rect;
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v4, v4, Landroid/graphics/Rect;->right:I
iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v5, v5, Landroid/graphics/Rect;->top:I
iget-object v6, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->width:I
invoke-static {v6}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$6(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v6
iget-object v7, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v7, v7, Landroid/graphics/Rect;->bottom:I
invoke-direct {v2, v4, v5, v6, v7}, Landroid/graphics/Rect;-><init>(IIII)V
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mMaskPaint:Landroid/graphics/Paint;
invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$7(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Paint;
move-result-object v4
invoke-virtual {p1, v2, v4}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mNowDrawCrop:Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
invoke-static {v4}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$9(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;
move-result-object v4
iget-object v4, v4, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mWhitePaint:Landroid/graphics/Paint;
invoke-static {v5}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$10(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Paint;
move-result-object v5
invoke-virtual {p1, v4, v5}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/Rect;Landroid/graphics/Paint;)V
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftTopRoundRect:Landroid/graphics/Rect;
invoke-static {v5}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$11(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v5
#calls: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->drawRoundItem(Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
invoke-static {v4, v5, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$12(Lus/pinguo/androidsdk/pgedit/PGEditCropView;Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLeftBottomRoundRect:Landroid/graphics/Rect;
invoke-static {v5}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$13(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v5
#calls: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->drawRoundItem(Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
invoke-static {v4, v5, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$12(Lus/pinguo/androidsdk/pgedit/PGEditCropView;Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightTopRoundRect:Landroid/graphics/Rect;
invoke-static {v5}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$14(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v5
#calls: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->drawRoundItem(Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
invoke-static {v4, v5, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$12(Lus/pinguo/androidsdk/pgedit/PGEditCropView;Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
iget-object v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mRightBottomRoundRect:Landroid/graphics/Rect;
invoke-static {v5}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$15(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)Landroid/graphics/Rect;
move-result-object v5
#calls: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->drawRoundItem(Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
invoke-static {v4, v5, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$12(Lus/pinguo/androidsdk/pgedit/PGEditCropView;Landroid/graphics/Rect;Landroid/graphics/Canvas;)V
invoke-direct {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->drawDottedLines(Landroid/graphics/Canvas;)V
return-void
.end method
.method public end(Landroid/view/MotionEvent;)V
.registers 4
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastX:F
invoke-static {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$22(Lus/pinguo/androidsdk/pgedit/PGEditCropView;F)V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v1
#setter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastY:F
invoke-static {v0, v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$23(Lus/pinguo/androidsdk/pgedit/PGEditCropView;F)V
invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->changeRoundValue()V
iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
invoke-virtual {v0}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->invalidate()V
return-void
.end method
.method public moveRect(Landroid/view/MotionEvent;)V
.registers 6
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v2
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastX:F
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F
move-result v3
sub-float/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v0
invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F
move-result v2
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastY:F
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$1(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F
move-result v3
sub-float/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
add-int/2addr v2, v0
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoLeft:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
if-ge v2, v3, :cond_78
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoLeft:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
sub-int v0, v2, v3
:goto_37
:cond_37
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->left:I
add-int/2addr v3, v0
iput v3, v2, Landroid/graphics/Rect;->left:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->right:I
add-int/2addr v3, v0
iput v3, v2, Landroid/graphics/Rect;->right:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
add-int/2addr v2, v1
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoTop:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
if-ge v2, v3, :cond_92
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoTop:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->top:I
sub-int v1, v2, v3
:cond_62
:goto_62
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->top:I
add-int/2addr v3, v1
iput v3, v2, Landroid/graphics/Rect;->top:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->bottom:I
add-int/2addr v3, v1
iput v3, v2, Landroid/graphics/Rect;->bottom:I
invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->end(Landroid/view/MotionEvent;)V
return-void
:cond_78
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
add-int/2addr v2, v0
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoRight:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
if-le v2, v3, :cond_37
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoRight:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->right:I
sub-int v0, v2, v3
goto :goto_37
:cond_92
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
add-int/2addr v2, v1
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoBottom:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
if-le v2, v3, :cond_62
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoBottom:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v3, v3, Landroid/graphics/Rect;->bottom:I
sub-int v1, v2, v3
goto :goto_62
.end method
.method public moveSideBottom(Landroid/view/MotionEvent;)V
.registers 2
return-void
.end method
.method public moveSideLeft(Landroid/view/MotionEvent;)V
.registers 2
return-void
.end method
.method public moveSideRight(Landroid/view/MotionEvent;)V
.registers 2
return-void
.end method
.method public moveSideTop(Landroid/view/MotionEvent;)V
.registers 2
return-void
.end method
.method public abstract scaleLeftBottom(Landroid/view/MotionEvent;)V
.end method
.method public scaleLeftBottom(Landroid/view/MotionEvent;F)V
.registers 7
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastX:F
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F
move-result v2
sub-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v0
if-lez v0, :cond_ba
const/high16 v1, 0x3f80
cmpl-float v1, p2, v1
if-ltz v1, :cond_6a
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
add-int/2addr v2, v0
sub-int/2addr v1, v2
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
if-le v1, v2, :cond_45
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
add-int/2addr v2, v0
iput v2, v1, Landroid/graphics/Rect;->left:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
int-to-float v3, v0
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
sub-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->bottom:I
:goto_41
:cond_41
invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->end(Landroid/view/MotionEvent;)V
return-void
:cond_45
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
sub-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->left:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
int-to-float v3, v3
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->bottom:I
goto :goto_41
:cond_6a
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->bottom:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
add-int/2addr v2, v0
sub-int/2addr v1, v2
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
if-le v1, v2, :cond_95
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
add-int/2addr v2, v0
iput v2, v1, Landroid/graphics/Rect;->left:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
int-to-float v3, v0
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
sub-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->bottom:I
goto :goto_41
:cond_95
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
int-to-float v3, v3
div-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
sub-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->left:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->bottom:I
goto :goto_41
:cond_ba
if-gez v0, :cond_41
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
add-int/2addr v1, v0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoLeft:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
if-ge v1, v2, :cond_f0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoLeft:I
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
sub-int v0, v1, v2
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
int-to-float v3, v0
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
sub-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->bottom:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoLeft:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
iput v2, v1, Landroid/graphics/Rect;->left:I
goto/16 :goto_41
:cond_f0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->bottom:I
int-to-float v1, v1
int-to-float v2, v0
mul-float/2addr v2, p2
sub-float/2addr v1, v2
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoBottom:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
int-to-float v2, v2
cmpl-float v1, v1, v2
if-lez v1, :cond_12a
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoBottom:I
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
sub-int v0, v1, v2
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoBottom:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
iput v2, v1, Landroid/graphics/Rect;->bottom:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
int-to-float v3, v0
div-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->left:I
goto/16 :goto_41
:cond_12a
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v1, Landroid/graphics/Rect;->bottom:I
int-to-float v3, v0
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
sub-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->bottom:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v1, Landroid/graphics/Rect;->left:I
add-int/2addr v2, v0
iput v2, v1, Landroid/graphics/Rect;->left:I
goto/16 :goto_41
.end method
.method public abstract scaleLeftTop(Landroid/view/MotionEvent;)V
.end method
.method public scaleLeftTop(Landroid/view/MotionEvent;F)V
.registers 7
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastX:F
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F
move-result v2
sub-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v0
if-gez v0, :cond_95
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->left:I
add-int/2addr v1, v0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoLeft:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
if-ge v1, v2, :cond_47
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoLeft:I
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
sub-int v0, v1, v2
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
int-to-float v3, v0
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->top:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoLeft:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$2(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
iput v2, v1, Landroid/graphics/Rect;->left:I
:goto_43
:cond_43
invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->end(Landroid/view/MotionEvent;)V
return-void
:cond_47
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->top:I
int-to-float v1, v1
int-to-float v2, v0
mul-float/2addr v2, p2
add-float/2addr v1, v2
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoTop:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
int-to-float v2, v2
cmpg-float v1, v1, v2
if-gez v1, :cond_80
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoTop:I
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
sub-int v0, v1, v2
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
int-to-float v3, v0
div-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
sub-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->left:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoTop:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
iput v2, v1, Landroid/graphics/Rect;->top:I
goto :goto_43
:cond_80
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v1, Landroid/graphics/Rect;->top:I
int-to-float v3, v0
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->top:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v1, Landroid/graphics/Rect;->left:I
add-int/2addr v2, v0
iput v2, v1, Landroid/graphics/Rect;->left:I
goto :goto_43
:cond_95
if-lez v0, :cond_43
const/high16 v1, 0x3f80
cmpl-float v1, p2, v1
if-lez v1, :cond_ef
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
add-int/2addr v2, v0
sub-int/2addr v1, v2
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
if-le v1, v2, :cond_c9
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
add-int/2addr v2, v0
iput v2, v1, Landroid/graphics/Rect;->left:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
int-to-float v3, v0
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->top:I
goto/16 :goto_43
:cond_c9
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
sub-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->left:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
int-to-float v3, v3
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
sub-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->top:I
goto/16 :goto_43
:cond_ef
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->bottom:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
sub-int/2addr v1, v2
sub-int/2addr v1, v0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
if-le v1, v2, :cond_11b
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
add-int/2addr v2, v0
iput v2, v1, Landroid/graphics/Rect;->left:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
int-to-float v3, v0
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->top:I
goto/16 :goto_43
:cond_11b
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
int-to-float v3, v3
div-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
sub-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->left:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
sub-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->top:I
goto/16 :goto_43
.end method
.method public abstract scaleRightBottom(Landroid/view/MotionEvent;)V
.end method
.method public scaleRightBottom(Landroid/view/MotionEvent;F)V
.registers 7
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastX:F
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F
move-result v2
sub-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v0
if-lez v0, :cond_8f
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
add-int/2addr v1, v0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoRight:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
if-le v1, v2, :cond_47
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoRight:I
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
sub-int v0, v1, v2
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
int-to-float v3, v0
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->bottom:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoRight:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
iput v2, v1, Landroid/graphics/Rect;->right:I
:goto_43
invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->end(Landroid/view/MotionEvent;)V
return-void
:cond_47
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->bottom:I
add-int/2addr v1, v0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoBottom:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
if-le v1, v2, :cond_7a
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoBottom:I
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
sub-int v0, v1, v2
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
int-to-float v3, v0
div-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->right:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoBottom:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$5(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
iput v2, v1, Landroid/graphics/Rect;->bottom:I
goto :goto_43
:cond_7a
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v1, Landroid/graphics/Rect;->bottom:I
int-to-float v3, v0
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->bottom:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v1, Landroid/graphics/Rect;->right:I
add-int/2addr v2, v0
iput v2, v1, Landroid/graphics/Rect;->right:I
goto :goto_43
:cond_8f
const/high16 v1, 0x3f80
cmpl-float v1, p2, v1
if-ltz v1, :cond_e6
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
add-int/2addr v1, v0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
sub-int/2addr v1, v2
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
if-le v1, v2, :cond_c0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
add-int/2addr v2, v0
iput v2, v1, Landroid/graphics/Rect;->right:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
int-to-float v3, v0
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->bottom:I
goto :goto_43
:cond_c0
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->right:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
int-to-float v3, v3
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->bottom:I
goto/16 :goto_43
:cond_e6
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->bottom:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
sub-int/2addr v1, v2
add-int/2addr v1, v0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
if-le v1, v2, :cond_112
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
add-int/2addr v2, v0
iput v2, v1, Landroid/graphics/Rect;->right:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
int-to-float v3, v0
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->bottom:I
goto/16 :goto_43
:cond_112
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
int-to-float v3, v3
div-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->right:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->bottom:I
goto/16 :goto_43
.end method
.method public abstract scaleRightTop(Landroid/view/MotionEvent;)V
.end method
.method public scaleRightTop(Landroid/view/MotionEvent;F)V
.registers 7
invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F
move-result v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->mLastX:F
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$0(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)F
move-result v2
sub-float/2addr v1, v2
invoke-static {v1}, Ljava/lang/Math;->round(F)I
move-result v0
if-lez v0, :cond_95
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
add-int/2addr v1, v0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoRight:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
if-le v1, v2, :cond_47
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoRight:I
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
sub-int v0, v1, v2
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
int-to-float v3, v0
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
sub-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->top:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoRight:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$3(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
iput v2, v1, Landroid/graphics/Rect;->right:I
:goto_43
:cond_43
invoke-virtual {p0, p1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->end(Landroid/view/MotionEvent;)V
return-void
:cond_47
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->top:I
int-to-float v1, v1
int-to-float v2, v0
mul-float/2addr v2, p2
sub-float/2addr v1, v2
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoTop:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
int-to-float v2, v2
cmpg-float v1, v1, v2
if-gez v1, :cond_80
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoTop:I
invoke-static {v1}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v1
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
sub-int v0, v1, v2
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
int-to-float v3, v0
div-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
sub-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->right:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->photoTop:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$4(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
iput v2, v1, Landroid/graphics/Rect;->top:I
goto :goto_43
:cond_80
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v1, Landroid/graphics/Rect;->top:I
int-to-float v3, v0
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
sub-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->top:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v1, Landroid/graphics/Rect;->right:I
add-int/2addr v2, v0
iput v2, v1, Landroid/graphics/Rect;->right:I
goto :goto_43
:cond_95
if-gez v0, :cond_43
const/high16 v1, 0x3f80
cmpl-float v1, p2, v1
if-ltz v1, :cond_ef
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->right:I
add-int/2addr v1, v0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
sub-int/2addr v1, v2
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
if-le v1, v2, :cond_c9
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
add-int/2addr v2, v0
iput v2, v1, Landroid/graphics/Rect;->right:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
int-to-float v3, v0
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
sub-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->top:I
goto/16 :goto_43
:cond_c9
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->right:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
int-to-float v3, v3
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
sub-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->top:I
goto/16 :goto_43
:cond_ef
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v1, v1, Landroid/graphics/Rect;->bottom:I
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
sub-int/2addr v1, v2
add-int/2addr v1, v0
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v2
if-le v1, v2, :cond_11b
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->right:I
add-int/2addr v2, v0
iput v2, v1, Landroid/graphics/Rect;->right:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->top:I
int-to-float v3, v0
mul-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
sub-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->top:I
goto/16 :goto_43
:cond_11b
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->left:I
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
int-to-float v3, v3
div-float/2addr v3, p2
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
add-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->right:I
iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget-object v2, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->centerRect:Landroid/graphics/Rect;
iget v2, v2, Landroid/graphics/Rect;->bottom:I
iget-object v3, p0, Lus/pinguo/androidsdk/pgedit/PGEditCropView$DrawCrop;->this$0:Lus/pinguo/androidsdk/pgedit/PGEditCropView;
#getter for: Lus/pinguo/androidsdk/pgedit/PGEditCropView;->minRect:I
invoke-static {v3}, Lus/pinguo/androidsdk/pgedit/PGEditCropView;->access$24(Lus/pinguo/androidsdk/pgedit/PGEditCropView;)I
move-result v3
sub-int/2addr v2, v3
iput v2, v1, Landroid/graphics/Rect;->top:I
goto/16 :goto_43
.end method