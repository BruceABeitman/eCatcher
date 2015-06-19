.class public final Lcom/bbm/util/cp;
.super Ljava/lang/Object;
.source "LogCapture.java"


# direct methods
.method public static a(Landroid/app/Activity;)Ljava/io/File;
    .registers 10

    const/4 v2, 0x0

    const/4 v0, 0x1

    const/4 v3, 0x0

    :try_start_3
    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object v1

    invoke-static {}, Lcom/bbm/Alaska;->j()Lcom/bbm/f/ae;

    move-result-object v4

    const-string v5, "Capturing logs"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v5, v6}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    const-string v5, "Device MANUFACTURER=%s MODEL=%s TAGS=%s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    sget-object v8, Landroid/os/Build;->MANUFACTURER:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Landroid/os/Build;->MODEL:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    sget-object v8, Landroid/os/Build;->TAGS:Ljava/lang/String;

    aput-object v8, v6, v7

    invoke-static {v5, v6}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    const-string v5, "BBM version: %s (alaska-a git hash=%s), type: %s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    iget-object v1, v1, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;

    aput-object v1, v6, v7

    const/4 v1, 0x1

    invoke-static {p0}, Lcom/bbm/util/cp;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    aput-object v7, v6, v1

    const/4 v1, 0x2

    sget-object v7, Lcom/bbm/l;->a:Lcom/bbm/k;

    aput-object v7, v6, v1

    invoke-static {v5, v6}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    const-string v1, "BBID=%s PIN=%s"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    iget-object v7, v4, Lcom/bbm/f/ae;->b:Ljava/lang/String;

    aput-object v7, v5, v6

    const/4 v6, 0x1

    iget-object v4, v4, Lcom/bbm/f/ae;->a:Ljava/lang/String;

    aput-object v4, v5, v6

    invoke-static {v1, v5}, Lcom/bbm/x;->b(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const-string v4, "android.permission.READ_LOGS"

    invoke-virtual {p0}, Landroid/app/Activity;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/pm/PackageManager;->checkPermission(Ljava/lang/String;Ljava/lang/String;)I

    move-result v1

    if-nez v1, :cond_fe

    :goto_6e
    if-eqz v0, :cond_101

    const-string v0, "Application has read log permission"

    :goto_72
    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_78
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_3 .. :try_end_78} :catch_105

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/app/Activity;->getFilesDir()Ljava/io/File;

    move-result-object v1

    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/logs/logcat.txt"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/cp;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/text/SimpleDateFormat;

    const-string v1, "yyyy-MM-dd\'T\'HH-mm-ssZ"

    sget-object v4, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-direct {v0, v1, v4}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/util/Date;

    invoke-direct {v4}, Ljava/util/Date;-><init>()V

    invoke-virtual {v0, v4}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "bbm.android.logs.zip"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    :try_start_bb
    invoke-static {p0}, Lcom/bbm/util/cp;->a(Landroid/content/Context;)Ljava/util/ArrayList;

    move-result-object v0

    invoke-static {p0, v4, v0}, Lcom/bbm/util/cp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;
    :try_end_c5
    .catch Ljava/io/IOException; {:try_start_bb .. :try_end_c5} :catch_10b

    move-result-object v1

    if-eqz v1, :cond_12c

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/d/a;->i()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_d8

    const-string v0, "00000000"

    :cond_d8
    invoke-virtual {v1}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, ".aes"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v1, v5, v0}, Lcom/rim/bbm/BbmCoreService;->encryptFileForRtas(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_111

    const-string v0, "Could not encrypt the zip"

    new-array v1, v3, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    move-object v0, v2

    :goto_fd
    return-object v0

    :cond_fe
    move v0, v3

    goto/16 :goto_6e

    :cond_101
    :try_start_101
    const-string v0, "Application does not have read logs permission."
    :try_end_103
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_101 .. :try_end_103} :catch_105

    goto/16 :goto_72

    :catch_105
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_fd

    :catch_10b
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_fd

    :cond_111
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :try_start_11e
    invoke-static {p0, v4, v0}, Lcom/bbm/util/cp;->a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    :try_end_121
    .catch Ljava/io/IOException; {:try_start_11e .. :try_end_121} :catch_126

    invoke-virtual {p0, v4}, Landroid/app/Activity;->getFileStreamPath(Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    goto :goto_fd

    :catch_126
    move-exception v0

    invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V

    move-object v0, v2

    goto :goto_fd

    :cond_12c
    move-object v0, v1

    goto :goto_fd
.end method

.method private static a(Landroid/content/Context;)Ljava/util/ArrayList;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    new-instance v0, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    const-string v3, "logs"

    invoke-direct {v0, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    array-length v3, v2

    const/4 v0, 0x0

    :goto_16
    if-ge v0, v3, :cond_26

    aget-object v4, v2, v0

    invoke-virtual {v4}, Ljava/io/File;->isFile()Z

    move-result v5

    if-eqz v5, :cond_23

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :cond_23
    add-int/lit8 v0, v0, 0x1

    goto :goto_16

    :cond_26
    return-object v1
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/io/File;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Landroid/content/Context;->openFileOutput(Ljava/lang/String;I)Ljava/io/FileOutputStream;

    move-result-object v0

    new-instance v1, Ljava/util/zip/ZipOutputStream;

    new-instance v2, Ljava/io/BufferedOutputStream;

    invoke-direct {v2, v0}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v1, v2}, Ljava/util/zip/ZipOutputStream;-><init>(Ljava/io/OutputStream;)V

    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_13
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2f

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/io/File;

    new-instance v3, Ljava/io/FileInputStream;

    invoke-direct {v3, v0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-virtual {v0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v3, v0}, Lcom/bbm/util/cp;->a(Ljava/util/zip/ZipOutputStream;Ljava/io/InputStream;Ljava/lang/String;)V

    invoke-virtual {v3}, Ljava/io/FileInputStream;->close()V

    goto :goto_13

    :cond_2f
    invoke-virtual {v1}, Ljava/util/zip/ZipOutputStream;->close()V

    return-void
.end method

.method private static a(Ljava/lang/String;)V
    .registers 6

    :try_start_0
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    const-string v1, "logcat -d -v threadtime"

    invoke-virtual {v0, v1}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v0

    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {v0}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V

    new-instance v3, Ljava/io/BufferedWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v2}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/BufferedWriter;-><init>(Ljava/io/Writer;)V

    new-instance v2, Ljava/lang/Thread;

    new-instance v4, Lcom/bbm/util/cq;

    invoke-direct {v4, v0}, Lcom/bbm/util/cq;-><init>(Ljava/lang/Process;)V

    invoke-direct {v2, v4}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v2}, Ljava/lang/Thread;->start()V

    :goto_34
    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_4d

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V

    const-string v0, "\n"

    invoke-virtual {v3, v0}, Ljava/io/BufferedWriter;->write(Ljava/lang/String;)V
    :try_end_42
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_42} :catch_43

    goto :goto_34

    :catch_43
    move-exception v0

    const-string v0, "IO exception trying to capture logcat logs."

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    :goto_4c
    return-void

    :cond_4d
    :try_start_4d
    invoke-virtual {v3}, Ljava/io/BufferedWriter;->flush()V

    invoke-virtual {v3}, Ljava/io/BufferedWriter;->close()V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_56
    .catch Ljava/io/IOException; {:try_start_4d .. :try_end_56} :catch_43

    goto :goto_4c
.end method

.method private static a(Ljava/util/zip/ZipOutputStream;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 9

    const/4 v5, 0x0

    const/16 v4, 0x1000

    new-array v0, v4, [B

    new-instance v1, Ljava/io/BufferedInputStream;

    invoke-direct {v1, p1, v4}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;I)V

    new-instance v2, Ljava/util/zip/ZipEntry;

    invoke-direct {v2, p2}, Ljava/util/zip/ZipEntry;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, v2}, Ljava/util/zip/ZipOutputStream;->putNextEntry(Ljava/util/zip/ZipEntry;)V

    :goto_12
    invoke-virtual {v1, v0, v5, v4}, Ljava/io/BufferedInputStream;->read([BII)I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_1d

    invoke-virtual {p0, v0, v5, v2}, Ljava/util/zip/ZipOutputStream;->write([BII)V

    goto :goto_12

    :cond_1d
    return-void
.end method

.method private static b(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/16 v5, 0xa

    const/4 v0, 0x0

    :try_start_3
    new-instance v1, Ljava/io/BufferedReader;

    new-instance v2, Ljava/io/InputStreamReader;

    invoke-virtual {p0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v3

    const-string v4, "alaska_a_githash"

    invoke-virtual {v3, v4}, Landroid/content/res/AssetManager;->open(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct {v1, v2}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    invoke-virtual {v1}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1}, Ljava/io/BufferedReader;->close()V
    :try_end_1e
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_1e} :catch_2f

    :goto_1e
    if-nez v0, :cond_23

    const-string v0, "??"

    :cond_22
    :goto_22
    return-object v0

    :cond_23
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v5, :cond_22

    const/4 v1, 0x0

    invoke-virtual {v0, v1, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    goto :goto_22

    :catch_2f
    move-exception v1

    goto :goto_1e
.end method
