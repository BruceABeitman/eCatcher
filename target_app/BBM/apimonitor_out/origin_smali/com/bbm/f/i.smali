.class public final Lcom/bbm/f/i;
.super Ljava/lang/Object;
.source "NativeLibraryLoader.java"


# static fields
.field private static final a:[Ljava/lang/String;

.field private static b:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x0

    const/16 v0, 0xf

    new-array v0, v0, [Ljava/lang/String;

    const-string v1, "openssl_crypto"

    aput-object v1, v0, v3

    const/4 v1, 0x1

    const-string v2, "openssl_ssl"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "ids"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "transport"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "bbmmedia"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "gnustl_shared"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "sqlite3"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "cares"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "curl"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "bbmcore"

    aput-object v2, v0, v1

    const/16 v1, 0xa

    const-string v2, "img_codec_bmp"

    aput-object v2, v0, v1

    const/16 v1, 0xb

    const-string v2, "img_codec_gif"

    aput-object v2, v0, v1

    const/16 v1, 0xc

    const-string v2, "img_codec_jpg"

    aput-object v2, v0, v1

    const/16 v1, 0xd

    const-string v2, "img_codec_png"

    aput-object v2, v0, v1

    const/16 v1, 0xe

    const-string v2, "img_codec_tif"

    aput-object v2, v0, v1

    sput-object v0, Lcom/bbm/f/i;->a:[Ljava/lang/String;

    sput-boolean v3, Lcom/bbm/f/i;->b:Z

    return-void
.end method

.method private static a(Ljava/io/File;)J
    .registers 6

    new-instance v3, Ljava/util/zip/CRC32;

    invoke-direct {v3}, Ljava/util/zip/CRC32;-><init>()V

    const/4 v2, 0x0

    :try_start_6
    new-instance v1, Ljava/io/BufferedInputStream;

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p0}, Ljava/io/FileInputStream;-><init>(Ljava/io/File;)V

    invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_10
    .catchall {:try_start_6 .. :try_end_10} :catchall_2b

    const/16 v0, 0x1000

    :try_start_12
    new-array v2, v0, [B

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v0

    :goto_18
    if-lez v0, :cond_23

    const/4 v4, 0x0

    invoke-virtual {v3, v2, v4, v0}, Ljava/util/zip/CRC32;->update([BII)V

    invoke-virtual {v1, v2}, Ljava/io/InputStream;->read([B)I
    :try_end_21
    .catchall {:try_start_12 .. :try_end_21} :catchall_33

    move-result v0

    goto :goto_18

    :cond_23
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    invoke-virtual {v3}, Ljava/util/zip/CRC32;->getValue()J

    move-result-wide v0

    return-wide v0

    :catchall_2b
    move-exception v0

    move-object v1, v2

    :goto_2d
    if-eqz v1, :cond_32

    invoke-virtual {v1}, Ljava/io/InputStream;->close()V

    :cond_32
    throw v0

    :catchall_33
    move-exception v0

    goto :goto_2d
.end method

.method private static a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;
    .registers 5

    new-instance v0, Ljava/io/File;

    const-string v1, "lib"

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    return-object v0
.end method

.method public static a(Landroid/content/Context;)V
    .registers 10

    const/4 v2, 0x1

    const/4 v1, 0x0

    sget-boolean v0, Lcom/bbm/f/i;->b:Z

    if-eqz v0, :cond_7

    :goto_6
    return-void

    :cond_7
    :try_start_7
    invoke-static {p0}, Lcom/bbm/f/i;->b(Landroid/content/Context;)Z
    :try_end_a
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_a} :catch_79

    move-result v3

    if-nez v3, :cond_af

    :try_start_d
    const-string v0, "lib"

    const/4 v4, 0x0

    invoke-virtual {p0, v0, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v4

    invoke-virtual {v4}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v5

    if-eqz v5, :cond_58

    move v0, v1

    :goto_1b
    array-length v6, v5

    if-ge v0, v6, :cond_58

    aget-object v6, v5, v0

    invoke-virtual {v6}, Ljava/io/File;->delete()Z

    move-result v7

    if-nez v7, :cond_55

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v4, "Unable to delete "

    invoke-direct {v0, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_3f
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_3f} :catch_aa

    move v0, v1

    :goto_40
    move v8, v3

    move v3, v0

    move v0, v8

    :goto_43
    move v4, v3

    move v3, v0

    move v0, v1

    :goto_46
    sget-object v5, Lcom/bbm/f/i;->a:[Ljava/lang/String;

    array-length v5, v5

    if-ge v0, v5, :cond_a6

    sget-object v5, Lcom/bbm/f/i;->a:[Ljava/lang/String;

    aget-object v5, v5, v0

    :try_start_4f
    invoke-static {v5}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V
    :try_end_52
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_4f .. :try_end_52} :catch_85

    :goto_52
    add-int/lit8 v0, v0, 0x1

    goto :goto_46

    :cond_55
    add-int/lit8 v0, v0, 0x1

    goto :goto_1b

    :cond_58
    :try_start_58
    invoke-virtual {v4}, Ljava/io/File;->delete()Z

    move-result v0

    if-nez v0, :cond_77

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v5, "Unable to delete "

    invoke-direct {v0, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {v0, v4}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_77
    .catch Ljava/lang/Exception; {:try_start_58 .. :try_end_77} :catch_aa

    :cond_77
    move v0, v2

    goto :goto_40

    :catch_79
    move-exception v0

    move-object v3, v0

    move v0, v1

    :goto_7c
    const-string v4, "Native Library Version Check Failed"

    new-array v5, v1, [Ljava/lang/Object;

    invoke-static {v3, v4, v5}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v3, v1

    goto :goto_43

    :catch_85
    move-exception v6

    if-eqz v4, :cond_91

    if-nez v3, :cond_91

    invoke-static {p0}, Lcom/bbm/f/i;->c(Landroid/content/Context;)Z

    move-result v7

    if-eqz v7, :cond_a3

    move v3, v2

    :cond_91
    :goto_91
    if-eqz v4, :cond_a5

    invoke-static {v5}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-static {p0, v5}, Lcom/bbm/f/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v5

    invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Ljava/lang/System;->load(Ljava/lang/String;)V

    goto :goto_52

    :cond_a3
    move v4, v1

    goto :goto_91

    :cond_a5
    throw v6

    :cond_a6
    sput-boolean v2, Lcom/bbm/f/i;->b:Z

    goto/16 :goto_6

    :catch_aa
    move-exception v0

    move-object v8, v0

    move v0, v3

    move-object v3, v8

    goto :goto_7c

    :cond_af
    move v0, v2

    goto :goto_40
.end method

.method private static a(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V
    .registers 10

    const/4 v6, 0x0

    const/4 v5, 0x1

    invoke-static {p0, p2}, Lcom/bbm/f/i;->a(Landroid/content/Context;Ljava/lang/String;)Ljava/io/File;

    move-result-object v0

    const/4 v2, 0x0

    :try_start_7
    invoke-virtual {v0}, Ljava/io/File;->createNewFile()Z

    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, v0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_f
    .catchall {:try_start_7 .. :try_end_f} :catchall_3c

    const/16 v2, 0x1000

    :try_start_11
    new-array v2, v2, [B

    :goto_13
    invoke-virtual {p1, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    if-lez v3, :cond_2a

    const/4 v4, 0x0

    invoke-virtual {v1, v2, v4, v3}, Ljava/io/FileOutputStream;->write([BII)V
    :try_end_1d
    .catchall {:try_start_11 .. :try_end_1d} :catchall_1e

    goto :goto_13

    :catchall_1e
    move-exception v0

    :goto_1f
    if-eqz p1, :cond_24

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_24
    if-eqz v1, :cond_29

    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    :cond_29
    throw v0

    :cond_2a
    if-eqz p1, :cond_2f

    invoke-virtual {p1}, Ljava/io/InputStream;->close()V

    :cond_2f
    invoke-virtual {v1}, Ljava/io/FileOutputStream;->close()V

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setReadable(ZZ)Z

    invoke-virtual {v0, v5, v5}, Ljava/io/File;->setWritable(ZZ)Z

    invoke-virtual {v0, v5, v6}, Ljava/io/File;->setExecutable(ZZ)Z

    return-void

    :catchall_3c
    move-exception v0

    move-object v1, v2

    goto :goto_1f
.end method

.method private static b(Landroid/content/Context;)Z
    .registers 8

    const/4 v6, 0x1

    const/4 v0, 0x0

    const/4 v3, 0x0

    :try_start_3
    new-instance v1, Ljava/io/File;

    const-string v2, "lib"

    const/4 v4, 0x0

    invoke-virtual {p0, v2, v4}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    const-string v4, "VERSION"

    invoke-direct {v1, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-virtual {v1}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_72

    new-instance v2, Ljava/io/BufferedReader;

    new-instance v4, Ljava/io/FileReader;

    invoke-direct {v4, v1}, Ljava/io/FileReader;-><init>(Ljava/io/File;)V

    invoke-direct {v2, v4}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
    :try_end_21
    .catchall {:try_start_3 .. :try_end_21} :catchall_5b
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_21} :catch_3d

    :try_start_21
    invoke-virtual {v2}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v1

    const-string v3, "2.5.0.32"

    invoke-virtual {v3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_2a
    .catchall {:try_start_21 .. :try_end_2a} :catchall_6d
    .catch Ljava/io/IOException; {:try_start_21 .. :try_end_2a} :catch_70

    move-result v1

    :goto_2b
    if-eqz v2, :cond_30

    :try_start_2d
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_30
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_32

    :cond_30
    move v0, v1

    :cond_31
    :goto_31
    return v0

    :catch_32
    move-exception v1

    const-string v2, "Check App Version Failed"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_31

    :catch_3d
    move-exception v1

    move-object v2, v3

    :goto_3f
    :try_start_3f
    const-string v3, "Check App Version Failed"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object v1, v4, v5

    invoke-static {v3, v4}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
    :try_end_4a
    .catchall {:try_start_3f .. :try_end_4a} :catchall_6d

    if-eqz v2, :cond_31

    :try_start_4c
    invoke-virtual {v2}, Ljava/io/BufferedReader;->close()V
    :try_end_4f
    .catch Ljava/io/IOException; {:try_start_4c .. :try_end_4f} :catch_50

    goto :goto_31

    :catch_50
    move-exception v1

    const-string v2, "Check App Version Failed"

    new-array v3, v6, [Ljava/lang/Object;

    aput-object v1, v3, v0

    invoke-static {v2, v3}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_31

    :catchall_5b
    move-exception v1

    :goto_5c
    if-eqz v3, :cond_61

    :try_start_5e
    invoke-virtual {v3}, Ljava/io/BufferedReader;->close()V
    :try_end_61
    .catch Ljava/io/IOException; {:try_start_5e .. :try_end_61} :catch_62

    :cond_61
    :goto_61
    throw v1

    :catch_62
    move-exception v2

    const-string v3, "Check App Version Failed"

    new-array v4, v6, [Ljava/lang/Object;

    aput-object v2, v4, v0

    invoke-static {v3, v4}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_61

    :catchall_6d
    move-exception v1

    move-object v3, v2

    goto :goto_5c

    :catch_70
    move-exception v1

    goto :goto_3f

    :cond_72
    move-object v2, v3

    move v1, v0

    goto :goto_2b
.end method

.method private static c(Landroid/content/Context;)Z
    .registers 12

    const/4 v0, 0x1

    const/4 v1, 0x0

    :try_start_2
    const-string v2, "lib"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-nez v3, :cond_12

    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    :cond_12
    new-instance v3, Ljava/util/zip/ZipFile;

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->sourceDir:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    const/4 v4, 0x1

    invoke-direct {v3, v2, v4}, Ljava/util/zip/ZipFile;-><init>(Ljava/io/File;I)V

    move v2, v1

    :goto_24
    sget-object v4, Lcom/bbm/f/i;->a:[Ljava/lang/String;

    array-length v4, v4

    if-ge v2, v4, :cond_6e

    sget-object v4, Lcom/bbm/f/i;->a:[Ljava/lang/String;

    aget-object v4, v4, v2

    invoke-static {v4}, Ljava/lang/System;->mapLibraryName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "lib/"

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v6, Landroid/os/Build;->CPU_ABI:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, v5}, Ljava/util/zip/ZipFile;->getEntry(Ljava/lang/String;)Ljava/util/zip/ZipEntry;

    move-result-object v6

    if-nez v6, :cond_91

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "Unable to locate library "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, "in APK"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V

    move v0, v1

    :cond_6e
    if-eqz v0, :cond_90

    new-instance v4, Ljava/io/File;

    const-string v2, "lib"

    const/4 v3, 0x0

    invoke-virtual {p0, v2, v3}, Landroid/content/Context;->getDir(Ljava/lang/String;I)Ljava/io/File;

    move-result-object v2

    const-string v3, "VERSION"

    invoke-direct {v4, v2, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_7e
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_7e} :catch_d2

    const/4 v3, 0x0

    :try_start_7f
    new-instance v2, Ljava/io/FileOutputStream;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_84
    .catchall {:try_start_7f .. :try_end_84} :catchall_ca

    :try_start_84
    const-string v3, "2.5.0.32"

    invoke-virtual {v3}, Ljava/lang/String;->getBytes()[B

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/io/FileOutputStream;->write([B)V
    :try_end_8d
    .catchall {:try_start_84 .. :try_end_8d} :catchall_dc

    :try_start_8d
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_90
    :goto_90
    return v0

    :cond_91
    new-instance v5, Ljava/io/File;

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v8

    iget-object v8, v8, Landroid/content/pm/ApplicationInfo;->dataDir:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "/lib/"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v5, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v5}, Lcom/bbm/f/i;->a(Ljava/io/File;)J

    move-result-wide v7

    invoke-virtual {v6}, Ljava/util/zip/ZipEntry;->getCrc()J

    move-result-wide v9

    cmp-long v5, v7, v9

    if-eqz v5, :cond_c6

    invoke-virtual {v3, v6}, Ljava/util/zip/ZipFile;->getInputStream(Ljava/util/zip/ZipEntry;)Ljava/io/InputStream;

    move-result-object v5

    invoke-static {p0, v5, v4}, Lcom/bbm/f/i;->a(Landroid/content/Context;Ljava/io/InputStream;Ljava/lang/String;)V

    :cond_c6
    add-int/lit8 v2, v2, 0x1

    goto/16 :goto_24

    :catchall_ca
    move-exception v0

    move-object v2, v3

    :goto_cc
    if-eqz v2, :cond_d1

    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V

    :cond_d1
    throw v0
    :try_end_d2
    .catch Ljava/lang/Exception; {:try_start_8d .. :try_end_d2} :catch_d2

    :catch_d2
    move-exception v0

    const-string v2, "Unable to verify libraries"

    new-array v3, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    move v0, v1

    goto :goto_90

    :catchall_dc
    move-exception v0

    goto :goto_cc
.end method
