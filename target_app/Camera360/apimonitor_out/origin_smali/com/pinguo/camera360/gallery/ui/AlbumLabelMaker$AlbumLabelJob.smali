.class Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;
.super Ljava/lang/Object;
.source "AlbumLabelMaker.java"

# interfaces
.implements Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AlbumLabelJob"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/pinguo/camera360/gallery/util/ThreadPool$Job",
        "<",
        "Landroid/graphics/Bitmap;",
        ">;"
    }
.end annotation


# instance fields
.field private mCount:Ljava/lang/String;

.field private mTitle:Ljava/lang/String;

.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    iput-object p3, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;
    .registers 14

    const/4 v6, 0x0

    const/4 v11, 0x1

    const/high16 v10, 0x3f80

    monitor-enter p0

    :try_start_5
    iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mLabelWidth:I
    invoke-static {v7}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)I

    move-result v3

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mBitmapPool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
    invoke-static {v7}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->access$1(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)Lcom/pinguo/camera360/gallery/data/BitmapPool;

    move-result-object v7

    invoke-virtual {v7}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    monitor-exit p0
    :try_end_16
    .catchall {:try_start_5 .. :try_end_16} :catchall_4d

    if-nez v0, :cond_28

    const/4 v1, 0x2

    add-int v7, v3, v1

    iget-object v8, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mLabelHeight:I
    invoke-static {v8}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->access$2(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)I

    move-result v8

    add-int/2addr v8, v1

    sget-object v9, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v7, v8, v9}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    :cond_28
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    add-int/lit8 v8, v8, -0x1

    invoke-virtual {v2, v11, v11, v7, v8}, Landroid/graphics/Canvas;->clipRect(IIII)Z

    const/4 v7, 0x0

    sget-object v8, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;

    invoke-virtual {v2, v7, v8}, Landroid/graphics/Canvas;->drawColor(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v2, v10, v10}, Landroid/graphics/Canvas;->translate(FF)V

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_50

    move-object v0, v6

    :goto_4c
    return-object v0

    :catchall_4d
    move-exception v6

    :try_start_4e
    monitor-exit p0
    :try_end_4f
    .catchall {:try_start_4e .. :try_end_4f} :catchall_4d

    throw v6

    :cond_50
    iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mLabelWidth:I
    invoke-static {v7}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)I

    move-result v7

    iget-object v8, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
    invoke-static {v8}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->access$3(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    move-result-object v8

    iget v8, v8, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->titleOffset:I

    sub-int/2addr v7, v8

    div-int/lit8 v4, v7, 0x2

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mLabelHeight:I
    invoke-static {v7}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->access$2(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)I

    move-result v7

    iget-object v8, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
    invoke-static {v8}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->access$3(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    move-result-object v8

    iget v8, v8, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->labelHeight:I

    mul-int/lit8 v8, v8, 0x2

    div-int/lit8 v8, v8, 0x3

    sub-int v5, v7, v8

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;
    invoke-static {v7}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v7

    sget-object v8, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v7, v8}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    iget-object v8, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;
    invoke-static {v8}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v8

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mLabelWidth:I
    invoke-static {v9}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)I

    move-result v9

    int-to-float v9, v9

    sget-object v10, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v7, v8, v9, v10}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-interface {v7}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->mTitle:Ljava/lang/String;

    int-to-float v8, v4

    int-to-float v9, v5

    iget-object v10, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mTitlePaint:Landroid/text/TextPaint;
    invoke-static {v10}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->access$4(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v10

    invoke-virtual {v2, v7, v8, v9, v10}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    invoke-interface {p1}, Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;->isCancelled()Z

    move-result v7

    if-eqz v7, :cond_b0

    move-object v0, v6

    goto :goto_4c

    :cond_b0
    iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mLabelWidth:I
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)I

    move-result v6

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
    invoke-static {v7}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->access$3(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    move-result-object v7

    iget v7, v7, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->countOffset:I

    sub-int/2addr v6, v7

    div-int/lit8 v4, v6, 0x2

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mLabelHeight:I
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->access$2(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)I

    move-result v6

    div-int/lit8 v6, v6, 0x2

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mSpec:Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;
    invoke-static {v7}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->access$3(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;

    move-result-object v7

    iget v7, v7, Lcom/pinguo/camera360/gallery/ui/AlbumSetSlotRenderer$LabelSpec;->countOffset:I

    add-int v5, v6, v7

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mCountPaint:Landroid/text/TextPaint;
    invoke-static {v6}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->access$5(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v6

    sget-object v7, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v6, v7}, Landroid/text/TextPaint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    iget-object v7, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mCountPaint:Landroid/text/TextPaint;
    invoke-static {v7}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->access$5(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v7

    iget-object v8, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mLabelWidth:I
    invoke-static {v8}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)I

    move-result v8

    int-to-float v8, v8

    sget-object v9, Landroid/text/TextUtils$TruncateAt;->END:Landroid/text/TextUtils$TruncateAt;

    invoke-static {v6, v7, v8, v9}, Landroid/text/TextUtils;->ellipsize(Ljava/lang/CharSequence;Landroid/text/TextPaint;FLandroid/text/TextUtils$TruncateAt;)Ljava/lang/CharSequence;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v6

    iput-object v6, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->mCount:Ljava/lang/String;

    int-to-float v7, v4

    int-to-float v8, v5

    iget-object v9, p0, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->mCountPaint:Landroid/text/TextPaint;
    invoke-static {v9}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;->access$5(Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker;)Landroid/text/TextPaint;

    move-result-object v9

    invoke-virtual {v2, v6, v7, v8, v9}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto/16 :goto_4c
.end method

.method public bridge synthetic run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/gallery/ui/AlbumLabelMaker$AlbumLabelJob;->run(Lcom/pinguo/camera360/gallery/util/ThreadPool$JobContext;)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method
