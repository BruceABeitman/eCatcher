.class  Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
.super Lcom/pinguo/camera360/gallery/ui/UploadedTexture;
.source "TileImageView.java"
.field public mDecodedTile:Landroid/graphics/Bitmap;
.field public mNext:Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
.field public mTileLevel:I
.field public volatile mTileState:I
.field public mX:I
.field public mY:I
.field final synthetic this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;
.method public constructor <init>(Lcom/pinguo/camera360/gallery/ui/TileImageView;III)V
.registers 6
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/UploadedTexture;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileState:I
iput p2, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mX:I
iput p3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mY:I
iput p4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileLevel:I
return-void
.end method
.method  decode()Z
.registers 10
const/4 v8, 0x0
:try_start_1
const-string/jumbo v0, "TileImageView"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "decode tile mX ="
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget v2, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mX:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "mY = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget v2, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mY:I
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;
#getter for: Lcom/pinguo/camera360/gallery/ui/TileImageView;->mModel:Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;
invoke-static {v0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->access$2(Lcom/pinguo/camera360/gallery/ui/TileImageView;)Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;
move-result-object v0
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileLevel:I
iget v2, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mX:I
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mY:I
const/16 v4, 0x100
const/4 v5, 0x0
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->access$1()Lcom/pinguo/camera360/gallery/data/BitmapPool;
move-result-object v6
invoke-interface/range {v0 .. v6}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;->getTile(IIIIILcom/pinguo/camera360/gallery/data/BitmapPool;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/gallery/data/DecodeUtils;->ensureGLCompatibleBitmap(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
:goto_43
:try_end_43
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_43} :catch_49
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
if-eqz v0, :cond_54
const/4 v0, 0x1
:goto_48
return v0
:catch_49
move-exception v7
const-string/jumbo v0, "TileImageView"
const-string/jumbo v1, "fail to decode tile"
invoke-static {v0, v1, v7}, Lcom/pinguo/camera360/gallery/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_43
:cond_54
move v0, v8
goto :goto_48
.end method
.method public getParentTile()Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
.registers 6
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileLevel:I
add-int/lit8 v3, v3, 0x1
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;
iget v4, v4, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevelCount:I
if-ne v3, v4, :cond_c
const/4 v3, 0x0
:goto_b
return-object v3
:cond_c
const/16 v3, 0x100
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileLevel:I
add-int/lit8 v4, v4, 0x1
shl-int v0, v3, v4
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mX:I
div-int/2addr v3, v0
mul-int v1, v0, v3
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mY:I
div-int/2addr v3, v0
mul-int v2, v0, v3
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileLevel:I
add-int/lit8 v4, v4, 0x1
#calls: Lcom/pinguo/camera360/gallery/ui/TileImageView;->getTile(III)Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
invoke-static {v3, v1, v2, v4}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->access$3(Lcom/pinguo/camera360/gallery/ui/TileImageView;III)Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
move-result-object v3
goto :goto_b
.end method
.method public getTextureHeight()I
.registers 2
const/16 v0, 0x100
return v0
.end method
.method public getTextureWidth()I
.registers 2
const/16 v0, 0x100
return v0
.end method
.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
.registers 3
invoke-static {}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->access$1()Lcom/pinguo/camera360/gallery/data/BitmapPool;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V
return-void
.end method
.method protected onGetBitmap()Landroid/graphics/Bitmap;
.registers 8
const/16 v6, 0x100
const/4 v4, 0x1
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileState:I
const/16 v5, 0x8
if-ne v3, v5, :cond_3e
move v3, v4
:goto_a
invoke-static {v3}, Lcom/pinguo/camera360/gallery/util/Utils;->assertTrue(Z)V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;
iget v3, v3, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageWidth:I
iget v5, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mX:I
sub-int/2addr v3, v5
iget v5, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileLevel:I
shr-int/2addr v3, v5
add-int/lit8 v2, v3, 0x0
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;
iget v3, v3, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageHeight:I
iget v5, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mY:I
sub-int/2addr v3, v5
iget v5, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileLevel:I
shr-int/2addr v3, v5
add-int/lit8 v1, v3, 0x0
if-gtz v2, :cond_28
const/4 v2, 0x1
:cond_28
if-gtz v1, :cond_2b
const/4 v1, 0x1
:cond_2b
invoke-static {v6, v2}, Ljava/lang/Math;->min(II)I
move-result v3
invoke-static {v6, v1}, Ljava/lang/Math;->min(II)I
move-result v5
invoke-virtual {p0, v3, v5}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->setSize(II)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
const/4 v3, 0x0
iput-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
iput v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileState:I
return-object v0
:cond_3e
const/4 v3, 0x0
goto :goto_a
.end method
.method public toString()Ljava/lang/String;
.registers 5
const-string/jumbo v0, "tile(%s, %s, %s / %s)"
const/4 v1, 0x4
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mX:I
div-int/lit16 v3, v3, 0x100
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mY:I
div-int/lit16 v3, v3, 0x100
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x2
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;
#getter for: Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevel:I
invoke-static {v3}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->access$4(Lcom/pinguo/camera360/gallery/ui/TileImageView;)I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x3
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->this$0:Lcom/pinguo/camera360/gallery/ui/TileImageView;
iget v3, v3, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevelCount:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public update(III)V
.registers 4
iput p1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mX:I
iput p2, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mY:I
iput p3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileLevel:I
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->invalidateContent()V
return-void
.end method