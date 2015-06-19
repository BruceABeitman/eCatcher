.class public Lcom/pinguo/camera360/camera/view/CameraSceneView;
.super Landroid/view/View;
.source "CameraSceneView.java"
.field private static final TAG:Ljava/lang/String;
.field private mHeight:I
.field private mImgData:[I
.field private mPaint:Landroid/graphics/Paint;
.field private mWidth:I
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/pinguo/camera360/camera/view/CameraSceneView;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->TAG:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mImgData:[I
const/16 v0, 0x300
iput v0, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mWidth:I
const/16 v0, 0x1b0
iput v0, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mHeight:I
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/CameraSceneView;->init()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mImgData:[I
const/16 v0, 0x300
iput v0, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mWidth:I
const/16 v0, 0x1b0
iput v0, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mHeight:I
invoke-direct {p0}, Lcom/pinguo/camera360/camera/view/CameraSceneView;->init()V
return-void
.end method
.method private init()V
.registers 3
new-instance v0, Landroid/graphics/Paint;
invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V
iput-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mPaint:Landroid/graphics/Paint;
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mPaint:Landroid/graphics/Paint;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mPaint:Landroid/graphics/Paint;
const/high16 v1, -0x100
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mPaint:Landroid/graphics/Paint;
sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mPaint:Landroid/graphics/Paint;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setAntiAlias(Z)V
return-void
.end method
.method private initDrawRect(IIII)Landroid/graphics/Rect;
.registers 14
new-instance v1, Landroid/graphics/Rect;
invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V
mul-int v7, p1, p4
mul-int v8, p2, p3
if-ge v7, v8, :cond_1c
move v0, p4
mul-int v7, v0, p1
div-int v2, v7, p2
sub-int v7, p3, v2
div-int/lit8 v3, v7, 0x2
add-int v4, v3, v2
const/4 v5, 0x0
move v6, p4
:goto_18
invoke-virtual {v1, v3, v5, v4, v6}, Landroid/graphics/Rect;->set(IIII)V
return-object v1
:cond_1c
move v2, p3
mul-int v7, v2, p2
div-int v0, v7, p1
sub-int v7, p4, v0
div-int/lit8 v5, v7, 0x2
add-int v6, v5, v0
const/4 v3, 0x0
move v4, p3
goto :goto_18
.end method
.method protected onDraw(Landroid/graphics/Canvas;)V
.registers 15
const/4 v12, 0x0
const/4 v1, 0x0
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/CameraSceneView;->getWidth()I
move-result v11
invoke-virtual {p0}, Lcom/pinguo/camera360/camera/view/CameraSceneView;->getHeight()I
move-result v10
int-to-float v3, v11
int-to-float v4, v10
iget-object v5, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mPaint:Landroid/graphics/Paint;
move-object v0, p1
move v2, v1
invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mImgData:[I
if-eqz v0, :cond_44
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mImgData:[I
iget v1, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mWidth:I
iget v2, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mHeight:I
sget-object v3, Landroid/graphics/Bitmap$Config;->RGB_565:Landroid/graphics/Bitmap$Config;
invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v6
const/16 v0, 0x5a
invoke-static {v6, v0}, Lcom/pinguo/lib/image/BitmapUtils;->rotateBitmap(Landroid/graphics/Bitmap;I)Landroid/graphics/Bitmap;
move-result-object v9
if-eq v9, v6, :cond_2e
invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V
:cond_2e
iget v0, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mHeight:I
iget v1, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mWidth:I
invoke-direct {p0, v0, v1, v11, v10}, Lcom/pinguo/camera360/camera/view/CameraSceneView;->initDrawRect(IIII)Landroid/graphics/Rect;
move-result-object v7
new-instance v8, Landroid/graphics/Rect;
iget v0, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mHeight:I
iget v1, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mWidth:I
invoke-direct {v8, v12, v12, v0, v1}, Landroid/graphics/Rect;-><init>(IIII)V
iget-object v0, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mPaint:Landroid/graphics/Paint;
invoke-virtual {p1, v9, v8, v7, v0}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Rect;Landroid/graphics/Rect;Landroid/graphics/Paint;)V
:cond_44
invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V
return-void
.end method
.method public setPreviewData([I)V
.registers 2
iput-object p1, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mImgData:[I
return-void
.end method
.method public setPreviewSize(II)V
.registers 6
if-eqz p1, :cond_4
if-nez p2, :cond_25
:cond_4
sget-object v0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->TAG:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "setPreviewSize:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_24
return-void
:cond_25
iput p1, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mWidth:I
iput p2, p0, Lcom/pinguo/camera360/camera/view/CameraSceneView;->mHeight:I
goto :goto_24
.end method