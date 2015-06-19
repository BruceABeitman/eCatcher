.class Lcom/pinguo/album/views/TileImageView$Tile;
.super Lcom/pinguo/album/opengles/UploadedTexture;
.source "TileImageView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/pinguo/album/views/TileImageView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "Tile"
.end annotation


# instance fields
.field public mDecodedTile:Landroid/graphics/Bitmap;

.field public mNext:Lcom/pinguo/album/views/TileImageView$Tile;

.field public mTileLevel:I

.field public volatile mTileState:I

.field public mX:I

.field public mY:I

.field final synthetic this$0:Lcom/pinguo/album/views/TileImageView;


# direct methods
.method public constructor <init>(Lcom/pinguo/album/views/TileImageView;III)V
    .registers 6

    iput-object p1, p0, Lcom/pinguo/album/views/TileImageView$Tile;->this$0:Lcom/pinguo/album/views/TileImageView;

    invoke-direct {p0}, Lcom/pinguo/album/opengles/UploadedTexture;-><init>()V

    const/4 v0, 0x1

    iput v0, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mTileState:I

    iput p2, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mX:I

    iput p3, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mY:I

    iput p4, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mTileLevel:I

    return-void
.end method


# virtual methods
.method decode()Z
    .registers 7

    :try_start_0
    iget-object v1, p0, Lcom/pinguo/album/views/TileImageView$Tile;->this$0:Lcom/pinguo/album/views/TileImageView;

    #getter for: Lcom/pinguo/album/views/TileImageView;->mModel:Lcom/pinguo/album/views/TileImageView$TileSource;
    invoke-static {v1}, Lcom/pinguo/album/views/TileImageView;->access$1(Lcom/pinguo/album/views/TileImageView;)Lcom/pinguo/album/views/TileImageView$TileSource;

    move-result-object v1

    iget v2, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mTileLevel:I

    iget v3, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mX:I

    iget v4, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mY:I

    invoke-static {}, Lcom/pinguo/album/views/TileImageView;->access$2()I

    move-result v5

    invoke-interface {v1, v2, v3, v4, v5}, Lcom/pinguo/album/views/TileImageView$TileSource;->getTile(IIII)Landroid/graphics/Bitmap;

    move-result-object v1

    invoke-static {v1}, Lcom/pinguo/album/data/utils/BitmapDecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v1

    iput-object v1, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_1a} :catch_20

    :goto_1a
    iget-object v1, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_2b

    const/4 v1, 0x1

    :goto_1f
    return v1

    :catch_20
    move-exception v0

    const-string/jumbo v1, "TileImageView"

    const-string/jumbo v2, "fail to decode tile"

    invoke-static {v1, v2, v0}, Lcom/pinguo/album/common/PGLog;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_1a

    :cond_2b
    const/4 v1, 0x0

    goto :goto_1f
.end method

.method public getParentTile()Lcom/pinguo/album/views/TileImageView$Tile;
    .registers 6

    iget v3, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v3, v3, 0x1

    iget-object v4, p0, Lcom/pinguo/album/views/TileImageView$Tile;->this$0:Lcom/pinguo/album/views/TileImageView;

    iget v4, v4, Lcom/pinguo/album/views/TileImageView;->mLevelCount:I

    if-ne v3, v4, :cond_c

    const/4 v3, 0x0

    :goto_b
    return-object v3

    :cond_c
    invoke-static {}, Lcom/pinguo/album/views/TileImageView;->access$2()I

    move-result v3

    iget v4, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    shl-int v0, v3, v4

    iget v3, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mX:I

    div-int/2addr v3, v0

    mul-int v1, v0, v3

    iget v3, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mY:I

    div-int/2addr v3, v0

    mul-int v2, v0, v3

    iget-object v3, p0, Lcom/pinguo/album/views/TileImageView$Tile;->this$0:Lcom/pinguo/album/views/TileImageView;

    iget v4, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mTileLevel:I

    add-int/lit8 v4, v4, 0x1

    #calls: Lcom/pinguo/album/views/TileImageView;->getTile(III)Lcom/pinguo/album/views/TileImageView$Tile;
    invoke-static {v3, v1, v2, v4}, Lcom/pinguo/album/views/TileImageView;->access$3(Lcom/pinguo/album/views/TileImageView;III)Lcom/pinguo/album/views/TileImageView$Tile;

    move-result-object v3

    goto :goto_b
.end method

.method public getTextureHeight()I
    .registers 2

    invoke-static {}, Lcom/pinguo/album/views/TileImageView;->access$2()I

    move-result v0

    return v0
.end method

.method public getTextureWidth()I
    .registers 2

    invoke-static {}, Lcom/pinguo/album/views/TileImageView;->access$2()I

    move-result v0

    return v0
.end method

.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
    .registers 3

    invoke-static {}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getInstance()Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->put(Landroid/graphics/Bitmap;)Z

    return-void
.end method

.method protected onGetBitmap()Landroid/graphics/Bitmap;
    .registers 7

    const/4 v4, 0x1

    iget v3, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mTileState:I

    const/16 v5, 0x8

    if-ne v3, v5, :cond_3c

    move v3, v4

    :goto_8
    invoke-static {v3}, Lcom/pinguo/album/utils/Utils;->assertTrue(Z)V

    iget-object v3, p0, Lcom/pinguo/album/views/TileImageView$Tile;->this$0:Lcom/pinguo/album/views/TileImageView;

    iget v3, v3, Lcom/pinguo/album/views/TileImageView;->mImageWidth:I

    iget v5, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mX:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mTileLevel:I

    shr-int v2, v3, v5

    iget-object v3, p0, Lcom/pinguo/album/views/TileImageView$Tile;->this$0:Lcom/pinguo/album/views/TileImageView;

    iget v3, v3, Lcom/pinguo/album/views/TileImageView;->mImageHeight:I

    iget v5, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mY:I

    sub-int/2addr v3, v5

    iget v5, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mTileLevel:I

    shr-int v1, v3, v5

    invoke-static {}, Lcom/pinguo/album/views/TileImageView;->access$2()I

    move-result v3

    invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I

    move-result v3

    invoke-static {}, Lcom/pinguo/album/views/TileImageView;->access$2()I

    move-result v5

    invoke-static {v5, v1}, Ljava/lang/Math;->min(II)I

    move-result v5

    invoke-virtual {p0, v3, v5}, Lcom/pinguo/album/views/TileImageView$Tile;->setSize(II)V

    iget-object v0, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    const/4 v3, 0x0

    iput-object v3, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;

    iput v4, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mTileState:I

    return-object v0

    :cond_3c
    const/4 v3, 0x0

    goto :goto_8
.end method

.method public toString()Ljava/lang/String;
    .registers 6

    const-string/jumbo v0, "tile(%s, %s, %s / %s)"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mX:I

    invoke-static {}, Lcom/pinguo/album/views/TileImageView;->access$2()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mY:I

    invoke-static {}, Lcom/pinguo/album/views/TileImageView;->access$2()I

    move-result v4

    div-int/2addr v3, v4

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    iget-object v3, p0, Lcom/pinguo/album/views/TileImageView$Tile;->this$0:Lcom/pinguo/album/views/TileImageView;

    #getter for: Lcom/pinguo/album/views/TileImageView;->mLevel:I
    invoke-static {v3}, Lcom/pinguo/album/views/TileImageView;->access$4(Lcom/pinguo/album/views/TileImageView;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    iget-object v3, p0, Lcom/pinguo/album/views/TileImageView$Tile;->this$0:Lcom/pinguo/album/views/TileImageView;

    iget v3, v3, Lcom/pinguo/album/views/TileImageView;->mLevelCount:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public update(III)V
    .registers 4

    iput p1, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mX:I

    iput p2, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mY:I

    iput p3, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mTileLevel:I

    invoke-virtual {p0}, Lcom/pinguo/album/views/TileImageView$Tile;->invalidateContent()V

    return-void
.end method
