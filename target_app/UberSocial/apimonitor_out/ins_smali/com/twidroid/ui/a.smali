.class public Lcom/twidroid/ui/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:I = 0x9ba3c0
.field static final b:Ljava/lang/String; = "ImageCache"
.field static final c:I = 0x4000
.field static d:Ljava/util/concurrent/ConcurrentHashMap; = null
.field static final e:I = 0x1
.field public static f:I
.field static g:Ljava/io/File;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
sput-object v0, Lcom/twidroid/ui/a;->d:Ljava/util/concurrent/ConcurrentHashMap;
const/4 v0, 0x0
sput v0, Lcom/twidroid/ui/a;->f:I
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
.registers 1
return-object p0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;
.registers 6
const/4 v0, 0x0
if-nez p0, :cond_4
:goto_3
return-object v0
:cond_4
new-instance v1, Ljava/io/File;
invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_3a
const-string v0, "ImageCache"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Filename exists: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "readable: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v1}, Ljava/io/File;->canRead()Z
move-result v1
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {p0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
goto :goto_3
:cond_3a
const-string v1, "ImageCache"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Filename DOES NOT exists: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_3
.end method
.method public static a(Ljava/lang/String;)Ljava/lang/String;
.registers 5
const-string v0, "FALLBACK_FILE"
if-nez p0, :cond_5
:goto_4
return-object v0
:try_start_5
:cond_5
const-string v1, "MD5"
invoke-static {v1}, Ljava/security/MessageDigest;->getInstance(Ljava/lang/String;)Ljava/security/MessageDigest;
move-result-object v1
invoke-virtual {v1}, Ljava/security/MessageDigest;->reset()V
invoke-virtual {p0}, Ljava/lang/String;->getBytes()[B
move-result-object v2
invoke-virtual {v1, v2}, Ljava/security/MessageDigest;->digest([B)[B
move-result-object v1
new-instance v2, Ljava/math/BigInteger;
const/4 v3, 0x1
invoke-direct {v2, v3, v1}, Ljava/math/BigInteger;-><init>(I[B)V
const/16 v1, 0x10
invoke-virtual {v2, v1}, Ljava/math/BigInteger;->toString(I)Ljava/lang/String;
:try_end_21
.catch Ljava/security/NoSuchAlgorithmException; {:try_start_5 .. :try_end_21} :catch_23
move-result-object v0
goto :goto_4
:catch_23
move-exception v1
invoke-virtual {v1}, Ljava/security/NoSuchAlgorithmException;->printStackTrace()V
goto :goto_4
.end method
.method public static a()V
.registers 1
const/4 v0, 0x0
sput v0, Lcom/twidroid/ui/a;->f:I
sget-object v0, Lcom/twidroid/ui/a;->d:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentHashMap;->clear()V
return-void
.end method
.method public static a(Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;)V
.registers 6
const/16 v2, 0x49
invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
const-string v1, "r"
invoke-virtual {v0, p1, v1}, Landroid/content/ContentResolver;->openFileDescriptor(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
move-result-object v0
const/4 v1, 0x1
invoke-static {v0, p2, v2, v2, v1}, Lcom/twidroid/ui/a;->a(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIZ)V
return-void
.end method
.method public static a(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIZ)V
.registers 16
const-wide/high16 v9, 0x4000
const/4 v8, 0x0
const/4 v2, 0x0
const/4 v1, 0x1
new-instance v5, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V
iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
if-eqz p0, :cond_8c
invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
move-result-object v0
invoke-static {v0, v8, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:goto_15
iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-gt v0, p2, :cond_1d
iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
if-le v0, p3, :cond_c3
:cond_1d
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/16 v3, 0x4000
new-array v3, v3, [B
iput-object v3, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B
iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
sub-int/2addr v0, p2
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v0
iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
sub-int/2addr v3, p3
invoke-static {v3}, Ljava/lang/Math;->abs(I)I
move-result v3
if-lt v0, v3, :cond_90
move v0, v1
:goto_39
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_92
iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
int-to-double v3, v0
int-to-double v6, p2
div-double/2addr v3, v6
:goto_48
invoke-static {v3, v4}, Ljava/lang/Math;->log(D)D
move-result-wide v3
invoke-static {v9, v10}, Ljava/lang/Math;->log(D)D
move-result-wide v6
div-double/2addr v3, v6
invoke-static {v3, v4}, Ljava/lang/Math;->floor(D)D
move-result-wide v3
invoke-static {v9, v10, v3, v4}, Ljava/lang/Math;->pow(DD)D
move-result-wide v3
double-to-int v0, v3
if-gtz v0, :cond_5d
move v0, v1
:cond_5d
iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
iput-boolean v1, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z
iput-boolean v2, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
if-eqz p0, :cond_98
invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
move-result-object v0
invoke-static {v0, v8, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
:goto_6d
new-instance v1, Ljava/io/FileOutputStream;
invoke-direct {v1, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
if-eqz p4, :cond_a8
:try_start_74
invoke-static {v0}, Lcom/twidroid/ui/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v2
sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v4, 0x64
invoke-virtual {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
invoke-virtual {v2}, Landroid/graphics/Bitmap;->recycle()V
:goto_82
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:try_end_85
.catchall {:try_start_74 .. :try_end_85} :catchall_be
.catch Ljava/lang/NullPointerException; {:try_start_74 .. :try_end_85} :catch_b0
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
:goto_8b
:cond_8b
return-void
:cond_8c
invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
goto :goto_15
:cond_90
move v0, v2
goto :goto_39
:cond_92
iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
int-to-double v3, v0
int-to-double v6, p3
div-double/2addr v3, v6
goto :goto_48
:cond_98
invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v1
if-eqz v1, :cond_8b
invoke-static {v1, p3, p2}, Lcom/ubermedia/b/l;->a(Landroid/graphics/Bitmap;II)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_8b
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
goto :goto_6d
:try_start_a8
:cond_a8
sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v3, 0x64
invoke-virtual {v0, v2, v3, v1}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
:try_end_af
.catchall {:try_start_a8 .. :try_end_af} :catchall_be
.catch Ljava/lang/NullPointerException; {:try_start_a8 .. :try_end_af} :catch_b0
goto :goto_82
:catch_b0
move-exception v1
:try_start_b1
invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
sget v1, Lcom/twidroid/ui/a;->f:I
add-int/lit8 v1, v1, -0x1
sput v1, Lcom/twidroid/ui/a;->f:I
:try_end_ba
.catchall {:try_start_b1 .. :try_end_ba} :catchall_be
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
goto :goto_8b
:catchall_be
move-exception v1
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
throw v1
:cond_c3
if-eqz p4, :cond_8b
if-eqz p0, :cond_10b
const-string v0, "ImageCache"
const-string v3, "fd != null"
invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
move-result-object v0
invoke-static {v0, v8, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
:goto_d6
const-string v3, "ImageCache"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "bitm == null ? "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
if-nez v0, :cond_117
:goto_e5
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
new-instance v2, Ljava/io/FileOutputStream;
invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
:try_start_f5
invoke-static {v0}, Lcom/twidroid/ui/a;->a(Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;
move-result-object v1
if-eqz v1, :cond_119
sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v4, 0x64
invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
:cond_102
:try_end_102
.catchall {:try_start_f5 .. :try_end_102} :catchall_137
.catch Ljava/lang/NullPointerException; {:try_start_f5 .. :try_end_102} :catch_123
:goto_102
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
if-eqz v0, :cond_8b
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
goto :goto_8b
:cond_10b
const-string v0, "ImageCache"
const-string v3, "dg == null"
invoke-static {v0, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {p1}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_d6
:cond_117
move v1, v2
goto :goto_e5
:cond_119
if-eqz v0, :cond_102
:try_start_11b
sget-object v1, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v3, 0x64
invoke-virtual {v0, v1, v3, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
:try_end_122
.catchall {:try_start_11b .. :try_end_122} :catchall_137
.catch Ljava/lang/NullPointerException; {:try_start_11b .. :try_end_122} :catch_123
goto :goto_102
:catch_123
move-exception v1
:try_start_124
invoke-virtual {v1}, Ljava/lang/NullPointerException;->printStackTrace()V
sget v1, Lcom/twidroid/ui/a;->f:I
add-int/lit8 v1, v1, -0x1
sput v1, Lcom/twidroid/ui/a;->f:I
:try_end_12d
.catchall {:try_start_124 .. :try_end_12d} :catchall_137
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
if-eqz v0, :cond_8b
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
goto/16 :goto_8b
:catchall_137
move-exception v1
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
if-eqz v0, :cond_140
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
:cond_140
throw v1
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/view/View;Landroid/os/Handler;)V
.registers 11
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/twidroid/net/a/c;->l:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_40
if-eqz p2, :cond_3f
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lcom/twidroid/net/a/c;->l:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
new-instance v1, Landroid/graphics/drawable/BitmapDrawable;
invoke-direct {v1, v0}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V
invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_3f
:cond_3f
return-void
:cond_40
if-eqz p2, :cond_46
const/4 v1, 0x0
invoke-virtual {p2, v1}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_46
invoke-virtual {v0}, Ljava/io/File;->lastModified()J
move-result-wide v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
const-wide/32 v5, 0x9ba3c0
sub-long/2addr v3, v5
cmp-long v1, v1, v3
if-ltz v1, :cond_5c
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_3f
:cond_5c
new-instance v0, Lcom/twidroid/ui/a$3;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/twidroid/net/a/c;->l:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v3, 0x0
const-string v4, "Accept"
aput-object v4, v1, v3
const/4 v3, 0x1
const-string v4, "application/json"
aput-object v4, v1, v3
invoke-static {v1}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v3
move-object v1, p1
move-object v4, p2
move-object v5, p3
move-object v6, p0
invoke-direct/range {v0 .. v6}, Lcom/twidroid/ui/a$3;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/view/View;Landroid/os/Handler;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/twidroid/ui/a$3;->start()V
goto :goto_3f
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/os/Handler;IZ)V
.registers 15
const-string v0, "ImageCache"
invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_44
if-eqz p2, :cond_43
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {p2, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_43
:cond_43
return-void
:cond_44
if-eqz p2, :cond_4a
const/4 v1, 0x0
invoke-virtual {p2, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_4a
invoke-virtual {v0}, Ljava/io/File;->lastModified()J
move-result-wide v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
const-wide/32 v5, 0x9ba3c0
sub-long/2addr v3, v5
cmp-long v1, v1, v3
if-ltz v1, :cond_60
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_43
:cond_60
new-instance v0, Lcom/twidroid/ui/a$2;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v3, 0x0
const-string v4, "Accept"
aput-object v4, v1, v3
const/4 v3, 0x1
const-string v4, "application/json"
aput-object v4, v1, v3
invoke-static {v1}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v3
move-object v1, p1
move-object v4, p2
move-object v5, p3
move v6, p4
move-object v7, p0
move v8, p5
invoke-direct/range {v0 .. v8}, Lcom/twidroid/ui/a$2;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/widget/ImageView;Landroid/os/Handler;ILjava/lang/String;Z)V
invoke-virtual {v0}, Lcom/twidroid/ui/a$2;->start()V
goto :goto_43
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/os/Handler;Z)V
.registers 11
const/4 v4, -0x1
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move v5, p4
invoke-static/range {v0 .. v5}, Lcom/twidroid/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/ImageView;Landroid/os/Handler;IZ)V
return-void
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Landroid/widget/RemoteViews;IIZ)V
.registers 14
const-string v0, "ImageCache"
invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
if-eqz p2, :cond_27
const v1, 0x7f020208
invoke-virtual {p2, p3, v1}, Landroid/widget/RemoteViews;->setImageViewResource(II)V
:cond_27
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_4e
if-eqz p2, :cond_4d
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v0, :cond_4d
invoke-virtual {p2, p3, v0}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V
:cond_4d
:goto_4d
return-void
:cond_4e
invoke-virtual {v0}, Ljava/io/File;->lastModified()J
move-result-wide v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
const-wide/32 v5, 0x9ba3c0
sub-long/2addr v3, v5
cmp-long v1, v1, v3
if-ltz v1, :cond_64
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_4d
:cond_64
new-instance v0, Lcom/twidroid/ui/a$5;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v3, 0x0
const-string v4, "Accept"
aput-object v4, v1, v3
const/4 v3, 0x1
const-string v4, "application/json"
aput-object v4, v1, v3
invoke-static {v1}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v3
move-object v1, p1
move-object v4, p2
move v5, p4
move-object v6, p0
move v7, p5
invoke-direct/range {v0 .. v7}, Lcom/twidroid/ui/a$5;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Landroid/widget/RemoteViews;ILjava/lang/String;Z)V
invoke-virtual {v0}, Lcom/twidroid/ui/a$5;->start()V
goto :goto_4d
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/ui/widgets/gesture/GestureImageView;Landroid/os/Handler;IZ)V
.registers 15
const-string v0, "ImageCache"
invoke-static {v0, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_44
if-eqz p2, :cond_43
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {p2, v0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:goto_43
:cond_43
return-void
:cond_44
if-eqz p2, :cond_4a
const/4 v1, 0x0
invoke-virtual {p2, v1}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_4a
invoke-virtual {v0}, Ljava/io/File;->lastModified()J
move-result-wide v1
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
const-wide/32 v5, 0x9ba3c0
sub-long/2addr v3, v5
cmp-long v1, v1, v3
if-ltz v1, :cond_60
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_43
:cond_60
new-instance v0, Lcom/twidroid/ui/a$4;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v3, 0x0
const-string v4, "Accept"
aput-object v4, v1, v3
const/4 v3, 0x1
const-string v4, "application/json"
aput-object v4, v1, v3
invoke-static {v1}, Lcom/ubermedia/net/d;->a([Ljava/lang/Object;)Ljava/util/Map;
move-result-object v3
move-object v1, p1
move-object v4, p2
move-object v5, p3
move v6, p4
move-object v7, p0
move v8, p5
invoke-direct/range {v0 .. v8}, Lcom/twidroid/ui/a$4;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/twidroid/ui/widgets/gesture/GestureImageView;Landroid/os/Handler;ILjava/lang/String;Z)V
invoke-virtual {v0}, Lcom/twidroid/ui/a$4;->start()V
goto :goto_43
.end method
.method public static a(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;III)Z
.registers 15
const/4 v4, 0x0
const-wide/high16 v8, 0x4000
const/4 v6, 0x1
const/4 v7, 0x0
new-instance v5, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v5}, Landroid/graphics/BitmapFactory$Options;-><init>()V
iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
if-eqz p0, :cond_b5
invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
move-result-object v0
invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
:goto_15
iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-gt v0, p2, :cond_1d
iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
if-le v0, p3, :cond_b4
:cond_1d
new-instance v0, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V
const/16 v1, 0x4000
new-array v1, v1, [B
iput-object v1, v0, Landroid/graphics/BitmapFactory$Options;->inTempStorage:[B
iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
sub-int/2addr v0, p2
invoke-static {v0}, Ljava/lang/Math;->abs(I)I
move-result v0
iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
sub-int/2addr v1, p3
invoke-static {v1}, Ljava/lang/Math;->abs(I)I
move-result v1
if-lt v0, v1, :cond_ba
move v0, v6
:goto_39
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-eqz v0, :cond_bd
iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
div-int/2addr v0, p2
int-to-double v0, v0
:goto_47
invoke-static {v0, v1}, Ljava/lang/Math;->log(D)D
move-result-wide v0
invoke-static {v8, v9}, Ljava/lang/Math;->log(D)D
move-result-wide v2
div-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->floor(D)D
move-result-wide v0
invoke-static {v8, v9, v0, v1}, Ljava/lang/Math;->pow(DD)D
move-result-wide v0
double-to-int v0, v0
iput v0, v5, Landroid/graphics/BitmapFactory$Options;->inSampleSize:I
iput-boolean v6, v5, Landroid/graphics/BitmapFactory$Options;->inDither:Z
iput-boolean v7, v5, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
if-eqz p0, :cond_c2
invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->getFileDescriptor()Ljava/io/FileDescriptor;
move-result-object v0
invoke-static {v0, v4, v5}, Landroid/graphics/BitmapFactory;->decodeFileDescriptor(Ljava/io/FileDescriptor;Landroid/graphics/Rect;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
:goto_69
iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-le v1, p2, :cond_c7
move v4, p2
:goto_6e
iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
if-le v1, p3, :cond_ca
move v3, p3
:goto_73
iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-le v1, v4, :cond_cd
iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
sub-int/2addr v1, v4
div-int/lit8 v1, v1, 0x2
add-int/lit8 v2, v1, -0x1
:goto_7e
iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
if-le v1, v3, :cond_cf
iget v1, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
sub-int/2addr v1, v3
div-int/lit8 v1, v1, 0x2
add-int/lit8 v1, v1, -0x1
:goto_89
if-eqz p4, :cond_d1
new-instance v5, Landroid/graphics/Matrix;
invoke-direct {v5}, Landroid/graphics/Matrix;-><init>()V
int-to-float v8, p4
invoke-virtual {v5, v8}, Landroid/graphics/Matrix;->postRotate(F)Z
invoke-static/range {v0 .. v6}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIIILandroid/graphics/Matrix;Z)Landroid/graphics/Bitmap;
move-result-object v1
:goto_98
new-instance v2, Ljava/io/FileOutputStream;
invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
:try_start_9d
sget-object v3, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;
const/16 v4, 0x3c
invoke-virtual {v1, v3, v4, v2}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z
move-result v3
if-nez v3, :cond_d6
const-string v2, "ImageCache"
const-string v3, "Compression failed"
invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:try_end_ae
.catchall {:try_start_9d .. :try_end_ae} :catchall_f2
.catch Ljava/lang/NullPointerException; {:try_start_9d .. :try_end_ae} :catch_e7
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
:cond_b4
:goto_b4
return v7
:cond_b5
invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
goto/16 :goto_15
:cond_ba
move v0, v7
goto/16 :goto_39
:cond_bd
iget v0, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
div-int/2addr v0, p3
int-to-double v0, v0
goto :goto_47
:cond_c2
invoke-static {p1, v5}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_69
:cond_c7
iget v4, v5, Landroid/graphics/BitmapFactory$Options;->outHeight:I
goto :goto_6e
:cond_ca
iget v3, v5, Landroid/graphics/BitmapFactory$Options;->outWidth:I
goto :goto_73
:cond_cd
move v2, v7
goto :goto_7e
:cond_cf
move v1, v7
goto :goto_89
:cond_d1
invoke-static {v0, v1, v2, v3, v4}, Landroid/graphics/Bitmap;->createBitmap(Landroid/graphics/Bitmap;IIII)Landroid/graphics/Bitmap;
move-result-object v1
goto :goto_98
:cond_d6
:try_start_d6
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_d9
.catchall {:try_start_d6 .. :try_end_d9} :catchall_f2
.catch Ljava/lang/NullPointerException; {:try_start_d6 .. :try_end_d9} :catch_e7
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
move v7, v6
goto :goto_b4
:catch_e7
move-exception v2
:try_start_e8
invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V
:try_end_eb
.catchall {:try_start_e8 .. :try_end_eb} :catchall_f2
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
goto :goto_b4
:catchall_f2
move-exception v2
invoke-virtual {v0}, Landroid/graphics/Bitmap;->recycle()V
invoke-virtual {v1}, Landroid/graphics/Bitmap;->recycle()V
throw v2
.end method
.method public static a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZZ)Z
.registers 15
const/4 v6, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move v4, p4
move v5, p5
move v7, p6
invoke-static/range {v0 .. v7}, Lcom/twidroid/ui/a;->a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZZZ)Z
move-result v0
return v0
.end method
.method public static a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZZZ)Z
.registers 16
:try_start_0
new-instance v0, Ljava/io/File;
invoke-direct {v0, p2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
sput-object v0, Lcom/twidroid/ui/a;->g:Ljava/io/File;
sget-object v0, Lcom/twidroid/ui/a;->g:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_90
sget-object v0, Lcom/twidroid/ui/a;->g:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->length()J
:try_end_14
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_14} :catch_64
move-result-wide v0
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_90
if-eqz p1, :cond_28
const/4 v0, 0x0
:try_start_1e
invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setImageURI(Landroid/net/Uri;)V
:cond_28
:goto_28
:try_end_28
.catch Ljava/lang/Exception; {:try_start_1e .. :try_end_28} :catch_3c
.catch Ljava/lang/OutOfMemoryError; {:try_start_1e .. :try_end_28} :catch_70
:try_start_28
sget-object v0, Lcom/twidroid/ui/a;->g:Ljava/io/File;
invoke-virtual {v0}, Ljava/io/File;->lastModified()J
move-result-wide v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
const-wide/32 v4, 0x9ba3c0
sub-long/2addr v2, v4
cmp-long v0, v0, v2
if-lez v0, :cond_90
const/4 v0, 0x1
:goto_3b
return v0
:catch_3c
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v1, "ImageCache"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " image "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Ljava/lang/System;->gc()V
:try_end_63
.catch Ljava/lang/Exception; {:try_start_28 .. :try_end_63} :catch_64
goto :goto_28
:catch_64
move-exception v0
const-string v1, "ImageCache"
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const/4 v0, 0x0
goto :goto_3b
:catch_70
move-exception v0
:try_start_71
invoke-virtual {v0}, Ljava/lang/OutOfMemoryError;->printStackTrace()V
const-string v0, "ImageCache"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "java.lang.OutOfMemoryError for (catch2) image "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {}, Ljava/lang/System;->gc()V
goto :goto_28
:cond_90
if-nez p7, :cond_9b
const-string v0, "ImageCache"
const-string v1, "Connection failed not loading image right now"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_3b
:cond_9b
sget-object v0, Lcom/twidroid/ui/a;->d:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p2}, Ljava/util/concurrent/ConcurrentHashMap;->containsKey(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_a5
const/4 v0, 0x0
goto :goto_3b
:cond_a5
sget-object v0, Lcom/twidroid/ui/a;->d:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v0, p2, p3}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget v0, Lcom/twidroid/ui/a;->f:I
const/4 v1, 0x1
if-lt v0, v1, :cond_b1
const/4 v0, 0x0
goto :goto_3b
:cond_b1
new-instance v0, Lcom/twidroid/ui/a$1;
move v1, p5
move v2, p4
move v3, p6
move-object v4, p0
move-object v5, p1
move-object v6, p3
move-object v7, p2
invoke-direct/range {v0 .. v7}, Lcom/twidroid/ui/a$1;-><init>(ZIZLandroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
:try_end_c0
.catch Ljava/lang/Exception; {:try_start_71 .. :try_end_c0} :catch_64
const/4 v0, 0x0
goto/16 :goto_3b
.end method
.method public static b(Ljava/lang/String;)V
.registers 5
:try_start_0
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
sget-object v2, Lcom/twidroid/net/a/c;->l:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
move-result v0
if-eqz v0, :cond_58
const-string v0, "ImageCache"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "delete profile image for: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:goto_36
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "bigger_"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Lcom/twidroid/net/a/c;->l:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->delete()Z
:goto_57
return-void
:cond_58
const-string v0, "ImageCache"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "delete FAILED profile image for: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
:try_end_70
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_70} :catch_71
goto :goto_36
:catch_71
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
const-string v1, "ImageCache"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "ImageCache.invalidateCache Exception "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_57
.end method
.method public static b(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
const-string v0, "ImageCache"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Url = "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", Filename Output: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
invoke-static {p0, p1}, Lcom/ubermedia/net/d;->c(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method