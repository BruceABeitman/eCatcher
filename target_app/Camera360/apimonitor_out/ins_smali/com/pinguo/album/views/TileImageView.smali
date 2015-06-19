.class public Lcom/pinguo/album/views/TileImageView;
.super Lcom/pinguo/album/views/GLBaseView;
.source "TileImageView.java"
.field public static final SIZE_UNKNOWN:I = -0x1
.field private static final STATE_ACTIVATED:I = 0x1
.field private static final STATE_DECODED:I = 0x8
.field private static final STATE_DECODE_FAIL:I = 0x10
.field private static final STATE_DECODING:I = 0x4
.field private static final STATE_IN_QUEUE:I = 0x2
.field private static final STATE_RECYCLED:I = 0x40
.field private static final STATE_RECYCLING:I = 0x20
.field private static final TAG:Ljava/lang/String; = "TileImageView"
.field private static final UPLOAD_LIMIT:I = 0x1
.field private static sTileSize:I
.field private final mActiveRange:[Landroid/graphics/Rect;
.field private final mActiveTiles:Landroid/support/v4/util/LongSparseArray;
.field private mBackgroundTileUploaded:Z
.field protected mCenterX:I
.field protected mCenterY:I
.field private final mDecodeQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
.field protected mImageHeight:I
.field protected mImageWidth:I
.field private mIsTextureFreed:Z
.field private mLevel:I
.field protected mLevelCount:I
.field private mModel:Lcom/pinguo/album/views/TileImageView$TileSource;
.field private mOffsetX:I
.field private mOffsetY:I
.field private final mRecycledQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
.field private mRenderComplete:Z
.field protected mRotation:I
.field protected mScale:F
.field private mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;
.field private final mSourceRect:Landroid/graphics/RectF;
.field private final mTargetRect:Landroid/graphics/RectF;
.field private final mThreadPool:Lcom/pinguo/album/AlbumThreadPool;
.field private mTileDecoder:Lcom/pinguo/album/Future;
.field private final mTileRange:Landroid/graphics/Rect;
.field private final mTileUploader:Lcom/pinguo/album/views/TileImageView$TileUploader;
.field private final mUploadQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
.field private mUploadQuota:I
.method public constructor <init>(Lcom/pinguo/album/PGAlbumContext;)V
.registers 6
const/4 v2, 0x0
const/4 v1, -0x1
const/4 v3, 0x0
invoke-direct {p0}, Lcom/pinguo/album/views/GLBaseView;-><init>()V
iput v2, p0, Lcom/pinguo/album/views/TileImageView;->mLevel:I
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mSourceRect:Landroid/graphics/RectF;
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mTargetRect:Landroid/graphics/RectF;
new-instance v0, Landroid/support/v4/util/LongSparseArray;
invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
new-instance v0, Lcom/pinguo/album/views/TileImageView$TileQueue;
invoke-direct {v0, v3}, Lcom/pinguo/album/views/TileImageView$TileQueue;-><init>(Lcom/pinguo/album/views/TileImageView$TileQueue;)V
iput-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mRecycledQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
new-instance v0, Lcom/pinguo/album/views/TileImageView$TileQueue;
invoke-direct {v0, v3}, Lcom/pinguo/album/views/TileImageView$TileQueue;-><init>(Lcom/pinguo/album/views/TileImageView$TileQueue;)V
iput-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mUploadQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
new-instance v0, Lcom/pinguo/album/views/TileImageView$TileQueue;
invoke-direct {v0, v3}, Lcom/pinguo/album/views/TileImageView$TileQueue;-><init>(Lcom/pinguo/album/views/TileImageView$TileQueue;)V
iput-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mDecodeQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
iput v1, p0, Lcom/pinguo/album/views/TileImageView;->mImageWidth:I
iput v1, p0, Lcom/pinguo/album/views/TileImageView;->mImageHeight:I
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mTileRange:Landroid/graphics/Rect;
const/4 v0, 0x2
new-array v0, v0, [Landroid/graphics/Rect;
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
aput-object v1, v0, v2
const/4 v1, 0x1
new-instance v2, Landroid/graphics/Rect;
invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V
aput-object v2, v0, v1
iput-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mActiveRange:[Landroid/graphics/Rect;
new-instance v0, Lcom/pinguo/album/views/TileImageView$TileUploader;
invoke-direct {v0, p0, v3}, Lcom/pinguo/album/views/TileImageView$TileUploader;-><init>(Lcom/pinguo/album/views/TileImageView;Lcom/pinguo/album/views/TileImageView$TileUploader;)V
iput-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mTileUploader:Lcom/pinguo/album/views/TileImageView$TileUploader;
invoke-interface {p1}, Lcom/pinguo/album/PGAlbumContext;->getThreadPool()Lcom/pinguo/album/AlbumThreadPool;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mThreadPool:Lcom/pinguo/album/AlbumThreadPool;
iget-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mThreadPool:Lcom/pinguo/album/AlbumThreadPool;
new-instance v1, Lcom/pinguo/album/views/TileImageView$TileDecoder;
invoke-direct {v1, p0, v3}, Lcom/pinguo/album/views/TileImageView$TileDecoder;-><init>(Lcom/pinguo/album/views/TileImageView;Lcom/pinguo/album/views/TileImageView$TileDecoder;)V
invoke-virtual {v0, v1}, Lcom/pinguo/album/AlbumThreadPool;->submit(Lcom/pinguo/album/AlbumThreadPool$Job;)Lcom/pinguo/album/Future;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mTileDecoder:Lcom/pinguo/album/Future;
sget v0, Lcom/pinguo/album/views/TileImageView;->sTileSize:I
if-nez v0, :cond_7d
invoke-interface {p1}, Lcom/pinguo/album/PGAlbumContext;->getAndroidContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/pinguo/album/views/TileImageView;->isHighResolution(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_7e
const/16 v0, 0x200
sput v0, Lcom/pinguo/album/views/TileImageView;->sTileSize:I
:goto_7d
:cond_7d
return-void
:cond_7e
const/16 v0, 0x100
sput v0, Lcom/pinguo/album/views/TileImageView;->sTileSize:I
goto :goto_7d
.end method
.method static synthetic access$0(Lcom/pinguo/album/views/TileImageView;)Lcom/pinguo/album/views/TileImageView$TileQueue;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mUploadQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
return-object v0
.end method
.method static synthetic access$1(Lcom/pinguo/album/views/TileImageView;)Lcom/pinguo/album/views/TileImageView$TileSource;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mModel:Lcom/pinguo/album/views/TileImageView$TileSource;
return-object v0
.end method
.method static synthetic access$2()I
.registers 1
sget v0, Lcom/pinguo/album/views/TileImageView;->sTileSize:I
return v0
.end method
.method static synthetic access$3(Lcom/pinguo/album/views/TileImageView;III)Lcom/pinguo/album/views/TileImageView$Tile;
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/album/views/TileImageView;->getTile(III)Lcom/pinguo/album/views/TileImageView$Tile;
move-result-object v0
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/album/views/TileImageView;)I
.registers 2
iget v0, p0, Lcom/pinguo/album/views/TileImageView;->mLevel:I
return v0
.end method
.method static synthetic access$5(Lcom/pinguo/album/views/TileImageView;)Lcom/pinguo/album/views/TileImageView$TileQueue;
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mDecodeQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
return-object v0
.end method
.method private activateTile(III)V
.registers 9
invoke-static {p1, p2, p3}, Lcom/pinguo/album/views/TileImageView;->makeTileKey(III)J
move-result-wide v0
iget-object v3, p0, Lcom/pinguo/album/views/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v3, v0, v1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/views/TileImageView$Tile;
if-eqz v2, :cond_17
iget v3, v2, Lcom/pinguo/album/views/TileImageView$Tile;->mTileState:I
const/4 v4, 0x2
if-ne v3, v4, :cond_16
const/4 v3, 0x1
iput v3, v2, Lcom/pinguo/album/views/TileImageView$Tile;->mTileState:I
:cond_16
:goto_16
return-void
:cond_17
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/album/views/TileImageView;->obtainTile(III)Lcom/pinguo/album/views/TileImageView$Tile;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/album/views/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v3, v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
goto :goto_16
.end method
.method static drawTile(Lcom/pinguo/album/views/TileImageView$Tile;Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
.registers 8
const/high16 v3, 0x4000
:goto_2
invoke-virtual {p0}, Lcom/pinguo/album/views/TileImageView$Tile;->isContentValid()Z
move-result v1
if-eqz v1, :cond_d
invoke-interface {p1, p0, p2, p3}, Lcom/pinguo/album/opengles/GLESCanvas;->drawTexture(Lcom/pinguo/album/opengles/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
const/4 v1, 0x1
:goto_c
return v1
:cond_d
invoke-virtual {p0}, Lcom/pinguo/album/views/TileImageView$Tile;->getParentTile()Lcom/pinguo/album/views/TileImageView$Tile;
move-result-object v0
if-nez v0, :cond_15
const/4 v1, 0x0
goto :goto_c
:cond_15
iget v1, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mX:I
iget v2, v0, Lcom/pinguo/album/views/TileImageView$Tile;->mX:I
if-ne v1, v2, :cond_37
iget v1, p2, Landroid/graphics/RectF;->left:F
div-float/2addr v1, v3
iput v1, p2, Landroid/graphics/RectF;->left:F
iget v1, p2, Landroid/graphics/RectF;->right:F
div-float/2addr v1, v3
iput v1, p2, Landroid/graphics/RectF;->right:F
:goto_25
iget v1, p0, Lcom/pinguo/album/views/TileImageView$Tile;->mY:I
iget v2, v0, Lcom/pinguo/album/views/TileImageView$Tile;->mY:I
if-ne v1, v2, :cond_4a
iget v1, p2, Landroid/graphics/RectF;->top:F
div-float/2addr v1, v3
iput v1, p2, Landroid/graphics/RectF;->top:F
iget v1, p2, Landroid/graphics/RectF;->bottom:F
div-float/2addr v1, v3
iput v1, p2, Landroid/graphics/RectF;->bottom:F
:goto_35
move-object p0, v0
goto :goto_2
:cond_37
sget v1, Lcom/pinguo/album/views/TileImageView;->sTileSize:I
int-to-float v1, v1
iget v2, p2, Landroid/graphics/RectF;->left:F
add-float/2addr v1, v2
div-float/2addr v1, v3
iput v1, p2, Landroid/graphics/RectF;->left:F
sget v1, Lcom/pinguo/album/views/TileImageView;->sTileSize:I
int-to-float v1, v1
iget v2, p2, Landroid/graphics/RectF;->right:F
add-float/2addr v1, v2
div-float/2addr v1, v3
iput v1, p2, Landroid/graphics/RectF;->right:F
goto :goto_25
:cond_4a
sget v1, Lcom/pinguo/album/views/TileImageView;->sTileSize:I
int-to-float v1, v1
iget v2, p2, Landroid/graphics/RectF;->top:F
add-float/2addr v1, v2
div-float/2addr v1, v3
iput v1, p2, Landroid/graphics/RectF;->top:F
sget v1, Lcom/pinguo/album/views/TileImageView;->sTileSize:I
int-to-float v1, v1
iget v2, p2, Landroid/graphics/RectF;->bottom:F
add-float/2addr v1, v2
div-float/2addr v1, v3
iput v1, p2, Landroid/graphics/RectF;->bottom:F
goto :goto_35
.end method
.method private getRange(Landroid/graphics/Rect;IIIFI)V
.registers 32
move/from16 v0, p6
neg-int v0, v0
move/from16 v19, v0
move/from16 v0, v19
int-to-double v0, v0
move-wide/from16 v19, v0
invoke-static/range {v19 .. v20}, Ljava/lang/Math;->toRadians(D)D
move-result-wide v9
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/album/views/TileImageView;->getWidth()I
move-result v19
move/from16 v0, v19
int-to-double v0, v0
move-wide/from16 v16, v0
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/album/views/TileImageView;->getHeight()I
move-result v19
move/from16 v0, v19
int-to-double v5, v0
invoke-static {v9, v10}, Ljava/lang/Math;->cos(D)D
move-result-wide v3
invoke-static {v9, v10}, Ljava/lang/Math;->sin(D)D
move-result-wide v12
mul-double v19, v3, v16
mul-double v21, v12, v5
sub-double v19, v19, v21
invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D
move-result-wide v19
mul-double v21, v3, v16
mul-double v23, v12, v5
add-double v21, v21, v23
invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D
move-result-wide v21
invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(DD)D
move-result-wide v19
invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D
move-result-wide v19
move-wide/from16 v0, v19
double-to-int v0, v0
move/from16 v18, v0
mul-double v19, v12, v16
mul-double v21, v3, v5
add-double v19, v19, v21
invoke-static/range {v19 .. v20}, Ljava/lang/Math;->abs(D)D
move-result-wide v19
mul-double v21, v12, v16
mul-double v23, v3, v5
sub-double v21, v21, v23
invoke-static/range {v21 .. v22}, Ljava/lang/Math;->abs(D)D
move-result-wide v21
invoke-static/range {v19 .. v22}, Ljava/lang/Math;->max(DD)D
move-result-wide v19
invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D
move-result-wide v19
move-wide/from16 v0, v19
double-to-int v7, v0
move/from16 v0, p2
int-to-float v0, v0
move/from16 v19, v0
move/from16 v0, v18
int-to-float v0, v0
move/from16 v20, v0
const/high16 v21, 0x4000
mul-float v21, v21, p5
div-float v20, v20, v21
sub-float v19, v19, v20
move/from16 v0, v19
float-to-double v0, v0
move-wide/from16 v19, v0
invoke-static/range {v19 .. v20}, Ljava/lang/Math;->floor(D)D
move-result-wide v19
move-wide/from16 v0, v19
double-to-int v8, v0
move/from16 v0, p3
int-to-float v0, v0
move/from16 v19, v0
int-to-float v0, v7
move/from16 v20, v0
const/high16 v21, 0x4000
mul-float v21, v21, p5
div-float v20, v20, v21
sub-float v19, v19, v20
move/from16 v0, v19
float-to-double v0, v0
move-wide/from16 v19, v0
invoke-static/range {v19 .. v20}, Ljava/lang/Math;->floor(D)D
move-result-wide v19
move-wide/from16 v0, v19
double-to-int v15, v0
int-to-float v0, v8
move/from16 v19, v0
move/from16 v0, v18
int-to-float v0, v0
move/from16 v20, v0
div-float v20, v20, p5
add-float v19, v19, v20
move/from16 v0, v19
float-to-double v0, v0
move-wide/from16 v19, v0
invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D
move-result-wide v19
move-wide/from16 v0, v19
double-to-int v11, v0
int-to-float v0, v15
move/from16 v19, v0
int-to-float v0, v7
move/from16 v20, v0
div-float v20, v20, p5
add-float v19, v19, v20
move/from16 v0, v19
float-to-double v0, v0
move-wide/from16 v19, v0
invoke-static/range {v19 .. v20}, Ljava/lang/Math;->ceil(D)D
move-result-wide v19
move-wide/from16 v0, v19
double-to-int v2, v0
sget v19, Lcom/pinguo/album/views/TileImageView;->sTileSize:I
shl-int v14, v19, p4
const/16 v19, 0x0
div-int v20, v8, v14
mul-int v20, v20, v14
invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I
move-result v8
const/16 v19, 0x0
div-int v20, v15, v14
mul-int v20, v20, v14
invoke-static/range {v19 .. v20}, Ljava/lang/Math;->max(II)I
move-result v15
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/TileImageView;->mImageWidth:I
move/from16 v19, v0
move/from16 v0, v19
invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I
move-result v11
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/TileImageView;->mImageHeight:I
move/from16 v19, v0
move/from16 v0, v19
invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I
move-result v2
move-object/from16 v0, p1
invoke-virtual {v0, v8, v15, v11, v2}, Landroid/graphics/Rect;->set(IIII)V
return-void
.end method
.method private getRange(Landroid/graphics/Rect;IIII)V
.registers 13
const/high16 v0, 0x3f80
const/4 v1, 0x1
add-int/lit8 v2, p4, 0x1
shl-int/2addr v1, v2
int-to-float v1, v1
div-float v5, v0, v1
move-object v0, p0
move-object v1, p1
move v2, p2
move v3, p3
move v4, p4
move v6, p5
invoke-direct/range {v0 .. v6}, Lcom/pinguo/album/views/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V
return-void
.end method
.method private getTile(III)Lcom/pinguo/album/views/TileImageView$Tile;
.registers 7
iget-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-static {p1, p2, p3}, Lcom/pinguo/album/views/TileImageView;->makeTileKey(III)J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/album/views/TileImageView$Tile;
return-object v0
.end method
.method public static isHighResolution(Landroid/content/Context;)Z
.registers 5
const/16 v3, 0x800
new-instance v0, Landroid/util/DisplayMetrics;
invoke-direct {v0}, Landroid/util/DisplayMetrics;-><init>()V
const-string/jumbo v2, "window"
invoke-virtual {p0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/view/WindowManager;
invoke-interface {v1}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;
move-result-object v2
invoke-virtual {v2, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V
iget v2, v0, Landroid/util/DisplayMetrics;->heightPixels:I
if-gt v2, v3, :cond_21
iget v2, v0, Landroid/util/DisplayMetrics;->widthPixels:I
if-gt v2, v3, :cond_21
const/4 v2, 0x0
:goto_20
return v2
:cond_21
const/4 v2, 0x1
goto :goto_20
.end method
.method private isScreenNailAnimating()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;
instance-of v0, v0, Lcom/pinguo/album/opengles/TiledScreenNail;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;
check-cast v0, Lcom/pinguo/album/opengles/TiledScreenNail;
invoke-virtual {v0}, Lcom/pinguo/album/opengles/TiledScreenNail;->isAnimating()Z
move-result v0
if-eqz v0, :cond_12
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method private layoutTiles(IIFI)V
.registers 29
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/album/views/TileImageView;->getWidth()I
move-result v21
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/album/views/TileImageView;->getHeight()I
move-result v14
const/high16 v3, 0x3f80
div-float v3, v3, p3
invoke-static {v3}, Lcom/pinguo/album/utils/Utils;->floorLog2(F)I
move-result v3
const/4 v5, 0x0
move-object/from16 v0, p0
iget v6, v0, Lcom/pinguo/album/views/TileImageView;->mLevelCount:I
invoke-static {v3, v5, v6}, Lcom/pinguo/album/utils/Utils;->clamp(III)I
move-result v3
move-object/from16 v0, p0
iput v3, v0, Lcom/pinguo/album/views/TileImageView;->mLevel:I
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/album/views/TileImageView;->mLevel:I
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/album/views/TileImageView;->mLevelCount:I
if-eq v3, v5, :cond_a5
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/album/views/TileImageView;->mTileRange:Landroid/graphics/Rect;
move-object/from16 v0, p0
iget v7, v0, Lcom/pinguo/album/views/TileImageView;->mLevel:I
move-object/from16 v3, p0
move/from16 v5, p1
move/from16 v6, p2
move/from16 v8, p3
move/from16 v9, p4
invoke-direct/range {v3 .. v9}, Lcom/pinguo/album/views/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V
move/from16 v0, v21
int-to-float v3, v0
const/high16 v5, 0x4000
div-float/2addr v3, v5
iget v5, v4, Landroid/graphics/Rect;->left:I
sub-int v5, v5, p1
int-to-float v5, v5
mul-float v5, v5, p3
add-float/2addr v3, v5
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
move-object/from16 v0, p0
iput v3, v0, Lcom/pinguo/album/views/TileImageView;->mOffsetX:I
int-to-float v3, v14
const/high16 v5, 0x4000
div-float/2addr v3, v5
iget v5, v4, Landroid/graphics/Rect;->top:I
sub-int v5, v5, p2
int-to-float v5, v5
mul-float v5, v5, p3
add-float/2addr v3, v5
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
move-object/from16 v0, p0
iput v3, v0, Lcom/pinguo/album/views/TileImageView;->mOffsetY:I
const/4 v3, 0x1
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/album/views/TileImageView;->mLevel:I
shl-int/2addr v3, v5
int-to-float v3, v3
mul-float v3, v3, p3
const/high16 v5, 0x3f40
cmpl-float v3, v3, v5
if-lez v3, :cond_a0
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/album/views/TileImageView;->mLevel:I
add-int/lit8 v13, v3, -0x1
:goto_7b
const/4 v3, 0x0
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/album/views/TileImageView;->mLevelCount:I
add-int/lit8 v5, v5, -0x2
invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I
move-result v5
invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I
move-result v13
add-int/lit8 v3, v13, 0x2
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/album/views/TileImageView;->mLevelCount:I
invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I
move-result v12
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/album/views/TileImageView;->mActiveRange:[Landroid/graphics/Rect;
move v9, v13
:goto_99
if-lt v9, v12, :cond_d2
rem-int/lit8 v3, p4, 0x5a
if-eqz v3, :cond_e4
:goto_9f
return-void
:cond_a0
move-object/from16 v0, p0
iget v13, v0, Lcom/pinguo/album/views/TileImageView;->mLevel:I
goto :goto_7b
:cond_a5
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/album/views/TileImageView;->mLevel:I
add-int/lit8 v13, v3, -0x2
move/from16 v0, v21
int-to-float v3, v0
const/high16 v5, 0x4000
div-float/2addr v3, v5
move/from16 v0, p1
int-to-float v5, v0
mul-float v5, v5, p3
sub-float/2addr v3, v5
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
move-object/from16 v0, p0
iput v3, v0, Lcom/pinguo/album/views/TileImageView;->mOffsetX:I
int-to-float v3, v14
const/high16 v5, 0x4000
div-float/2addr v3, v5
move/from16 v0, p2
int-to-float v5, v0
mul-float v5, v5, p3
sub-float/2addr v3, v5
invoke-static {v3}, Ljava/lang/Math;->round(F)I
move-result v3
move-object/from16 v0, p0
iput v3, v0, Lcom/pinguo/album/views/TileImageView;->mOffsetY:I
goto :goto_7b
:cond_d2
sub-int v3, v9, v13
aget-object v6, v4, v3
move-object/from16 v5, p0
move/from16 v7, p1
move/from16 v8, p2
move/from16 v10, p4
invoke-direct/range {v5 .. v10}, Lcom/pinguo/album/views/TileImageView;->getRange(Landroid/graphics/Rect;IIII)V
add-int/lit8 v9, v9, 0x1
goto :goto_99
:cond_e4
monitor-enter p0
:try_start_e5
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/album/views/TileImageView;->mDecodeQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
invoke-virtual {v3}, Lcom/pinguo/album/views/TileImageView$TileQueue;->clean()V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/album/views/TileImageView;->mUploadQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
invoke-virtual {v3}, Lcom/pinguo/album/views/TileImageView$TileQueue;->clean()V
const/4 v3, 0x0
move-object/from16 v0, p0
iput-boolean v3, v0, Lcom/pinguo/album/views/TileImageView;->mBackgroundTileUploaded:Z
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/album/views/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I
move-result v16
const/4 v9, 0x0
:goto_101
move/from16 v0, v16
if-lt v9, v0, :cond_10d
monitor-exit p0
:try_end_106
.catchall {:try_start_e5 .. :try_end_106} :catchall_146
move v9, v13
:goto_107
if-lt v9, v12, :cond_149
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/album/views/TileImageView;->invalidate()V
goto :goto_9f
:try_start_10d
:cond_10d
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/album/views/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v3, v9}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v20
check-cast v20, Lcom/pinguo/album/views/TileImageView$Tile;
move-object/from16 v0, v20
iget v15, v0, Lcom/pinguo/album/views/TileImageView$Tile;->mTileLevel:I
if-lt v15, v13, :cond_131
if-ge v15, v12, :cond_131
sub-int v3, v15, v13
aget-object v3, v4, v3
move-object/from16 v0, v20
iget v5, v0, Lcom/pinguo/album/views/TileImageView$Tile;->mX:I
move-object/from16 v0, v20
iget v6, v0, Lcom/pinguo/album/views/TileImageView$Tile;->mY:I
invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z
move-result v3
if-nez v3, :cond_143
:cond_131
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/album/views/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v3, v9}, Landroid/support/v4/util/LongSparseArray;->removeAt(I)V
add-int/lit8 v9, v9, -0x1
add-int/lit8 v16, v16, -0x1
move-object/from16 v0, p0
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/pinguo/album/views/TileImageView;->recycleTile(Lcom/pinguo/album/views/TileImageView$Tile;)V
:cond_143
add-int/lit8 v9, v9, 0x1
goto :goto_101
:catchall_146
move-exception v3
monitor-exit p0
:try_end_148
.catchall {:try_start_10d .. :try_end_148} :catchall_146
throw v3
:cond_149
sget v3, Lcom/pinguo/album/views/TileImageView;->sTileSize:I
shl-int v19, v3, v9
sub-int v3, v9, v13
aget-object v17, v4, v3
move-object/from16 v0, v17
iget v0, v0, Landroid/graphics/Rect;->top:I
move/from16 v23, v0
move-object/from16 v0, v17
iget v11, v0, Landroid/graphics/Rect;->bottom:I
:goto_15b
move/from16 v0, v23
if-lt v0, v11, :cond_162
add-int/lit8 v9, v9, 0x1
goto :goto_107
:cond_162
move-object/from16 v0, v17
iget v0, v0, Landroid/graphics/Rect;->left:I
move/from16 v22, v0
move-object/from16 v0, v17
iget v0, v0, Landroid/graphics/Rect;->right:I
move/from16 v18, v0
:goto_16e
move/from16 v0, v22
move/from16 v1, v18
if-lt v0, v1, :cond_177
add-int v23, v23, v19
goto :goto_15b
:cond_177
move-object/from16 v0, p0
move/from16 v1, v22
move/from16 v2, v23
invoke-direct {v0, v1, v2, v9}, Lcom/pinguo/album/views/TileImageView;->activateTile(III)V
add-int v22, v22, v19
goto :goto_16e
.end method
.method private static makeTileKey(III)J
.registers 10
const/16 v6, 0x10
int-to-long v0, p0
shl-long v2, v0, v6
int-to-long v4, p1
or-long v0, v2, v4
shl-long v2, v0, v6
int-to-long v4, p2
or-long v0, v2, v4
return-wide v0
.end method
.method private declared-synchronized obtainTile(III)Lcom/pinguo/album/views/TileImageView$Tile;
.registers 6
monitor-enter p0
:try_start_1
iget-object v1, p0, Lcom/pinguo/album/views/TileImageView;->mRecycledQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
invoke-virtual {v1}, Lcom/pinguo/album/views/TileImageView$TileQueue;->pop()Lcom/pinguo/album/views/TileImageView$Tile;
move-result-object v0
if-eqz v0, :cond_11
const/4 v1, 0x1
iput v1, v0, Lcom/pinguo/album/views/TileImageView$Tile;->mTileState:I
invoke-virtual {v0, p1, p2, p3}, Lcom/pinguo/album/views/TileImageView$Tile;->update(III)V
:goto_f
:try_end_f
.catchall {:try_start_1 .. :try_end_f} :catchall_17
monitor-exit p0
return-object v0
:cond_11
:try_start_11
new-instance v0, Lcom/pinguo/album/views/TileImageView$Tile;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/pinguo/album/views/TileImageView$Tile;-><init>(Lcom/pinguo/album/views/TileImageView;III)V
:try_end_16
.catchall {:try_start_11 .. :try_end_16} :catchall_17
goto :goto_f
:catchall_17
move-exception v1
monitor-exit p0
throw v1
.end method
.method private uploadBackgroundTiles(Lcom/pinguo/album/opengles/GLESCanvas;)V
.registers 6
const/4 v3, 0x1
iput-boolean v3, p0, Lcom/pinguo/album/views/TileImageView;->mBackgroundTileUploaded:Z
iget-object v3, p0, Lcom/pinguo/album/views/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I
move-result v1
const/4 v0, 0x0
:goto_a
if-lt v0, v1, :cond_d
return-void
:cond_d
iget-object v3, p0, Lcom/pinguo/album/views/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/views/TileImageView$Tile;
invoke-virtual {v2}, Lcom/pinguo/album/views/TileImageView$Tile;->isContentValid()Z
move-result v3
if-nez v3, :cond_1e
invoke-virtual {p0, v2}, Lcom/pinguo/album/views/TileImageView;->queueForDecode(Lcom/pinguo/album/views/TileImageView$Tile;)V
:cond_1e
add-int/lit8 v0, v0, 0x1
goto :goto_a
.end method
.method  decodeTile(Lcom/pinguo/album/views/TileImageView$Tile;)Z
.registers 6
const/4 v1, 0x0
monitor-enter p0
:try_start_2
iget v2, p1, Lcom/pinguo/album/views/TileImageView$Tile;->mTileState:I
const/4 v3, 0x2
if-eq v2, v3, :cond_a
monitor-exit p0
move v0, v1
:goto_9
return v0
:cond_a
const/4 v2, 0x4
iput v2, p1, Lcom/pinguo/album/views/TileImageView$Tile;->mTileState:I
monitor-exit p0
:try_end_e
.catchall {:try_start_2 .. :try_end_e} :catchall_35
invoke-virtual {p1}, Lcom/pinguo/album/views/TileImageView$Tile;->decode()Z
move-result v0
monitor-enter p0
:try_start_13
iget v2, p1, Lcom/pinguo/album/views/TileImageView$Tile;->mTileState:I
const/16 v3, 0x20
if-ne v2, v3, :cond_38
const/16 v2, 0x40
iput v2, p1, Lcom/pinguo/album/views/TileImageView$Tile;->mTileState:I
iget-object v2, p1, Lcom/pinguo/album/views/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
if-eqz v2, :cond_2d
invoke-static {}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getInstance()Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;
move-result-object v2
iget-object v3, p1, Lcom/pinguo/album/views/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
invoke-virtual {v2, v3}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->put(Landroid/graphics/Bitmap;)Z
const/4 v2, 0x0
iput-object v2, p1, Lcom/pinguo/album/views/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
:cond_2d
iget-object v2, p0, Lcom/pinguo/album/views/TileImageView;->mRecycledQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
invoke-virtual {v2, p1}, Lcom/pinguo/album/views/TileImageView$TileQueue;->push(Lcom/pinguo/album/views/TileImageView$Tile;)Z
monitor-exit p0
:try_end_33
.catchall {:try_start_13 .. :try_end_33} :catchall_40
move v0, v1
goto :goto_9
:catchall_35
move-exception v1
:try_start_36
monitor-exit p0
:try_end_37
.catchall {:try_start_36 .. :try_end_37} :catchall_35
throw v1
:cond_38
if-eqz v0, :cond_43
const/16 v1, 0x8
:try_start_3c
:goto_3c
iput v1, p1, Lcom/pinguo/album/views/TileImageView$Tile;->mTileState:I
monitor-exit p0
goto :goto_9
:catchall_40
move-exception v1
monitor-exit p0
:try_end_42
.catchall {:try_start_3c .. :try_end_42} :catchall_40
throw v1
:cond_43
const/16 v1, 0x10
goto :goto_3c
.end method
.method public drawTile(Lcom/pinguo/album/opengles/GLESCanvas;IIIFFF)V
.registers 20
iget-object v5, p0, Lcom/pinguo/album/views/TileImageView;->mSourceRect:Landroid/graphics/RectF;
iget-object v6, p0, Lcom/pinguo/album/views/TileImageView;->mTargetRect:Landroid/graphics/RectF;
add-float v8, p5, p7
add-float v9, p6, p7
move/from16 v0, p5
move/from16 v1, p6
invoke-virtual {v6, v0, v1, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V
const/4 v8, 0x0
const/4 v9, 0x0
sget v10, Lcom/pinguo/album/views/TileImageView;->sTileSize:I
int-to-float v10, v10
sget v11, Lcom/pinguo/album/views/TileImageView;->sTileSize:I
int-to-float v11, v11
invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V
move/from16 v0, p4
invoke-direct {p0, p2, p3, v0}, Lcom/pinguo/album/views/TileImageView;->getTile(III)Lcom/pinguo/album/views/TileImageView$Tile;
move-result-object v7
if-eqz v7, :cond_53
invoke-virtual {v7}, Lcom/pinguo/album/views/TileImageView$Tile;->isContentValid()Z
move-result v8
if-nez v8, :cond_3b
iget v8, v7, Lcom/pinguo/album/views/TileImageView$Tile;->mTileState:I
const/16 v9, 0x8
if-ne v8, v9, :cond_46
iget v8, p0, Lcom/pinguo/album/views/TileImageView;->mUploadQuota:I
if-lez v8, :cond_42
iget v8, p0, Lcom/pinguo/album/views/TileImageView;->mUploadQuota:I
add-int/lit8 v8, v8, -0x1
iput v8, p0, Lcom/pinguo/album/views/TileImageView;->mUploadQuota:I
invoke-virtual {v7, p1}, Lcom/pinguo/album/views/TileImageView$Tile;->updateContent(Lcom/pinguo/album/opengles/GLESCanvas;)V
:goto_3b
:cond_3b
invoke-static {v7, p1, v5, v6}, Lcom/pinguo/album/views/TileImageView;->drawTile(Lcom/pinguo/album/views/TileImageView$Tile;Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
move-result v8
if-eqz v8, :cond_53
:goto_41
:cond_41
return-void
:cond_42
const/4 v8, 0x0
iput-boolean v8, p0, Lcom/pinguo/album/views/TileImageView;->mRenderComplete:Z
goto :goto_3b
:cond_46
iget v8, v7, Lcom/pinguo/album/views/TileImageView$Tile;->mTileState:I
const/16 v9, 0x10
if-eq v8, v9, :cond_3b
const/4 v8, 0x0
iput-boolean v8, p0, Lcom/pinguo/album/views/TileImageView;->mRenderComplete:Z
invoke-virtual {p0, v7}, Lcom/pinguo/album/views/TileImageView;->queueForDecode(Lcom/pinguo/album/views/TileImageView$Tile;)V
goto :goto_3b
:cond_53
iget-object v8, p0, Lcom/pinguo/album/views/TileImageView;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;
if-eqz v8, :cond_41
sget v8, Lcom/pinguo/album/views/TileImageView;->sTileSize:I
shl-int v4, v8, p4
iget-object v8, p0, Lcom/pinguo/album/views/TileImageView;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;
invoke-interface {v8}, Lcom/pinguo/album/opengles/ScreenNail;->getWidth()I
move-result v8
int-to-float v8, v8
iget v9, p0, Lcom/pinguo/album/views/TileImageView;->mImageWidth:I
int-to-float v9, v9
div-float v2, v8, v9
iget-object v8, p0, Lcom/pinguo/album/views/TileImageView;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;
invoke-interface {v8}, Lcom/pinguo/album/opengles/ScreenNail;->getHeight()I
move-result v8
int-to-float v8, v8
iget v9, p0, Lcom/pinguo/album/views/TileImageView;->mImageHeight:I
int-to-float v9, v9
div-float v3, v8, v9
int-to-float v8, p2
mul-float/2addr v8, v2
int-to-float v9, p3
mul-float/2addr v9, v3
add-int v10, p2, v4
int-to-float v10, v10
mul-float/2addr v10, v2
add-int v11, p3, v4
int-to-float v11, v11
mul-float/2addr v11, v3
invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V
iget-object v8, p0, Lcom/pinguo/album/views/TileImageView;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;
invoke-interface {v8, p1, v5, v6}, Lcom/pinguo/album/opengles/ScreenNail;->draw(Lcom/pinguo/album/opengles/GLESCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
goto :goto_41
.end method
.method public freeTextures()V
.registers 8
const/4 v6, 0x0
const/4 v5, 0x0
const/4 v4, 0x1
iput-boolean v4, p0, Lcom/pinguo/album/views/TileImageView;->mIsTextureFreed:Z
iget-object v4, p0, Lcom/pinguo/album/views/TileImageView;->mTileDecoder:Lcom/pinguo/album/Future;
if-eqz v4, :cond_15
iget-object v4, p0, Lcom/pinguo/album/views/TileImageView;->mTileDecoder:Lcom/pinguo/album/Future;
invoke-interface {v4}, Lcom/pinguo/album/Future;->cancel()V
iget-object v4, p0, Lcom/pinguo/album/views/TileImageView;->mTileDecoder:Lcom/pinguo/album/Future;
invoke-interface {v4}, Lcom/pinguo/album/Future;->get()Ljava/lang/Object;
iput-object v6, p0, Lcom/pinguo/album/views/TileImageView;->mTileDecoder:Lcom/pinguo/album/Future;
:cond_15
iget-object v4, p0, Lcom/pinguo/album/views/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->size()I
move-result v1
const/4 v0, 0x0
:goto_1c
if-lt v0, v1, :cond_40
iget-object v4, p0, Lcom/pinguo/album/views/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->clear()V
iget-object v4, p0, Lcom/pinguo/album/views/TileImageView;->mTileRange:Landroid/graphics/Rect;
invoke-virtual {v4, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V
monitor-enter p0
:try_start_29
iget-object v4, p0, Lcom/pinguo/album/views/TileImageView;->mUploadQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
invoke-virtual {v4}, Lcom/pinguo/album/views/TileImageView$TileQueue;->clean()V
iget-object v4, p0, Lcom/pinguo/album/views/TileImageView;->mDecodeQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
invoke-virtual {v4}, Lcom/pinguo/album/views/TileImageView$TileQueue;->clean()V
iget-object v4, p0, Lcom/pinguo/album/views/TileImageView;->mRecycledQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
invoke-virtual {v4}, Lcom/pinguo/album/views/TileImageView$TileQueue;->pop()Lcom/pinguo/album/views/TileImageView$Tile;
move-result-object v3
:goto_39
if-nez v3, :cond_4e
monitor-exit p0
:try_end_3c
.catchall {:try_start_29 .. :try_end_3c} :catchall_58
invoke-virtual {p0, v6}, Lcom/pinguo/album/views/TileImageView;->setScreenNail(Lcom/pinguo/album/opengles/ScreenNail;)V
return-void
:cond_40
iget-object v4, p0, Lcom/pinguo/album/views/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v4, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/views/TileImageView$Tile;
invoke-virtual {v2}, Lcom/pinguo/album/views/TileImageView$Tile;->recycle()V
add-int/lit8 v0, v0, 0x1
goto :goto_1c
:try_start_4e
:cond_4e
invoke-virtual {v3}, Lcom/pinguo/album/views/TileImageView$Tile;->recycle()V
iget-object v4, p0, Lcom/pinguo/album/views/TileImageView;->mRecycledQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
invoke-virtual {v4}, Lcom/pinguo/album/views/TileImageView$TileQueue;->pop()Lcom/pinguo/album/views/TileImageView$Tile;
move-result-object v3
goto :goto_39
:catchall_58
move-exception v4
monitor-exit p0
:try_end_5a
.catchall {:try_start_4e .. :try_end_5a} :catchall_58
throw v4
.end method
.method public getImageCenter(Landroid/graphics/Point;)V
.registers 10
const/high16 v7, 0x4000
invoke-virtual {p0}, Lcom/pinguo/album/views/TileImageView;->getWidth()I
move-result v3
invoke-virtual {p0}, Lcom/pinguo/album/views/TileImageView;->getHeight()I
move-result v2
iget v4, p0, Lcom/pinguo/album/views/TileImageView;->mRotation:I
rem-int/lit16 v4, v4, 0xb4
if-nez v4, :cond_3b
iget v4, p0, Lcom/pinguo/album/views/TileImageView;->mImageWidth:I
div-int/lit8 v4, v4, 0x2
iget v5, p0, Lcom/pinguo/album/views/TileImageView;->mCenterX:I
sub-int v1, v4, v5
iget v4, p0, Lcom/pinguo/album/views/TileImageView;->mImageHeight:I
div-int/lit8 v4, v4, 0x2
iget v5, p0, Lcom/pinguo/album/views/TileImageView;->mCenterY:I
sub-int v0, v4, v5
:goto_20
int-to-float v4, v3
div-float/2addr v4, v7
int-to-float v5, v1
iget v6, p0, Lcom/pinguo/album/views/TileImageView;->mScale:F
mul-float/2addr v5, v6
add-float/2addr v4, v5
invoke-static {v4}, Ljava/lang/Math;->round(F)I
move-result v4
iput v4, p1, Landroid/graphics/Point;->x:I
int-to-float v4, v2
div-float/2addr v4, v7
int-to-float v5, v0
iget v6, p0, Lcom/pinguo/album/views/TileImageView;->mScale:F
mul-float/2addr v5, v6
add-float/2addr v4, v5
invoke-static {v4}, Ljava/lang/Math;->round(F)I
move-result v4
iput v4, p1, Landroid/graphics/Point;->y:I
return-void
:cond_3b
iget v4, p0, Lcom/pinguo/album/views/TileImageView;->mImageHeight:I
div-int/lit8 v4, v4, 0x2
iget v5, p0, Lcom/pinguo/album/views/TileImageView;->mCenterY:I
sub-int v1, v4, v5
iget v4, p0, Lcom/pinguo/album/views/TileImageView;->mImageWidth:I
div-int/lit8 v4, v4, 0x2
iget v5, p0, Lcom/pinguo/album/views/TileImageView;->mCenterX:I
sub-int v0, v4, v5
goto :goto_20
.end method
.method protected declared-synchronized invalidateTiles()V
.registers 5
monitor-enter p0
:try_start_1
iget-object v3, p0, Lcom/pinguo/album/views/TileImageView;->mDecodeQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
invoke-virtual {v3}, Lcom/pinguo/album/views/TileImageView$TileQueue;->clean()V
iget-object v3, p0, Lcom/pinguo/album/views/TileImageView;->mUploadQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
invoke-virtual {v3}, Lcom/pinguo/album/views/TileImageView$TileQueue;->clean()V
iget-object v3, p0, Lcom/pinguo/album/views/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I
move-result v1
const/4 v0, 0x0
:goto_12
if-lt v0, v1, :cond_1b
iget-object v3, p0, Lcom/pinguo/album/views/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->clear()V
:try_end_19
.catchall {:try_start_1 .. :try_end_19} :catchall_29
monitor-exit p0
return-void
:try_start_1b
:cond_1b
iget-object v3, p0, Lcom/pinguo/album/views/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/album/views/TileImageView$Tile;
invoke-virtual {p0, v2}, Lcom/pinguo/album/views/TileImageView;->recycleTile(Lcom/pinguo/album/views/TileImageView$Tile;)V
:try_end_26
.catchall {:try_start_1b .. :try_end_26} :catchall_29
add-int/lit8 v0, v0, 0x1
goto :goto_12
:catchall_29
move-exception v3
monitor-exit p0
throw v3
.end method
.method public notifyModelInvalidated()V
.registers 5
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/pinguo/album/views/TileImageView;->invalidateTiles()V
iget-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mModel:Lcom/pinguo/album/views/TileImageView$TileSource;
if-nez v0, :cond_20
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;
iput v1, p0, Lcom/pinguo/album/views/TileImageView;->mImageWidth:I
iput v1, p0, Lcom/pinguo/album/views/TileImageView;->mImageHeight:I
iput v1, p0, Lcom/pinguo/album/views/TileImageView;->mLevelCount:I
:goto_11
iget v0, p0, Lcom/pinguo/album/views/TileImageView;->mCenterX:I
iget v1, p0, Lcom/pinguo/album/views/TileImageView;->mCenterY:I
iget v2, p0, Lcom/pinguo/album/views/TileImageView;->mScale:F
iget v3, p0, Lcom/pinguo/album/views/TileImageView;->mRotation:I
invoke-direct {p0, v0, v1, v2, v3}, Lcom/pinguo/album/views/TileImageView;->layoutTiles(IIFI)V
invoke-virtual {p0}, Lcom/pinguo/album/views/TileImageView;->invalidate()V
return-void
:cond_20
iget-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mModel:Lcom/pinguo/album/views/TileImageView$TileSource;
invoke-interface {v0}, Lcom/pinguo/album/views/TileImageView$TileSource;->getScreenNail()Lcom/pinguo/album/opengles/ScreenNail;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/album/views/TileImageView;->setScreenNail(Lcom/pinguo/album/opengles/ScreenNail;)V
iget-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mModel:Lcom/pinguo/album/views/TileImageView$TileSource;
invoke-interface {v0}, Lcom/pinguo/album/views/TileImageView$TileSource;->getImageWidth()I
move-result v0
iput v0, p0, Lcom/pinguo/album/views/TileImageView;->mImageWidth:I
iget-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mModel:Lcom/pinguo/album/views/TileImageView$TileSource;
invoke-interface {v0}, Lcom/pinguo/album/views/TileImageView$TileSource;->getImageHeight()I
move-result v0
iput v0, p0, Lcom/pinguo/album/views/TileImageView;->mImageHeight:I
iget-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mModel:Lcom/pinguo/album/views/TileImageView$TileSource;
invoke-interface {v0}, Lcom/pinguo/album/views/TileImageView$TileSource;->getLevelCount()I
move-result v0
iput v0, p0, Lcom/pinguo/album/views/TileImageView;->mLevelCount:I
goto :goto_11
.end method
.method protected onLayout(ZIIII)V
.registers 10
invoke-super/range {p0 .. p5}, Lcom/pinguo/album/views/GLBaseView;->onLayout(ZIIII)V
if-eqz p1, :cond_10
iget v0, p0, Lcom/pinguo/album/views/TileImageView;->mCenterX:I
iget v1, p0, Lcom/pinguo/album/views/TileImageView;->mCenterY:I
iget v2, p0, Lcom/pinguo/album/views/TileImageView;->mScale:F
iget v3, p0, Lcom/pinguo/album/views/TileImageView;->mRotation:I
invoke-direct {p0, v0, v1, v2, v3}, Lcom/pinguo/album/views/TileImageView;->layoutTiles(IIFI)V
:cond_10
return-void
.end method
.method public prepareTextures()V
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lcom/pinguo/album/views/TileImageView;->mTileDecoder:Lcom/pinguo/album/Future;
if-nez v1, :cond_12
iget-object v1, p0, Lcom/pinguo/album/views/TileImageView;->mThreadPool:Lcom/pinguo/album/AlbumThreadPool;
new-instance v2, Lcom/pinguo/album/views/TileImageView$TileDecoder;
invoke-direct {v2, p0, v0}, Lcom/pinguo/album/views/TileImageView$TileDecoder;-><init>(Lcom/pinguo/album/views/TileImageView;Lcom/pinguo/album/views/TileImageView$TileDecoder;)V
invoke-virtual {v1, v2}, Lcom/pinguo/album/AlbumThreadPool;->submit(Lcom/pinguo/album/AlbumThreadPool$Job;)Lcom/pinguo/album/Future;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/album/views/TileImageView;->mTileDecoder:Lcom/pinguo/album/Future;
:cond_12
iget-boolean v1, p0, Lcom/pinguo/album/views/TileImageView;->mIsTextureFreed:Z
if-eqz v1, :cond_2b
iget v1, p0, Lcom/pinguo/album/views/TileImageView;->mCenterX:I
iget v2, p0, Lcom/pinguo/album/views/TileImageView;->mCenterY:I
iget v3, p0, Lcom/pinguo/album/views/TileImageView;->mScale:F
iget v4, p0, Lcom/pinguo/album/views/TileImageView;->mRotation:I
invoke-direct {p0, v1, v2, v3, v4}, Lcom/pinguo/album/views/TileImageView;->layoutTiles(IIFI)V
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/album/views/TileImageView;->mIsTextureFreed:Z
iget-object v1, p0, Lcom/pinguo/album/views/TileImageView;->mModel:Lcom/pinguo/album/views/TileImageView$TileSource;
if-nez v1, :cond_2c
:goto_28
invoke-virtual {p0, v0}, Lcom/pinguo/album/views/TileImageView;->setScreenNail(Lcom/pinguo/album/opengles/ScreenNail;)V
:cond_2b
return-void
:cond_2c
iget-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mModel:Lcom/pinguo/album/views/TileImageView$TileSource;
invoke-interface {v0}, Lcom/pinguo/album/views/TileImageView$TileSource;->getScreenNail()Lcom/pinguo/album/opengles/ScreenNail;
move-result-object v0
goto :goto_28
.end method
.method declared-synchronized queueForDecode(Lcom/pinguo/album/views/TileImageView$Tile;)V
.registers 4
monitor-enter p0
:try_start_1
iget v0, p1, Lcom/pinguo/album/views/TileImageView$Tile;->mTileState:I
const/4 v1, 0x1
if-ne v0, v1, :cond_14
const/4 v0, 0x2
iput v0, p1, Lcom/pinguo/album/views/TileImageView$Tile;->mTileState:I
iget-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mDecodeQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
invoke-virtual {v0, p1}, Lcom/pinguo/album/views/TileImageView$TileQueue;->push(Lcom/pinguo/album/views/TileImageView$Tile;)Z
move-result v0
if-eqz v0, :cond_14
invoke-virtual {p0}, Ljava/lang/Object;->notifyAll()V
:try_end_14
.catchall {:try_start_1 .. :try_end_14} :catchall_16
:cond_14
monitor-exit p0
return-void
:catchall_16
move-exception v0
monitor-exit p0
throw v0
.end method
.method  queueForUpload(Lcom/pinguo/album/views/TileImageView$Tile;)V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mUploadQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
invoke-virtual {v0, p1}, Lcom/pinguo/album/views/TileImageView$TileQueue;->push(Lcom/pinguo/album/views/TileImageView$Tile;)Z
monitor-exit p0
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_1d
iget-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mTileUploader:Lcom/pinguo/album/views/TileImageView$TileUploader;
iget-object v0, v0, Lcom/pinguo/album/views/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
move-result v0
if-eqz v0, :cond_1c
invoke-virtual {p0}, Lcom/pinguo/album/views/TileImageView;->getGLController()Lcom/pinguo/album/views/GLController;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/album/views/TileImageView;->mTileUploader:Lcom/pinguo/album/views/TileImageView$TileUploader;
invoke-interface {v0, v1}, Lcom/pinguo/album/views/GLController;->addOnGLIdleListener(Lcom/pinguo/album/views/GLController$OnGLIdleListener;)V
:cond_1c
return-void
:catchall_1d
move-exception v0
:try_start_1e
monitor-exit p0
:try_end_1f
.catchall {:try_start_1e .. :try_end_1f} :catchall_1d
throw v0
.end method
.method declared-synchronized recycleTile(Lcom/pinguo/album/views/TileImageView$Tile;)V
.registers 4
monitor-enter p0
:try_start_1
iget v0, p1, Lcom/pinguo/album/views/TileImageView$Tile;->mTileState:I
const/4 v1, 0x4
if-ne v0, v1, :cond_c
const/16 v0, 0x20
iput v0, p1, Lcom/pinguo/album/views/TileImageView$Tile;->mTileState:I
:goto_a
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_26
monitor-exit p0
return-void
:cond_c
const/16 v0, 0x40
:try_start_e
iput v0, p1, Lcom/pinguo/album/views/TileImageView$Tile;->mTileState:I
iget-object v0, p1, Lcom/pinguo/album/views/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
if-eqz v0, :cond_20
invoke-static {}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->getInstance()Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;
move-result-object v0
iget-object v1, p1, Lcom/pinguo/album/views/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
invoke-virtual {v0, v1}, Lcom/pinguo/album/data/utils/PGAlbumBitmapPool;->put(Landroid/graphics/Bitmap;)Z
const/4 v0, 0x0
iput-object v0, p1, Lcom/pinguo/album/views/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
:cond_20
iget-object v0, p0, Lcom/pinguo/album/views/TileImageView;->mRecycledQueue:Lcom/pinguo/album/views/TileImageView$TileQueue;
invoke-virtual {v0, p1}, Lcom/pinguo/album/views/TileImageView$TileQueue;->push(Lcom/pinguo/album/views/TileImageView$Tile;)Z
:try_end_25
.catchall {:try_start_e .. :try_end_25} :catchall_26
goto :goto_a
:catchall_26
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected render(Lcom/pinguo/album/opengles/GLESCanvas;)V
.registers 26
const/4 v2, 0x1
move-object/from16 v0, p0
iput v2, v0, Lcom/pinguo/album/views/TileImageView;->mUploadQuota:I
const/4 v2, 0x1
move-object/from16 v0, p0
iput-boolean v2, v0, Lcom/pinguo/album/views/TileImageView;->mRenderComplete:Z
move-object/from16 v0, p0
iget v6, v0, Lcom/pinguo/album/views/TileImageView;->mLevel:I
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/album/views/TileImageView;->mRotation:I
move/from16 v22, v0
const/16 v18, 0x0
if-eqz v22, :cond_1a
or-int/lit8 v18, v18, 0x2
:cond_1a
if-eqz v18, :cond_55
move-object/from16 v0, p1
move/from16 v1, v18
invoke-interface {v0, v1}, Lcom/pinguo/album/opengles/GLESCanvas;->save(I)V
if-eqz v22, :cond_55
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/album/views/TileImageView;->getWidth()I
move-result v2
div-int/lit8 v16, v2, 0x2
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/album/views/TileImageView;->getHeight()I
move-result v2
div-int/lit8 v17, v2, 0x2
move/from16 v0, v16
int-to-float v2, v0
move/from16 v0, v17
int-to-float v3, v0
move-object/from16 v0, p1
invoke-interface {v0, v2, v3}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V
move/from16 v0, v22
int-to-float v2, v0
const/4 v3, 0x0
const/4 v10, 0x0
const/high16 v11, 0x3f80
move-object/from16 v0, p1
invoke-interface {v0, v2, v3, v10, v11}, Lcom/pinguo/album/opengles/GLESCanvas;->rotate(FFFF)V
move/from16 v0, v16
neg-int v2, v0
int-to-float v2, v2
move/from16 v0, v17
neg-int v3, v0
int-to-float v3, v3
move-object/from16 v0, p1
invoke-interface {v0, v2, v3}, Lcom/pinguo/album/opengles/GLESCanvas;->translate(FF)V
:try_start_55
:cond_55
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/album/views/TileImageView;->mLevelCount:I
if-eq v6, v2, :cond_d5
invoke-direct/range {p0 .. p0}, Lcom/pinguo/album/views/TileImageView;->isScreenNailAnimating()Z
move-result v2
if-nez v2, :cond_d5
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/album/views/TileImageView;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;
if-eqz v2, :cond_6e
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/album/views/TileImageView;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;
invoke-interface {v2}, Lcom/pinguo/album/opengles/ScreenNail;->noDraw()V
:cond_6e
sget v2, Lcom/pinguo/album/views/TileImageView;->sTileSize:I
shl-int v23, v2, v6
move/from16 v0, v23
int-to-float v2, v0
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/album/views/TileImageView;->mScale:F
mul-float v9, v2, v3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/album/views/TileImageView;->mTileRange:Landroid/graphics/Rect;
move-object/from16 v21, v0
move-object/from16 v0, v21
iget v5, v0, Landroid/graphics/Rect;->top:I
const/16 v19, 0x0
:goto_87
move-object/from16 v0, v21
iget v2, v0, Landroid/graphics/Rect;->bottom:I
:try_end_8b
.catchall {:try_start_55 .. :try_end_8b} :catchall_113
if-lt v5, v2, :cond_a2
:goto_8d
:cond_8d
if-eqz v18, :cond_92
invoke-interface/range {p1 .. p1}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V
:cond_92
move-object/from16 v0, p0
iget-boolean v2, v0, Lcom/pinguo/album/views/TileImageView;->mRenderComplete:Z
if-eqz v2, :cond_11a
move-object/from16 v0, p0
iget-boolean v2, v0, Lcom/pinguo/album/views/TileImageView;->mBackgroundTileUploaded:Z
if-nez v2, :cond_a1
invoke-direct/range {p0 .. p1}, Lcom/pinguo/album/views/TileImageView;->uploadBackgroundTiles(Lcom/pinguo/album/opengles/GLESCanvas;)V
:cond_a1
:goto_a1
return-void
:try_start_a2
:cond_a2
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/album/views/TileImageView;->mOffsetY:I
int-to-float v2, v2
move/from16 v0, v19
int-to-float v3, v0
mul-float/2addr v3, v9
add-float v8, v2, v3
move-object/from16 v0, v21
iget v4, v0, Landroid/graphics/Rect;->left:I
const/16 v20, 0x0
:goto_b3
move-object/from16 v0, v21
iget v2, v0, Landroid/graphics/Rect;->right:I
if-lt v4, v2, :cond_be
add-int v5, v5, v23
add-int/lit8 v19, v19, 0x1
goto :goto_87
:cond_be
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/album/views/TileImageView;->mOffsetX:I
int-to-float v2, v2
move/from16 v0, v20
int-to-float v3, v0
mul-float/2addr v3, v9
add-float v7, v2, v3
move-object/from16 v2, p0
move-object/from16 v3, p1
invoke-virtual/range {v2 .. v9}, Lcom/pinguo/album/views/TileImageView;->drawTile(Lcom/pinguo/album/opengles/GLESCanvas;IIIFFF)V
add-int v4, v4, v23
add-int/lit8 v20, v20, 0x1
goto :goto_b3
:cond_d5
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/album/views/TileImageView;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;
if-eqz v2, :cond_8d
move-object/from16 v0, p0
iget-object v10, v0, Lcom/pinguo/album/views/TileImageView;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;
move-object/from16 v0, p0
iget v12, v0, Lcom/pinguo/album/views/TileImageView;->mOffsetX:I
move-object/from16 v0, p0
iget v13, v0, Lcom/pinguo/album/views/TileImageView;->mOffsetY:I
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/album/views/TileImageView;->mImageWidth:I
int-to-float v2, v2
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/album/views/TileImageView;->mScale:F
mul-float/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v14
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/album/views/TileImageView;->mImageHeight:I
int-to-float v2, v2
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/album/views/TileImageView;->mScale:F
mul-float/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v15
move-object/from16 v11, p1
invoke-interface/range {v10 .. v15}, Lcom/pinguo/album/opengles/ScreenNail;->draw(Lcom/pinguo/album/opengles/GLESCanvas;IIII)V
invoke-direct/range {p0 .. p0}, Lcom/pinguo/album/views/TileImageView;->isScreenNailAnimating()Z
move-result v2
if-eqz v2, :cond_8d
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/album/views/TileImageView;->invalidate()V
:try_end_111
.catchall {:try_start_a2 .. :try_end_111} :catchall_113
goto/16 :goto_8d
:catchall_113
move-exception v2
if-eqz v18, :cond_119
invoke-interface/range {p1 .. p1}, Lcom/pinguo/album/opengles/GLESCanvas;->restore()V
:cond_119
throw v2
:cond_11a
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/album/views/TileImageView;->invalidate()V
goto :goto_a1
.end method
.method public setModel(Lcom/pinguo/album/views/TileImageView$TileSource;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/TileImageView;->mModel:Lcom/pinguo/album/views/TileImageView$TileSource;
if-eqz p1, :cond_7
invoke-virtual {p0}, Lcom/pinguo/album/views/TileImageView;->notifyModelInvalidated()V
:cond_7
return-void
.end method
.method public setPosition(IIFI)Z
.registers 6
iget v0, p0, Lcom/pinguo/album/views/TileImageView;->mCenterX:I
if-ne v0, p1, :cond_14
iget v0, p0, Lcom/pinguo/album/views/TileImageView;->mCenterY:I
if-ne v0, p2, :cond_14
iget v0, p0, Lcom/pinguo/album/views/TileImageView;->mScale:F
cmpl-float v0, v0, p3
if-nez v0, :cond_14
iget v0, p0, Lcom/pinguo/album/views/TileImageView;->mRotation:I
if-ne v0, p4, :cond_14
const/4 v0, 0x0
:goto_13
return v0
:cond_14
iput p1, p0, Lcom/pinguo/album/views/TileImageView;->mCenterX:I
iput p2, p0, Lcom/pinguo/album/views/TileImageView;->mCenterY:I
iput p3, p0, Lcom/pinguo/album/views/TileImageView;->mScale:F
iput p4, p0, Lcom/pinguo/album/views/TileImageView;->mRotation:I
invoke-direct {p0, p1, p2, p3, p4}, Lcom/pinguo/album/views/TileImageView;->layoutTiles(IIFI)V
invoke-virtual {p0}, Lcom/pinguo/album/views/TileImageView;->invalidate()V
const/4 v0, 0x1
goto :goto_13
.end method
.method public setScreenNail(Lcom/pinguo/album/opengles/ScreenNail;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/album/views/TileImageView;->mScreenNail:Lcom/pinguo/album/opengles/ScreenNail;
return-void
.end method