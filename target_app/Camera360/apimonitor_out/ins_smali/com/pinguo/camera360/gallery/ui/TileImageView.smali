.class public Lcom/pinguo/camera360/gallery/ui/TileImageView;
.super Lcom/pinguo/camera360/gallery/ui/GLView;
.source "TileImageView.java"
.field private static final BITMAP_SIZE:I = 0x100
.field public static final SIZE_UNKNOWN:I = -0x1
.field private static final STATE_ACTIVATED:I = 0x1
.field private static final STATE_DECODED:I = 0x8
.field private static final STATE_DECODE_FAIL:I = 0x10
.field private static final STATE_DECODING:I = 0x4
.field private static final STATE_IN_QUEUE:I = 0x2
.field private static final STATE_RECYCLED:I = 0x40
.field private static final STATE_RECYCLING:I = 0x20
.field private static final TAG:Ljava/lang/String; = "TileImageView"
.field private static final TILE_BORDER:I = 0x0
.field private static final TILE_SIZE:I = 0x100
.field private static final UPLOAD_LIMIT:I = 0x1
.field private static final sTilePool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
.field private final mActiveRange:[Landroid/graphics/Rect;
.field private final mActiveTiles:Landroid/support/v4/util/LongSparseArray;
.field private mBackgroundTileUploaded:Z
.field protected mCenterX:I
.field protected mCenterY:I
.field private final mDecodeQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
.field protected mImageHeight:I
.field protected mImageWidth:I
.field private mIsTextureFreed:Z
.field private mLevel:I
.field protected mLevelCount:I
.field private mModel:Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;
.field private mOffsetX:I
.field private mOffsetY:I
.field private final mRecycledQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
.field private mRenderComplete:Z
.field protected mRotation:I
.field protected mScale:F
.field private mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
.field private final mSourceRect:Landroid/graphics/RectF;
.field private final mTargetRect:Landroid/graphics/RectF;
.field private final mThreadPool:Lcom/pinguo/camera360/gallery/util/ThreadPool;
.field private mTileDecoder:Lcom/pinguo/camera360/gallery/util/Future;
.field private final mTileRange:Landroid/graphics/Rect;
.field private final mTileUploader:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileUploader;
.field private final mUploadQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
.field private mUploadQuota:I
.method static constructor <clinit>()V
.registers 4
const/16 v3, 0x100
new-instance v0, Lcom/pinguo/camera360/gallery/data/BitmapPool;
const/16 v1, 0x80
const-string/jumbo v2, "TileImagePool"
invoke-direct {v0, v3, v3, v1, v2}, Lcom/pinguo/camera360/gallery/data/BitmapPool;-><init>(IIILjava/lang/String;)V
sput-object v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->sTilePool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
return-void
.end method
.method public constructor <init>(Lcom/pinguo/camera360/gallery/AlbumActivity;)V
.registers 6
const/4 v2, 0x0
const/4 v1, -0x1
const/4 v3, 0x0
invoke-direct {p0}, Lcom/pinguo/camera360/gallery/ui/GLView;-><init>()V
iput v2, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevel:I
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;
new-instance v0, Landroid/graphics/RectF;
invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;
new-instance v0, Landroid/support/v4/util/LongSparseArray;
invoke-direct {v0}, Landroid/support/v4/util/LongSparseArray;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
new-instance v0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
invoke-direct {v0, v3}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;-><init>(Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mRecycledQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
new-instance v0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
invoke-direct {v0, v3}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;-><init>(Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mUploadQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
new-instance v0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
invoke-direct {v0, v3}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;-><init>(Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mDecodeQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageWidth:I
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageHeight:I
new-instance v0, Landroid/graphics/Rect;
invoke-direct {v0}, Landroid/graphics/Rect;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;
const/4 v0, 0x2
new-array v0, v0, [Landroid/graphics/Rect;
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
aput-object v1, v0, v2
const/4 v1, 0x1
new-instance v2, Landroid/graphics/Rect;
invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V
aput-object v2, v0, v1
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;
new-instance v0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileUploader;
invoke-direct {v0, p0, v3}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileUploader;-><init>(Lcom/pinguo/camera360/gallery/ui/TileImageView;Lcom/pinguo/camera360/gallery/ui/TileImageView$TileUploader;)V
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mTileUploader:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileUploader;
invoke-interface {p1}, Lcom/pinguo/camera360/gallery/AlbumActivity;->getThreadPool()Lcom/pinguo/camera360/gallery/util/ThreadPool;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mThreadPool:Lcom/pinguo/camera360/gallery/util/ThreadPool;
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mThreadPool:Lcom/pinguo/camera360/gallery/util/ThreadPool;
new-instance v1, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;
invoke-direct {v1, p0, v3}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;-><init>(Lcom/pinguo/camera360/gallery/ui/TileImageView;Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;)V
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/util/ThreadPool;->submit(Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;)Lcom/pinguo/camera360/gallery/util/Future;
move-result-object v0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mTileDecoder:Lcom/pinguo/camera360/gallery/util/Future;
return-void
.end method
.method static synthetic access$0(Lcom/pinguo/camera360/gallery/ui/TileImageView;)Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mUploadQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
return-object v0
.end method
.method static synthetic access$1()Lcom/pinguo/camera360/gallery/data/BitmapPool;
.registers 1
sget-object v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->sTilePool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
return-object v0
.end method
.method static synthetic access$2(Lcom/pinguo/camera360/gallery/ui/TileImageView;)Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mModel:Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;
return-object v0
.end method
.method static synthetic access$3(Lcom/pinguo/camera360/gallery/ui/TileImageView;III)Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->getTile(III)Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
move-result-object v0
return-object v0
.end method
.method static synthetic access$4(Lcom/pinguo/camera360/gallery/ui/TileImageView;)I
.registers 2
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevel:I
return v0
.end method
.method static synthetic access$5(Lcom/pinguo/camera360/gallery/ui/TileImageView;)Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mDecodeQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
return-object v0
.end method
.method private activateTile(III)V
.registers 9
invoke-static {p1, p2, p3}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->makeTileKey(III)J
move-result-wide v0
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v3, v0, v1}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
if-eqz v2, :cond_17
iget v3, v2, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileState:I
const/4 v4, 0x2
if-ne v3, v4, :cond_16
const/4 v3, 0x1
iput v3, v2, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileState:I
:cond_16
:goto_16
return-void
:cond_17
invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->obtainTile(III)Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
move-result-object v2
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v3, v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->put(JLjava/lang/Object;)V
goto :goto_16
.end method
.method static drawTile(Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;Lcom/pinguo/camera360/gallery/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
.registers 10
const/4 v5, 0x0
const/high16 v4, 0x4380
const/high16 v3, 0x4000
:goto_5
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->isContentValid()Z
move-result v1
if-eqz v1, :cond_13
invoke-virtual {p2, v5, v5}, Landroid/graphics/RectF;->offset(FF)V
invoke-interface {p1, p0, p2, p3}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->drawTexture(Lcom/pinguo/camera360/gallery/ui/BasicTexture;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
const/4 v1, 0x1
:goto_12
return v1
:cond_13
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->getParentTile()Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
move-result-object v0
if-nez v0, :cond_1b
const/4 v1, 0x0
goto :goto_12
:cond_1b
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mX:I
iget v2, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mX:I
if-ne v1, v2, :cond_3d
iget v1, p2, Landroid/graphics/RectF;->left:F
div-float/2addr v1, v3
iput v1, p2, Landroid/graphics/RectF;->left:F
iget v1, p2, Landroid/graphics/RectF;->right:F
div-float/2addr v1, v3
iput v1, p2, Landroid/graphics/RectF;->right:F
:goto_2b
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mY:I
iget v2, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mY:I
if-ne v1, v2, :cond_4a
iget v1, p2, Landroid/graphics/RectF;->top:F
div-float/2addr v1, v3
iput v1, p2, Landroid/graphics/RectF;->top:F
iget v1, p2, Landroid/graphics/RectF;->bottom:F
div-float/2addr v1, v3
iput v1, p2, Landroid/graphics/RectF;->bottom:F
:goto_3b
move-object p0, v0
goto :goto_5
:cond_3d
iget v1, p2, Landroid/graphics/RectF;->left:F
add-float/2addr v1, v4
div-float/2addr v1, v3
iput v1, p2, Landroid/graphics/RectF;->left:F
iget v1, p2, Landroid/graphics/RectF;->right:F
add-float/2addr v1, v4
div-float/2addr v1, v3
iput v1, p2, Landroid/graphics/RectF;->right:F
goto :goto_2b
:cond_4a
iget v1, p2, Landroid/graphics/RectF;->top:F
add-float/2addr v1, v4
div-float/2addr v1, v3
iput v1, p2, Landroid/graphics/RectF;->top:F
iget v1, p2, Landroid/graphics/RectF;->bottom:F
add-float/2addr v1, v4
div-float/2addr v1, v3
iput v1, p2, Landroid/graphics/RectF;->bottom:F
goto :goto_3b
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
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->getWidth()I
move-result v19
move/from16 v0, v19
int-to-double v0, v0
move-wide/from16 v16, v0
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->getHeight()I
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
const/16 v19, 0x100
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
iget v0, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageWidth:I
move/from16 v19, v0
move/from16 v0, v19
invoke-static {v0, v11}, Ljava/lang/Math;->min(II)I
move-result v11
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageHeight:I
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
invoke-direct/range {v0 .. v6}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V
return-void
.end method
.method private getTile(III)Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
.registers 7
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-static {p1, p2, p3}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->makeTileKey(III)J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Landroid/support/v4/util/LongSparseArray;->get(J)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
return-object v0
.end method
.method private isScreenNailAnimating()Z
.registers 2
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
instance-of v0, v0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
check-cast v0, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;
invoke-virtual {v0}, Lcom/pinguo/camera360/gallery/ui/BitmapScreenNail;->isAnimating()Z
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
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->getWidth()I
move-result v21
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->getHeight()I
move-result v14
const/high16 v3, 0x3f80
div-float v3, v3, p3
invoke-static {v3}, Lcom/pinguo/camera360/gallery/util/Utils;->floorLog2(F)I
move-result v3
const/4 v5, 0x0
move-object/from16 v0, p0
iget v6, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevelCount:I
invoke-static {v3, v5, v6}, Lcom/pinguo/camera360/gallery/util/Utils;->clamp(III)I
move-result v3
move-object/from16 v0, p0
iput v3, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevel:I
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevel:I
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevelCount:I
if-eq v3, v5, :cond_a5
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;
move-object/from16 v0, p0
iget v7, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevel:I
move-object/from16 v3, p0
move/from16 v5, p1
move/from16 v6, p2
move/from16 v8, p3
move/from16 v9, p4
invoke-direct/range {v3 .. v9}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIIFI)V
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
iput v3, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mOffsetX:I
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
iput v3, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mOffsetY:I
const/4 v3, 0x1
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevel:I
shl-int/2addr v3, v5
int-to-float v3, v3
mul-float v3, v3, p3
const/high16 v5, 0x3f40
cmpl-float v3, v3, v5
if-lez v3, :cond_a0
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevel:I
add-int/lit8 v13, v3, -0x1
:goto_7b
const/4 v3, 0x0
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevelCount:I
add-int/lit8 v5, v5, -0x2
invoke-static {v13, v5}, Ljava/lang/Math;->min(II)I
move-result v5
invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I
move-result v13
add-int/lit8 v3, v13, 0x2
move-object/from16 v0, p0
iget v5, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevelCount:I
invoke-static {v3, v5}, Ljava/lang/Math;->min(II)I
move-result v12
move-object/from16 v0, p0
iget-object v4, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mActiveRange:[Landroid/graphics/Rect;
move v9, v13
:goto_99
if-lt v9, v12, :cond_d2
rem-int/lit8 v3, p4, 0x5a
if-eqz v3, :cond_e4
:goto_9f
return-void
:cond_a0
move-object/from16 v0, p0
iget v13, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevel:I
goto :goto_7b
:cond_a5
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevel:I
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
iput v3, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mOffsetX:I
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
iput v3, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mOffsetY:I
goto :goto_7b
:cond_d2
sub-int v3, v9, v13
aget-object v6, v4, v3
move-object/from16 v5, p0
move/from16 v7, p1
move/from16 v8, p2
move/from16 v10, p4
invoke-direct/range {v5 .. v10}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->getRange(Landroid/graphics/Rect;IIII)V
add-int/lit8 v9, v9, 0x1
goto :goto_99
:cond_e4
monitor-enter p0
:try_start_e5
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mDecodeQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->clean()V
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mUploadQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->clean()V
const/4 v3, 0x0
move-object/from16 v0, p0
iput-boolean v3, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mBackgroundTileUploaded:Z
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
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
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->invalidate()V
goto :goto_9f
:try_start_10d
:cond_10d
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v3, v9}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v20
check-cast v20, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
move-object/from16 v0, v20
iget v15, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileLevel:I
if-lt v15, v13, :cond_131
if-ge v15, v12, :cond_131
sub-int v3, v15, v13
aget-object v3, v4, v3
move-object/from16 v0, v20
iget v5, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mX:I
move-object/from16 v0, v20
iget v6, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mY:I
invoke-virtual {v3, v5, v6}, Landroid/graphics/Rect;->contains(II)Z
move-result v3
if-nez v3, :cond_143
:cond_131
move-object/from16 v0, p0
iget-object v3, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v3, v9}, Landroid/support/v4/util/LongSparseArray;->removeAt(I)V
add-int/lit8 v9, v9, -0x1
add-int/lit8 v16, v16, -0x1
move-object/from16 v0, p0
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->recycleTile(Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;)V
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
const/16 v3, 0x100
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
invoke-direct {v0, v1, v2, v9}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->activateTile(III)V
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
.method private declared-synchronized obtainTile(III)Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
.registers 6
monitor-enter p0
:try_start_1
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mRecycledQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
invoke-virtual {v1}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->pop()Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
move-result-object v0
if-eqz v0, :cond_11
const/4 v1, 0x1
iput v1, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileState:I
invoke-virtual {v0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->update(III)V
:goto_f
:try_end_f
.catchall {:try_start_1 .. :try_end_f} :catchall_17
monitor-exit p0
return-object v0
:cond_11
:try_start_11
new-instance v0, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;-><init>(Lcom/pinguo/camera360/gallery/ui/TileImageView;III)V
:try_end_16
.catchall {:try_start_11 .. :try_end_16} :catchall_17
goto :goto_f
:catchall_17
move-exception v1
monitor-exit p0
throw v1
.end method
.method private uploadBackgroundTiles(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
.registers 6
const/4 v3, 0x1
iput-boolean v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mBackgroundTileUploaded:Z
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I
move-result v1
const/4 v0, 0x0
:goto_a
if-lt v0, v1, :cond_d
return-void
:cond_d
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
if-eqz v2, :cond_20
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->isContentValid()Z
move-result v3
if-nez v3, :cond_20
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->queueForDecode(Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;)V
:cond_20
add-int/lit8 v0, v0, 0x1
goto :goto_a
.end method
.method  decodeTile(Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;)Z
.registers 6
const/4 v1, 0x0
monitor-enter p0
:try_start_2
iget v2, p1, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileState:I
const/4 v3, 0x2
if-eq v2, v3, :cond_a
monitor-exit p0
move v0, v1
:goto_9
return v0
:cond_a
const/4 v2, 0x4
iput v2, p1, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileState:I
monitor-exit p0
:try_end_e
.catchall {:try_start_2 .. :try_end_e} :catchall_33
invoke-virtual {p1}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->decode()Z
move-result v0
monitor-enter p0
:try_start_13
iget v2, p1, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileState:I
const/16 v3, 0x20
if-ne v2, v3, :cond_36
const/16 v2, 0x40
iput v2, p1, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileState:I
iget-object v2, p1, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
if-eqz v2, :cond_2b
sget-object v2, Lcom/pinguo/camera360/gallery/ui/TileImageView;->sTilePool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
iget-object v3, p1, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
invoke-virtual {v2, v3}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V
const/4 v2, 0x0
iput-object v2, p1, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
:cond_2b
iget-object v2, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mRecycledQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
invoke-virtual {v2, p1}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->push(Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;)Z
monitor-exit p0
:try_end_31
.catchall {:try_start_13 .. :try_end_31} :catchall_3e
move v0, v1
goto :goto_9
:catchall_33
move-exception v1
:try_start_34
monitor-exit p0
:try_end_35
.catchall {:try_start_34 .. :try_end_35} :catchall_33
throw v1
:cond_36
if-eqz v0, :cond_41
const/16 v1, 0x8
:try_start_3a
:goto_3a
iput v1, p1, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileState:I
monitor-exit p0
goto :goto_9
:catchall_3e
move-exception v1
monitor-exit p0
:try_end_40
.catchall {:try_start_3a .. :try_end_40} :catchall_3e
throw v1
:cond_41
const/16 v1, 0x10
goto :goto_3a
.end method
.method public drawTile(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIIFFF)V
.registers 20
iget-object v5, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mSourceRect:Landroid/graphics/RectF;
iget-object v6, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mTargetRect:Landroid/graphics/RectF;
add-float v8, p5, p7
add-float v9, p6, p7
move/from16 v0, p5
move/from16 v1, p6
invoke-virtual {v6, v0, v1, v8, v9}, Landroid/graphics/RectF;->set(FFFF)V
const/4 v8, 0x0
const/4 v9, 0x0
const/high16 v10, 0x4380
const/high16 v11, 0x4380
invoke-virtual {v5, v8, v9, v10, v11}, Landroid/graphics/RectF;->set(FFFF)V
move/from16 v0, p4
invoke-direct {p0, p2, p3, v0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->getTile(III)Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
move-result-object v7
if-eqz v7, :cond_51
invoke-virtual {v7}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->isContentValid()Z
move-result v8
if-nez v8, :cond_39
iget v8, v7, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileState:I
const/16 v9, 0x8
if-ne v8, v9, :cond_44
iget v8, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mUploadQuota:I
if-lez v8, :cond_40
iget v8, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mUploadQuota:I
add-int/lit8 v8, v8, -0x1
iput v8, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mUploadQuota:I
invoke-virtual {v7, p1}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->updateContent(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
:cond_39
:goto_39
invoke-static {v7, p1, v5, v6}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->drawTile(Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;Lcom/pinguo/camera360/gallery/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)Z
move-result v8
if-eqz v8, :cond_51
:goto_3f
:cond_3f
return-void
:cond_40
const/4 v8, 0x0
iput-boolean v8, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mRenderComplete:Z
goto :goto_39
:cond_44
iget v8, v7, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileState:I
const/16 v9, 0x10
if-eq v8, v9, :cond_39
const/4 v8, 0x0
iput-boolean v8, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mRenderComplete:Z
invoke-virtual {p0, v7}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->queueForDecode(Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;)V
goto :goto_39
:cond_51
iget-object v8, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
if-eqz v8, :cond_3f
const/16 v8, 0x100
shl-int v4, v8, p4
iget-object v8, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
invoke-interface {v8}, Lcom/pinguo/camera360/gallery/ui/ScreenNail;->getWidth()I
move-result v8
int-to-float v8, v8
iget v9, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageWidth:I
int-to-float v9, v9
div-float v2, v8, v9
iget-object v8, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
invoke-interface {v8}, Lcom/pinguo/camera360/gallery/ui/ScreenNail;->getHeight()I
move-result v8
int-to-float v8, v8
iget v9, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageHeight:I
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
iget-object v8, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
invoke-interface {v8, p1, v5, v6}, Lcom/pinguo/camera360/gallery/ui/ScreenNail;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;Landroid/graphics/RectF;Landroid/graphics/RectF;)V
goto :goto_3f
.end method
.method public freeTextures()V
.registers 8
const/4 v6, 0x0
const/4 v5, 0x0
const/4 v4, 0x1
iput-boolean v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mIsTextureFreed:Z
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mTileDecoder:Lcom/pinguo/camera360/gallery/util/Future;
if-eqz v4, :cond_15
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mTileDecoder:Lcom/pinguo/camera360/gallery/util/Future;
invoke-interface {v4}, Lcom/pinguo/camera360/gallery/util/Future;->cancel()V
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mTileDecoder:Lcom/pinguo/camera360/gallery/util/Future;
invoke-interface {v4}, Lcom/pinguo/camera360/gallery/util/Future;->get()Ljava/lang/Object;
iput-object v6, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mTileDecoder:Lcom/pinguo/camera360/gallery/util/Future;
:cond_15
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->size()I
move-result v1
const/4 v0, 0x0
:goto_1c
if-lt v0, v1, :cond_45
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v4}, Landroid/support/v4/util/LongSparseArray;->clear()V
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;
invoke-virtual {v4, v5, v5, v5, v5}, Landroid/graphics/Rect;->set(IIII)V
monitor-enter p0
:try_start_29
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mUploadQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->clean()V
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mDecodeQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->clean()V
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mRecycledQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->pop()Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
move-result-object v3
:goto_39
if-nez v3, :cond_53
monitor-exit p0
:try_end_3c
.catchall {:try_start_29 .. :try_end_3c} :catchall_5d
invoke-virtual {p0, v6}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->setScreenNail(Lcom/pinguo/camera360/gallery/ui/ScreenNail;)V
sget-object v4, Lcom/pinguo/camera360/gallery/ui/TileImageView;->sTilePool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->clear()V
return-void
:cond_45
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v4, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
invoke-virtual {v2}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->recycle()V
add-int/lit8 v0, v0, 0x1
goto :goto_1c
:try_start_53
:cond_53
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->recycle()V
iget-object v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mRecycledQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
invoke-virtual {v4}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->pop()Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
move-result-object v3
goto :goto_39
:catchall_5d
move-exception v4
monitor-exit p0
:try_end_5f
.catchall {:try_start_53 .. :try_end_5f} :catchall_5d
throw v4
.end method
.method public getImageCenter(Landroid/graphics/Point;)V
.registers 10
const/high16 v7, 0x4000
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->getWidth()I
move-result v3
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->getHeight()I
move-result v2
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mRotation:I
rem-int/lit16 v4, v4, 0xb4
if-nez v4, :cond_3b
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageWidth:I
div-int/lit8 v4, v4, 0x2
iget v5, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mCenterX:I
sub-int v1, v4, v5
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageHeight:I
div-int/lit8 v4, v4, 0x2
iget v5, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mCenterY:I
sub-int v0, v4, v5
:goto_20
int-to-float v4, v3
div-float/2addr v4, v7
int-to-float v5, v1
iget v6, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScale:F
mul-float/2addr v5, v6
add-float/2addr v4, v5
invoke-static {v4}, Ljava/lang/Math;->round(F)I
move-result v4
iput v4, p1, Landroid/graphics/Point;->x:I
int-to-float v4, v2
div-float/2addr v4, v7
int-to-float v5, v0
iget v6, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScale:F
mul-float/2addr v5, v6
add-float/2addr v4, v5
invoke-static {v4}, Ljava/lang/Math;->round(F)I
move-result v4
iput v4, p1, Landroid/graphics/Point;->y:I
return-void
:cond_3b
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageHeight:I
div-int/lit8 v4, v4, 0x2
iget v5, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mCenterY:I
sub-int v1, v4, v5
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageWidth:I
div-int/lit8 v4, v4, 0x2
iget v5, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mCenterX:I
sub-int v0, v4, v5
goto :goto_20
.end method
.method protected declared-synchronized invalidateTiles()V
.registers 5
monitor-enter p0
:try_start_1
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mDecodeQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->clean()V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mUploadQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
invoke-virtual {v3}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->clean()V
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->size()I
move-result v1
const/4 v0, 0x0
:goto_12
if-lt v0, v1, :cond_1b
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v3}, Landroid/support/v4/util/LongSparseArray;->clear()V
:try_end_19
.catchall {:try_start_1 .. :try_end_19} :catchall_29
monitor-exit p0
return-void
:try_start_1b
:cond_1b
iget-object v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mActiveTiles:Landroid/support/v4/util/LongSparseArray;
invoke-virtual {v3, v0}, Landroid/support/v4/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v2
check-cast v2, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;
invoke-virtual {p0, v2}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->recycleTile(Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;)V
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
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->invalidateTiles()V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mModel:Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;
if-nez v0, :cond_20
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageWidth:I
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageHeight:I
iput v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevelCount:I
:goto_11
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mCenterX:I
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mCenterY:I
iget v2, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScale:F
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mRotation:I
invoke-direct {p0, v0, v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->layoutTiles(IIFI)V
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->invalidate()V
return-void
:cond_20
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mModel:Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;->getScreenNail()Lcom/pinguo/camera360/gallery/ui/ScreenNail;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->setScreenNail(Lcom/pinguo/camera360/gallery/ui/ScreenNail;)V
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mModel:Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;->getImageWidth()I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageWidth:I
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mModel:Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;->getImageHeight()I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageHeight:I
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mModel:Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;->getLevelCount()I
move-result v0
iput v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevelCount:I
goto :goto_11
.end method
.method protected onLayout(ZIIII)V
.registers 10
invoke-super/range {p0 .. p5}, Lcom/pinguo/camera360/gallery/ui/GLView;->onLayout(ZIIII)V
if-eqz p1, :cond_10
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mCenterX:I
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mCenterY:I
iget v2, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScale:F
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mRotation:I
invoke-direct {p0, v0, v1, v2, v3}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->layoutTiles(IIFI)V
:cond_10
return-void
.end method
.method public prepareTextures()V
.registers 6
const/4 v0, 0x0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mTileDecoder:Lcom/pinguo/camera360/gallery/util/Future;
if-nez v1, :cond_12
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mThreadPool:Lcom/pinguo/camera360/gallery/util/ThreadPool;
new-instance v2, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;
invoke-direct {v2, p0, v0}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;-><init>(Lcom/pinguo/camera360/gallery/ui/TileImageView;Lcom/pinguo/camera360/gallery/ui/TileImageView$TileDecoder;)V
invoke-virtual {v1, v2}, Lcom/pinguo/camera360/gallery/util/ThreadPool;->submit(Lcom/pinguo/camera360/gallery/util/ThreadPool$Job;)Lcom/pinguo/camera360/gallery/util/Future;
move-result-object v1
iput-object v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mTileDecoder:Lcom/pinguo/camera360/gallery/util/Future;
:cond_12
iget-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mIsTextureFreed:Z
if-eqz v1, :cond_2b
iget v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mCenterX:I
iget v2, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mCenterY:I
iget v3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScale:F
iget v4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mRotation:I
invoke-direct {p0, v1, v2, v3, v4}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->layoutTiles(IIFI)V
const/4 v1, 0x0
iput-boolean v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mIsTextureFreed:Z
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mModel:Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;
if-nez v1, :cond_2c
:goto_28
invoke-virtual {p0, v0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->setScreenNail(Lcom/pinguo/camera360/gallery/ui/ScreenNail;)V
:cond_2b
return-void
:cond_2c
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mModel:Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;
invoke-interface {v0}, Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;->getScreenNail()Lcom/pinguo/camera360/gallery/ui/ScreenNail;
move-result-object v0
goto :goto_28
.end method
.method declared-synchronized queueForDecode(Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;)V
.registers 4
monitor-enter p0
:try_start_1
iget v0, p1, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileState:I
const/4 v1, 0x1
if-ne v0, v1, :cond_14
const/4 v0, 0x2
iput v0, p1, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileState:I
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mDecodeQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->push(Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;)Z
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
.method  queueForUpload(Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;)V
.registers 5
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mUploadQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->push(Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;)Z
monitor-exit p0
:try_end_7
.catchall {:try_start_1 .. :try_end_7} :catchall_1d
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mTileUploader:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileUploader;
iget-object v0, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileUploader;->mActive:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
move-result v0
if-eqz v0, :cond_1c
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->getGLRoot()Lcom/pinguo/camera360/gallery/ui/GLRoot;
move-result-object v0
iget-object v1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mTileUploader:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileUploader;
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/GLRoot;->addOnGLIdleListener(Lcom/pinguo/camera360/gallery/ui/GLRoot$OnGLIdleListener;)V
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
.method declared-synchronized recycleTile(Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;)V
.registers 4
monitor-enter p0
:try_start_1
iget v0, p1, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileState:I
const/4 v1, 0x4
if-ne v0, v1, :cond_c
const/16 v0, 0x20
iput v0, p1, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileState:I
:goto_a
:try_end_a
.catchall {:try_start_1 .. :try_end_a} :catchall_24
monitor-exit p0
return-void
:cond_c
const/16 v0, 0x40
:try_start_e
iput v0, p1, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mTileState:I
iget-object v0, p1, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
if-eqz v0, :cond_1e
sget-object v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->sTilePool:Lcom/pinguo/camera360/gallery/data/BitmapPool;
iget-object v1, p1, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
invoke-virtual {v0, v1}, Lcom/pinguo/camera360/gallery/data/BitmapPool;->recycle(Landroid/graphics/Bitmap;)V
const/4 v0, 0x0
iput-object v0, p1, Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;->mDecodedTile:Landroid/graphics/Bitmap;
:cond_1e
iget-object v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mRecycledQueue:Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;
invoke-virtual {v0, p1}, Lcom/pinguo/camera360/gallery/ui/TileImageView$TileQueue;->push(Lcom/pinguo/camera360/gallery/ui/TileImageView$Tile;)Z
:try_end_23
.catchall {:try_start_e .. :try_end_23} :catchall_24
goto :goto_a
:catchall_24
move-exception v0
monitor-exit p0
throw v0
.end method
.method protected render(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
.registers 26
const/4 v2, 0x1
move-object/from16 v0, p0
iput v2, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mUploadQuota:I
const/4 v2, 0x1
move-object/from16 v0, p0
iput-boolean v2, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mRenderComplete:Z
move-object/from16 v0, p0
iget v6, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevel:I
move-object/from16 v0, p0
iget v0, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mRotation:I
move/from16 v22, v0
const/16 v18, 0x0
if-eqz v22, :cond_1a
or-int/lit8 v18, v18, 0x2
:cond_1a
if-eqz v18, :cond_55
move-object/from16 v0, p1
move/from16 v1, v18
invoke-interface {v0, v1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->save(I)V
if-eqz v22, :cond_55
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->getWidth()I
move-result v2
div-int/lit8 v16, v2, 0x2
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->getHeight()I
move-result v2
div-int/lit8 v17, v2, 0x2
move/from16 v0, v16
int-to-float v2, v0
move/from16 v0, v17
int-to-float v3, v0
move-object/from16 v0, p1
invoke-interface {v0, v2, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V
move/from16 v0, v22
int-to-float v2, v0
const/4 v3, 0x0
const/4 v10, 0x0
const/high16 v11, 0x3f80
move-object/from16 v0, p1
invoke-interface {v0, v2, v3, v10, v11}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->rotate(FFFF)V
move/from16 v0, v16
neg-int v2, v0
int-to-float v2, v2
move/from16 v0, v17
neg-int v3, v0
int-to-float v3, v3
move-object/from16 v0, p1
invoke-interface {v0, v2, v3}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->translate(FF)V
:try_start_55
:cond_55
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mLevelCount:I
if-eq v6, v2, :cond_d5
invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->isScreenNailAnimating()Z
move-result v2
if-nez v2, :cond_d5
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
if-eqz v2, :cond_6e
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
invoke-interface {v2}, Lcom/pinguo/camera360/gallery/ui/ScreenNail;->noDraw()V
:cond_6e
const/16 v2, 0x100
shl-int v23, v2, v6
move/from16 v0, v23
int-to-float v2, v0
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScale:F
mul-float v9, v2, v3
move-object/from16 v0, p0
iget-object v0, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mTileRange:Landroid/graphics/Rect;
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
invoke-interface/range {p1 .. p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->restore()V
:cond_92
move-object/from16 v0, p0
iget-boolean v2, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mRenderComplete:Z
if-eqz v2, :cond_11a
move-object/from16 v0, p0
iget-boolean v2, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mBackgroundTileUploaded:Z
if-nez v2, :cond_a1
invoke-direct/range {p0 .. p1}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->uploadBackgroundTiles(Lcom/pinguo/camera360/gallery/ui/GLCanvas;)V
:cond_a1
:goto_a1
return-void
:try_start_a2
:cond_a2
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mOffsetY:I
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
iget v2, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mOffsetX:I
int-to-float v2, v2
move/from16 v0, v20
int-to-float v3, v0
mul-float/2addr v3, v9
add-float v7, v2, v3
move-object/from16 v2, p0
move-object/from16 v3, p1
invoke-virtual/range {v2 .. v9}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->drawTile(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIIFFF)V
add-int v4, v4, v23
add-int/lit8 v20, v20, 0x1
goto :goto_b3
:cond_d5
move-object/from16 v0, p0
iget-object v2, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
if-eqz v2, :cond_8d
move-object/from16 v0, p0
iget-object v10, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
move-object/from16 v0, p0
iget v12, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mOffsetX:I
move-object/from16 v0, p0
iget v13, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mOffsetY:I
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageWidth:I
int-to-float v2, v2
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScale:F
mul-float/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v14
move-object/from16 v0, p0
iget v2, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mImageHeight:I
int-to-float v2, v2
move-object/from16 v0, p0
iget v3, v0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScale:F
mul-float/2addr v2, v3
invoke-static {v2}, Ljava/lang/Math;->round(F)I
move-result v15
move-object/from16 v11, p1
invoke-interface/range {v10 .. v15}, Lcom/pinguo/camera360/gallery/ui/ScreenNail;->draw(Lcom/pinguo/camera360/gallery/ui/GLCanvas;IIII)V
invoke-direct/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->isScreenNailAnimating()Z
move-result v2
if-eqz v2, :cond_8d
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->invalidate()V
:try_end_111
.catchall {:try_start_a2 .. :try_end_111} :catchall_113
goto/16 :goto_8d
:catchall_113
move-exception v2
if-eqz v18, :cond_119
invoke-interface/range {p1 .. p1}, Lcom/pinguo/camera360/gallery/ui/GLCanvas;->restore()V
:cond_119
throw v2
:cond_11a
invoke-virtual/range {p0 .. p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->invalidate()V
goto :goto_a1
.end method
.method public setModel(Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mModel:Lcom/pinguo/camera360/gallery/ui/TileImageView$Model;
if-eqz p1, :cond_7
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->notifyModelInvalidated()V
:cond_7
return-void
.end method
.method public setPosition(IIFI)Z
.registers 6
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mCenterX:I
if-ne v0, p1, :cond_14
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mCenterY:I
if-ne v0, p2, :cond_14
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScale:F
cmpl-float v0, v0, p3
if-nez v0, :cond_14
iget v0, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mRotation:I
if-ne v0, p4, :cond_14
const/4 v0, 0x0
:goto_13
return v0
:cond_14
iput p1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mCenterX:I
iput p2, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mCenterY:I
iput p3, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScale:F
iput p4, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mRotation:I
invoke-direct {p0, p1, p2, p3, p4}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->layoutTiles(IIFI)V
invoke-virtual {p0}, Lcom/pinguo/camera360/gallery/ui/TileImageView;->invalidate()V
const/4 v0, 0x1
goto :goto_13
.end method
.method public setScreenNail(Lcom/pinguo/camera360/gallery/ui/ScreenNail;)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/gallery/ui/TileImageView;->mScreenNail:Lcom/pinguo/camera360/gallery/ui/ScreenNail;
return-void
.end method