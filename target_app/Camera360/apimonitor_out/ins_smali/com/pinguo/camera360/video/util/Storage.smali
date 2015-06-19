.class public Lcom/pinguo/camera360/video/util/Storage;
.super Ljava/lang/Object;
.source "Storage.java"
.field public static final DCIM:Ljava/lang/String; = null
.field public static final DIRECTORY:Ljava/lang/String; = null
.field public static final LOW_STORAGE_THRESHOLD:J = 0x2faf080L
.field public static final PREPARING:J = -0x2L
.field private static final TAG:Ljava/lang/String; = "CameraStorage"
.field public static final UNAVAILABLE:J = -0x1L
.field public static final UNKNOWN_SIZE:J = -0x3L
.method static constructor <clinit>()V
.registers 2
sget-object v0, Landroid/os/Environment;->DIRECTORY_DCIM:Ljava/lang/String;
invoke-static {v0}, Landroid/os/Environment;->getExternalStoragePublicDirectory(Ljava/lang/String;)Ljava/io/File;
move-result-object v0
invoke-virtual {v0}, Ljava/io/File;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/video/util/Storage;->DCIM:Ljava/lang/String;
new-instance v0, Ljava/lang/StringBuilder;
sget-object v1, Lcom/pinguo/camera360/video/util/Storage;->DCIM:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "/Camera"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/pinguo/camera360/video/util/Storage;->DIRECTORY:Ljava/lang/String;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static addImage(Landroid/content/ContentResolver;Ljava/lang/String;JLandroid/location/Location;I[BII)Landroid/net/Uri;
.registers 20
invoke-static {p1}, Lcom/pinguo/camera360/video/util/Storage;->generateFilepath(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const/4 v2, 0x0
:try_start_5
new-instance v3, Ljava/io/FileOutputStream;
invoke-direct {v3, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
:try_start_a
:try_end_a
.catchall {:try_start_5 .. :try_end_a} :catchall_bb
.catch Ljava/lang/Exception; {:try_start_5 .. :try_end_a} :catch_aa
move-object/from16 v0, p6
invoke-virtual {v3, v0}, Ljava/io/FileOutputStream;->write([B)V
:try_end_f
.catchall {:try_start_a .. :try_end_f} :catchall_e1
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_f} :catch_e4
if-eqz v3, :cond_14
:try_start_11
invoke-virtual {v3}, Ljava/io/FileOutputStream;->close()V
:cond_14
:goto_14
:try_end_14
.catch Ljava/lang/Exception; {:try_start_11 .. :try_end_14} :catch_de
new-instance v7, Landroid/content/ContentValues;
const/16 v8, 0x9
invoke-direct {v7, v8}, Landroid/content/ContentValues;-><init>(I)V
const-string/jumbo v8, "title"
invoke-virtual {v7, v8, p1}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v8, "_display_name"
new-instance v9, Ljava/lang/StringBuilder;
invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v10, ".jpg"
invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v8, "datetaken"
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v9
invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V
const-string/jumbo v8, "mime_type"
const-string/jumbo v9, "image/jpeg"
invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v8, "orientation"
invoke-static/range {p5 .. p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v8, "_data"
invoke-virtual {v7, v8, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v8, "_size"
move-object/from16 v0, p6
array-length v9, v0
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
sget-boolean v8, Lcom/pinguo/lib/ApiHelper;->AFTER_JELLY_BEAN:Z
if-eqz v8, :cond_83
const-string/jumbo v8, "width"
invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
const-string/jumbo v8, "height"
invoke-static/range {p8 .. p8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
:cond_83
if-eqz p4, :cond_a1
const-string/jumbo v8, "latitude"
invoke-static {p4}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v9
invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v9
invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
const-string/jumbo v8, "longitude"
invoke-static {p4}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v9
invoke-static {v9, v10}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v9
invoke-virtual {v7, v8, v9}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V
:cond_a1
const/4 v6, 0x0
:try_start_a2
sget-object v8, Landroid/provider/MediaStore$Images$Media;->EXTERNAL_CONTENT_URI:Landroid/net/Uri;
invoke-virtual {p0, v8, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
:try_end_a7
.catch Ljava/lang/Throwable; {:try_start_a2 .. :try_end_a7} :catch_c2
move-result-object v6
:goto_a8
move-object v2, v3
:goto_a9
return-object v6
:catch_aa
move-exception v1
:try_start_ab
:goto_ab
const-string/jumbo v8, "CameraStorage"
const-string/jumbo v9, "Failed to write image"
invoke-static {v8, v9, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
:try_end_b4
.catchall {:try_start_ab .. :try_end_b4} :catchall_bb
if-eqz v2, :cond_b9
:try_start_b6
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:cond_b9
:try_end_b9
.catch Ljava/lang/Exception; {:try_start_b6 .. :try_end_b9} :catch_da
:goto_b9
const/4 v6, 0x0
goto :goto_a9
:catchall_bb
move-exception v8
:goto_bc
if-eqz v2, :cond_c1
:try_start_be
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_c1
.catch Ljava/lang/Exception; {:try_start_be .. :try_end_c1} :catch_dc
:goto_c1
:cond_c1
throw v8
:catch_c2
move-exception v5
const-string/jumbo v8, "CameraStorage"
new-instance v9, Ljava/lang/StringBuilder;
const-string/jumbo v10, "Failed to write MediaStore"
invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v9
invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v9
invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_a8
:catch_da
move-exception v8
goto :goto_b9
:catch_dc
move-exception v9
goto :goto_c1
:catch_de
move-exception v8
goto/16 :goto_14
:catchall_e1
move-exception v8
move-object v2, v3
goto :goto_bc
:catch_e4
move-exception v1
move-object v2, v3
goto :goto_ab
.end method
.method public static generateFilepath(Ljava/lang/String;)Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
sget-object v1, Lcom/pinguo/camera360/video/util/Storage;->DIRECTORY:Ljava/lang/String;
invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/16 v1, 0x2f
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, ".jpg"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static getAvailableSpace()J
.registers 9
const-wide/16 v4, -0x1
invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;
move-result-object v3
const-string/jumbo v6, "CameraStorage"
new-instance v7, Ljava/lang/StringBuilder;
const-string/jumbo v8, "External storage state="
invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
const-string/jumbo v6, "checking"
invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_28
const-wide/16 v4, -0x2
:goto_27
:cond_27
return-wide v4
:cond_28
const-string/jumbo v6, "mounted"
invoke-virtual {v6, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v6
if-eqz v6, :cond_27
new-instance v0, Ljava/io/File;
sget-object v6, Lcom/pinguo/camera360/video/util/Storage;->DIRECTORY:Ljava/lang/String;
invoke-direct {v0, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v6
if-eqz v6, :cond_27
invoke-virtual {v0}, Ljava/io/File;->canWrite()Z
move-result v6
if-eqz v6, :cond_27
:try_start_47
new-instance v2, Landroid/os/StatFs;
sget-object v4, Lcom/pinguo/camera360/video/util/Storage;->DIRECTORY:Ljava/lang/String;
invoke-direct {v2, v4}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Landroid/os/StatFs;->getAvailableBlocks()I
move-result v4
int-to-long v4, v4
invoke-virtual {v2}, Landroid/os/StatFs;->getBlockSize()I
:try_end_56
.catch Ljava/lang/Exception; {:try_start_47 .. :try_end_56} :catch_5a
move-result v6
int-to-long v6, v6
mul-long/2addr v4, v6
goto :goto_27
:catch_5a
move-exception v1
const-string/jumbo v4, "CameraStorage"
const-string/jumbo v5, "Fail to access external storage"
invoke-static {v4, v5, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
const-wide/16 v4, -0x3
goto :goto_27
.end method