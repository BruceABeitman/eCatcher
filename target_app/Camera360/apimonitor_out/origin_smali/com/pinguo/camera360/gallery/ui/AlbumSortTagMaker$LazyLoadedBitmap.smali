.class Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;
.super Ljava/lang/Object;
.source "AlbumSortTagMaker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LazyLoadedBitmap"
.end annotation


# instance fields
.field private mBitmap:Landroid/graphics/Bitmap;

.field private mResId:I

.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;


# direct methods
.method public constructor <init>(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;I)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;->mResId:I

    return-void
.end method


# virtual methods
.method public declared-synchronized get()Landroid/graphics/Bitmap;
    .registers 4

    monitor-enter p0

    :try_start_1
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    if-nez v1, :cond_20

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    sget-object v1, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inPreferredConfig:Landroid/graphics/Bitmap$Config;

    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;->this$0:Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;

    #getter for: Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;->access$0(Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iget v2, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;->mResId:I

    invoke-static {v1, v2, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;ILandroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;

    :cond_20
    iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/AlbumSortTagMaker$LazyLoadedBitmap;->mBitmap:Landroid/graphics/Bitmap;
    :try_end_22
    .catchall {:try_start_1 .. :try_end_22} :catchall_24

    monitor-exit p0

    return-object v1

    :catchall_24
    move-exception v1

    monitor-exit p0

    throw v1
.end method
