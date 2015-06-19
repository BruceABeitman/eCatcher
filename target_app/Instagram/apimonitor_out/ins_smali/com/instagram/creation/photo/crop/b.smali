.class public Lcom/instagram/creation/photo/crop/b;
.super Lcom/instagram/creation/photo/crop/w;
.source "CropFragment.java"
.field private static final c:Ljava/lang/Class;
.field private static final d:Landroid/graphics/Bitmap$CompressFormat;
.field  a:Z
.field private aa:Lcom/instagram/creation/photo/crop/CropImageView;
.field private ab:Lcom/instagram/creation/photo/crop/o;
.field private ac:Lcom/instagram/ui/dialog/f;
.field private ad:Landroid/content/ContentResolver;
.field private ae:Landroid/graphics/Bitmap;
.field private af:Lcom/instagram/creation/photo/gallery/c;
.field private ag:Lcom/instagram/creation/photo/b/b;
.field private ah:Ljava/lang/String;
.field private ai:Lcom/instagram/creation/photo/crop/k;
.field  b:Ljava/lang/Runnable;
.field private final e:Landroid/os/Handler;
.field private f:I
.field private g:I
.field private h:I
.field private i:Landroid/net/Uri;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/creation/photo/crop/b;
sput-object v0, Lcom/instagram/creation/photo/crop/b;->c:Ljava/lang/Class;
sget-object v0, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
sput-object v0, Lcom/instagram/creation/photo/crop/b;->d:Landroid/graphics/Bitmap$CompressFormat;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/instagram/creation/photo/crop/w;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->e:Landroid/os/Handler;
new-instance v0, Lcom/instagram/creation/photo/crop/j;
invoke-direct {v0, p0}, Lcom/instagram/creation/photo/crop/j;-><init>(Lcom/instagram/creation/photo/crop/b;)V
iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->b:Ljava/lang/Runnable;
return-void
.end method
.method private U()V
.registers 5
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ab:Lcom/instagram/creation/photo/crop/o;
if-nez v0, :cond_5
:goto_4
:cond_4
return-void
:cond_5
iget-boolean v0, p0, Lcom/instagram/creation/photo/crop/b;->a:Z
if-nez v0, :cond_4
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/creation/photo/crop/b;->a:Z
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ab:Lcom/instagram/creation/photo/crop/o;
invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/o;->c()Landroid/graphics/Rect;
move-result-object v0
invoke-static {v0}, Lcom/instagram/creation/photo/b/e;->a(Landroid/graphics/Rect;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;
iget-object v1, v1, Lcom/instagram/creation/photo/crop/CropImageView;->a:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->clear()V
invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->j()Landroid/os/Bundle;
move-result-object v1
const-string v2, "CropFragment.requestCropRect"
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;
invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/c;->g()Z
move-result v2
if-eqz v2, :cond_36
if-eqz v1, :cond_36
invoke-direct {p0, v0}, Lcom/instagram/creation/photo/crop/b;->b(Landroid/graphics/Rect;)V
goto :goto_4
:cond_36
invoke-direct {p0, v0}, Lcom/instagram/creation/photo/crop/b;->a(Landroid/graphics/Rect;)V
goto :goto_4
.end method
.method private static a(IILandroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
.registers 7
sget-object v0, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;
invoke-static {p0, p1, v0}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;
move-result-object v0
new-instance v1, Landroid/graphics/Canvas;
invoke-direct {v1, v0}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V
const/4 v2, 0x0
invoke-virtual {v1, p2, p3, v2}, Landroid/graphics/Canvas;->drawBitmap(Landroid/graphics/Bitmap;Landroid/graphics/Matrix;Landroid/graphics/Paint;)V
return-object v0
.end method
.method static synthetic a(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 2
iput-object p1, p0, Lcom/instagram/creation/photo/crop/b;->ae:Landroid/graphics/Bitmap;
return-object p1
.end method
.method static synthetic a(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/creation/photo/crop/b;->c(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method private static a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
.registers 9
const/high16 v5, 0x4000
invoke-static {p0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v1
if-eqz p2, :cond_1d
new-instance v0, Landroid/graphics/Matrix;
invoke-direct {v0}, Landroid/graphics/Matrix;-><init>()V
int-to-float v2, p2
int-to-float v3, p1
div-float/2addr v3, v5
int-to-float v4, p1
div-float/2addr v4, v5
invoke-virtual {v0, v2, v3, v4}, Landroid/graphics/Matrix;->postRotate(FFF)Z
invoke-static {p1, p1, v1, v0}, Lcom/instagram/creation/photo/crop/b;->a(IILandroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
:goto_1c
return-object v0
:cond_1d
move-object v0, v1
goto :goto_1c
.end method
.method private a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
.registers 6
invoke-static {p1, p2}, Ljava/lang/Math;->min(II)I
move-result v0
int-to-float v0, v0
iget v1, p0, Lcom/instagram/creation/photo/crop/b;->h:I
int-to-float v1, v1
div-float/2addr v0, v1
invoke-static {p3, v0}, Lcom/instagram/creation/photo/b/e;->a(Landroid/graphics/Rect;F)Landroid/graphics/Rect;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/instagram/creation/photo/crop/b;Lcom/instagram/creation/photo/b/b;)Lcom/instagram/creation/photo/b/b;
.registers 2
iput-object p1, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/b/b;
return-object p1
.end method
.method static synthetic a(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/k;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ai:Lcom/instagram/creation/photo/crop/k;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/creation/photo/crop/b;Lcom/instagram/creation/photo/crop/o;)Lcom/instagram/creation/photo/crop/o;
.registers 2
iput-object p1, p0, Lcom/instagram/creation/photo/crop/b;->ab:Lcom/instagram/creation/photo/crop/o;
return-object p1
.end method
.method static synthetic a(Lcom/instagram/creation/photo/crop/b;Lcom/instagram/creation/photo/gallery/c;)Lcom/instagram/creation/photo/gallery/c;
.registers 2
iput-object p1, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;
return-object p1
.end method
.method private a(Landroid/graphics/Bitmap;)V
.registers 3
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
invoke-direct {p0, v0}, Lcom/instagram/creation/photo/crop/b;->c(Landroid/os/Bundle;)V
invoke-direct {p0, p1, v0}, Lcom/instagram/creation/photo/crop/b;->a(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
return-void
.end method
.method private a(Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
.registers 8
const/4 v1, 0x0
:try_start_1
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ad:Landroid/content/ContentResolver;
iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->i:Landroid/net/Uri;
invoke-virtual {v0, v2}, Landroid/content/ContentResolver;->openOutputStream(Landroid/net/Uri;)Ljava/io/OutputStream;
move-result-object v1
if-eqz v1, :cond_12
sget-object v0, Lcom/instagram/creation/photo/crop/b;->d:Landroid/graphics/Bitmap$CompressFormat;
const/16 v2, 0x5f
invoke-virtual {p1, v0, v2, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
:cond_12
:try_end_12
.catchall {:try_start_1 .. :try_end_12} :catchall_3e
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_12} :catch_20
invoke-static {v1}, Lcom/instagram/creation/photo/gallery/p;->a(Ljava/io/Closeable;)V
:goto_15
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->e:Landroid/os/Handler;
new-instance v1, Lcom/instagram/creation/photo/crop/h;
invoke-direct {v1, p0, p1, p2}, Lcom/instagram/creation/photo/crop/h;-><init>(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
:catch_20
move-exception v0
:try_start_21
sget-object v2, Lcom/instagram/creation/photo/crop/b;->c:Ljava/lang/Class;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "Cannot open file: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Lcom/instagram/creation/photo/crop/b;->i:Landroid/net/Uri;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-direct {p0, p1}, Lcom/instagram/creation/photo/crop/b;->b(Landroid/graphics/Bitmap;)V
:try_end_3a
.catchall {:try_start_21 .. :try_end_3a} :catchall_3e
invoke-static {v1}, Lcom/instagram/creation/photo/gallery/p;->a(Ljava/io/Closeable;)V
goto :goto_15
:catchall_3e
move-exception v0
invoke-static {v1}, Lcom/instagram/creation/photo/gallery/p;->a(Ljava/io/Closeable;)V
throw v0
.end method
.method private a(Landroid/graphics/Rect;)V
.registers 5
sget v0, Lcom/facebook/az;->processing:I
invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->o()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v0
new-instance v1, Lcom/instagram/creation/photo/crop/g;
invoke-direct {v1, p0, p1}, Lcom/instagram/creation/photo/crop/g;-><init>(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Rect;)V
iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->e:Landroid/os/Handler;
invoke-static {p0, v0, v1, v2}, Lcom/instagram/creation/photo/crop/l;->a(Lcom/instagram/creation/photo/crop/w;Ljava/lang/String;Ljava/lang/Runnable;Landroid/os/Handler;)V
return-void
.end method
.method private a(Landroid/net/Uri;)V
.registers 5
invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->y()Landroid/support/v4/app/an;
move-result-object v0
invoke-static {}, Lcom/instagram/common/u/e/a;->a()I
move-result v1
new-instance v2, Lcom/instagram/creation/photo/crop/e;
invoke-direct {v2, p0, p1}, Lcom/instagram/creation/photo/crop/e;-><init>(Lcom/instagram/creation/photo/crop/b;Landroid/net/Uri;)V
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/an;->a(ILandroid/support/v4/app/ao;)Landroid/support/v4/a/c;
return-void
.end method
.method static synthetic b(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/creation/photo/crop/b;->d(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method static synthetic b()Ljava/lang/Class;
.registers 1
sget-object v0, Lcom/instagram/creation/photo/crop/b;->c:Ljava/lang/Class;
return-object v0
.end method
.method private b(Landroid/graphics/Bitmap;)V
.registers 4
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->e:Landroid/os/Handler;
new-instance v1, Lcom/instagram/creation/photo/crop/i;
invoke-direct {v1, p0, p1}, Lcom/instagram/creation/photo/crop/i;-><init>(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Bitmap;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method private b(Landroid/graphics/Rect;)V
.registers 5
sget-object v0, Lcom/instagram/creation/photo/crop/b;->c:Ljava/lang/Class;
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;
invoke-interface {v0}, Lcom/instagram/creation/photo/gallery/c;->e()I
move-result v0
iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;
invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->f()I
move-result v1
invoke-direct {p0, v0, v1, p1}, Lcom/instagram/creation/photo/crop/b;->a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
move-result-object v0
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
invoke-direct {p0, v1}, Lcom/instagram/creation/photo/crop/b;->c(Landroid/os/Bundle;)V
const-string v2, "cropRect"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v0, "cameraRotation"
iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/b/b;
invoke-virtual {v2}, Lcom/instagram/creation/photo/b/b;->a()I
move-result v2
invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ai:Lcom/instagram/creation/photo/crop/k;
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ai:Lcom/instagram/creation/photo/crop/k;
iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;
invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/c;->a()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2, v1}, Lcom/instagram/creation/photo/crop/k;->a(Ljava/lang/String;Landroid/os/Bundle;)V
:cond_39
return-void
.end method
.method static synthetic b(Lcom/instagram/creation/photo/crop/b;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/creation/photo/crop/b;->U()V
return-void
.end method
.method static synthetic b(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Bitmap;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/creation/photo/crop/b;->a(Landroid/graphics/Bitmap;)V
return-void
.end method
.method private c(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
.registers 7
invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->a()Z
move-result v0
invoke-static {v0}, Lcom/instagram/common/i/a/f;->b(Z)V
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;
invoke-interface {v0}, Lcom/instagram/creation/photo/gallery/c;->e()I
move-result v0
iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;
invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->f()I
move-result v1
invoke-direct {p0, v0, v1, p1}, Lcom/instagram/creation/photo/crop/b;->a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
move-result-object v0
iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;
invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->a()Ljava/lang/String;
move-result-object v1
invoke-static {v1, v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->a(Ljava/lang/String;Landroid/graphics/Rect;)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
move-result-object v1
invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
move-result v2
invoke-virtual {v0}, Landroid/graphics/Rect;->height()I
move-result v3
invoke-virtual {v1, v2, v3}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->assertDimensions(II)V
invoke-virtual {v0}, Landroid/graphics/Rect;->width()I
move-result v2
invoke-virtual {v0}, Landroid/graphics/Rect;->height()I
move-result v0
invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I
move-result v0
iget v2, p0, Lcom/instagram/creation/photo/crop/b;->f:I
invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I
move-result v0
invoke-static {v1, v0, v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->scaleImage(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;II)Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;
move-result-object v2
invoke-virtual {v2, v0, v0}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->assertDimensions(II)V
invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getBufferId()I
move-result v1
invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->releaseNativeBuffer(I)I
invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v1
const-string v3, "CROP_"
const-string v4, ".jpg"
invoke-static {v1, v3, v4}, Lcom/instagram/cliffjumper/edit/photo/render/j;->a(Ljava/io/File;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const/16 v3, 0x5f
invoke-static {v2, v1, v3}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->saveImage(Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;Ljava/lang/String;I)I
invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/photo/jpeg/NativeImage;->getBufferId()I
move-result v2
invoke-static {v2}, Lcom/instagram/cliffjumper/edit/photo/jpeg/JpegBridge;->releaseNativeBuffer(I)I
iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/b/b;
invoke-virtual {v2}, Lcom/instagram/creation/photo/b/b;->a()I
move-result v2
invoke-static {v1, v0, v2}, Lcom/instagram/creation/photo/crop/b;->a(Ljava/lang/String;II)Landroid/graphics/Bitmap;
move-result-object v0
invoke-static {v1}, Lcom/instagram/common/u/a;->a(Ljava/lang/String;)Z
return-object v0
.end method
.method private c()V
.registers 4
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ac:Lcom/instagram/ui/dialog/f;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ac:Lcom/instagram/ui/dialog/f;
invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->dismiss()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ac:Lcom/instagram/ui/dialog/f;
:cond_c
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ae:Landroid/graphics/Bitmap;
if-nez v0, :cond_24
invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->l()Landroid/support/v4/app/k;
move-result-object v0
sget v1, Lcom/facebook/az;->unable_to_load_image:I
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ai:Lcom/instagram/creation/photo/crop/k;
invoke-interface {v0}, Lcom/instagram/creation/photo/crop/k;->g()V
:goto_23
return-void
:cond_24
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ae:Landroid/graphics/Bitmap;
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v0
iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->ae:Landroid/graphics/Bitmap;
invoke-virtual {v1}, Landroid/graphics/Bitmap;->getHeight()I
move-result v1
invoke-static {v0, v1}, Ljava/lang/Math;->min(II)I
move-result v0
iput v0, p0, Lcom/instagram/creation/photo/crop/b;->h:I
invoke-direct {p0}, Lcom/instagram/creation/photo/crop/b;->d()V
goto :goto_23
.end method
.method private c(Landroid/graphics/Bitmap;)V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;
invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/CropImageView;->b()V
:cond_9
if-eqz p1, :cond_e
invoke-virtual {p1}, Landroid/graphics/Bitmap;->recycle()V
:cond_e
return-void
.end method
.method private c(Landroid/os/Bundle;)V
.registers 6
const/4 v3, 0x0
const-string v0, "pendingMediaKey"
iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->ah:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "originalWidth"
iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;
invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->e()I
move-result v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "originalHeight"
iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;
invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->f()I
move-result v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/b/b;
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/b/b;
invoke-virtual {v0}, Lcom/instagram/creation/photo/b/b;->b()Ljava/lang/Double;
move-result-object v0
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/b/b;
invoke-virtual {v0}, Lcom/instagram/creation/photo/b/b;->c()Ljava/lang/Double;
move-result-object v0
if-eqz v0, :cond_50
const-string v0, "latitude"
iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/b/b;
invoke-virtual {v1}, Lcom/instagram/creation/photo/b/b;->b()Ljava/lang/Double;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
move-result-wide v1
invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
const-string v0, "longitude"
iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/b/b;
invoke-virtual {v1}, Lcom/instagram/creation/photo/b/b;->c()Ljava/lang/Double;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D
move-result-wide v1
invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V
:cond_50
invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->j()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_74
const-string v0, "mediaSource"
invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->j()Landroid/os/Bundle;
move-result-object v1
const-string v2, "mediaSource"
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "directShare"
invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->j()Landroid/os/Bundle;
move-result-object v1
const-string v2, "directShare"
invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
:cond_74
return-void
.end method
.method static synthetic c(Lcom/instagram/creation/photo/crop/b;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/creation/photo/crop/b;->c()V
return-void
.end method
.method static synthetic c(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Bitmap;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/creation/photo/crop/b;->c(Landroid/graphics/Bitmap;)V
return-void
.end method
.method private d(Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
.registers 10
const/high16 v7, 0x4000
sget-object v0, Lcom/instagram/creation/photo/crop/b;->c:Ljava/lang/Class;
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Image is "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;
invoke-interface {v1}, Lcom/instagram/creation/photo/gallery/c;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " using Java to write new JPEG"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J
move-result-wide v0
const-wide/16 v2, 0x4
div-long/2addr v0, v2
long-to-int v0, v0
int-to-double v0, v0
const-wide v2, 0x3fd7ae147ae147aeL
mul-double/2addr v0, v2
double-to-int v0, v0
sget-object v1, Lcom/instagram/creation/photo/crop/b;->c:Ljava/lang/Class;
iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;
invoke-interface {v1, v0}, Lcom/instagram/creation/photo/gallery/c;->a(I)Landroid/graphics/Bitmap;
move-result-object v0
if-nez v0, :cond_83
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Image decoding failed. type: "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;
invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/c;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " path: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;
invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/c;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " height: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;
invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/c;->f()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " width: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;
invoke-interface {v2}, Lcom/instagram/creation/photo/gallery/c;->e()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_83
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I
move-result v1
invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I
move-result v2
invoke-direct {p0, v1, v2, p1}, Lcom/instagram/creation/photo/crop/b;->a(IILandroid/graphics/Rect;)Landroid/graphics/Rect;
move-result-object v1
invoke-virtual {v1}, Landroid/graphics/Rect;->width()I
move-result v2
invoke-virtual {v1}, Landroid/graphics/Rect;->height()I
move-result v3
invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I
move-result v2
iget v3, p0, Lcom/instagram/creation/photo/crop/b;->f:I
invoke-static {v3, v2}, Ljava/lang/Math;->min(II)I
move-result v3
sget-object v4, Lcom/instagram/creation/photo/crop/b;->c:Ljava/lang/Class;
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
new-instance v4, Landroid/graphics/Matrix;
invoke-direct {v4}, Landroid/graphics/Matrix;-><init>()V
invoke-virtual {v4}, Landroid/graphics/Matrix;->reset()V
iget v5, v1, Landroid/graphics/Rect;->left:I
int-to-float v5, v5
iget v6, v1, Landroid/graphics/Rect;->top:I
int-to-float v6, v6
neg-float v5, v5
neg-float v6, v6
invoke-virtual {v4, v5, v6}, Landroid/graphics/Matrix;->postTranslate(FF)Z
iget-object v5, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/b/b;
invoke-virtual {v5}, Lcom/instagram/creation/photo/b/b;->a()I
move-result v5
if-eqz v5, :cond_d7
iget-object v5, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/b/b;
invoke-virtual {v5}, Lcom/instagram/creation/photo/b/b;->a()I
move-result v5
int-to-float v5, v5
invoke-virtual {v1}, Landroid/graphics/Rect;->width()I
move-result v6
int-to-float v6, v6
div-float/2addr v6, v7
invoke-virtual {v1}, Landroid/graphics/Rect;->height()I
move-result v1
int-to-float v1, v1
div-float/2addr v1, v7
invoke-virtual {v4, v5, v6, v1}, Landroid/graphics/Matrix;->postRotate(FFF)Z
:cond_d7
int-to-float v1, v3
int-to-float v2, v2
div-float/2addr v1, v2
invoke-virtual {v4, v1, v1}, Landroid/graphics/Matrix;->postScale(FF)Z
invoke-static {v3, v3, v0, v4}, Lcom/instagram/creation/photo/crop/b;->a(IILandroid/graphics/Bitmap;Landroid/graphics/Matrix;)Landroid/graphics/Bitmap;
move-result-object v1
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
return-object v1
.end method
.method static synthetic d(Lcom/instagram/creation/photo/crop/b;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->e:Landroid/os/Handler;
return-object v0
.end method
.method private d()V
.registers 5
invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->l()Landroid/support/v4/app/k;
move-result-object v0
if-eqz v0, :cond_10
invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->isFinishing()Z
move-result v0
if-eqz v0, :cond_11
:goto_10
:cond_10
return-void
:cond_11
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;
new-instance v1, Lcom/instagram/creation/photo/b/f;
iget-object v2, p0, Lcom/instagram/creation/photo/crop/b;->ae:Landroid/graphics/Bitmap;
iget-object v3, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/b/b;
invoke-virtual {v3}, Lcom/instagram/creation/photo/b/b;->a()I
move-result v3
invoke-direct {v1, v2, v3}, Lcom/instagram/creation/photo/b/f;-><init>(Landroid/graphics/Bitmap;I)V
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Lcom/instagram/creation/photo/crop/CropImageView;->a(Lcom/instagram/creation/photo/b/f;Z)V
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;
invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/CropImageView;->d()F
move-result v0
const/high16 v1, 0x3f80
cmpl-float v0, v0, v1
if-nez v0, :cond_35
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;
invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/CropImageView;->c()V
:cond_35
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->b:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
goto :goto_10
.end method
.method static synthetic e(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/gallery/c;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->af:Lcom/instagram/creation/photo/gallery/c;
return-object v0
.end method
.method static synthetic f(Lcom/instagram/creation/photo/crop/b;)Landroid/net/Uri;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->i:Landroid/net/Uri;
return-object v0
.end method
.method static synthetic g(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/CropImageView;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;
return-object v0
.end method
.method static synthetic h(Lcom/instagram/creation/photo/crop/b;)Landroid/graphics/Bitmap;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ae:Landroid/graphics/Bitmap;
return-object v0
.end method
.method static synthetic i(Lcom/instagram/creation/photo/crop/b;)I
.registers 2
iget v0, p0, Lcom/instagram/creation/photo/crop/b;->g:I
return v0
.end method
.method static synthetic j(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/b/b;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ag:Lcom/instagram/creation/photo/b/b;
return-object v0
.end method
.method static synthetic k(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/o;
.registers 2
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ab:Lcom/instagram/creation/photo/crop/o;
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 9
sget v0, Lcom/facebook/aw;->fragment_crop:I
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v2
sget v0, Lcom/facebook/av;->image:I
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/instagram/creation/photo/crop/CropImageView;
iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;
invoke-virtual {v0, p0}, Lcom/instagram/creation/photo/crop/CropImageView;->a(Lcom/instagram/creation/photo/crop/b;)V
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;
const/4 v1, 0x1
const/4 v3, 0x0
invoke-static {v0, v1, v3}, Landroid/support/v4/view/ak;->a(Landroid/view/View;ILandroid/graphics/Paint;)V
sget v0, Lcom/facebook/av;->button_back:I
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
new-instance v1, Lcom/instagram/creation/photo/crop/c;
invoke-direct {v1, p0}, Lcom/instagram/creation/photo/crop/c;-><init>(Lcom/instagram/creation/photo/crop/b;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v1, Lcom/instagram/a/c;
invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->o()Landroid/content/res/Resources;
move-result-object v3
sget-object v4, Lcom/instagram/a/d;->a:Lcom/instagram/a/d;
const/4 v5, 0x5
invoke-direct {v1, v3, v4, v5}, Lcom/instagram/a/c;-><init>(Landroid/content/res/Resources;Lcom/instagram/a/d;I)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
sget v1, Lcom/facebook/av;->save:I
invoke-virtual {v2, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
new-instance v3, Lcom/instagram/creation/photo/crop/d;
invoke-direct {v3, p0}, Lcom/instagram/creation/photo/crop/d;-><init>(Lcom/instagram/creation/photo/crop/b;)V
invoke-virtual {v1, v3}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->j()Landroid/os/Bundle;
move-result-object v3
const-string v4, "CropFragment.isAvatar"
invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_67
sget v3, Lcom/facebook/au;->nav_cancel:I
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setImageResource(I)V
sget v0, Lcom/facebook/au;->check:I
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V
sget v0, Lcom/facebook/au;->action_bar_light_blue_button_background:I
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setBackgroundResource(I)V
:cond_67
return-object v2
.end method
.method public final a(Landroid/content/Context;)V
.registers 6
invoke-super {p0, p1}, Lcom/instagram/creation/photo/crop/w;->a(Landroid/content/Context;)V
:try_start_3
move-object v0, p1
check-cast v0, Lcom/instagram/creation/photo/crop/k;
move-object v1, v0
iput-object v1, p0, Lcom/instagram/creation/photo/crop/b;->ai:Lcom/instagram/creation/photo/crop/k;
:try_end_9
.catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_a
return-void
:catch_a
move-exception v1
new-instance v1, Ljava/lang/ClassCastException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " must implement CropFragmentListener"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Lcom/instagram/creation/photo/crop/w;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ad:Landroid/content/ContentResolver;
invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->l()Landroid/support/v4/app/k;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;
move-result-object v0
const/16 v1, 0x400
invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->j()Landroid/os/Bundle;
move-result-object v1
const-string v0, "output"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/Uri;
iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->i:Landroid/net/Uri;
const-string v0, "CropFragment.largestDimension"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/instagram/creation/photo/crop/b;->f:I
const-string v0, "CropFragment.smallestDimension"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/instagram/creation/photo/crop/b;->g:I
invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->j()Landroid/os/Bundle;
move-result-object v0
const-string v2, "CropFragment.imageUri"
invoke-virtual {v0, v2}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/Uri;
invoke-direct {p0, v0}, Lcom/instagram/creation/photo/crop/b;->a(Landroid/net/Uri;)V
const-string v0, "pendingMediaKey"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ah:Ljava/lang/String;
if-eqz p1, :cond_59
const-string v0, "pendingMediaKey"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ah:Ljava/lang/String;
:cond_59
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ah:Ljava/lang/String;
if-nez v0, :cond_8b
invoke-static {}, Ljava/lang/System;->nanoTime()J
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/instagram/creation/b/a/b;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;
move-result-object v2
invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->l()Landroid/support/v4/app/k;
move-result-object v0
instance-of v0, v0, Lcom/instagram/creation/photo/a/a;
if-eqz v0, :cond_7a
invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->l()Landroid/support/v4/app/k;
move-result-object v0
check-cast v0, Lcom/instagram/creation/photo/a/a;
invoke-interface {v0, v2}, Lcom/instagram/creation/photo/a/a;->a(Lcom/instagram/creation/b/a/b;)V
:cond_7a
invoke-virtual {v2}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ah:Ljava/lang/String;
const-string v0, "caption"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_8b
invoke-virtual {v2, v0}, Lcom/instagram/creation/b/a/b;->d(Ljava/lang/String;)V
:cond_8b
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/instagram/creation/photo/crop/w;->a(Landroid/view/View;Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ae:Landroid/graphics/Bitmap;
if-eqz v0, :cond_b
invoke-direct {p0}, Lcom/instagram/creation/photo/crop/b;->c()V
:goto_a
return-void
:cond_b
new-instance v0, Lcom/instagram/ui/dialog/f;
invoke-virtual {p0}, Lcom/instagram/creation/photo/crop/b;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/f;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ac:Lcom/instagram/ui/dialog/f;
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ac:Lcom/instagram/ui/dialog/f;
sget v1, Lcom/facebook/az;->loading:I
invoke-virtual {p0, v1}, Lcom/instagram/creation/photo/crop/b;->c(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/f;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ac:Lcom/instagram/ui/dialog/f;
invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->show()V
goto :goto_a
.end method
.method public final e(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/instagram/creation/photo/crop/w;->e(Landroid/os/Bundle;)V
const-string v0, "pendingMediaKey"
iget-object v1, p0, Lcom/instagram/creation/photo/crop/b;->ah:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final i_()Ljava/lang/String;
.registers 2
const-string v0, "crop"
return-object v0
.end method
.method public final l_()V
.registers 3
const/4 v1, 0x0
invoke-super {p0}, Lcom/instagram/creation/photo/crop/w;->l_()V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/instagram/creation/photo/crop/b;->a:Z
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;
invoke-virtual {v0, v1}, Lcom/instagram/creation/photo/crop/CropImageView;->a(Lcom/instagram/creation/photo/crop/b;)V
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;
invoke-virtual {v0}, Lcom/instagram/creation/photo/crop/CropImageView;->a()V
iput-object v1, p0, Lcom/instagram/creation/photo/crop/b;->aa:Lcom/instagram/creation/photo/crop/CropImageView;
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ac:Lcom/instagram/ui/dialog/f;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ac:Lcom/instagram/ui/dialog/f;
invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->dismiss()V
iput-object v1, p0, Lcom/instagram/creation/photo/crop/b;->ac:Lcom/instagram/ui/dialog/f;
:cond_1e
return-void
.end method
.method public final p_()V
.registers 2
invoke-super {p0}, Lcom/instagram/creation/photo/crop/w;->p_()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/creation/photo/crop/b;->ai:Lcom/instagram/creation/photo/crop/k;
return-void
.end method