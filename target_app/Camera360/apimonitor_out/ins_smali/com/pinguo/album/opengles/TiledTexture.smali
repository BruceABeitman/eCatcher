.class public Lcom/pinguo/album/opengles/TiledTexture;
.super Ljava/lang/Object;
.source "TiledTexture.java"
.implements Lcom/pinguo/album/opengles/Texture;
.field private static final BORDER_SIZE:I = 0x1
.field private static final CONTENT_SIZE:I = 0xfe
.field private static final INIT_CAPACITY:I = 0x8
.field private static final TILE_SIZE:I = 0x100
.field private static final UPLOAD_TILE_LIMIT:J = 0x4L
.field private static sBitmapPaint:Landroid/graphics/Paint;
.field private static sCanvas:Landroid/graphics/Canvas;
.field private static sFreeTileHead:Lcom/pinguo/album/opengles/TiledTexture$Tile;
.field private static final sFreeTileLock:Ljava/lang/Object;
.field private static sPaint:Landroid/graphics/Paint;
.field private static sUploadBitmap:Landroid/graphics/Bitmap;
.field private final mDestRect:Landroid/graphics/RectF;
.field private final mHeight:I
.field private final mSrcRect:Landroid/graphics/RectF;
.field private final mTiles:[Lcom/pinguo/album/opengles/TiledTexture$Tile;
.field private mUploadIndex:I
.field private final mWidth:I
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/pinguo/album/opengles/TiledTexture;->sFreeTileHead:Lcom/pinguo/album/opengles/TiledTexture$Tile;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
sput-object v0, Lcom/pinguo/album/opengles/TiledTexture;->sFreeTileLock:Ljava/lang/Object;
return-void
.end method
.method public constructor <init>(Landroid/graphics/Bitmap;)V
.registers 11
const/16 v8, 0xfe
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v6, 0x0
iput v6, p0, Lcom/pinguo/album/opengles/TiledTexture;->mUploadIndex:I
new-instance v6, Landroid/graphics/RectF;
invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V
iput-object v6, p0, Lcom/pinguo/album/opengles/TiledTexture;->mSrcRect:Landroid/graphics/RectF;
new-instance v6, Landroid/graphics/RectF;
invoke-direct {v6}, Landroid/graphics/RectF;-><init>()V
iput-object v6, p0, Lcom/pinguo/album/opengles/TiledTexture;->mDestRect:Landroid/graphics/RectF;
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getWidth()I
move-result v6
iput v6, p0, Lcom/pinguo/album/opengles/TiledTexture;->mWidth:I
invoke-virtual {p1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v6
iput v6, p0, Lcom/pinguo/album/opengles/TiledTexture;->mHeight:I
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const/4 v4, 0x0
iget v3, p0, Lcom/pinguo/album/opengles/TiledTexture;->mWidth:I
:goto_2a
if-lt v4, v3, :cond_3b
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v6
new-array v6, v6, [Lcom/pinguo/album/opengles/TiledTexture$Tile;
invoke-virtual {v1, v6}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v6
check-cast v6, [Lcom/pinguo/album/opengles/TiledTexture$Tile;
iput-object v6, p0, Lcom/pinguo/album/opengles/TiledTexture;->mTiles:[Lcom/pinguo/album/opengles/TiledTexture$Tile;
return-void
:cond_3b
const/4 v5, 0x0
iget v0, p0, Lcom/pinguo/album/opengles/TiledTexture;->mHeight:I
:goto_3e
if-lt v5, v0, :cond_43
add-int/lit16 v4, v4, 0xfe
goto :goto_2a
:cond_43
invoke-static {}, Lcom/pinguo/album/opengles/TiledTexture;->obtainTile()Lcom/pinguo/album/opengles/TiledTexture$Tile;
move-result-object v2
iput v4, v2, Lcom/pinguo/album/opengles/TiledTexture$Tile;->offsetX:I
iput v5, v2, Lcom/pinguo/album/opengles/TiledTexture$Tile;->offsetY:I
iput-object p1, v2, Lcom/pinguo/album/opengles/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;
iget v6, p0, Lcom/pinguo/album/opengles/TiledTexture;->mWidth:I
sub-int/2addr v6, v4
invoke-static {v8, v6}, Ljava/lang/Math;->min(II)I
move-result v6
iget v7, p0, Lcom/pinguo/album/opengles/TiledTexture;->mHeight:I
sub-int/2addr v7, v5
invoke-static {v8, v7}, Ljava/lang/Math;->min(II)I
move-result v7
invoke-virtual {v2, v6, v7}, Lcom/pinguo/album/opengles/TiledTexture$Tile;->setSize(II)V
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit16 v5, v5, 0xfe
goto :goto_3e
.end method
.method static synthetic access$0()Landroid/graphics/Canvas;
.registers 1
sget-object v0, Lcom/pinguo/album/opengles/TiledTexture;->sCanvas:Landroid/graphics/Canvas;
return-object v0
.end method
.method static synthetic access$1()Landroid/graphics/Paint;
.registers 1
sget-object v0, Lcom/pinguo/album/opengles/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;
return-object v0
.end method
.method static synthetic access$2()Landroid/graphics/Paint;
.registers 1
sget-object v0, Lcom/pinguo/album/opengles/TiledTexture;->sPaint:Landroid/graphics/Paint;
return-object v0
.end method
.method static synthetic access$3()Landroid/graphics/Bitmap;
.registers 1
sget-object v0, Lcom/pinguo/album/opengles/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;
return-object v0
.end method
.method public static freeResources()V
.registers 1
const/4 v0, 0x0
sput-object v0, Lcom/pinguo/album/opengles/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;
sput-object v0, Lcom/pinguo/album/opengles/TiledTexture;->sCanvas:Landroid/graphics/Canvas;
sput-object v0, Lcom/pinguo/album/opengles/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;
sput-object v0, Lcom/pinguo/album/opengles/TiledTexture;->sPaint:Landroid/graphics/Paint;
return-void
.end method
.method private static freeTile(Lcom/pinguo/album/opengles/TiledTexture$Tile;)V
.registers 3
invoke-virtual {p0}, Lcom/pinguo/album/opengles/TiledTexture$Tile;->invalidateContent()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/album/opengles/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;
sget-object v1, Lcom/pinguo/album/opengles/TiledTexture;->sFreeTileLock:Ljava/lang/Object;
monitor-enter v1
:try_start_9
sget-object v0, Lcom/pinguo/album/opengles/TiledTexture;->sFreeTileHead:Lcom/pinguo/album/opengles/TiledTexture$Tile;
iput-object v0, p0, Lcom/pinguo/album/opengles/TiledTexture$Tile;->nextFreeTile:Lcom/pinguo/album/opengles/TiledTexture$Tile;
sput-object p0, Lcom/pinguo/album/opengles/TiledTexture;->sFreeTileHead:Lcom/pinguo/album/opengles/TiledTexture$Tile;
monitor-exit v1
return-void
:catchall_11
move-exception v0
monitor-exit v1
:try_end_13
.catchall {:try_start_9 .. :try_end_13} :catchall_11
throw v0
.end method
.method private static mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V
.registers 12
iget v0, p1, Landroid/graphics/RectF;->left:F
sub-float/2addr v0, p2
mul-float/2addr v0, p6
add-float/2addr v0, p4
iget v1, p1, Landroid/graphics/RectF;->top:F
sub-float/2addr v1, p3
mul-float/2addr v1, p7
add-float/2addr v1, p5
iget v2, p1, Landroid/graphics/RectF;->right:F
sub-float/2addr v2, p2
mul-float/2addr v2, p6
add-float/2addr v2, p4
iget v3, p1, Landroid/graphics/RectF;->bottom:F
sub-float/2addr v3, p3
mul-float/2addr v3, p7
add-float/2addr v3, p5
invoke-virtual {p0, v0, v1, v2, v3}, Landroid/graphics/RectF;->set(FFFF)V
return-void
.end method
.method private static obtainTile()Lcom/pinguo/album/opengles/TiledTexture$Tile;
.registers 3
sget-object v2, Lcom/pinguo/album/opengles/TiledTexture;->sFreeTileLock:Ljava/lang/Object;
monitor-enter v2
:try_start_3
sget-object v0, Lcom/pinguo/album/opengles/TiledTexture;->sFreeTileHead:Lcom/pinguo/album/opengles/TiledTexture$Tile;
if-nez v0, :cond_f
new-instance v0, Lcom/pinguo/album/opengles/TiledTexture$Tile;
const/4 v1, 0x0
invoke-direct {v0, v1}, Lcom/pinguo/album/opengles/TiledTexture$Tile;-><init>(Lcom/pinguo/album/opengles/TiledTexture$Tile;)V
monitor-exit v2
:goto_e
return-object v0
:cond_f
iget-object v1, v0, Lcom/pinguo/album/opengles/TiledTexture$Tile;->nextFreeTile:Lcom/pinguo/album/opengles/TiledTexture$Tile;
sput-object v1, Lcom/pinguo/album/opengles/TiledTexture;->sFreeTileHead:Lcom/pinguo/album/opengles/TiledTexture$Tile;
const/4 v1, 0x0
iput-object v1, v0, Lcom/pinguo/album/opengles/TiledTexture$Tile;->nextFreeTile:Lcom/pinguo/album/opengles/TiledTexture$Tile;
monitor-exit v2
goto :goto_e
:catchall_18
move-exception v1
monitor-exit v2
:try_end_1a
.catchall {:try_start_3 .. :try_end_1a} :catchall_18
throw v1
.end method
.method public static prepareResources()V
.registers 3
const/16 v1, 0x100
sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {v1, v1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
sput-object v0, Lcom/pinguo/album/opengles/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;
new-instance v0, Landroid/graphics/Canvas;
sget-object v1, Lcom/pinguo/album/opengles/TiledTexture;->sUploadBitmap:Landroid/graphics/Bitmap;
invoke-direct {v0, v1}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
sput-object v0, Lcom/pinguo/album/opengles/TiledTexture;->sCanvas:Landroid/graphics/Canvas;
new-instance v0, Landroid/graphics/Paint;
const/4 v1, 0x2
invoke-direct {v0, v1}, Landroid/graphics/Paint;-><init>(I)V
sput-object v0, Lcom/pinguo/album/opengles/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;
sget-object v0, Lcom/pinguo/album/opengles/TiledTexture;->sBitmapPaint:Landroid/graphics/Paint;
new-instance v1, Landroid/graphics/PorterDuffXfermode;
sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;
invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
sput-object v0, Lcom/pinguo/album/opengles/TiledTexture;->sPaint:Landroid/graphics/Paint;
sget-object v0, Lcom/pinguo/album/opengles/TiledTexture;->sPaint:Landroid/graphics/Paint;
new-instance v1, Landroid/graphics/PorterDuffXfermode;
sget-object v2, Landroid/graphics/PorterDuff$Mode;->SRC:Landroid/graphics/PorterDuff$Mode;
invoke-direct {v1, v2}, Landroid/graphics/PorterDuffXfermode;-><init>(Landroid/graphics/PorterDuff$Mode;)V
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
sget-object v0, Lcom/pinguo/album/opengles/TiledTexture;->sPaint:Landroid/graphics/Paint;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
return-void
.end method
.method public draw(Lcom/pinguo/album/opengles/GLESCanvas;II)V
.registers 10
iget v4, p0, Lcom/pinguo/album/opengles/TiledTexture;->mWidth:I
iget v5, p0, Lcom/pinguo/album/opengles/TiledTexture;->mHeight:I
move-object v0, p0
move-object v1, p1
move v2, p2
move v3, p3
invoke-virtual/range {v0 .. v5}, Lcom/pinguo/album/opengles/TiledTexture;->draw(Lcom/pinguo/album/opengles/GLESCanvas;IIII)V
return-void
.end method
.method public draw(Lcom/pinguo/album/opengles/GLESCanvas;IIII)V
.registers 19
iget-object v2, p0, Lcom/pinguo/album/opengles/TiledTexture;->mSrcRect:Landroid/graphics/RectF;
iget-object v1, p0, Lcom/pinguo/album/opengles/TiledTexture;->mDestRect:Landroid/graphics/RectF;
move/from16 v0, p4
int-to-float v3, v0
iget v4, p0, Lcom/pinguo/album/opengles/TiledTexture;->mWidth:I
int-to-float v4, v4
div-float v7, v3, v4
move/from16 v0, p5
int-to-float v3, v0
iget v4, p0, Lcom/pinguo/album/opengles/TiledTexture;->mHeight:I
int-to-float v4, v4
div-float v8, v3, v4
iget-object v12, p0, Lcom/pinguo/album/opengles/TiledTexture;->mTiles:[Lcom/pinguo/album/opengles/TiledTexture$Tile;
monitor-enter v12
const/4 v9, 0x0
:try_start_18
iget-object v3, p0, Lcom/pinguo/album/opengles/TiledTexture;->mTiles:[Lcom/pinguo/album/opengles/TiledTexture$Tile;
array-length v10, v3
:goto_1b
if-lt v9, v10, :cond_1f
monitor-exit v12
return-void
:cond_1f
iget-object v3, p0, Lcom/pinguo/album/opengles/TiledTexture;->mTiles:[Lcom/pinguo/album/opengles/TiledTexture$Tile;
aget-object v11, v3, v9
const/4 v3, 0x0
const/4 v4, 0x0
iget v5, v11, Lcom/pinguo/album/opengles/TiledTexture$Tile;->contentWidth:I
int-to-float v5, v5
iget v6, v11, Lcom/pinguo/album/opengles/TiledTexture$Tile;->contentHeight:I
int-to-float v6, v6
invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V
iget v3, v11, Lcom/pinguo/album/opengles/TiledTexture$Tile;->offsetX:I
int-to-float v3, v3
iget v4, v11, Lcom/pinguo/album/opengles/TiledTexture$Tile;->offsetY:I
int-to-float v4, v4
invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V
const/4 v3, 0x0
const/4 v4, 0x0
int-to-float v5, p2
move/from16 v0, p3
int-to-float v6, v0
invoke-static/range {v1 .. v8}, Lcom/pinguo/album/opengles/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V
iget v3, v11, Lcom/pinguo/album/opengles/TiledTexture$Tile;->offsetX:I
rsub-int/lit8 v3, v3, 0x1
int-to-float v3, v3
iget v4, v11, Lcom/pinguo/album/opengles/TiledTexture$Tile;->offsetY:I
rsub-int/lit8 v4, v4, 0x1
int-to-float v4, v4
invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V
iget-object v3, p0, Lcom/pinguo/album/opengles/TiledTexture;->mSrcRect:Landroid/graphics/RectF;
iget-object v4, p0, Lcom/pinguo/album/opengles/TiledTexture;->mDestRect:Landroid/graphics/RectF;
invoke-interface {p1, v11, v3, v4}, Lcom/pinguo/album/opengles/GLESCanvas;->drawTexture(Lcom/pinguo/album/opengles/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
add-int/lit8 v9, v9, 0x1
goto :goto_1b
:catchall_57
move-exception v3
monitor-exit v12
:try_end_59
.catchall {:try_start_18 .. :try_end_59} :catchall_57
throw v3
.end method
.method public draw(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
.registers 21
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/album/opengles/TiledTexture;->mSrcRect:Landroid/graphics/RectF;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/album/opengles/TiledTexture;->mDestRect:Landroid/graphics/RectF;
move-object/from16 v0, p2
iget v3, v0, Landroid/graphics/RectF;->left:F
move-object/from16 v0, p2
iget v4, v0, Landroid/graphics/RectF;->top:F
move-object/from16 v0, p3
iget v5, v0, Landroid/graphics/RectF;->left:F
move-object/from16 v0, p3
iget v6, v0, Landroid/graphics/RectF;->top:F
invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->width()F
move-result v12
invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->width()F
move-result v13
div-float v7, v12, v13
invoke-virtual/range {p3 .. p3}, Landroid/graphics/RectF;->height()F
move-result v12
invoke-virtual/range {p2 .. p2}, Landroid/graphics/RectF;->height()F
move-result v13
div-float v8, v12, v13
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/album/opengles/TiledTexture;->mTiles:[Lcom/pinguo/album/opengles/TiledTexture$Tile;
monitor-enter v13
const/4 v9, 0x0
:try_start_32
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/album/opengles/TiledTexture;->mTiles:[Lcom/pinguo/album/opengles/TiledTexture$Tile;
array-length v10, v12
:goto_37
if-lt v9, v10, :cond_3b
monitor-exit v13
return-void
:cond_3b
move-object/from16 v0, p0
iget-object v12, v0, Lcom/pinguo/album/opengles/TiledTexture;->mTiles:[Lcom/pinguo/album/opengles/TiledTexture$Tile;
aget-object v11, v12, v9
const/4 v12, 0x0
const/4 v14, 0x0
iget v15, v11, Lcom/pinguo/album/opengles/TiledTexture$Tile;->contentWidth:I
int-to-float v15, v15
iget v0, v11, Lcom/pinguo/album/opengles/TiledTexture$Tile;->contentHeight:I
move/from16 v16, v0
move/from16 v0, v16
int-to-float v0, v0
move/from16 v16, v0
move/from16 v0, v16
invoke-virtual {v2, v12, v14, v15, v0}, Landroid/graphics/RectF;->set(FFFF)V
iget v12, v11, Lcom/pinguo/album/opengles/TiledTexture$Tile;->offsetX:I
int-to-float v12, v12
iget v14, v11, Lcom/pinguo/album/opengles/TiledTexture$Tile;->offsetY:I
int-to-float v14, v14
invoke-virtual {v2, v12, v14}, Landroid/graphics/RectF;->offset(FF)V
move-object/from16 v0, p2
invoke-virtual {v2, v0}, Landroid/graphics/RectF;->intersect(Landroid/graphics/RectF;)Z
move-result v12
if-nez v12, :cond_68
:goto_65
add-int/lit8 v9, v9, 0x1
goto :goto_37
:cond_68
invoke-static/range {v1 .. v8}, Lcom/pinguo/album/opengles/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V
iget v12, v11, Lcom/pinguo/album/opengles/TiledTexture$Tile;->offsetX:I
rsub-int/lit8 v12, v12, 0x1
int-to-float v12, v12
iget v14, v11, Lcom/pinguo/album/opengles/TiledTexture$Tile;->offsetY:I
rsub-int/lit8 v14, v14, 0x1
int-to-float v14, v14
invoke-virtual {v2, v12, v14}, Landroid/graphics/RectF;->offset(FF)V
move-object/from16 v0, p1
invoke-interface {v0, v11, v2, v1}, Lcom/pinguo/album/opengles/GLESCanvas;->drawTexture(Lcom/pinguo/album/opengles/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
goto :goto_65
:catchall_7e
move-exception v12
monitor-exit v13
:try_end_80
.catchall {:try_start_32 .. :try_end_80} :catchall_7e
throw v12
.end method
.method public drawMixed(Lcom/pinguo/album/opengles/GLESCanvas;IFIIII)V
.registers 26
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/album/opengles/TiledTexture;->mSrcRect:Landroid/graphics/RectF;
move-object/from16 v0, p0
iget-object v1, v0, Lcom/pinguo/album/opengles/TiledTexture;->mDestRect:Landroid/graphics/RectF;
move/from16 v0, p6
int-to-float v3, v0
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/album/opengles/TiledTexture;->mWidth:I
int-to-float v4, v4
div-float v7, v3, v4
move/from16 v0, p7
int-to-float v3, v0
move-object/from16 v0, p0
iget v4, v0, Lcom/pinguo/album/opengles/TiledTexture;->mHeight:I
int-to-float v4, v4
div-float v8, v3, v4
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/opengles/TiledTexture;->mTiles:[Lcom/pinguo/album/opengles/TiledTexture$Tile;
move-object/from16 v17, v0
monitor-enter v17
const/4 v15, 0x0
:try_start_24
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/album/opengles/TiledTexture;->mTiles:[Lcom/pinguo/album/opengles/TiledTexture$Tile;
array-length v0, v3
move/from16 v16, v0
:goto_2b
move/from16 v0, v16
if-lt v15, v0, :cond_31
monitor-exit v17
return-void
:cond_31
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/album/opengles/TiledTexture;->mTiles:[Lcom/pinguo/album/opengles/TiledTexture$Tile;
aget-object v10, v3, v15
const/4 v3, 0x0
const/4 v4, 0x0
iget v5, v10, Lcom/pinguo/album/opengles/TiledTexture$Tile;->contentWidth:I
int-to-float v5, v5
iget v6, v10, Lcom/pinguo/album/opengles/TiledTexture$Tile;->contentHeight:I
int-to-float v6, v6
invoke-virtual {v2, v3, v4, v5, v6}, Landroid/graphics/RectF;->set(FFFF)V
iget v3, v10, Lcom/pinguo/album/opengles/TiledTexture$Tile;->offsetX:I
int-to-float v3, v3
iget v4, v10, Lcom/pinguo/album/opengles/TiledTexture$Tile;->offsetY:I
int-to-float v4, v4
invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V
const/4 v3, 0x0
const/4 v4, 0x0
move/from16 v0, p4
int-to-float v5, v0
move/from16 v0, p5
int-to-float v6, v0
invoke-static/range {v1 .. v8}, Lcom/pinguo/album/opengles/TiledTexture;->mapRect(Landroid/graphics/RectF;Landroid/graphics/RectF;FFFFFF)V
iget v3, v10, Lcom/pinguo/album/opengles/TiledTexture$Tile;->offsetX:I
rsub-int/lit8 v3, v3, 0x1
int-to-float v3, v3
iget v4, v10, Lcom/pinguo/album/opengles/TiledTexture$Tile;->offsetY:I
rsub-int/lit8 v4, v4, 0x1
int-to-float v4, v4
invoke-virtual {v2, v3, v4}, Landroid/graphics/RectF;->offset(FF)V
move-object/from16 v0, p0
iget-object v13, v0, Lcom/pinguo/album/opengles/TiledTexture;->mSrcRect:Landroid/graphics/RectF;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/pinguo/album/opengles/TiledTexture;->mDestRect:Landroid/graphics/RectF;
move-object/from16 v9, p1
move/from16 v11, p2
move/from16 v12, p3
invoke-interface/range {v9 .. v14}, Lcom/pinguo/album/opengles/GLESCanvas;->drawMixed(Lcom/pinguo/album/opengles/BasicTexture;IFLandroid/graphics/RectF;Landroid/graphics/RectF;)V
add-int/lit8 v15, v15, 0x1
goto :goto_2b
:catchall_77
move-exception v3
monitor-exit v17
:try_end_79
.catchall {:try_start_24 .. :try_end_79} :catchall_77
throw v3
.end method
.method public getHeight()I
.registers 2
iget v0, p0, Lcom/pinguo/album/opengles/TiledTexture;->mHeight:I
return v0
.end method
.method public getWidth()I
.registers 2
iget v0, p0, Lcom/pinguo/album/opengles/TiledTexture;->mWidth:I
return v0
.end method
.method public isOpaque()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public isReady()Z
.registers 3
iget v0, p0, Lcom/pinguo/album/opengles/TiledTexture;->mUploadIndex:I
iget-object v1, p0, Lcom/pinguo/album/opengles/TiledTexture;->mTiles:[Lcom/pinguo/album/opengles/TiledTexture$Tile;
array-length v1, v1
if-ne v0, v1, :cond_9
const/4 v0, 0x1
:goto_8
return v0
:cond_9
const/4 v0, 0x0
goto :goto_8
.end method
.method public recycle()V
.registers 5
iget-object v3, p0, Lcom/pinguo/album/opengles/TiledTexture;->mTiles:[Lcom/pinguo/album/opengles/TiledTexture$Tile;
monitor-enter v3
const/4 v0, 0x0
:try_start_4
iget-object v2, p0, Lcom/pinguo/album/opengles/TiledTexture;->mTiles:[Lcom/pinguo/album/opengles/TiledTexture$Tile;
array-length v1, v2
:goto_7
if-lt v0, v1, :cond_b
monitor-exit v3
return-void
:cond_b
iget-object v2, p0, Lcom/pinguo/album/opengles/TiledTexture;->mTiles:[Lcom/pinguo/album/opengles/TiledTexture$Tile;
aget-object v2, v2, v0
invoke-static {v2}, Lcom/pinguo/album/opengles/TiledTexture;->freeTile(Lcom/pinguo/album/opengles/TiledTexture$Tile;)V
add-int/lit8 v0, v0, 0x1
goto :goto_7
:catchall_15
move-exception v2
monitor-exit v3
:try_end_17
.catchall {:try_start_4 .. :try_end_17} :catchall_15
throw v2
.end method
.method public uploadNextTile(Lcom/pinguo/album/opengles/GLESCanvas;)Z
.registers 10
const/4 v2, 0x1
const/4 v3, 0x0
iget v4, p0, Lcom/pinguo/album/opengles/TiledTexture;->mUploadIndex:I
iget-object v5, p0, Lcom/pinguo/album/opengles/TiledTexture;->mTiles:[Lcom/pinguo/album/opengles/TiledTexture$Tile;
array-length v5, v5
if-ne v4, v5, :cond_a
:goto_9
:cond_9
return v2
:cond_a
iget-object v4, p0, Lcom/pinguo/album/opengles/TiledTexture;->mTiles:[Lcom/pinguo/album/opengles/TiledTexture$Tile;
monitor-enter v4
:try_start_d
iget-object v5, p0, Lcom/pinguo/album/opengles/TiledTexture;->mTiles:[Lcom/pinguo/album/opengles/TiledTexture$Tile;
iget v6, p0, Lcom/pinguo/album/opengles/TiledTexture;->mUploadIndex:I
add-int/lit8 v7, v6, 0x1
iput v7, p0, Lcom/pinguo/album/opengles/TiledTexture;->mUploadIndex:I
aget-object v1, v5, v6
iget-object v5, v1, Lcom/pinguo/album/opengles/TiledTexture$Tile;->bitmap:Landroid/graphics/Bitmap;
if-eqz v5, :cond_29
invoke-virtual {v1}, Lcom/pinguo/album/opengles/TiledTexture$Tile;->isLoaded()Z
move-result v0
invoke-virtual {v1, p1}, Lcom/pinguo/album/opengles/TiledTexture$Tile;->updateContent(Lcom/pinguo/album/opengles/GLESCanvas;)V
if-nez v0, :cond_29
const/4 v5, 0x0
const/4 v6, 0x0
invoke-virtual {v1, p1, v5, v6}, Lcom/pinguo/album/opengles/TiledTexture$Tile;->draw(Lcom/pinguo/album/opengles/GLESCanvas;II)V
:cond_29
monitor-exit v4
:try_end_2a
.catchall {:try_start_d .. :try_end_2a} :catchall_33
iget v4, p0, Lcom/pinguo/album/opengles/TiledTexture;->mUploadIndex:I
iget-object v5, p0, Lcom/pinguo/album/opengles/TiledTexture;->mTiles:[Lcom/pinguo/album/opengles/TiledTexture$Tile;
array-length v5, v5
if-eq v4, v5, :cond_9
move v2, v3
goto :goto_9
:catchall_33
move-exception v2
:try_start_34
monitor-exit v4
:try_end_35
.catchall {:try_start_34 .. :try_end_35} :catchall_33
throw v2
.end method