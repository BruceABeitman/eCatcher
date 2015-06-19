.class  Landroid/support/v4/print/PrintHelperKitkat;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final COLOR_MODE_COLOR:I = 0x2
.field public static final COLOR_MODE_MONOCHROME:I = 0x1
.field private static final LOG_TAG:Ljava/lang/String; = "PrintHelperKitkat"
.field private static final MAX_PRINT_SIZE:I = 0xdac
.field public static final ORIENTATION_LANDSCAPE:I = 0x1
.field public static final ORIENTATION_PORTRAIT:I = 0x2
.field public static final SCALE_MODE_FILL:I = 0x2
.field public static final SCALE_MODE_FIT:I = 0x1
.field  mColorMode:I
.field final mContext:Landroid/content/Context;
.field  mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
.field private final mLock:Ljava/lang/Object;
.field  mOrientation:I
.field  mScaleMode:I
.method constructor <init>(Landroid/content/Context;)V
.registers 4
const/4 v1, 0x2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;
iput v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I
iput v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I
const/4 v0, 0x1
iput v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I
iput-object p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;
return-void
.end method
.method static synthetic access$000(Landroid/support/v4/print/PrintHelperKitkat;IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
.registers 6
invoke-direct {p0, p1, p2, p3, p4}, Landroid/support/v4/print/PrintHelperKitkat;->getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
move-result-object v0
return-object v0
.end method
.method static synthetic access$200(Landroid/support/v4/print/PrintHelperKitkat;Landroid/net/Uri;I)Landroid/graphics/Bitmap;
.registers 4
invoke-direct {p0, p1, p2}, Landroid/support/v4/print/PrintHelperKitkat;->loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
move-result-object v0
return-object v0
.end method
.method static synthetic access$300(Landroid/support/v4/print/PrintHelperKitkat;)Ljava/lang/Object;
.registers 2
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;
return-object v0
.end method
.method private getMatrix(IILandroid/graphics/RectF;I)Landroid/graphics/Matrix;
.registers 11
const/high16 v5, 0x4000
new-instance v1, Landroid/graphics/Matrix;
invoke-direct {v1}, Landroid/graphics/Matrix;-><init>()V
invoke-virtual {p3}, Landroid/graphics/RectF;->width()F
move-result v0
int-to-float v2, p1
div-float/2addr v0, v2
const/4 v2, 0x2
if-ne p4, v2, :cond_32
invoke-virtual {p3}, Landroid/graphics/RectF;->height()F
move-result v2
int-to-float v3, p2
div-float/2addr v2, v3
invoke-static {v0, v2}, Ljava/lang/Math;->max(FF)F
move-result v0
:goto_1a
invoke-virtual {v1, v0, v0}, Landroid/graphics/Matrix;->postScale(FF)Z
invoke-virtual {p3}, Landroid/graphics/RectF;->width()F
move-result v2
int-to-float v3, p1
mul-float/2addr v3, v0
sub-float/2addr v2, v3
div-float/2addr v2, v5
invoke-virtual {p3}, Landroid/graphics/RectF;->height()F
move-result v3
int-to-float v4, p2
mul-float/2addr v0, v4
sub-float v0, v3, v0
div-float/2addr v0, v5
invoke-virtual {v1, v2, v0}, Landroid/graphics/Matrix;->postTranslate(FF)Z
return-object v1
:cond_32
invoke-virtual {p3}, Landroid/graphics/RectF;->height()F
move-result v2
int-to-float v3, p2
div-float/2addr v2, v3
invoke-static {v0, v2}, Ljava/lang/Math;->min(FF)F
move-result v0
goto :goto_1a
.end method
.method private loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
.registers 7
const/4 v1, 0x0
if-eqz p1, :cond_7
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;
if-nez v0, :cond_f
:cond_7
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "bad argument to loadBitmap"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_f
:try_start_f
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
invoke-virtual {v0, p1}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;
move-result-object v1
const/4 v0, 0x0
invoke-static {v1, v0, p2}, Landroid/graphics/BitmapFactory;->decodeStream(Ljava/io/InputStream;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:try_end_1d
.catchall {:try_start_f .. :try_end_1d} :catchall_2d
move-result-object v0
if-eqz v1, :cond_23
:try_start_20
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:goto_23
:cond_23
:try_end_23
.catch Ljava/io/IOException; {:try_start_20 .. :try_end_23} :catch_24
return-object v0
:catch_24
move-exception v1
const-string v2, "PrintHelperKitkat"
const-string v3, "close fail "
invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_23
:catchall_2d
move-exception v0
if-eqz v1, :cond_33
:try_start_30
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:goto_33
:cond_33
:try_end_33
.catch Ljava/io/IOException; {:try_start_30 .. :try_end_33} :catch_34
throw v0
:catch_34
move-exception v1
const-string v2, "PrintHelperKitkat"
const-string v3, "close fail "
invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_33
.end method
.method private loadConstrainedBitmap(Landroid/net/Uri;I)Landroid/graphics/Bitmap;
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
if-lez p2, :cond_a
if-eqz p1, :cond_a
iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;
if-nez v2, :cond_12
:cond_a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "bad argument to getScaledBitmap"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_12
new-instance v2, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
iput-boolean v1, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-direct {p0, p1, v2}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget v3, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-lez v3, :cond_24
if-gtz v4, :cond_25
:goto_24
:cond_24
return-object v0
:cond_25
invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I
move-result v2
:goto_29
if-le v2, p2, :cond_30
ushr-int/lit8 v2, v2, 0x1
shl-int/lit8 v1, v1, 0x1
goto :goto_29
:cond_30
if-lez v1, :cond_24
invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I
move-result v2
div-int/2addr v2, v1
if-lez v2, :cond_24
iget-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;
monitor-enter v2
:try_start_3c
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
iput-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
const/4 v3, 0x1
iput-boolean v3, v0, Landroid/graphics/BitmapFactory$Options;->inMutable:Z
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
iput v1, v0, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
monitor-exit v2
:try_start_4f
:try_end_4f
.catchall {:try_start_3c .. :try_end_4f} :catchall_5e
invoke-direct {p0, p1, v0}, Landroid/support/v4/print/PrintHelperKitkat;->loadBitmap(Landroid/net/Uri;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:try_end_52
.catchall {:try_start_4f .. :try_end_52} :catchall_61
move-result-object v0
iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;
monitor-enter v1
const/4 v2, 0x0
:try_start_57
iput-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
monitor-exit v1
goto :goto_24
:catchall_5b
move-exception v0
monitor-exit v1
:try_end_5d
.catchall {:try_start_57 .. :try_end_5d} :catchall_5b
throw v0
:catchall_5e
move-exception v0
:try_start_5f
monitor-exit v2
:try_end_60
.catchall {:try_start_5f .. :try_end_60} :catchall_5e
throw v0
:catchall_61
move-exception v0
iget-object v1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mLock:Ljava/lang/Object;
monitor-enter v1
const/4 v2, 0x0
:try_start_66
iput-object v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mDecodeOptions:Landroid/graphics/BitmapFactory$Options;
monitor-exit v1
:try_end_69
.catchall {:try_start_66 .. :try_end_69} :catchall_6a
throw v0
:catchall_6a
move-exception v0
:try_start_6b
monitor-exit v1
:try_end_6c
.catchall {:try_start_6b .. :try_end_6c} :catchall_6a
throw v0
.end method
.method public getColorMode()I
.registers 2
iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I
return v0
.end method
.method public getOrientation()I
.registers 2
iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I
return v0
.end method
.method public getScaleMode()I
.registers 2
iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I
return v0
.end method
.method public printBitmap(Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 8
if-nez p2, :cond_3
:goto_2
return-void
:cond_3
iget v2, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;
const-string v1, "print"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/print/PrintManager;
sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;
invoke-virtual {p2}, Landroid/graphics/Bitmap;->getWidth()I
move-result v3
invoke-virtual {p2}, Landroid/graphics/Bitmap;->getHeight()I
move-result v4
if-le v3, v4, :cond_1d
sget-object v1, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;
:cond_1d
new-instance v3, Landroid/print/PrintAttributes$Builder;
invoke-direct {v3}, Landroid/print/PrintAttributes$Builder;-><init>()V
invoke-virtual {v3, v1}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;
move-result-object v1
iget v3, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I
invoke-virtual {v1, v3}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;
move-result-object v1
invoke-virtual {v1}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;
move-result-object v1
new-instance v3, Landroid/support/v4/print/PrintHelperKitkat$1;
invoke-direct {v3, p0, p1, p2, v2}, Landroid/support/v4/print/PrintHelperKitkat$1;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/graphics/Bitmap;I)V
invoke-virtual {v0, p1, v3, v1}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;
goto :goto_2
.end method
.method public printBitmap(Ljava/lang/String;Landroid/net/Uri;)V
.registers 8
iget v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I
new-instance v1, Landroid/support/v4/print/PrintHelperKitkat$2;
invoke-direct {v1, p0, p1, p2, v0}, Landroid/support/v4/print/PrintHelperKitkat$2;-><init>(Landroid/support/v4/print/PrintHelperKitkat;Ljava/lang/String;Landroid/net/Uri;I)V
iget-object v0, p0, Landroid/support/v4/print/PrintHelperKitkat;->mContext:Landroid/content/Context;
const-string v2, "print"
invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/print/PrintManager;
new-instance v2, Landroid/print/PrintAttributes$Builder;
invoke-direct {v2}, Landroid/print/PrintAttributes$Builder;-><init>()V
iget v3, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I
invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setColorMode(I)Landroid/print/PrintAttributes$Builder;
iget v3, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I
const/4 v4, 0x1
if-ne v3, v4, :cond_2d
sget-object v3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_LANDSCAPE:Landroid/print/PrintAttributes$MediaSize;
invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;
:goto_25
:cond_25
invoke-virtual {v2}, Landroid/print/PrintAttributes$Builder;->build()Landroid/print/PrintAttributes;
move-result-object v2
invoke-virtual {v0, p1, v1, v2}, Landroid/print/PrintManager;->print(Ljava/lang/String;Landroid/print/PrintDocumentAdapter;Landroid/print/PrintAttributes;)Landroid/print/PrintJob;
return-void
:cond_2d
iget v3, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I
const/4 v4, 0x2
if-ne v3, v4, :cond_25
sget-object v3, Landroid/print/PrintAttributes$MediaSize;->UNKNOWN_PORTRAIT:Landroid/print/PrintAttributes$MediaSize;
invoke-virtual {v2, v3}, Landroid/print/PrintAttributes$Builder;->setMediaSize(Landroid/print/PrintAttributes$MediaSize;)Landroid/print/PrintAttributes$Builder;
goto :goto_25
.end method
.method public setColorMode(I)V
.registers 2
iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mColorMode:I
return-void
.end method
.method public setOrientation(I)V
.registers 2
iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mOrientation:I
return-void
.end method
.method public setScaleMode(I)V
.registers 2
iput p1, p0, Landroid/support/v4/print/PrintHelperKitkat;->mScaleMode:I
return-void
.end method