.class public Lcom/pinguo/lib/util/FileTool;
.super Ljava/lang/Object;
.source "FileTool.java"
.field public static final CAMERA360_ROOT:Ljava/lang/String; = null
.field public static final SAND_BOX:Ljava/lang/String; = null
.field public static final SYSTEM_PHOTO_PATH:Ljava/lang/String; = null
.field private static final TAG:Ljava/lang/String; = "FileTool"
.field public static final TEMP_DATA:Ljava/lang/String;
.field public static final TEMP_DATA_FRONT_PIC:Ljava/lang/String;
.field public static final TEMP_DATA_FRONT_PIC_MIRROR:Ljava/lang/String;
.field public static final TEMP_DATA_WELCOME:Ljava/lang/String;
.field public static final TEMP_PUZZLE_SPLICE:Ljava/lang/String;
.field public static final TEMP_PUZZLE_SPLICE_PREV:Ljava/lang/String;
.field public static final TEMP_PUZZLE_TEMPLATE_PREV:Ljava/lang/String;
.field public static final TEMP_PUZZLE_TEMPLATE_SAVED:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "/Camera360"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/pinguo/lib/util/FileTool;->CAMERA360_ROOT:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
sget-object v2, Lcom/pinguo/lib/util/FileTool;->CAMERA360_ROOT:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "/TempData"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/pinguo/lib/util/FileTool;->TEMP_DATA:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
sget-object v2, Lcom/pinguo/lib/util/FileTool;->TEMP_DATA:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "/welcome/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/pinguo/lib/util/FileTool;->TEMP_DATA_WELCOME:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
sget-object v2, Lcom/pinguo/lib/util/FileTool;->TEMP_DATA:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "/front_pic"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/pinguo/lib/util/FileTool;->TEMP_DATA_FRONT_PIC:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
sget-object v2, Lcom/pinguo/lib/util/FileTool;->TEMP_DATA:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "/front_pic_mirror"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/pinguo/lib/util/FileTool;->TEMP_DATA_FRONT_PIC_MIRROR:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
sget-object v2, Lcom/pinguo/lib/util/FileTool;->CAMERA360_ROOT:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "/TempData/.sandbox"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/pinguo/lib/util/FileTool;->SAND_BOX:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
sget-object v2, Lcom/pinguo/lib/util/FileTool;->TEMP_DATA:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "/spliceTemp.jpg"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/pinguo/lib/util/FileTool;->TEMP_PUZZLE_SPLICE:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
sget-object v2, Lcom/pinguo/lib/util/FileTool;->TEMP_DATA:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "/splicePrevTemp.jpg"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/pinguo/lib/util/FileTool;->TEMP_PUZZLE_SPLICE_PREV:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
sget-object v2, Lcom/pinguo/lib/util/FileTool;->TEMP_DATA:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "/template_prev_temp.jpg"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/pinguo/lib/util/FileTool;->TEMP_PUZZLE_TEMPLATE_PREV:Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
sget-object v2, Lcom/pinguo/lib/util/FileTool;->TEMP_DATA:Ljava/lang/String;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "/template_big_saved.jpg"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/pinguo/lib/util/FileTool;->TEMP_PUZZLE_TEMPLATE_SAVED:Ljava/lang/String;
invoke-static {}, Lcom/pinguo/camera360/adapter/GAdapter;->getSystemPhotoPath()Ljava/lang/String;
move-result-object v1
sput-object v1, Lcom/pinguo/lib/util/FileTool;->SYSTEM_PHOTO_PATH:Ljava/lang/String;
new-instance v1, Ljava/io/File;
sget-object v2, Lcom/pinguo/lib/util/FileTool;->SYSTEM_PHOTO_PATH:Ljava/lang/String;
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_11f
new-instance v0, Ljava/io/File;
sget-object v1, Lcom/pinguo/lib/util/FileTool;->SYSTEM_PHOTO_PATH:Ljava/lang/String;
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->mkdirs()Z
move-result v1
if-nez v1, :cond_11f
const-string/jumbo v1, ""
const-string/jumbo v2, "Create dir failed!"
invoke-static {v1, v2}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_11f
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static delete(Ljava/lang/String;)Z
.registers 8
const/4 v2, 0x1
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v3
if-eqz v3, :cond_1f
invoke-virtual {v0}, Ljava/io/File;->isDirectory()Z
move-result v3
if-eqz v3, :cond_1a
invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v4
array-length v5, v4
const/4 v3, 0x0
:goto_18
if-lt v3, v5, :cond_20
:cond_1a
invoke-virtual {v0}, Ljava/io/File;->delete()Z
move-result v3
and-int/2addr v2, v3
:cond_1f
return v2
:cond_20
aget-object v1, v4, v3
invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z
move-result v6
if-eqz v6, :cond_34
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lcom/pinguo/lib/util/FileTool;->delete(Ljava/lang/String;)Z
move-result v6
and-int/2addr v2, v6
:goto_31
add-int/lit8 v3, v3, 0x1
goto :goto_18
:cond_34
invoke-virtual {v1}, Ljava/io/File;->delete()Z
move-result v6
and-int/2addr v2, v6
goto :goto_31
.end method
.method public static getByteFromPath(Ljava/lang/String;)[B
.registers 9
const/4 v0, 0x0
const/4 v3, 0x0
const/16 v7, 0x400
new-array v6, v7, [B
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
const/4 v5, 0x0
:try_start_c
new-instance v4, Ljava/io/FileInputStream;
invoke-direct {v4, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
:try_start_11
:goto_11
:try_end_11
.catchall {:try_start_c .. :try_end_11} :catchall_47
.catch Ljava/io/IOException; {:try_start_c .. :try_end_11} :catch_6d
invoke-virtual {v4, v6}, Ljava/io/FileInputStream;->read([B)I
:try_end_14
.catchall {:try_start_11 .. :try_end_14} :catchall_6a
.catch Ljava/io/IOException; {:try_start_11 .. :try_end_14} :catch_2b
move-result v5
const/4 v7, -0x1
if-ne v5, v7, :cond_26
if-eqz v4, :cond_1d
:try_start_1a
invoke-virtual {v4}, Ljava/io/FileInputStream;->close()V
:cond_1d
:try_end_1d
.catch Ljava/io/IOException; {:try_start_1a .. :try_end_1d} :catch_5f
:goto_1d
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
:try_start_21
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
:try_end_24
.catch Ljava/io/IOException; {:try_start_21 .. :try_end_24} :catch_64
move-object v3, v4
:goto_25
return-object v0
:cond_26
const/4 v7, 0x0
:try_start_27
invoke-virtual {v1, v6, v7, v5}, Ljava/io/ByteArrayOutputStream;->write([BII)V
:try_end_2a
.catchall {:try_start_27 .. :try_end_2a} :catchall_6a
.catch Ljava/io/IOException; {:try_start_27 .. :try_end_2a} :catch_2b
goto :goto_11
:catch_2b
move-exception v2
move-object v3, v4
:try_start_2d
:goto_2d
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
:try_end_30
.catchall {:try_start_2d .. :try_end_30} :catchall_47
if-eqz v3, :cond_35
:try_start_32
invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
:goto_35
:cond_35
:try_end_35
.catch Ljava/io/IOException; {:try_start_32 .. :try_end_35} :catch_42
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
:try_start_39
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
:try_end_3c
.catch Ljava/io/IOException; {:try_start_39 .. :try_end_3c} :catch_3d
goto :goto_25
:catch_3d
move-exception v2
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
goto :goto_25
:catch_42
move-exception v2
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
goto :goto_35
:catchall_47
move-exception v7
:goto_48
if-eqz v3, :cond_4d
:try_start_4a
invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V
:goto_4d
:cond_4d
:try_end_4d
.catch Ljava/io/IOException; {:try_start_4a .. :try_end_4d} :catch_55
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
:try_start_51
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V
:goto_54
:try_end_54
.catch Ljava/io/IOException; {:try_start_51 .. :try_end_54} :catch_5a
throw v7
:catch_55
move-exception v2
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
goto :goto_4d
:catch_5a
move-exception v2
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
goto :goto_54
:catch_5f
move-exception v2
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
goto :goto_1d
:catch_64
move-exception v2
invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V
move-object v3, v4
goto :goto_25
:catchall_6a
move-exception v7
move-object v3, v4
goto :goto_48
:catch_6d
move-exception v2
goto :goto_2d
.end method
.method public static getGzipFromDataFile(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z
.registers 16
invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v1
new-instance v10, Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
new-instance v7, Ljava/io/File;
invoke-direct {v7, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v7}, Ljava/io/File;->exists()Z
move-result v10
if-nez v10, :cond_35
const-string/jumbo v10, "FileTool"
const-string/jumbo v11, "file not exists"
invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v10, 0x0
:goto_34
return v10
:cond_35
invoke-static {v7}, Lcom/pinguo/lib/util/FileTool;->logFileSizeBigEnough(Ljava/io/File;)Z
move-result v10
if-nez v10, :cond_46
const-string/jumbo v10, "FileTool"
const-string/jumbo v11, "logfile is not big enough"
invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v10, 0x0
goto :goto_34
:cond_46
new-instance v10, Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v11
invoke-static {v11}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-direct {v10, v11}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
new-instance v5, Ljava/io/BufferedReader;
new-instance v10, Ljava/io/InputStreamReader;
new-instance v11, Ljava/io/FileInputStream;
invoke-direct {v11, v3}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
const-string/jumbo v12, "UTF-8"
invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
invoke-direct {v5, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
new-instance v8, Ljava/io/BufferedOutputStream;
new-instance v10, Ljava/util/zip/GZIPOutputStream;
new-instance v11, Ljava/io/FileOutputStream;
invoke-direct {v11, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
invoke-direct {v10, v11}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
invoke-direct {v8, v10}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V
sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string/jumbo v11, "\u5f00\u59cb\u5199\u538b\u7f29\u6587\u4ef6..."
invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:goto_8a
invoke-virtual {v5}, Ljava/io/BufferedReader;->read()I
move-result v0
const/4 v10, -0x1
if-ne v0, v10, :cond_d6
invoke-virtual {v5}, Ljava/io/BufferedReader;->close()V
invoke-virtual {v8}, Ljava/io/BufferedOutputStream;->close()V
sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string/jumbo v11, "\u5f00\u59cb\u8bfb\u538b\u7f29\u6587\u4ef6..."
invoke-virtual {v10, v11}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
new-instance v6, Ljava/io/BufferedReader;
new-instance v10, Ljava/io/InputStreamReader;
new-instance v11, Ljava/util/zip/GZIPInputStream;
new-instance v12, Ljava/io/FileInputStream;
invoke-direct {v12, v4}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
invoke-direct {v11, v12}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
const-string/jumbo v12, "UTF-8"
invoke-direct {v10, v11, v12}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
invoke-direct {v6, v10}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:goto_b6
invoke-virtual {v6}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v9
if-nez v9, :cond_e6
invoke-virtual {v6}, Ljava/io/BufferedReader;->close()V
new-instance v2, Ljava/io/File;
invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v10
if-eqz v10, :cond_ec
const-string/jumbo v10, "gzip"
const-string/jumbo v11, "OK"
invoke-static {v10, v11}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
const/4 v10, 0x1
goto/16 :goto_34
:cond_d6
int-to-char v10, v0
invoke-static {v10}, Ljava/lang/String;->valueOf(C)Ljava/lang/String;
move-result-object v10
const-string/jumbo v11, "UTF-8"
invoke-virtual {v10, v11}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
move-result-object v10
invoke-virtual {v8, v10}, Ljava/io/BufferedOutputStream;->write([B)V
goto :goto_8a
:cond_e6
sget-object v10, Ljava/lang/System;->out:Ljava/io/PrintStream;
invoke-virtual {v10, v9}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
goto :goto_b6
:cond_ec
const/4 v10, 0x0
goto/16 :goto_34
.end method
.method private static logFileSizeBigEnough(Ljava/io/File;)Z
.registers 9
const/4 v1, 0x0
:try_start_1
new-instance v2, Ljava/io/FileInputStream;
invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
:try_start_6
:try_end_6
.catch Ljava/io/IOException; {:try_start_1 .. :try_end_6} :catch_43
invoke-virtual {v2}, Ljava/io/FileInputStream;->available()I
move-result v5
int-to-long v3, v5
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
const-string/jumbo v5, "fb"
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "log file size: "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
const-string/jumbo v5, "FileTool"
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, " log file size: "
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v5, v6}, Lcom/pinguo/lib/log/GLogger;->i(Ljava/lang/String;Ljava/lang/String;)V
:try_end_3a
.catch Ljava/io/IOException; {:try_start_6 .. :try_end_3a} :catch_49
const-wide/16 v5, 0x800
cmp-long v5, v3, v5
if-lez v5, :cond_4c
const/4 v5, 0x1
move-object v1, v2
:goto_42
return v5
:catch_43
move-exception v0
:goto_44
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
:goto_47
const/4 v5, 0x0
goto :goto_42
:catch_49
move-exception v0
move-object v1, v2
goto :goto_44
:cond_4c
move-object v1, v2
goto :goto_47
.end method
.method public static write([BLjava/lang/String;)Z
.registers 6
const/4 v0, 0x0
new-instance v2, Ljava/io/FileOutputStream;
invoke-direct {v2, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
:try_start_6
invoke-virtual {v2, p0}, Ljava/io/FileOutputStream;->write([B)V
invoke-virtual {v2}, Ljava/io/FileOutputStream;->flush()V
:try_end_c
.catchall {:try_start_6 .. :try_end_c} :catchall_22
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_c} :catch_13
const/4 v0, 0x1
if-eqz v2, :cond_12
:try_start_f
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:cond_12
:try_end_12
.catch Ljava/io/IOException; {:try_start_f .. :try_end_12} :catch_2e
:goto_12
return v0
:catch_13
move-exception v1
:try_start_14
invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V
:try_end_17
.catchall {:try_start_14 .. :try_end_17} :catchall_22
if-eqz v2, :cond_12
:try_start_19
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:try_end_1c
.catch Ljava/io/IOException; {:try_start_19 .. :try_end_1c} :catch_1d
goto :goto_12
:catch_1d
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_12
:catchall_22
move-exception v3
if-eqz v2, :cond_28
:try_start_25
invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
:cond_28
:goto_28
:try_end_28
.catch Ljava/io/IOException; {:try_start_25 .. :try_end_28} :catch_29
throw v3
:catch_29
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_28
:catch_2e
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_12
.end method