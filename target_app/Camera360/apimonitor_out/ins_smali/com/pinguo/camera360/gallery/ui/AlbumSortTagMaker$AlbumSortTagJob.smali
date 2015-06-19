.class  Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;
.super Ljava/lang/Object;
.source "AlbumSortTagMaker.java"
.implements Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;
.field private mShowYear:Z
.field private mTagDate:Ljava/lang/String;
.field private mTagDay:Ljava/lang/String;
.field private mTagMoth:Ljava/lang/String;
.field private mTagYear:Ljava/lang/String;
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
.method public constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;Ljava/lang/String;Z)V
.registers 6
const/4 v1, 0x0
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->mShowYear:Z
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->mTagYear:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->mTagMoth:Ljava/lang/String;
const-string/jumbo v0, ""
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->mTagDay:Ljava/lang/String;
iput-boolean p3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->mShowYear:Z
if-eqz p2, :cond_32
invoke-virtual {p2}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_32
if-eqz p3, :cond_33
const/4 v0, 0x4
invoke-virtual {p2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->mTagYear:Ljava/lang/String;
:goto_2a
const/16 v0, 0xb
invoke-virtual {p2, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->mTagDate:Ljava/lang/String;
:cond_32
return-void
:cond_33
const/4 v0, 0x5
const/4 v1, 0x7
invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->mTagMoth:Ljava/lang/String;
const/16 v0, 0x8
const/16 v1, 0xa
invoke-virtual {p2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->mTagDay:Ljava/lang/String;
goto :goto_2a
.end method
.method public run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
.registers 17
monitor-enter p0
:try_start_1
iget-object v11, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mSortTagWidth:I
invoke-static {v11}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)I
move-result v8
iget-object v11, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mSortTagHeight:I
invoke-static {v11}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->access$2(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)I
move-result v7
iget-object v11, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mBitmapPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
invoke-static {v11}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->access$3(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Lcom/pinguo/camera360/gallery/data/BitmapPool;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->getBitmap()Landroid/graphics/Bitmap;
move-result-object v0
monitor-exit p0
:try_end_18
.catchall {:try_start_1 .. :try_end_18} :catchall_56
if-nez v0, :cond_25
const/4 v1, 0x4
add-int v11, v8, v1
add-int v12, v7, v1
sget-object v13, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v11, v12, v13}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
:cond_25
new-instance v2, Landroid/graphics/Canvas;
invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
const/4 v11, 0x2
const/4 v12, 0x2
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v13
add-int/lit8 v13, v13, -0x2
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v14
add-int/lit8 v14, v14, -0x2
invoke-virtual {v2, v11, v12, v13, v14}, Landroid/graphics/Canvas;->clipRect(IIII)Z
const/high16 v11, 0x4000
const/high16 v12, 0x4000
invoke-virtual {v2, v11, v12}, Landroid/graphics/Canvas;->translate(FF)V
const/4 v11, 0x0
sget-object v12, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;
invoke-virtual {v2, v11, v12}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V
const/4 v9, 0x0
const/4 v10, 0x0
iget-boolean v11, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->mShowYear:Z
if-nez v11, :cond_112
invoke-interface/range {p1 .. p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->isCancelled()Z
move-result v11
if-eqz v11, :cond_59
const/4 v0, 0x0
:goto_55
return-object v0
:catchall_56
move-exception v11
:try_start_57
monitor-exit p0
:try_end_58
.catchall {:try_start_57 .. :try_end_58} :catchall_56
throw v11
:cond_59
invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I
iget-object v11, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mDateBg:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;
invoke-static {v11}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;
move-result-object v11
const/4 v12, 0x0
const/4 v13, 0x0
const/4 v14, 0x0
invoke-virtual {v2, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V
new-instance v4, Landroid/graphics/Paint;
invoke-direct {v4}, Landroid/graphics/Paint;-><init>()V
div-int/lit8 v9, v7, 0x18
div-int/lit8 v11, v7, 0x2
div-int/lit8 v12, v7, 0xc
sub-int v10, v11, v12
iget-object v11, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mDayPaint:Landroid/text/TextPaint;
invoke-static {v11}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->access$5(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Landroid/text/TextPaint;
move-result-object v11
sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;
invoke-virtual {v11, v12}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V
iget-object v11, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->mTagDay:Ljava/lang/String;
int-to-float v12, v9
int-to-float v13, v10
iget-object v14, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mDayPaint:Landroid/text/TextPaint;
invoke-static {v14}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->access$5(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Landroid/text/TextPaint;
move-result-object v14
invoke-virtual {v2, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
invoke-interface/range {p1 .. p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->isCancelled()Z
move-result v11
if-eqz v11, :cond_9c
const/4 v0, 0x0
goto :goto_55
:cond_9c
invoke-virtual {v2}, Landroid/graphics/Canvas;->save()I
div-int/lit8 v11, v7, 0x3
add-int/lit8 v9, v11, -0x3
div-int/lit8 v11, v7, 0x4
add-int/2addr v10, v11
iget-object v11, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mMonthPaint:Landroid/text/TextPaint;
invoke-static {v11}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->access$6(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Landroid/text/TextPaint;
move-result-object v11
sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;
invoke-virtual {v11, v12}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V
iget-object v11, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->mTagMoth:Ljava/lang/String;
int-to-float v12, v9
int-to-float v13, v10
iget-object v14, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mMonthPaint:Landroid/text/TextPaint;
invoke-static {v14}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->access$6(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Landroid/text/TextPaint;
move-result-object v14
invoke-virtual {v2, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
iget-object v11, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mDateCover:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;
invoke-static {v11}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->access$7(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;
move-result-object v11
invoke-virtual {v11}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;->get()Landroid/graphics/Bitmap;
move-result-object v11
const/4 v12, 0x0
const/4 v13, 0x0
const/4 v14, 0x0
invoke-virtual {v2, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
invoke-virtual {v2}, Landroid/graphics/Canvas;->restore()V
invoke-interface/range {p1 .. p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->isCancelled()Z
move-result v11
if-eqz v11, :cond_da
const/4 v0, 0x0
goto/16 :goto_55
:cond_da
iget-object v11, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mDatePaint:Landroid/text/TextPaint;
invoke-static {v11}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->access$8(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Landroid/text/TextPaint;
move-result-object v11
invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
move-result-object v3
mul-int/lit8 v11, v7, 0x3
div-int/lit8 v9, v11, 0x4
iget v11, v3, Landroid/graphics/Paint$FontMetricsInt;->descent:I
iget v12, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I
sub-int/2addr v11, v12
sub-int v11, v7, v11
div-int/lit8 v11, v11, 0x2
iget v12, v3, Landroid/graphics/Paint$FontMetricsInt;->leading:I
add-int/2addr v11, v12
iget v12, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I
sub-int v10, v11, v12
iget-object v11, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mDatePaint:Landroid/text/TextPaint;
invoke-static {v11}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->access$8(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Landroid/text/TextPaint;
move-result-object v11
sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;
invoke-virtual {v11, v12}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V
iget-object v11, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->mTagDate:Ljava/lang/String;
int-to-float v12, v9
int-to-float v13, v10
iget-object v14, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mDatePaint:Landroid/text/TextPaint;
invoke-static {v14}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->access$8(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Landroid/text/TextPaint;
move-result-object v14
invoke-virtual {v2, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
goto/16 :goto_55
:cond_112
div-int/lit8 v9, v8, 0x2
div-int/lit8 v10, v7, 0x2
new-instance v6, Landroid/graphics/Paint;
invoke-direct {v6}, Landroid/graphics/Paint;-><init>()V
const/4 v11, 0x1
invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setAntiAlias(Z)V
const/4 v11, 0x1
invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setDither(Z)V
const v11, -0x34302e
invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setColor(I)V
sget-object v11, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;
invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
sget-object v11, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;
invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeJoin(Landroid/graphics/Paint$Join;)V
sget-object v11, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;
invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeCap(Landroid/graphics/Paint$Cap;)V
iget-object v11, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mYearBGHeight:I
invoke-static {v11}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->access$9(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)I
move-result v11
int-to-float v11, v11
invoke-virtual {v6, v11}, Landroid/graphics/Paint;->setStrokeWidth(F)V
new-instance v5, Landroid/graphics/Path;
invoke-direct {v5}, Landroid/graphics/Path;-><init>()V
int-to-float v11, v9
int-to-float v12, v10
invoke-virtual {v5, v11, v12}, Landroid/graphics/Path;->moveTo(FF)V
int-to-float v11, v9
iget-object v12, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mYearPaint:Landroid/text/TextPaint;
invoke-static {v12}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->access$10(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Landroid/text/TextPaint;
move-result-object v12
iget-object v13, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->mTagYear:Ljava/lang/String;
invoke-virtual {v12, v13}, Landroid/text/TextPaint;->measureText(Ljava/lang/String;)F
move-result v12
add-float/2addr v11, v12
int-to-float v12, v10
invoke-virtual {v5, v11, v12}, Landroid/graphics/Path;->lineTo(FF)V
invoke-virtual {v2, v5, v6}, Landroid/graphics/Canvas;->drawPath(Landroid/graphics/Path;Landroid/graphics/Paint;)V
invoke-interface/range {p1 .. p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->isCancelled()Z
move-result v11
if-eqz v11, :cond_16a
const/4 v0, 0x0
goto/16 :goto_55
:cond_16a
iget-object v11, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mYearPaint:Landroid/text/TextPaint;
invoke-static {v11}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->access$10(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Landroid/text/TextPaint;
move-result-object v11
sget-object v12, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;
invoke-virtual {v11, v12}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V
iget-object v11, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mDayPaint:Landroid/text/TextPaint;
invoke-static {v11}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->access$5(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Landroid/text/TextPaint;
move-result-object v11
invoke-virtual {v11}, Landroid/text/TextPaint;->getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
move-result-object v3
iget v11, v3, Landroid/graphics/Paint$FontMetricsInt;->leading:I
iget v12, v3, Landroid/graphics/Paint$FontMetricsInt;->ascent:I
sub-int/2addr v11, v12
div-int/lit8 v11, v11, 0x2
add-int/2addr v10, v11
iget-object v11, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->mTagYear:Ljava/lang/String;
int-to-float v12, v9
int-to-float v13, v10
iget-object v14, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
#getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mYearPaint:Landroid/text/TextPaint;
invoke-static {v14}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->access$10(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Landroid/text/TextPaint;
move-result-object v14
invoke-virtual {v2, v11, v12, v13, v14}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V
goto/16 :goto_55
.end method
.method public bridge synthetic run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$AlbumSortTagJob;->run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method