.class public final Lcom/instagram/creation/photo/gallery/ImageManager;
.super Ljava/lang/Object;
.source "ImageManager.java"
.field private static final a:Landroid/net/Uri;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
sput-object v0, Lcom/instagram/creation/photo/gallery/ImageManager;->a:Landroid/net/Uri;
return-void
.end method
.method public static a(Ljava/lang/String;)I
.registers 7
const/4 v5, -0x1
const/4 v0, 0x0
const/4 v2, 0x0
:try_start_3
new-instance v1, Landroid/media/ExifInterface;
invoke-direct {v1, p0}, Landroid/media/ExifInterface;-><init>(Ljava/lang/String;)V
:try_end_8
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_8} :catch_16
:goto_8
if-eqz v1, :cond_15
const-string v2, "Orientation"
invoke-virtual {v1, v2, v5}, Landroid/media/ExifInterface;->getAttributeInt(Ljava/lang/String;I)I
move-result v1
if-eq v1, v5, :cond_15
packed-switch v1, :pswitch_data_2a
:cond_15
:pswitch_15
:goto_15
return v0
:catch_16
move-exception v1
const-string v3, "ImageManager"
const-string v4, "cannot read exif"
invoke-static {v3, v4, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
move-object v1, v2
goto :goto_8
:pswitch_20
const/16 v0, 0x5a
goto :goto_15
:pswitch_23
const/16 v0, 0xb4
goto :goto_15
:pswitch_26
const/16 v0, 0x10e
goto :goto_15
nop
:pswitch_data_2a
.packed-switch 0x3
:pswitch_23
:pswitch_15
:pswitch_15
:pswitch_20
:pswitch_15
:pswitch_26
.end packed-switch
.end method
.method public static a(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;Ljava/lang/String;Ljava/lang/String;[I)Landroid/net/Uri;
.registers 12
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-instance v1, Landroid/content/ContentValues;
const/4 v2, 0x7
invoke-direct {v1, v2}, Landroid/content/ContentValues;-><init>(I)V
const-string v2, "title"
invoke-virtual {v1, v2, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "_display_name"
invoke-virtual {v1, v2, p6}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "datetaken"
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string v2, "mime_type"
const-string v3, "image/jpeg"
invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v2, "orientation"
const/4 v3, 0x0
aget v3, p7, v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string v2, "_data"
invoke-virtual {v1, v2, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
if-eqz p4, :cond_64
const-string v0, "latitude"
invoke-static {p4}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
const-string v0, "longitude"
invoke-static {p4}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v2
invoke-static {v2, v3}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v2
invoke-virtual {v1, v0, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
:cond_64
sget-object v0, Lcom/instagram/creation/photo/gallery/ImageManager;->a:Landroid/net/Uri;
invoke-virtual {p0, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
move-result-object v0
return-object v0
.end method
.method private static a(Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;
.registers 2
new-instance v0, Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;
invoke-direct {v0}, Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;-><init>()V
iput-object p0, v0, Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;->e:Landroid/net/Uri;
return-object v0
.end method
.method private static a(Lcom/instagram/creation/photo/gallery/k;IILjava/lang/String;)Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;
.registers 5
new-instance v0, Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;
invoke-direct {v0}, Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;-><init>()V
iput-object p0, v0, Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;->a:Lcom/instagram/creation/photo/gallery/k;
iput p1, v0, Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;->b:I
iput p2, v0, Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;->c:I
iput-object p3, v0, Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;->d:Ljava/lang/String;
return-object v0
.end method
.method public static a(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/d;
.registers 6
const/4 v3, 0x0
const/4 v2, 0x1
if-eqz p1, :cond_18
invoke-virtual {p1}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
:goto_8
const-string v1, "content://drm"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_1b
sget-object v0, Lcom/instagram/creation/photo/gallery/k;->d:Lcom/instagram/creation/photo/gallery/k;
const/4 v1, 0x2
invoke-static {p0, v0, v1, v2, v3}, Lcom/instagram/creation/photo/gallery/ImageManager;->a(Landroid/content/ContentResolver;Lcom/instagram/creation/photo/gallery/k;IILjava/lang/String;)Lcom/instagram/creation/photo/gallery/d;
move-result-object v0
:goto_17
return-object v0
:cond_18
const-string v0, ""
goto :goto_8
:cond_1b
const-string v1, "content://media/external/video"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_2b
sget-object v0, Lcom/instagram/creation/photo/gallery/k;->c:Lcom/instagram/creation/photo/gallery/k;
const/4 v1, 0x4
invoke-static {p0, v0, v1, v2, v3}, Lcom/instagram/creation/photo/gallery/ImageManager;->a(Landroid/content/ContentResolver;Lcom/instagram/creation/photo/gallery/k;IILjava/lang/String;)Lcom/instagram/creation/photo/gallery/d;
move-result-object v0
goto :goto_17
:cond_2b
invoke-static {v0}, Lcom/instagram/creation/photo/gallery/ImageManager;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_36
invoke-static {p0, p1}, Lcom/instagram/creation/photo/gallery/ImageManager;->b(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/d;
move-result-object v0
goto :goto_17
:cond_36
const-string v0, "bucketId"
invoke-virtual {p1, v0}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/instagram/creation/photo/gallery/k;->d:Lcom/instagram/creation/photo/gallery/k;
invoke-static {p0, v1, v2, v2, v0}, Lcom/instagram/creation/photo/gallery/ImageManager;->a(Landroid/content/ContentResolver;Lcom/instagram/creation/photo/gallery/k;IILjava/lang/String;)Lcom/instagram/creation/photo/gallery/d;
move-result-object v0
goto :goto_17
.end method
.method private static a(Landroid/content/ContentResolver;Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;)Lcom/instagram/creation/photo/gallery/d;
.registers 10
const/4 v7, 0x0
iget-object v0, p1, Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;->a:Lcom/instagram/creation/photo/gallery/k;
iget v1, p1, Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;->b:I
iget v2, p1, Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;->c:I
iget-object v3, p1, Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;->d:Ljava/lang/String;
iget-object v4, p1, Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;->e:Landroid/net/Uri;
iget-boolean v5, p1, Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;->f:Z
if-nez v5, :cond_11
if-nez p0, :cond_17
:cond_11
new-instance v0, Lcom/instagram/creation/photo/gallery/l;
invoke-direct {v0, v7}, Lcom/instagram/creation/photo/gallery/l;-><init>(B)V
:goto_16
return-object v0
:cond_17
if-eqz v4, :cond_1f
new-instance v0, Lcom/instagram/creation/photo/gallery/n;
invoke-direct {v0, p0, v4}, Lcom/instagram/creation/photo/gallery/n;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;)V
goto :goto_16
:cond_1f
invoke-static {}, Lcom/instagram/creation/photo/gallery/ImageManager;->a()Z
move-result v4
new-instance v5, Ljava/util/ArrayList;
invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
if-eqz v4, :cond_3c
sget-object v4, Lcom/instagram/creation/photo/gallery/k;->b:Lcom/instagram/creation/photo/gallery/k;
if-eq v0, v4, :cond_3c
and-int/lit8 v4, v1, 0x1
if-eqz v4, :cond_3c
new-instance v4, Lcom/instagram/creation/photo/gallery/f;
sget-object v6, Lcom/instagram/creation/photo/gallery/ImageManager;->a:Landroid/net/Uri;
invoke-direct {v4, p0, v6, v2, v3}, Lcom/instagram/creation/photo/gallery/f;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
invoke-virtual {v5, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_3c
sget-object v4, Lcom/instagram/creation/photo/gallery/k;->b:Lcom/instagram/creation/photo/gallery/k;
if-eq v0, v4, :cond_44
sget-object v4, Lcom/instagram/creation/photo/gallery/k;->d:Lcom/instagram/creation/photo/gallery/k;
if-ne v0, v4, :cond_52
:cond_44
and-int/lit8 v0, v1, 0x1
if-eqz v0, :cond_52
new-instance v0, Lcom/instagram/creation/photo/gallery/f;
sget-object v1, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;
invoke-direct {v0, p0, v1, v2, v3}, Lcom/instagram/creation/photo/gallery/f;-><init>(Landroid/content/ContentResolver;Landroid/net/Uri;ILjava/lang/String;)V
invoke-virtual {v5, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_52
invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_56
:cond_56
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_6f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/photo/gallery/b;
invoke-virtual {v0}, Lcom/instagram/creation/photo/gallery/b;->c()Z
move-result v3
if-eqz v3, :cond_56
invoke-virtual {v0}, Lcom/instagram/creation/photo/gallery/b;->a()V
invoke-interface {v1}, Ljava/util/Iterator;->remove()V
goto :goto_56
:cond_6f
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v0
const/4 v1, 0x1
if-ne v0, v1, :cond_7d
invoke-virtual {v5, v7}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/creation/photo/gallery/b;
goto :goto_16
:cond_7d
new-instance v1, Lcom/instagram/creation/photo/gallery/g;
invoke-virtual {v5}, Ljava/util/ArrayList;->size()I
move-result v0
new-array v0, v0, [Lcom/instagram/creation/photo/gallery/d;
invoke-virtual {v5, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/instagram/creation/photo/gallery/d;
invoke-direct {v1, v0, v2}, Lcom/instagram/creation/photo/gallery/g;-><init>([Lcom/instagram/creation/photo/gallery/d;I)V
move-object v0, v1
goto :goto_16
.end method
.method private static a(Landroid/content/ContentResolver;Lcom/instagram/creation/photo/gallery/k;IILjava/lang/String;)Lcom/instagram/creation/photo/gallery/d;
.registers 6
const/4 v0, 0x1
invoke-static {p1, p2, v0, p4}, Lcom/instagram/creation/photo/gallery/ImageManager;->a(Lcom/instagram/creation/photo/gallery/k;IILjava/lang/String;)Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;
move-result-object v0
invoke-static {p0, v0}, Lcom/instagram/creation/photo/gallery/ImageManager;->a(Landroid/content/ContentResolver;Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;)Lcom/instagram/creation/photo/gallery/d;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;[B[I)Ljava/io/File;
.registers 8
const/4 v2, 0x0
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
:try_start_18
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v3
if-nez v3, :cond_26
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
:cond_26
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:try_start_2b
:try_end_2b
.catchall {:try_start_18 .. :try_end_2b} :catchall_52
.catch Ljava/io/FileNotFoundException; {:try_start_18 .. :try_end_2b} :catch_3e
.catch Ljava/io/IOException; {:try_start_18 .. :try_end_2b} :catch_48
new-instance v3, Ljava/io/FileOutputStream;
invoke-direct {v3, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_start_30
:try_end_30
.catchall {:try_start_2b .. :try_end_30} :catchall_52
.catch Ljava/io/FileNotFoundException; {:try_start_2b .. :try_end_30} :catch_5f
.catch Ljava/io/IOException; {:try_start_2b .. :try_end_30} :catch_5a
invoke-virtual {v3, p2}, Ljava/io/OutputStream;->write([B)V
const/4 v2, 0x0
invoke-static {v1}, Lcom/instagram/creation/photo/gallery/ImageManager;->a(Ljava/lang/String;)I
move-result v1
aput v1, p3, v2
:try_end_3a
.catchall {:try_start_30 .. :try_end_3a} :catchall_57
.catch Ljava/io/FileNotFoundException; {:try_start_30 .. :try_end_3a} :catch_61
.catch Ljava/io/IOException; {:try_start_30 .. :try_end_3a} :catch_5c
invoke-static {v3}, Lcom/instagram/creation/photo/gallery/p;->a(Ljava/io/Closeable;)V
:goto_3d
return-object v0
:catch_3e
move-exception v0
move-object v1, v0
move-object v0, v2
:goto_41
:try_start_41
invoke-virtual {v1}, Ljava/io/FileNotFoundException;->getMessage()Ljava/lang/String;
:try_end_44
.catchall {:try_start_41 .. :try_end_44} :catchall_52
invoke-static {v2}, Lcom/instagram/creation/photo/gallery/p;->a(Ljava/io/Closeable;)V
goto :goto_3d
:catch_48
move-exception v0
move-object v1, v0
move-object v0, v2
:goto_4b
:try_start_4b
invoke-virtual {v1}, Ljava/io/IOException;->getMessage()Ljava/lang/String;
:try_end_4e
.catchall {:try_start_4b .. :try_end_4e} :catchall_52
invoke-static {v2}, Lcom/instagram/creation/photo/gallery/p;->a(Ljava/io/Closeable;)V
goto :goto_3d
:catchall_52
move-exception v0
:goto_53
invoke-static {v2}, Lcom/instagram/creation/photo/gallery/p;->a(Ljava/io/Closeable;)V
throw v0
:catchall_57
move-exception v0
move-object v2, v3
goto :goto_53
:catch_5a
move-exception v1
goto :goto_4b
:catch_5c
move-exception v1
move-object v2, v3
goto :goto_4b
:catch_5f
move-exception v1
goto :goto_41
:catch_61
move-exception v1
move-object v2, v3
goto :goto_41
.end method
.method private static a()Z
.registers 3
const/4 v0, 0x1
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v1
const-string v2, "mounted"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_e
:goto_d
:cond_d
return v0
:cond_e
const-string v2, "mounted_ro"
invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_d
const/4 v0, 0x0
goto :goto_d
.end method
.method private static b(Landroid/content/ContentResolver;Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/d;
.registers 3
invoke-static {p1}, Lcom/instagram/creation/photo/gallery/ImageManager;->a(Landroid/net/Uri;)Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;
move-result-object v0
invoke-static {p0, v0}, Lcom/instagram/creation/photo/gallery/ImageManager;->a(Landroid/content/ContentResolver;Lcom/instagram/creation/photo/gallery/ImageManager$ImageListParam;)Lcom/instagram/creation/photo/gallery/d;
move-result-object v0
return-object v0
.end method
.method private static b(Ljava/lang/String;)Z
.registers 2
sget-object v0, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1a
sget-object v0, Landroid/provider/MediaStore$Images$Media;->INTERNAL_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1a
const/4 v0, 0x1
:goto_19
return v0
:cond_1a
const/4 v0, 0x0
goto :goto_19
.end method