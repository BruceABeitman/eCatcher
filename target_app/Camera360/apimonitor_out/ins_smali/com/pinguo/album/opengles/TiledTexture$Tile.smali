.class  Lcom/pinguo/album/opengles/TiledTexture$Tile;
.super Lcom/pinguo/album/opengles/UploadedTexture;
.source "TiledTexture.java"
.field public bitmap:Landroid/graphics/Bitmap;
.field public contentHeight:I
.field public contentWidth:I
.field public nextFreeTile:Lcom/pinguo/album/opengles/TiledTexture$Tile;
.field public offsetX:I
.field public offsetY:I
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/pinguo/album/opengles/UploadedTexture;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/pinguo/album/opengles/TiledTexture$Tile;)V
.registers 2
invoke-direct {p0}, Lcom/pinguo/album/opengles/TiledTexture$Tile;-><init>()V
return-void
.end method
.method protected onFreeBitmap(Landroid/graphics/Bitmap;)V
.registers 2
return-void
.end method
.method protected onGetBitmap()Landroid/graphics/Bitmap;
.registers 14
const/16 v12, 0xfe
const/high16 v4, 0x4380
const/4 v2, 0x0
iget-object v8, p0, Lcom/pinguo/album/opengles/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/album/opengles/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;
if-eqz v8, :cond_72
iget v0, p0, Lcom/pinguo/album/opengles/TiledTexture$Tile;->offsetX:I
rsub-int/lit8 v10, v0, 0x1
iget v0, p0, Lcom/pinguo/album/opengles/TiledTexture$Tile;->offsetY:I
rsub-int/lit8 v11, v0, 0x1
invoke-virtual {v8}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
add-int v9, v0, v10
invoke-virtual {v8}, Landroid/graphics/Bitmap;->getHeight()I
move-result v0
add-int v7, v0, v11
invoke-static {}, Lcom/pinguo/album/opengles/TiledTexture;->access$0()Landroid/graphics/Canvas;
move-result-object v0
int-to-float v1, v10
int-to-float v3, v11
invoke-static {}, Lcom/pinguo/album/opengles/TiledTexture;->access$1()Landroid/graphics/Paint;
move-result-object v5
invoke-virtual {v0, v8, v1, v3, v5}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;FFLandroid/graphics/Paint;)V
const/4 v8, 0x0
if-lez v10, :cond_41
invoke-static {}, Lcom/pinguo/album/opengles/TiledTexture;->access$0()Landroid/graphics/Canvas;
move-result-object v0
add-int/lit8 v1, v10, -0x1
int-to-float v1, v1
add-int/lit8 v3, v10, -0x1
int-to-float v3, v3
invoke-static {}, Lcom/pinguo/album/opengles/TiledTexture;->access$2()Landroid/graphics/Paint;
move-result-object v5
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
:cond_41
if-lez v11, :cond_54
invoke-static {}, Lcom/pinguo/album/opengles/TiledTexture;->access$0()Landroid/graphics/Canvas;
move-result-object v1
add-int/lit8 v0, v11, -0x1
int-to-float v3, v0
add-int/lit8 v0, v11, -0x1
int-to-float v5, v0
invoke-static {}, Lcom/pinguo/album/opengles/TiledTexture;->access$2()Landroid/graphics/Paint;
move-result-object v6
invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
:cond_54
if-ge v9, v12, :cond_63
invoke-static {}, Lcom/pinguo/album/opengles/TiledTexture;->access$0()Landroid/graphics/Canvas;
move-result-object v0
int-to-float v1, v9
int-to-float v3, v9
invoke-static {}, Lcom/pinguo/album/opengles/TiledTexture;->access$2()Landroid/graphics/Paint;
move-result-object v5
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
:cond_63
if-ge v7, v12, :cond_72
invoke-static {}, Lcom/pinguo/album/opengles/TiledTexture;->access$0()Landroid/graphics/Canvas;
move-result-object v1
int-to-float v3, v7
int-to-float v5, v7
invoke-static {}, Lcom/pinguo/album/opengles/TiledTexture;->access$2()Landroid/graphics/Paint;
move-result-object v6
invoke-virtual/range {v1 .. v6}, Landroid/graphics/Canvas;->drawLine(FFFFLandroid/graphics/Paint;)V
:cond_72
invoke-static {}, Lcom/pinguo/album/opengles/TiledTexture;->access$3()Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method public setSize(II)V
.registers 5
const/16 v1, 0x100
iput p1, p0, Lcom/pinguo/album/opengles/TiledTexture$Tile;->contentWidth:I
iput p2, p0, Lcom/pinguo/album/opengles/TiledTexture$Tile;->contentHeight:I
add-int/lit8 v0, p1, 0x2
iput v0, p0, Lcom/pinguo/album/opengles/TiledTexture$Tile;->mWidth:I
add-int/lit8 v0, p2, 0x2
iput v0, p0, Lcom/pinguo/album/opengles/TiledTexture$Tile;->mHeight:I
iput v1, p0, Lcom/pinguo/album/opengles/TiledTexture$Tile;->mTextureWidth:I
iput v1, p0, Lcom/pinguo/album/opengles/TiledTexture$Tile;->mTextureHeight:I
return-void
.end method