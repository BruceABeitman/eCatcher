.class public final Lcom/mato/sdk/utils/c;
.super Ljava/lang/Object;
.field private static final a:Ljava/lang/String; = "Mato.FileUtil"
.field private static b:J = 0x0L
.field private static c:I = 0x0
.field private static d:Ljava/lang/StringBuffer; = null
.field private static final e:Ljava/lang/String; = "wspx.p"
.method static constructor <clinit>()V
.registers 2
const-wide/16 v0, 0x0
sput-wide v0, Lcom/mato/sdk/utils/c;->b:J
const/4 v0, 0x0
sput v0, Lcom/mato/sdk/utils/c;->c:I
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
sput-object v0, Lcom/mato/sdk/utils/c;->d:Ljava/lang/StringBuffer;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static a(Ljava/io/File;J)I
.registers 12
const/4 v0, 0x0
if-eqz p0, :cond_11
invoke-virtual {p0}, Ljava/io/File;->isDirectory()Z
move-result v1
if-eqz v1, :cond_11
:try_start_9
invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v2
array-length v3, v2
move v1, v0
:goto_f
if-lt v1, v3, :cond_12
:cond_11
:goto_11
return v0
:cond_12
aget-object v4, v2, v1
invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z
move-result v5
if-eqz v5, :cond_1f
invoke-static {v4, p1, p2}, Lcom/mato/sdk/utils/c;->a(Ljava/io/File;J)I
move-result v5
add-int/2addr v0, v5
:cond_1f
invoke-virtual {v4}, Ljava/io/File;->lastModified()J
move-result-wide v5
cmp-long v5, v5, p1
if-gez v5, :cond_77
sget-object v5, Ljava/lang/System;->out:Ljava/io/PrintStream;
new-instance v6, Ljava/lang/StringBuilder;
const-string/jumbo v7, "it is accesslog file:"
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {v4}, Lcom/mato/sdk/utils/c;->b(Ljava/io/File;)Z
move-result v7
invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
invoke-static {v4}, Lcom/mato/sdk/utils/c;->b(Ljava/io/File;)Z
move-result v5
if-nez v5, :cond_77
new-instance v5, Ljava/io/File;
new-instance v6, Ljava/lang/StringBuilder;
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v7
invoke-static {v7}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v7
invoke-virtual {v6, v7, v8}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v5}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
invoke-virtual {v5}, Ljava/io/File;->delete()Z
move-result v4
if-eqz v4, :cond_77
sget-object v4, Ljava/lang/System;->out:Ljava/io/PrintStream;
const-string/jumbo v5, "deleted"
invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:try_end_75
.catch Ljava/lang/Exception; {:try_start_9 .. :try_end_75} :catch_7a
add-int/lit8 v0, v0, 0x1
:cond_77
add-int/lit8 v1, v1, 0x1
goto :goto_f
:catch_7a
move-exception v1
goto :goto_11
.end method
.method public static a()V
.registers 3
const/4 v2, 0x0
sput v2, Lcom/mato/sdk/utils/c;->c:I
sget-object v0, Lcom/mato/sdk/utils/c;->d:Ljava/lang/StringBuffer;
sget-object v1, Lcom/mato/sdk/utils/c;->d:Ljava/lang/StringBuffer;
invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I
move-result v1
invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
return-void
.end method
.method public static a(Landroid/content/Context;)V
.registers 4
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "wspx.tmp"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_37
const-string/jumbo v0, "Mato.FileUtil"
const-string/jumbo v1, "the file exists"
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_36
return-void
:cond_37
const-string/jumbo v0, "wspx.tmp"
const-string/jumbo v1, "wspx.tmp"
invoke-static {p0, v0, v1}, Lcom/mato/sdk/utils/c;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_36
.end method
.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
.registers 9
const/4 v0, 0x0
const-string/jumbo v1, "Mato.FileUtil"
const-string/jumbo v2, "copy files"
invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
:try_start_a
invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v1
invoke-virtual {v1, p1}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;
:try_end_11
.catchall {:try_start_a .. :try_end_11} :catchall_43
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_11} :catch_63
move-result-object v1
const/4 v2, 0x0
:try_start_13
invoke-virtual {p0, p2, v2}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;
:try_end_16
.catchall {:try_start_13 .. :try_end_16} :catchall_57
.catch Ljava/lang/Exception; {:try_start_13 .. :try_end_16} :catch_35
move-result-object v0
const/16 v2, 0x400
:try_start_19
new-array v2, v2, [B
:goto_1b
invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I
move-result v3
const/4 v4, -0x1
if-ne v3, v4, :cond_30
invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V
:try_end_25
.catchall {:try_start_19 .. :try_end_25} :catchall_5d
.catch Ljava/lang/Exception; {:try_start_19 .. :try_end_25} :catch_35
if-eqz v0, :cond_2a
:try_start_27
invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
:cond_2a
if-eqz v1, :cond_2f
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:goto_2f
:cond_2f
:try_end_2f
.catch Ljava/lang/Exception; {:try_start_27 .. :try_end_2f} :catch_53
return-void
:cond_30
const/4 v4, 0x0
:try_start_31
invoke-virtual {v0, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
:try_end_34
.catchall {:try_start_31 .. :try_end_34} :catchall_5d
.catch Ljava/lang/Exception; {:try_start_31 .. :try_end_34} :catch_35
goto :goto_1b
:catch_35
move-exception v2
:goto_36
if-eqz v0, :cond_3b
:try_start_38
invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V
:cond_3b
if-eqz v1, :cond_2f
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:try_end_40
.catch Ljava/lang/Exception; {:try_start_38 .. :try_end_40} :catch_41
goto :goto_2f
:catch_41
move-exception v0
goto :goto_2f
:catchall_43
move-exception v1
move-object v2, v0
move-object v5, v0
move-object v0, v1
move-object v1, v5
:goto_48
if-eqz v1, :cond_4d
:try_start_4a
invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V
:cond_4d
if-eqz v2, :cond_52
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:goto_52
:cond_52
:try_end_52
.catch Ljava/lang/Exception; {:try_start_4a .. :try_end_52} :catch_55
throw v0
:catch_53
move-exception v0
goto :goto_2f
:catch_55
move-exception v1
goto :goto_52
:catchall_57
move-exception v2
move-object v5, v2
move-object v2, v1
move-object v1, v0
move-object v0, v5
goto :goto_48
:catchall_5d
move-exception v2
move-object v5, v2
move-object v2, v1
move-object v1, v0
move-object v0, v5
goto :goto_48
:catch_63
move-exception v1
move-object v1, v0
goto :goto_36
.end method
.method public static a(I)Z
.registers 3
const/4 v0, 0x1
const/4 v1, -0x1
if-ne p0, v1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
sget v1, Lcom/mato/sdk/utils/c;->c:I
if-eq v1, p0, :cond_4
const/4 v0, 0x0
goto :goto_4
.end method
.method private static a(Ljava/io/File;)[B
.registers 7
new-instance v0, Ljava/io/FileInputStream;
invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V
invoke-virtual {v0}, Ljava/io/FileInputStream;->available()I
move-result v1
if-nez v1, :cond_10
invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
const/4 v0, 0x0
:goto_f
return-object v0
:cond_10
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v2, Ljava/util/zip/GZIPOutputStream;
invoke-direct {v2, v1}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
const/16 v3, 0x400
new-array v3, v3, [B
:goto_1e
invoke-virtual {v0, v3}, Ljava/io/FileInputStream;->read([B)I
move-result v4
const/4 v5, -0x1
if-ne v4, v5, :cond_33
invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->flush()V
invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V
invoke-virtual {v2}, Ljava/util/zip/GZIPOutputStream;->close()V
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
goto :goto_f
:cond_33
const/4 v5, 0x0
invoke-virtual {v2, v3, v5, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
goto :goto_1e
.end method
.method public static a(Ljava/lang/String;)[B
.registers 8
const/4 v0, 0x0
new-instance v1, Ljava/io/File;
invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_d
:cond_c
:goto_c
return-object v0
:cond_d
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
:try_start_12
new-instance v2, Ljava/io/FileInputStream;
invoke-direct {v2, p0}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
:try_start_17
:try_end_17
.catchall {:try_start_12 .. :try_end_17} :catchall_58
.catch Ljava/io/FileNotFoundException; {:try_start_12 .. :try_end_17} :catch_8f
.catch Ljava/io/IOException; {:try_start_12 .. :try_end_17} :catch_4c
new-instance v1, Ljava/io/BufferedReader;
new-instance v4, Ljava/io/InputStreamReader;
const-string/jumbo v5, "utf-8"
invoke-direct {v4, v2, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
invoke-direct {v1, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
:try_end_24
.catchall {:try_start_17 .. :try_end_24} :catchall_83
.catch Ljava/io/FileNotFoundException; {:try_start_17 .. :try_end_24} :catch_93
.catch Ljava/io/IOException; {:try_start_17 .. :try_end_24} :catch_8a
:goto_24
:try_start_24
invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
move-result-object v4
if-eqz v4, :cond_64
new-instance v5, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "\n"
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:try_end_41
.catchall {:try_start_24 .. :try_end_41} :catchall_88
.catch Ljava/io/FileNotFoundException; {:try_start_24 .. :try_end_41} :catch_42
.catch Ljava/io/IOException; {:try_start_24 .. :try_end_41} :catch_8d
goto :goto_24
:catch_42
move-exception v3
:goto_43
:try_start_43
invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
:try_end_49
.catch Ljava/io/IOException; {:try_start_43 .. :try_end_49} :catch_4a
goto :goto_c
:catch_4a
move-exception v1
goto :goto_c
:catch_4c
move-exception v1
move-object v1, v0
move-object v2, v0
:goto_4f
:try_start_4f
invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
:try_end_55
.catch Ljava/io/IOException; {:try_start_4f .. :try_end_55} :catch_56
goto :goto_c
:catch_56
move-exception v1
goto :goto_c
:catchall_58
move-exception v1
move-object v2, v0
move-object v6, v0
move-object v0, v1
move-object v1, v6
:goto_5d
:try_start_5d
invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
:try_end_63
.catch Ljava/io/IOException; {:try_start_5d .. :try_end_63} :catch_81
:goto_63
throw v0
:cond_64
:try_start_64
invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
invoke-virtual {v2}, Ljava/io/FileInputStream;->close()V
:goto_6a
:try_start_6a
:try_end_6a
.catch Ljava/io/IOException; {:try_start_64 .. :try_end_6a} :catch_7f
invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I
move-result v1
if-eqz v1, :cond_c
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-static {v1}, Lcom/mato/sdk/utils/c;->a([B)[B
:try_end_7b
.catch Ljava/lang/Exception; {:try_start_6a .. :try_end_7b} :catch_7d
move-result-object v0
goto :goto_c
:catch_7d
move-exception v1
goto :goto_c
:catch_7f
move-exception v1
goto :goto_6a
:catch_81
move-exception v1
goto :goto_63
:catchall_83
move-exception v1
move-object v6, v1
move-object v1, v0
move-object v0, v6
goto :goto_5d
:catchall_88
move-exception v0
goto :goto_5d
:catch_8a
move-exception v1
move-object v1, v0
goto :goto_4f
:catch_8d
move-exception v3
goto :goto_4f
:catch_8f
move-exception v1
move-object v1, v0
move-object v2, v0
goto :goto_43
:catch_93
move-exception v1
move-object v1, v0
goto :goto_43
.end method
.method private static a([B)[B
.registers 7
new-instance v0, Ljava/io/ByteArrayOutputStream;
invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v1, Ljava/util/zip/GZIPOutputStream;
invoke-direct {v1, v0}, Ljava/util/zip/GZIPOutputStream;-><init>(Ljava/io/OutputStream;)V
new-instance v2, Ljava/io/ByteArrayInputStream;
invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
const/16 v3, 0x400
new-array v3, v3, [B
:goto_13
invoke-virtual {v2, v3}, Ljava/io/ByteArrayInputStream;->read([B)I
move-result v4
const/4 v5, -0x1
if-ne v4, v5, :cond_2b
invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->flush()V
invoke-virtual {v2}, Ljava/io/ByteArrayInputStream;->close()V
invoke-virtual {v1}, Ljava/util/zip/GZIPOutputStream;->close()V
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->size()I
move-result v1
if-nez v1, :cond_30
const/4 v0, 0x0
:goto_2a
return-object v0
:cond_2b
const/4 v5, 0x0
invoke-virtual {v1, v3, v5, v4}, Ljava/util/zip/GZIPOutputStream;->write([BII)V
goto :goto_13
:cond_30
invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v0
goto :goto_2a
.end method
.method public static b()V
.registers 3
const/4 v2, 0x0
const-wide/16 v0, 0x0
sput-wide v0, Lcom/mato/sdk/utils/c;->b:J
sput v2, Lcom/mato/sdk/utils/c;->c:I
sget-object v0, Lcom/mato/sdk/utils/c;->d:Ljava/lang/StringBuffer;
sget-object v1, Lcom/mato/sdk/utils/c;->d:Ljava/lang/StringBuffer;
invoke-virtual {v1}, Ljava/lang/StringBuffer;->length()I
move-result v1
invoke-virtual {v0, v2, v1}, Ljava/lang/StringBuffer;->delete(II)Ljava/lang/StringBuffer;
return-void
.end method
.method private static b(Landroid/content/Context;)V
.registers 5
invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-static {v0, v1, v2}, Lcom/mato/sdk/utils/c;->a(Ljava/io/File;J)I
invoke-static {}, Lcom/mato/sdk/utils/g;->h()Z
move-result v0
if-eqz v0, :cond_1c
invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-static {v0, v1, v2}, Lcom/mato/sdk/utils/c;->a(Ljava/io/File;J)I
:cond_1c
invoke-static {}, Lcom/mato/sdk/a/b;->m()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "Mato.FileUtil"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "the tempdir is:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v0, :cond_7e
const-string/jumbo v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_5e
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_5a
invoke-static {v0}, Lcom/mato/sdk/utils/c;->b(Ljava/lang/String;)Z
:goto_5d
:cond_5d
return-void
:cond_5e
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_5a
:cond_7e
invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
move-result-object v0
if-eqz v0, :cond_5d
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "Mato.FileUtil"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "the path is:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0}, Lcom/mato/sdk/utils/c;->b(Ljava/lang/String;)Z
goto :goto_5d
.end method
.method private static b(Ljava/io/File;)Z
.registers 5
invoke-virtual {p0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/io/File;
invoke-static {}, Lcom/mato/sdk/utils/g;->i()Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
const-string/jumbo v3, "access.log"
invoke-direct {v1, v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method private static b(Ljava/lang/String;)Z
.registers 4
const-string/jumbo v0, "Mato.FileUtil"
new-instance v1, Ljava/lang/StringBuilder;
const-string/jumbo v2, "the path is:"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Ljava/io/File;
invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v1
if-nez v1, :cond_3d
const-string/jumbo v0, "Mato.FileUtil"
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v2, "not exists"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
:goto_3c
return v0
:cond_3d
invoke-virtual {v0}, Ljava/io/File;->isFile()Z
move-result v0
if-eqz v0, :cond_48
invoke-static {p0}, Lcom/mato/sdk/utils/c;->c(Ljava/lang/String;)Z
move-result v0
goto :goto_3c
:cond_48
invoke-static {p0}, Lcom/mato/sdk/utils/c;->d(Ljava/lang/String;)Z
move-result v0
goto :goto_3c
.end method
.method private static b(I)[B
.registers 8
const/4 v0, 0x0
:try_start_1
invoke-static {}, Lcom/mato/sdk/utils/c;->i()Ljava/lang/String;
move-result-object v2
if-nez v2, :cond_8
:goto_7
:cond_7
return-object v0
:cond_8
new-instance v1, Ljava/io/File;
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_7
new-instance v1, Ljava/io/RandomAccessFile;
const-string/jumbo v3, "rw"
invoke-direct {v1, v2, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:try_end_1b
.catchall {:try_start_1 .. :try_end_1b} :catchall_6b
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1b} :catch_61
const/4 v2, 0x0
:try_start_1c
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
:goto_21
if-ge v2, p0, :cond_29
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
move-result-object v4
if-nez v4, :cond_35
:cond_29
invoke-virtual {v3}, Ljava/lang/StringBuffer;->length()I
:try_end_2c
.catchall {:try_start_1c .. :try_end_2c} :catchall_77
.catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_2c} :catch_79
move-result v2
if-nez v2, :cond_4f
:try_start_2f
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
:try_end_32
.catch Ljava/io/IOException; {:try_start_2f .. :try_end_32} :catch_33
goto :goto_7
:catch_33
move-exception v1
goto :goto_7
:cond_35
:try_start_35
new-instance v5, Ljava/lang/StringBuilder;
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "\n"
invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
add-int/lit8 v2, v2, 0x1
goto :goto_21
:cond_4f
invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B
move-result-object v2
invoke-static {v2}, Lcom/mato/sdk/utils/c;->a([B)[B
:try_end_5a
.catchall {:try_start_35 .. :try_end_5a} :catchall_77
.catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_5a} :catch_79
move-result-object v0
:try_start_5b
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
:try_end_5e
.catch Ljava/io/IOException; {:try_start_5b .. :try_end_5e} :catch_5f
goto :goto_7
:catch_5f
move-exception v1
goto :goto_7
:catch_61
move-exception v1
move-object v1, v0
:goto_63
if-eqz v1, :cond_7
:try_start_65
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
:try_end_68
.catch Ljava/io/IOException; {:try_start_65 .. :try_end_68} :catch_69
goto :goto_7
:catch_69
move-exception v1
goto :goto_7
:catchall_6b
move-exception v1
move-object v6, v1
move-object v1, v0
move-object v0, v6
:goto_6f
if-eqz v1, :cond_74
:try_start_71
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
:cond_74
:goto_74
:try_end_74
.catch Ljava/io/IOException; {:try_start_71 .. :try_end_74} :catch_75
throw v0
:catch_75
move-exception v1
goto :goto_74
:catchall_77
move-exception v0
goto :goto_6f
:catch_79
move-exception v2
goto :goto_63
.end method
.method public static declared-synchronized c()V
.registers 9
const-class v3, Lcom/mato/sdk/utils/c;
monitor-enter v3
const/4 v1, 0x0
:try_start_4
invoke-static {}, Lcom/mato/sdk/utils/c;->i()Ljava/lang/String;
:try_end_7
.catchall {:try_start_4 .. :try_end_7} :catchall_b3
.catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_7} :catch_c4
move-result-object v4
if-nez v4, :cond_c
:cond_a
:goto_a
monitor-exit v3
return-void
:try_start_c
:cond_c
invoke-static {}, Lcom/mato/sdk/a/b$e;->b()I
move-result v2
new-instance v0, Ljava/io/File;
invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_a
new-instance v0, Ljava/io/RandomAccessFile;
const-string/jumbo v5, "rw"
invoke-direct {v0, v4, v5}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:try_end_23
.catchall {:try_start_c .. :try_end_23} :catchall_b3
.catch Ljava/lang/Throwable; {:try_start_c .. :try_end_23} :catch_c4
:try_start_23
const-string/jumbo v1, "Mato.FileUtil"
new-instance v4, Ljava/lang/StringBuilder;
const-string/jumbo v5, "the current log number is:"
invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget v5, Lcom/mato/sdk/utils/c;->c:I
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v1, v4}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
sget-wide v4, Lcom/mato/sdk/utils/c;->b:J
invoke-virtual {v0, v4, v5}, Ljava/io/RandomAccessFile;->seek(J)V
invoke-static {}, Lcom/mato/sdk/a/b$e;->c()Z
move-result v1
if-eqz v1, :cond_c7
const v1, 0x7fffffff
:goto_49
sget v2, Lcom/mato/sdk/utils/c;->c:I
if-ge v2, v1, :cond_53
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->readLine()Ljava/lang/String;
:try_end_50
.catchall {:try_start_23 .. :try_end_50} :catchall_bf
.catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_50} :catch_a8
move-result-object v2
if-nez v2, :cond_59
:cond_53
:try_start_53
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
:try_end_56
.catchall {:try_start_53 .. :try_end_56} :catchall_ba
.catch Ljava/io/IOException; {:try_start_53 .. :try_end_56} :catch_57
goto :goto_a
:catch_57
move-exception v0
goto :goto_a
:cond_59
:try_start_59
const-string/jumbo v4, "Mato.FileUtil"
new-instance v5, Ljava/lang/StringBuilder;
const-string/jumbo v6, "the line "
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget v6, Lcom/mato/sdk/utils/c;->c:I
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string/jumbo v6, " is:"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-static {v4, v5}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
sget-object v4, Lcom/mato/sdk/utils/c;->d:Ljava/lang/StringBuffer;
new-instance v5, Ljava/lang/StringBuilder;
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v6, "\n"
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
sget-wide v4, Lcom/mato/sdk/utils/c;->b:J
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
add-int/lit8 v2, v2, 0x1
int-to-long v6, v2
add-long/2addr v4, v6
sput-wide v4, Lcom/mato/sdk/utils/c;->b:J
sget v2, Lcom/mato/sdk/utils/c;->c:I
add-int/lit8 v2, v2, 0x1
sput v2, Lcom/mato/sdk/utils/c;->c:I
:try_end_a7
.catchall {:try_start_59 .. :try_end_a7} :catchall_bf
.catch Ljava/lang/Throwable; {:try_start_59 .. :try_end_a7} :catch_a8
goto :goto_49
:catch_a8
move-exception v1
:goto_a9
if-eqz v0, :cond_a
:try_start_ab
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
:try_end_ae
.catchall {:try_start_ab .. :try_end_ae} :catchall_ba
.catch Ljava/io/IOException; {:try_start_ab .. :try_end_ae} :catch_b0
goto/16 :goto_a
:catch_b0
move-exception v0
goto/16 :goto_a
:catchall_b3
move-exception v0
:goto_b4
if-eqz v1, :cond_b9
:try_start_b6
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
:cond_b9
:try_end_b9
.catchall {:try_start_b6 .. :try_end_b9} :catchall_ba
.catch Ljava/io/IOException; {:try_start_b6 .. :try_end_b9} :catch_bd
:try_start_b9
:goto_b9
throw v0
:try_end_ba
.catchall {:try_start_b9 .. :try_end_ba} :catchall_ba
:catchall_ba
move-exception v0
monitor-exit v3
throw v0
:catch_bd
move-exception v1
goto :goto_b9
:catchall_bf
move-exception v1
move-object v8, v1
move-object v1, v0
move-object v0, v8
goto :goto_b4
:catch_c4
move-exception v0
move-object v0, v1
goto :goto_a9
:cond_c7
move v1, v2
goto :goto_49
.end method
.method private static c(Landroid/content/Context;)V
.registers 4
invoke-virtual {p0}, Landroid/content/Context;->getCacheDir()Ljava/io/File;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-static {v0, v1, v2}, Lcom/mato/sdk/utils/c;->a(Ljava/io/File;J)I
invoke-static {}, Lcom/mato/sdk/utils/g;->h()Z
move-result v0
if-eqz v0, :cond_1c
invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
move-result-object v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
invoke-static {v0, v1, v2}, Lcom/mato/sdk/utils/c;->a(Ljava/io/File;J)I
:cond_1c
return-void
.end method
.method private static c(Ljava/lang/String;)Z
.registers 6
const/4 v0, 0x0
new-instance v1, Ljava/io/File;
invoke-direct {v1, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->isFile()Z
move-result v2
if-eqz v2, :cond_37
invoke-virtual {v1}, Ljava/io/File;->exists()Z
move-result v2
if-eqz v2, :cond_37
new-instance v0, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
invoke-virtual {v0}, Ljava/io/File;->delete()Z
const/4 v0, 0x1
:cond_37
return v0
.end method
.method private static d(Landroid/content/Context;)V
.registers 5
invoke-static {}, Lcom/mato/sdk/a/b;->m()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "Mato.FileUtil"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "the tempdir is:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
if-eqz v0, :cond_62
const-string/jumbo v1, "/"
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_42
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_3e
invoke-static {v0}, Lcom/mato/sdk/utils/c;->b(Ljava/lang/String;)Z
:goto_41
:cond_41
return-void
:cond_42
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getPath()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_3e
:cond_62
invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
move-result-object v0
if-eqz v0, :cond_41
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Landroid/content/Context;->getExternalCacheDir()Ljava/io/File;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-string/jumbo v1, "Mato.FileUtil"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "the path is:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {v0}, Lcom/mato/sdk/utils/c;->b(Ljava/lang/String;)Z
goto :goto_41
.end method
.method private static d(Ljava/lang/String;)Z
.registers 8
const/4 v3, 0x1
const/4 v1, 0x0
sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_1d
new-instance v0, Ljava/lang/StringBuilder;
invoke-static {p0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p0
:cond_1d
new-instance v4, Ljava/io/File;
invoke-direct {v4, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_2e
invoke-virtual {v4}, Ljava/io/File;->isDirectory()Z
move-result v0
if-nez v0, :cond_38
:cond_2e
const-string/jumbo v0, "Mato.FileUtil"
const-string/jumbo v2, "not a dir"
invoke-static {v0, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
:goto_37
:cond_37
return v1
:cond_38
invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;
move-result-object v5
move v0, v1
move v2, v3
:goto_3e
array-length v6, v5
if-lt v0, v6, :cond_6c
:cond_41
if-eqz v2, :cond_37
new-instance v0, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-virtual {v4}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v5
invoke-static {v5}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v5
invoke-direct {v2, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-virtual {v2, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v4, v0}, Ljava/io/File;->renameTo(Ljava/io/File;)Z
invoke-virtual {v0}, Ljava/io/File;->delete()Z
move-result v0
if-eqz v0, :cond_37
move v1, v3
goto :goto_37
:cond_6c
aget-object v2, v5, v0
invoke-virtual {v2}, Ljava/io/File;->isFile()Z
move-result v2
if-eqz v2, :cond_83
aget-object v2, v5, v0
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/mato/sdk/utils/c;->c(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_41
:goto_80
add-int/lit8 v0, v0, 0x1
goto :goto_3e
:cond_83
aget-object v2, v5, v0
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Lcom/mato/sdk/utils/c;->d(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_41
goto :goto_80
.end method
.method public static d()[B
.registers 3
const/4 v0, 0x0
sget-object v1, Lcom/mato/sdk/utils/c;->d:Ljava/lang/StringBuffer;
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-eqz v2, :cond_e
:goto_d
return-object v0
:try_start_e
:cond_e
invoke-virtual {v1}, Ljava/lang/String;->getBytes()[B
move-result-object v1
invoke-static {v1}, Lcom/mato/sdk/utils/c;->a([B)[B
:try_end_15
.catch Ljava/lang/Exception; {:try_start_e .. :try_end_15} :catch_17
move-result-object v0
goto :goto_d
:catch_17
move-exception v1
goto :goto_d
.end method
.method public static e()V
.registers 7
const/4 v1, 0x0
const/4 v5, 0x0
invoke-static {}, Lcom/mato/sdk/utils/c;->i()Ljava/lang/String;
move-result-object v0
if-nez v0, :cond_9
:goto_8
:cond_8
return-void
:cond_9
new-instance v2, Ljava/io/File;
invoke-direct {v2, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v0
if-eqz v0, :cond_8
:try_start_14
new-instance v2, Ljava/io/RandomAccessFile;
invoke-static {}, Lcom/mato/sdk/utils/c;->i()Ljava/lang/String;
move-result-object v0
const-string/jumbo v3, "rw"
invoke-direct {v2, v0, v3}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:try_end_20
.catchall {:try_start_14 .. :try_end_20} :catchall_7a
.catch Ljava/io/FileNotFoundException; {:try_start_14 .. :try_end_20} :catch_56
.catch Ljava/io/IOException; {:try_start_14 .. :try_end_20} :catch_68
const-wide/16 v3, 0x0
:try_start_22
invoke-virtual {v2, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V
new-instance v0, Ljava/io/RandomAccessFile;
new-instance v3, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/mato/sdk/utils/g;->a()Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string/jumbo v4, "/crash.log"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
const-string/jumbo v4, "rw"
invoke-direct {v0, v3, v4}, Ljava/io/RandomAccessFile;-><init>(Ljava/lang/String;Ljava/lang/String;)V
:try_end_45
.catchall {:try_start_22 .. :try_end_45} :catchall_94
.catch Ljava/io/FileNotFoundException; {:try_start_22 .. :try_end_45} :catch_a0
.catch Ljava/io/IOException; {:try_start_22 .. :try_end_45} :catch_9b
const-wide/16 v3, 0x0
:try_start_47
invoke-virtual {v0, v3, v4}, Ljava/io/RandomAccessFile;->setLength(J)V
:try_end_4a
.catchall {:try_start_47 .. :try_end_4a} :catchall_96
.catch Ljava/io/FileNotFoundException; {:try_start_47 .. :try_end_4a} :catch_a4
.catch Ljava/io/IOException; {:try_start_47 .. :try_end_4a} :catch_9d
invoke-static {v5}, Lcom/mato/sdk/a/b$e;->b(Z)V
:try_start_4d
invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
:goto_50
:try_start_50
:try_end_50
.catch Ljava/io/IOException; {:try_start_4d .. :try_end_50} :catch_92
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
:try_end_53
.catch Ljava/io/IOException; {:try_start_50 .. :try_end_53} :catch_54
goto :goto_8
:catch_54
move-exception v0
goto :goto_8
:catch_56
move-exception v0
move-object v0, v1
:goto_58
invoke-static {v5}, Lcom/mato/sdk/a/b$e;->b(Z)V
if-eqz v1, :cond_60
:try_start_5d
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
:try_end_60
.catch Ljava/io/IOException; {:try_start_5d .. :try_end_60} :catch_8a
:cond_60
:goto_60
if-eqz v0, :cond_8
:try_start_62
invoke-virtual {v0}, Ljava/io/RandomAccessFile;->close()V
:try_end_65
.catch Ljava/io/IOException; {:try_start_62 .. :try_end_65} :catch_66
goto :goto_8
:catch_66
move-exception v0
goto :goto_8
:catch_68
move-exception v0
move-object v2, v1
:goto_6a
invoke-static {v5}, Lcom/mato/sdk/a/b$e;->b(Z)V
if-eqz v2, :cond_72
:try_start_6f
invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
:goto_72
:cond_72
:try_end_72
.catch Ljava/io/IOException; {:try_start_6f .. :try_end_72} :catch_8c
if-eqz v1, :cond_8
:try_start_74
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
:try_end_77
.catch Ljava/io/IOException; {:try_start_74 .. :try_end_77} :catch_78
goto :goto_8
:catch_78
move-exception v0
goto :goto_8
:catchall_7a
move-exception v0
move-object v2, v1
:goto_7c
invoke-static {v5}, Lcom/mato/sdk/a/b$e;->b(Z)V
if-eqz v2, :cond_84
:try_start_81
invoke-virtual {v2}, Ljava/io/RandomAccessFile;->close()V
:try_end_84
.catch Ljava/io/IOException; {:try_start_81 .. :try_end_84} :catch_8e
:goto_84
:cond_84
if-eqz v1, :cond_89
:try_start_86
invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V
:try_end_89
.catch Ljava/io/IOException; {:try_start_86 .. :try_end_89} :catch_90
:goto_89
:cond_89
throw v0
:catch_8a
move-exception v1
goto :goto_60
:catch_8c
move-exception v0
goto :goto_72
:catch_8e
move-exception v2
goto :goto_84
:catch_90
move-exception v1
goto :goto_89
:catch_92
move-exception v1
goto :goto_50
:catchall_94
move-exception v0
goto :goto_7c
:catchall_96
move-exception v1
move-object v6, v1
move-object v1, v0
move-object v0, v6
goto :goto_7c
:catch_9b
move-exception v0
goto :goto_6a
:catch_9d
move-exception v1
move-object v1, v0
goto :goto_6a
:catch_a0
move-exception v0
move-object v0, v1
move-object v1, v2
goto :goto_58
:catch_a4
move-exception v1
move-object v1, v2
goto :goto_58
.end method
.method public static f()Z
.registers 3
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/mato/sdk/utils/g;->i()Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "wspx.p"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->exists()Z
move-result v0
return v0
.end method
.method public static g()Z
.registers 5
new-instance v0, Ljava/io/File;
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {}, Lcom/mato/sdk/utils/g;->i()Ljava/io/File;
move-result-object v2
invoke-virtual {v2}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string/jumbo v2, "wspx.p"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
const-string/jumbo v1, "Mato.FileUtil"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "the current time is:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
new-instance v3, Ljava/util/Date;
invoke-direct {v3}, Ljava/util/Date;-><init>()V
invoke-virtual {v3}, Ljava/util/Date;->getTime()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string/jumbo v1, "Mato.FileUtil"
new-instance v2, Ljava/lang/StringBuilder;
const-string/jumbo v3, "the last modified patch time is:"
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/io/File;->lastModified()J
move-result-wide v3
invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/mato/sdk/utils/f;->a(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Ljava/util/Date;
invoke-direct {v1}, Ljava/util/Date;-><init>()V
invoke-virtual {v1}, Ljava/util/Date;->getTime()J
move-result-wide v1
invoke-virtual {v0}, Ljava/io/File;->lastModified()J
move-result-wide v3
sub-long v0, v1, v3
const-wide/32 v2, 0x93a80
cmp-long v0, v0, v2
if-lez v0, :cond_78
const/4 v0, 0x0
:goto_77
return v0
:cond_78
const/4 v0, 0x1
goto :goto_77
.end method
.method private static h()[B
.registers 3
const/4 v0, 0x0
:try_start_1
invoke-static {}, Lcom/mato/sdk/utils/c;->i()Ljava/lang/String;
move-result-object v1
if-nez v1, :cond_8
:goto_7
:cond_7
return-object v0
:cond_8
new-instance v2, Ljava/io/File;
invoke-direct {v2, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/io/File;->exists()Z
move-result v1
if-eqz v1, :cond_7
invoke-static {v2}, Lcom/mato/sdk/utils/c;->a(Ljava/io/File;)[B
:try_end_16
.catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_16} :catch_18
move-result-object v0
goto :goto_7
:catch_18
move-exception v1
goto :goto_7
.end method
.method private static i()Ljava/lang/String;
.registers 2
:try_start_0
invoke-static {}, Lcom/mato/sdk/utils/g;->a()Ljava/lang/String;
:try_end_3
.catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_3} :catch_1f
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sget-object v0, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string/jumbo v1, "access.log"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_1e
return-object v0
:catch_1f
move-exception v0
const/4 v0, 0x0
goto :goto_1e
.end method