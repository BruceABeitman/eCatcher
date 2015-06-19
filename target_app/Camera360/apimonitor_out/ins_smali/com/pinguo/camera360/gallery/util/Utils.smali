.class public Lcom/pinguo/camera360/gallery/util/Utils;
.super Ljava/lang/Object;
.source "Utils.java"
.field private static final DEBUG_TAG:Ljava/lang/String; = "GalleryDebug"
.field private static final INITIALCRC:J = -0x1L
.field private static final IS_DEBUG_BUILD:Z = false
.field private static final MASK_STRING:Ljava/lang/String; = "********************************"
.field private static final POLY64REV:J = -0x6a536cd653b4364bL
.field private static final TAG:Ljava/lang/String; = "Utils"
.field private static sCrcTable:[J
.method static constructor <clinit>()V
.registers 11
const/16 v10, 0x100
const/4 v7, 0x1
new-array v6, v10, [J
sput-object v6, Lcom/pinguo/camera360/gallery/util/Utils;->sCrcTable:[J
sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;
const-string/jumbo v8, "eng"
invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_24
sget-object v6, Landroid/os/Build;->TYPE:Ljava/lang/String;
const-string/jumbo v8, "userdebug"
invoke-virtual {v6, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-nez v6, :cond_24
const/4 v6, 0x0
:goto_1e
sput-boolean v6, Lcom/pinguo/camera360/gallery/util/Utils;->IS_DEBUG_BUILD:Z
const/4 v0, 0x0
:goto_21
if-lt v0, v10, :cond_26
return-void
:cond_24
move v6, v7
goto :goto_1e
:cond_26
int-to-long v2, v0
const/4 v1, 0x0
:goto_28
const/16 v6, 0x8
if-lt v1, v6, :cond_33
sget-object v6, Lcom/pinguo/camera360/gallery/util/Utils;->sCrcTable:[J
aput-wide v2, v6, v0
add-int/lit8 v0, v0, 0x1
goto :goto_21
:cond_33
long-to-int v6, v2
and-int/lit8 v6, v6, 0x1
if-eqz v6, :cond_44
const-wide v4, -0x6a536cd653b4364bL
:goto_3d
shr-long v8, v2, v7
xor-long v2, v8, v4
add-int/lit8 v1, v1, 0x1
goto :goto_28
:cond_44
const-wide/16 v4, 0x0
goto :goto_3d
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static assertTrue(Z)V
.registers 2
if-nez p0, :cond_8
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_8
return-void
.end method
.method public static ceilLog2(F)I
.registers 3
const/4 v0, 0x0
:goto_1
const/16 v1, 0x1f
if-lt v0, v1, :cond_6
:cond_5
return v0
:cond_6
const/4 v1, 0x1
shl-int/2addr v1, v0
int-to-float v1, v1
cmpl-float v1, v1, p0
if-gez v1, :cond_5
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method
.method public static checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;
.registers 2
if-nez p0, :cond_8
new-instance v0, Ljava/lang/NullPointerException;
invoke-direct {v0}, Ljava/lang/NullPointerException;-><init>()V
throw v0
:cond_8
return-object p0
.end method
.method public static clamp(FFF)F
.registers 4
cmpl-float v0, p0, p2
if-lez v0, :cond_5
:goto_4
return p2
:cond_5
cmpg-float v0, p0, p1
if-gez v0, :cond_b
move p2, p1
goto :goto_4
:cond_b
move p2, p0
goto :goto_4
.end method
.method public static clamp(III)I
.registers 3
if-le p0, p2, :cond_3
:goto_2
return p2
:cond_3
if-ge p0, p1, :cond_7
move p2, p1
goto :goto_2
:cond_7
move p2, p0
goto :goto_2
.end method
.method public static clamp(JJJ)J
.registers 7
cmp-long v0, p0, p4
if-lez v0, :cond_5
:goto_4
return-wide p4
:cond_5
cmp-long v0, p0, p2
if-gez v0, :cond_b
move-wide p4, p2
goto :goto_4
:cond_b
move-wide p4, p0
goto :goto_4
.end method
.method public static closeSilently(Landroid/database/Cursor;)V
.registers 4
if-eqz p0, :cond_5
:try_start_2
invoke-interface {p0}, Landroid/database/Cursor;->close()V
:try_end_5
.catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
const-string/jumbo v1, "Utils"
const-string/jumbo v2, "fail to close"
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_5
.end method
.method public static closeSilently(Landroid/os/ParcelFileDescriptor;)V
.registers 4
if-eqz p0, :cond_5
:try_start_2
invoke-virtual {p0}, Landroid/os/ParcelFileDescriptor;->close()V
:try_end_5
.catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_5} :catch_6
:cond_5
:goto_5
return-void
:catch_6
move-exception v0
const-string/jumbo v1, "Utils"
const-string/jumbo v2, "fail to close"
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_5
.end method
.method public static closeSilently(Ljava/io/Closeable;)V
.registers 4
if-nez p0, :cond_3
:goto_2
return-void
:cond_3
:try_start_3
invoke-interface {p0}, Ljava/io/Closeable;->close()V
:try_end_6
.catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_6} :catch_7
goto :goto_2
:catch_7
move-exception v0
const-string/jumbo v1, "Utils"
const-string/jumbo v2, "close fail"
invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
goto :goto_2
.end method
.method public static compare(JJ)I
.registers 5
cmp-long v0, p0, p2
if-gez v0, :cond_6
const/4 v0, -0x1
:goto_5
return v0
:cond_6
cmp-long v0, p0, p2
if-nez v0, :cond_c
const/4 v0, 0x0
goto :goto_5
:cond_c
const/4 v0, 0x1
goto :goto_5
.end method
.method public static copyOf([Ljava/lang/String;I)[Ljava/lang/String;
.registers 5
const/4 v2, 0x0
new-array v0, p1, [Ljava/lang/String;
array-length v1, p0
invoke-static {v1, p1}, Ljava/lang/Math;->min(II)I
move-result p1
invoke-static {p0, v2, v0, v2, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
return-object v0
.end method
.method public static crc64Long(Ljava/lang/String;)J
.registers 3
if-eqz p0, :cond_8
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v0
if-nez v0, :cond_b
:cond_8
const-wide/16 v0, 0x0
:goto_a
return-wide v0
:cond_b
invoke-static {p0}, Lcom/pinguo/camera360/gallery/util/Utils;->getBytes(Ljava/lang/String;)[B
move-result-object v0
invoke-static {v0}, Lcom/pinguo/camera360/gallery/util/Utils;->crc64Long([B)J
move-result-wide v0
goto :goto_a
.end method
.method public static crc64Long([B)J
.registers 9
const-wide/16 v0, -0x1
const/4 v2, 0x0
array-length v3, p0
:goto_4
if-lt v2, v3, :cond_7
return-wide v0
:cond_7
sget-object v4, Lcom/pinguo/camera360/gallery/util/Utils;->sCrcTable:[J
long-to-int v5, v0
aget-byte v6, p0, v2
xor-int/2addr v5, v6
and-int/lit16 v5, v5, 0xff
aget-wide v4, v4, v5
const/16 v6, 0x8
shr-long v6, v0, v6
xor-long v0, v4, v6
add-int/lit8 v2, v2, 0x1
goto :goto_4
.end method
.method public static varargs debug(Ljava/lang/String;[Ljava/lang/Object;)V
.registers 4
const-string/jumbo v0, "GalleryDebug"
invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I
return-void
.end method
.method public static ensureNotNull(Ljava/lang/String;)Ljava/lang/String;
.registers 1
if-nez p0, :cond_5
const-string/jumbo p0, ""
:cond_5
return-object p0
.end method
.method public static equals(Ljava/lang/Object;Ljava/lang/Object;)Z
.registers 3
if-eq p0, p1, :cond_c
if-nez p0, :cond_6
:cond_4
const/4 v0, 0x0
:goto_5
return v0
:cond_6
invoke-virtual {p0, p1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4
:cond_c
const/4 v0, 0x1
goto :goto_5
.end method
.method public static escapeXml(Ljava/lang/String;)Ljava/lang/String;
.registers 6
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v2
:goto_a
if-lt v1, v2, :cond_11
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
return-object v4
:cond_11
invoke-virtual {p0, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
sparse-switch v0, :sswitch_data_42
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
:goto_1b
add-int/lit8 v1, v1, 0x1
goto :goto_a
:sswitch_1e
const-string/jumbo v4, "&lt;"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_1b
:sswitch_25
const-string/jumbo v4, "&gt;"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_1b
:sswitch_2c
const-string/jumbo v4, "&quot;"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_1b
:sswitch_33
const-string/jumbo v4, "&#039;"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_1b
:sswitch_3a
const-string/jumbo v4, "&amp;"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
goto :goto_1b
nop
:sswitch_data_42
.sparse-switch
0x22 -> :sswitch_2c
0x26 -> :sswitch_3a
0x27 -> :sswitch_33
0x3c -> :sswitch_1e
0x3e -> :sswitch_25
.end sparse-switch
.end method
.method public static varargs fail(Ljava/lang/String;[Ljava/lang/Object;)V
.registers 4
new-instance v0, Ljava/lang/AssertionError;
array-length v1, p1
if-nez v1, :cond_9
:goto_5
invoke-direct {v0, p0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v0
:cond_9
invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object p0
goto :goto_5
.end method
.method public static floorLog2(F)I
.registers 3
const/4 v0, 0x0
:goto_1
const/16 v1, 0x1f
if-lt v0, v1, :cond_8
:cond_5
add-int/lit8 v1, v0, -0x1
return v1
:cond_8
const/4 v1, 0x1
shl-int/2addr v1, v0
int-to-float v1, v1
cmpl-float v1, v1, p0
if-gtz v1, :cond_5
add-int/lit8 v0, v0, 0x1
goto :goto_1
.end method
.method public static getBytes(Ljava/lang/String;)[B
.registers 9
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v4
mul-int/lit8 v4, v4, 0x2
new-array v3, v4, [B
const/4 v1, 0x0
invoke-virtual {p0}, Ljava/lang/String;->toCharArray()[C
move-result-object v5
array-length v6, v5
const/4 v4, 0x0
move v2, v1
:goto_10
if-lt v4, v6, :cond_13
return-object v3
:cond_13
aget-char v0, v5, v4
add-int/lit8 v1, v2, 0x1
and-int/lit16 v7, v0, 0xff
int-to-byte v7, v7
aput-byte v7, v3, v2
add-int/lit8 v2, v1, 0x1
shr-int/lit8 v7, v0, 0x8
int-to-byte v7, v7
aput-byte v7, v3, v1
add-int/lit8 v4, v4, 0x1
goto :goto_10
.end method
.method public static getUserAgent(Landroid/content/Context;)Ljava/lang/String;
.registers 7
const/4 v5, 0x0
:try_start_1
invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
:try_end_d
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_1 .. :try_end_d} :catch_47
move-result-object v1
const-string/jumbo v2, "%s/%s; %s/%s/%s/%s; %s/%s/%s"
const/16 v3, 0x9
new-array v3, v3, [Ljava/lang/Object;
iget-object v4, v1, Landroid/content/pm/PackageInfo;->packageName:Ljava/lang/String;
aput-object v4, v3, v5
const/4 v4, 0x1
iget-object v5, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
aput-object v5, v3, v4
const/4 v4, 0x2
sget-object v5, Landroid/os/Build;->BRAND:Ljava/lang/String;
aput-object v5, v3, v4
const/4 v4, 0x3
sget-object v5, Landroid/os/Build;->DEVICE:Ljava/lang/String;
aput-object v5, v3, v4
const/4 v4, 0x4
sget-object v5, Landroid/os/Build;->MODEL:Ljava/lang/String;
aput-object v5, v3, v4
const/4 v4, 0x5
sget-object v5, Landroid/os/Build;->ID:Ljava/lang/String;
aput-object v5, v3, v4
const/4 v4, 0x6
sget-object v5, Landroid/os/Build$VERSION;->SDK:Ljava/lang/String;
aput-object v5, v3, v4
const/4 v4, 0x7
sget-object v5, Landroid/os/Build$VERSION;->RELEASE:Ljava/lang/String;
aput-object v5, v3, v4
const/16 v4, 0x8
sget-object v5, Landroid/os/Build$VERSION;->INCREMENTAL:Ljava/lang/String;
aput-object v5, v3, v4
invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
return-object v2
:catch_47
move-exception v0
new-instance v2, Ljava/lang/IllegalStateException;
const-string/jumbo v3, "getPackageInfo failed"
invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v2
.end method
.method public static handleInterrruptedException(Ljava/lang/Throwable;)Z
.registers 2
instance-of v0, p0, Ljava/io/InterruptedIOException;
if-nez v0, :cond_8
instance-of v0, p0, Ljava/lang/InterruptedException;
if-eqz v0, :cond_11
:cond_8
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
const/4 v0, 0x1
:goto_10
return v0
:cond_11
const/4 v0, 0x0
goto :goto_10
.end method
.method public static intColorToFloatARGBArray(I)[F
.registers 5
const/high16 v3, 0x437f
const/4 v0, 0x4
new-array v0, v0, [F
const/4 v1, 0x0
invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I
move-result v2
int-to-float v2, v2
div-float/2addr v2, v3
aput v2, v0, v1
const/4 v1, 0x1
invoke-static {p0}, Landroid/graphics/Color;->red(I)I
move-result v2
int-to-float v2, v2
div-float/2addr v2, v3
aput v2, v0, v1
const/4 v1, 0x2
invoke-static {p0}, Landroid/graphics/Color;->green(I)I
move-result v2
int-to-float v2, v2
div-float/2addr v2, v3
aput v2, v0, v1
const/4 v1, 0x3
invoke-static {p0}, Landroid/graphics/Color;->blue(I)I
move-result v2
int-to-float v2, v2
div-float/2addr v2, v3
aput v2, v0, v1
return-object v0
.end method
.method public static interpolateAngle(FFF)F
.registers 8
const/4 v4, 0x0
const/high16 v3, 0x43b4
sub-float v0, p1, p0
cmpg-float v2, v0, v4
if-gez v2, :cond_a
add-float/2addr v0, v3
:cond_a
const/high16 v2, 0x4334
cmpl-float v2, v0, v2
if-lez v2, :cond_11
sub-float/2addr v0, v3
:cond_11
mul-float v2, v0, p2
add-float v1, p0, v2
cmpg-float v2, v1, v4
if-gez v2, :cond_1a
add-float/2addr v1, v3
:cond_1a
return v1
.end method
.method public static interpolateScale(FFF)F
.registers 4
sub-float v0, p1, p0
mul-float/2addr v0, p2
add-float/2addr v0, p0
return v0
.end method
.method public static isNotSupportedPhoto(Ljava/lang/String;)Z
.registers 11
const/high16 v9, 0x4000
const/4 v8, 0x0
const/4 v5, 0x1
const/4 v6, 0x0
new-instance v2, Landroid/graphics/BitmapFactory$Options;
invoke-direct {v2}, Landroid/graphics/BitmapFactory$Options;-><init>()V
iput-boolean v5, v2, Landroid/graphics/BitmapFactory$Options;->inJustDecodeBounds:Z
invoke-static {p0, v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;
iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-le v4, v7, :cond_2a
iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
:goto_17
int-to-float v3, v4
iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
iget v7, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
if-ge v4, v7, :cond_2d
iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
:goto_20
int-to-float v0, v4
cmpl-float v4, v3, v8
if-eqz v4, :cond_29
cmpl-float v4, v0, v8
if-nez v4, :cond_30
:cond_29
:goto_29
return v6
:cond_2a
iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outHeight:I
goto :goto_17
:cond_2d
iget v4, v2, Landroid/graphics/BitmapFactory$Options;->outWidth:I
goto :goto_20
:cond_30
div-float v1, v3, v0
const-string/jumbo v7, "Penn"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v8, "W:"
invoke-direct {v4, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v8, " H:"
invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v8, "w / h  = 2 "
invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v4
const-string/jumbo v8, "   >2?"
invoke-virtual {v4, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v8
cmpl-float v4, v1, v9
if-lez v4, :cond_74
move v4, v5
:goto_63
invoke-virtual {v8, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v7, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
cmpl-float v4, v1, v9
if-lez v4, :cond_29
move v6, v5
goto :goto_29
:cond_74
move v4, v6
goto :goto_63
.end method
.method public static isNullOrEmpty(Ljava/lang/String;)Z
.registers 2
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
return v0
.end method
.method public static isOpaque(I)Z
.registers 3
ushr-int/lit8 v0, p0, 0x18
const/16 v1, 0xff
if-ne v0, v1, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public static maskDebugInfo(Ljava/lang/Object;)Ljava/lang/String;
.registers 5
if-nez p0, :cond_4
const/4 v1, 0x0
:cond_3
:goto_3
return-object v1
:cond_4
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v2
const-string/jumbo v3, "********************************"
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
invoke-static {v2, v3}, Ljava/lang/Math;->min(II)I
move-result v0
sget-boolean v2, Lcom/pinguo/camera360/gallery/util/Utils;->IS_DEBUG_BUILD:Z
if-nez v2, :cond_3
const-string/jumbo v2, "********************************"
const/4 v3, 0x0
invoke-virtual {v2, v3, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
goto :goto_3
.end method
.method public static nextPowerOf2(I)I
.registers 2
if-lez p0, :cond_6
const/high16 v0, 0x4000
if-le p0, v0, :cond_c
:cond_6
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_c
add-int/lit8 p0, p0, -0x1
shr-int/lit8 v0, p0, 0x10
or-int/2addr p0, v0
shr-int/lit8 v0, p0, 0x8
or-int/2addr p0, v0
shr-int/lit8 v0, p0, 0x4
or-int/2addr p0, v0
shr-int/lit8 v0, p0, 0x2
or-int/2addr p0, v0
shr-int/lit8 v0, p0, 0x1
or-int/2addr p0, v0
add-int/lit8 v0, p0, 0x1
return v0
.end method
.method public static notifyInCannotEdited(Ljava/lang/String;Lcom/pinguo/camera360/base/BaseActivity;)Z
.registers 6
const/4 v0, 0x1
invoke-static {p0}, Lcom/pinguo/camera360/save/processer/PhotoProcesserUtils;->canTheProjectBeEdited(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1f
invoke-static {p0}, Lcom/pinguo/camera360/gallery/util/Utils;->isNotSupportedPhoto(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1d
new-instance v1, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
const v2, 0x7f0802aa
invoke-virtual {p1}, Lcom/pinguo/camera360/base/BaseActivity;->getOrientation()I
move-result v3
invoke-direct {v1, p1, v2, v3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
:goto_1c
return v0
:cond_1d
const/4 v0, 0x0
goto :goto_1c
:cond_1f
new-instance v1, Lcom/pinguo/camera360/lib/ui/RotateTextToast;
const v2, 0x7f0800b5
invoke-virtual {p1}, Lcom/pinguo/camera360/base/BaseActivity;->getOrientation()I
move-result v3
invoke-direct {v1, p1, v2, v3}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;-><init>(Landroid/app/Activity;II)V
invoke-virtual {v1}, Lcom/pinguo/camera360/lib/ui/RotateTextToast;->show()V
goto :goto_1c
.end method
.method public static parseFloatSafely(Ljava/lang/String;F)F
.registers 3
if-nez p0, :cond_3
:goto_2
return p1
:cond_3
:try_start_3
invoke-static {p0}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
:try_end_6
.catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8
move-result p1
goto :goto_2
:catch_8
move-exception v0
goto :goto_2
.end method
.method public static parseIntSafely(Ljava/lang/String;I)I
.registers 3
if-nez p0, :cond_3
:goto_2
return p1
:cond_3
:try_start_3
invoke-static {p0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
:try_end_6
.catch Ljava/lang/NumberFormatException; {:try_start_3 .. :try_end_6} :catch_8
move-result p1
goto :goto_2
:catch_8
move-exception v0
goto :goto_2
.end method
.method public static prevPowerOf2(I)I
.registers 2
if-gtz p0, :cond_8
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V
throw v0
:cond_8
invoke-static {p0}, Ljava/lang/Integer;->highestOneBit(I)I
move-result v0
return v0
.end method
.method public static swap([III)V
.registers 5
aget v0, p0, p1
aget v1, p0, p2
aput v1, p0, p1
aput v0, p0, p2
return-void
.end method
.method public static waitWithoutInterrupt(Ljava/lang/Object;)V
.registers 5
:try_start_0
invoke-virtual {p0}, Ljava/lang/Object;->wait()V
:goto_3
:try_end_3
.catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_3} :catch_4
return-void
:catch_4
move-exception v0
const-string/jumbo v1, "Utils"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "unexpected interrupt: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_3
.end method