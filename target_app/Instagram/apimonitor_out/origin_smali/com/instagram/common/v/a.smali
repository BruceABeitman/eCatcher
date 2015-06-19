.class public Lcom/instagram/common/v/a;
.super Ljava/lang/Object;
.source "ApplicationUuidHelper.java"


# static fields
.field private static a:Ljava/lang/String;

.field private static b:J


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v0, 0x0

    sput-object v0, Lcom/instagram/common/v/a;->a:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sput-wide v0, Lcom/instagram/common/v/a;->b:J

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Ljava/lang/String;
    .registers 3

    :try_start_0
    invoke-static {}, Lcom/instagram/common/f/a;->a()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/v/a;->b(Landroid/content/Context;)Ljava/lang/String;
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_7} :catch_9

    move-result-object v0

    :goto_8
    return-object v0

    :catch_9
    move-exception v0

    const-class v1, Lcom/instagram/common/v/a;

    const-string v2, "filesystem unavailable"

    invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    goto :goto_8
.end method

.method public static a(Landroid/content/Context;)Ljava/lang/String;
    .registers 4

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_18

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-eqz v1, :cond_18

    invoke-static {v0, p0}, Lcom/instagram/common/v/a;->a(Ljava/lang/String;Landroid/content/Context;)Z

    move-result v1

    if-eqz v1, :cond_1a

    :cond_18
    const-string v0, ""

    :cond_1a
    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "android-"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;)Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/io/RandomAccessFile;

    const-string v0, "r"

    invoke-direct {v1, p0, v0}, Ljava/io/RandomAccessFile;-><init>(Ljava/io/File;Ljava/lang/String;)V

    :try_start_7
    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->length()J

    move-result-wide v2

    long-to-int v0, v2

    new-array v0, v0, [B

    invoke-virtual {v1, v0}, Ljava/io/RandomAccessFile;->readFully([B)V
    :try_end_11
    .catchall {:try_start_7 .. :try_end_11} :catchall_1a

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    new-instance v1, Ljava/lang/String;

    invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V

    return-object v1

    :catchall_1a
    move-exception v0

    invoke-virtual {v1}, Ljava/io/RandomAccessFile;->close()V

    throw v0
.end method

.method private static a(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;
    .registers 5

    invoke-static {}, Lcom/instagram/common/v/a;->b()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "New device found, writing install files"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/instagram/common/v/a;->a:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1, v0}, Lcom/instagram/common/v/a;->a(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p0, v0}, Lcom/instagram/common/v/a;->b(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {p1}, Lcom/instagram/common/v/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static a(Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/instagram/common/v/a;->a(Ljava/io/FileOutputStream;Ljava/lang/String;)V

    return-void
.end method

.method private static a(Ljava/io/FileOutputStream;Ljava/lang/String;)V
    .registers 3

    invoke-virtual {p1}, Ljava/lang/String;->getBytes()[B

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/io/FileOutputStream;->write([B)V

    invoke-virtual {p0}, Ljava/io/FileOutputStream;->flush()V

    :try_start_a
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->getFD()Ljava/io/FileDescriptor;

    move-result-object v0

    invoke-virtual {v0}, Ljava/io/FileDescriptor;->sync()V
    :try_end_11
    .catch Ljava/io/IOException; {:try_start_a .. :try_end_11} :catch_15

    :goto_11
    invoke-virtual {p0}, Ljava/io/FileOutputStream;->close()V

    return-void

    :catch_15
    move-exception v0

    goto :goto_11
.end method

.method private static a(Ljava/lang/String;Landroid/content/Context;)Z
    .registers 7

    const/4 v0, 0x0

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/facebook/ar;->faulty_security_ids:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v2

    array-length v3, v2

    move v1, v0

    :goto_d
    if-ge v1, v3, :cond_18

    aget-object v4, v2, v1

    invoke-virtual {v4, p0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_19

    const/4 v0, 0x1

    :cond_18
    return v0

    :cond_19
    add-int/lit8 v1, v1, 0x1

    goto :goto_d
.end method

.method private static b()Ljava/lang/String;
    .registers 9

    const/4 v8, 0x2

    const/4 v7, 0x1

    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "-"

    invoke-virtual {v0, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v1

    array-length v2, v1

    if-ge v2, v8, :cond_14

    :goto_13
    return-object v0

    :cond_14
    new-instance v2, Ljava/util/Random;

    invoke-direct {v2}, Ljava/util/Random;-><init>()V

    const/16 v3, 0xf

    invoke-virtual {v2, v3}, Ljava/util/Random;->nextInt(I)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    sget-wide v5, Lcom/instagram/common/v/a;->b:J

    sub-long/2addr v3, v5

    const-wide/16 v5, 0x3e8

    div-long/2addr v3, v5

    const-wide/16 v5, 0x663

    add-long/2addr v3, v5

    invoke-static {v3, v4}, Ljava/lang/Long;->toHexString(J)Ljava/lang/String;

    move-result-object v3

    aget-object v1, v1, v7

    const-string v4, "%s%s"

    new-array v5, v8, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object v2, v5, v6

    aput-object v3, v5, v7

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    goto :goto_13
.end method

.method public static declared-synchronized b(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    const-class v1, Lcom/instagram/common/v/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/instagram/common/v/a;->a:Ljava/lang/String;

    if-eqz v0, :cond_b

    sget-object v0, Lcom/instagram/common/v/a;->a:Ljava/lang/String;
    :try_end_9
    .catchall {:try_start_3 .. :try_end_9} :catchall_5d

    :goto_9
    monitor-exit v1

    return-object v0

    :cond_b
    :try_start_b
    new-instance v0, Ljava/io/File;

    const-string v2, "/mnt/sdcard/.profig.os"

    invoke-direct {v0, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v2, Ljava/io/File;

    invoke-virtual {p0}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v3

    const-string v4, "INSTALLATION"

    invoke-direct {v2, v3, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V
    :try_end_1d
    .catchall {:try_start_b .. :try_end_1d} :catchall_5d

    :try_start_1d
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_60

    invoke-static {v0}, Lcom/instagram/common/v/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/instagram/common/v/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "External installation file found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/instagram/common/v/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/instagram/common/v/a;->a:Ljava/lang/String;

    if-eqz v3, :cond_41

    sget-object v3, Lcom/instagram/common/v/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_4a

    :cond_41
    invoke-static {v0, v2}, Lcom/instagram/common/v/a;->a(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/common/v/a;->a:Ljava/lang/String;

    :cond_47
    :goto_47
    sget-object v0, Lcom/instagram/common/v/a;->a:Ljava/lang/String;

    goto :goto_9

    :cond_4a
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_47

    sget-object v0, Lcom/instagram/common/v/a;->a:Ljava/lang/String;

    invoke-static {v2, v0}, Lcom/instagram/common/v/a;->a(Ljava/io/File;Ljava/lang/String;)V
    :try_end_55
    .catchall {:try_start_1d .. :try_end_55} :catchall_5d
    .catch Ljava/lang/Exception; {:try_start_1d .. :try_end_55} :catch_56

    goto :goto_47

    :catch_56
    move-exception v0

    :try_start_57
    new-instance v2, Ljava/lang/RuntimeException;

    invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v2
    :try_end_5d
    .catchall {:try_start_57 .. :try_end_5d} :catchall_5d

    :catchall_5d
    move-exception v0

    monitor-exit v1

    throw v0

    :cond_60
    :try_start_60
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v3

    if-eqz v3, :cond_91

    invoke-static {v2}, Lcom/instagram/common/v/a;->a(Ljava/io/File;)Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/instagram/common/v/a;->a:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "Internal installation file found, no external file found: "

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v4, Lcom/instagram/common/v/a;->a:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Lcom/instagram/common/v/a;->a:Ljava/lang/String;

    if-eqz v3, :cond_84

    sget-object v3, Lcom/instagram/common/v/a;->a:Ljava/lang/String;

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_8b

    :cond_84
    invoke-static {v0, v2}, Lcom/instagram/common/v/a;->a(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/common/v/a;->a:Ljava/lang/String;

    goto :goto_47

    :cond_8b
    sget-object v2, Lcom/instagram/common/v/a;->a:Ljava/lang/String;

    invoke-static {v0, v2}, Lcom/instagram/common/v/a;->b(Ljava/io/File;Ljava/lang/String;)V

    goto :goto_47

    :cond_91
    invoke-static {v0, v2}, Lcom/instagram/common/v/a;->a(Ljava/io/File;Ljava/io/File;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/instagram/common/v/a;->a:Ljava/lang/String;
    :try_end_97
    .catchall {:try_start_60 .. :try_end_97} :catchall_5d
    .catch Ljava/lang/Exception; {:try_start_60 .. :try_end_97} :catch_56

    goto :goto_47
.end method

.method private static b(Ljava/io/File;Ljava/lang/String;)V
    .registers 3

    :try_start_0
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    invoke-static {v0, p1}, Lcom/instagram/common/v/a;->a(Ljava/io/FileOutputStream;Ljava/lang/String;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_8} :catch_9

    :goto_8
    return-void

    :catch_9
    move-exception v0

    goto :goto_8
.end method
