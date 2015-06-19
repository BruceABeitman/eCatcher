.class public Lcom/pinguo/album/views/ViewConfigs$AlbumPage;
.super Ljava/lang/Object;
.source "ViewConfigs.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/ViewConfigs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AlbumPage"
.end annotation


# static fields
.field private static sInstance:Lcom/pinguo/album/views/ViewConfigs$AlbumPage;


# instance fields
.field public albumSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;

.field public paddingLeft:I

.field public paddingRight:I

.field public placeholderColor:I

.field public sortTagSpec:Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;


# direct methods
.method private constructor <init>(Landroid/content/Context;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x7f070012

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v1

    iput v1, p0, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->placeholderColor:I

    new-instance v1, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;

    invoke-direct {v1}, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;-><init>()V

    iput-object v1, p0, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->albumSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;

    iget-object v1, p0, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->albumSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;

    const/high16 v2, 0x7f0c

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->rowsLand:I

    iget-object v1, p0, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->albumSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;

    const v2, 0x7f0c0001

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->rowsPort:I

    iget-object v1, p0, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->albumSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;

    const v2, 0x7f0b000b

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->thumbnailGap:I

    iget-object v1, p0, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->albumSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;

    const v2, 0x7f0b000f

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->labelHeight:I

    iget-object v1, p0, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->albumSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;

    const v2, 0x7f0b0005

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->header_bar_height:I

    iget-object v1, p0, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->albumSpec:Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;

    const v2, 0x7f0b000e

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/album/views/layout/ThumbnailLayoutSpec;->footer_height:I

    const v1, 0x7f0b000c

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->paddingLeft:I

    const v1, 0x7f0b000d

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->paddingRight:I

    new-instance v1, Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;

    invoke-direct {v1}, Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;-><init>()V

    iput-object v1, p0, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->sortTagSpec:Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;

    iget-object v1, p0, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->sortTagSpec:Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;

    const v2, 0x7f0b0010

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;->yearFontSize:I

    iget-object v1, p0, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->sortTagSpec:Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;

    const v2, 0x7f0b0011

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;->labelFontSize:I

    iget-object v1, p0, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->sortTagSpec:Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;

    const v2, 0x7f0b0012

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    iput v2, v1, Lcom/pinguo/album/views/render/ThumbnailRenderer$SortTagSpec;->dividerHeight:I

    return-void
.end method

.method public static declared-synchronized get(Landroid/content/Context;)Lcom/pinguo/album/views/ViewConfigs$AlbumPage;
    .registers 3

    const-class v1, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->sInstance:Lcom/pinguo/album/views/ViewConfigs$AlbumPage;

    if-nez v0, :cond_e

    new-instance v0, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;

    invoke-direct {v0, p0}, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->sInstance:Lcom/pinguo/album/views/ViewConfigs$AlbumPage;

    :cond_e
    sget-object v0, Lcom/pinguo/album/views/ViewConfigs$AlbumPage;->sInstance:Lcom/pinguo/album/views/ViewConfigs$AlbumPage;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method
