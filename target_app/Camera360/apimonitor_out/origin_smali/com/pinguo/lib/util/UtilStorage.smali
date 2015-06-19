.class public Lcom/pinguo/lib/util/UtilStorage;
.super Ljava/lang/Object;
.source "UtilStorage.java"


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static externalSdcard:Ljava/lang/String;

.field private static hasExternalSdCard:Z

.field private static innerSdcard:Ljava/lang/String;

.field private static volatile storageUtil:Lcom/pinguo/lib/util/UtilStorage;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/pinguo/lib/util/UtilStorage;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/pinguo/lib/util/UtilStorage;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private getExternalMounts()Ljava/util/HashSet;
    .registers 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v5, Ljava/util/HashSet;

    invoke-direct {v5}, Ljava/util/HashSet;-><init>()V

    const-string/jumbo v9, "(?i).*vold.*(vfat|ntfs|exfat|fat32|ext3|ext4).*rw.*"

    new-instance v10, Ljava/lang/StringBuffer;

    invoke-direct {v10}, Ljava/lang/StringBuffer;-><init>()V

    :try_start_d
    new-instance v11, Ljava/lang/ProcessBuilder;

    const/4 v12, 0x0

    new-array v12, v12, [Ljava/lang/String;

    invoke-direct {v11, v12}, Ljava/lang/ProcessBuilder;-><init>([Ljava/lang/String;)V

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/String;

    const/4 v13, 0x0

    const-string/jumbo v14, "mount"

    aput-object v14, v12, v13

    invoke-virtual {v11, v12}, Ljava/lang/ProcessBuilder;->command([Ljava/lang/String;)Ljava/lang/ProcessBuilder;

    move-result-object v11

    const/4 v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/ProcessBuilder;->redirectErrorStream(Z)Ljava/lang/ProcessBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/ProcessBuilder;->start()Ljava/lang/Process;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/Process;->waitFor()I

    invoke-virtual {v8}, Ljava/lang/Process;->getInputStream()Ljava/io/InputStream;

    move-result-object v2

    const/16 v11, 0x400

    new-array v0, v11, [B

    :goto_36
    invoke-virtual {v2, v0}, Ljava/io/InputStream;->read([B)I

    move-result v11

    const/4 v12, -0x1

    if-ne v11, v12, :cond_51

    invoke-virtual {v2}, Ljava/io/InputStream;->close()V
    :try_end_40
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_40} :catch_5d

    :goto_40
    invoke-virtual {v10}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v12, "\n"

    invoke-virtual {v11, v12}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v4

    array-length v13, v4

    const/4 v11, 0x0

    move v12, v11

    :goto_4e
    if-lt v12, v13, :cond_62

    return-object v5

    :cond_51
    :try_start_51
    new-instance v11, Ljava/lang/String;

    const-string/jumbo v12, "UTF-8"

    invoke-direct {v11, v0, v12}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    invoke-virtual {v10, v11}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_5c
    .catch Ljava/lang/Exception; {:try_start_51 .. :try_end_5c} :catch_5d

    goto :goto_36

    :catch_5d
    move-exception v1

    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_40

    :cond_62
    aget-object v3, v4, v12

    sget-object v11, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v3, v11}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v11

    const-string/jumbo v14, "asec"

    invoke-virtual {v11, v14}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v11

    if-nez v11, :cond_84

    invoke-virtual {v3, v9}, Ljava/lang/String;->matches(Ljava/lang/String;)Z

    move-result v11

    if-eqz v11, :cond_84

    const-string/jumbo v11, " "

    invoke-virtual {v3, v11}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v7

    array-length v14, v7

    const/4 v11, 0x0

    :goto_82
    if-lt v11, v14, :cond_88

    :cond_84
    add-int/lit8 v11, v12, 0x1

    move v12, v11

    goto :goto_4e

    :cond_88
    aget-object v6, v7, v11

    const-string/jumbo v15, "/"

    invoke-virtual {v6, v15}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v15

    if-eqz v15, :cond_a5

    sget-object v15, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v6, v15}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v15

    const-string/jumbo v16, "vold"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v15

    if-nez v15, :cond_a5

    invoke-virtual {v5, v6}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :cond_a5
    add-int/lit8 v11, v11, 0x1

    goto :goto_82
.end method

.method public static declared-synchronized getInstance()Lcom/pinguo/lib/util/UtilStorage;
    .registers 2

    const-class v1, Lcom/pinguo/lib/util/UtilStorage;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/pinguo/lib/util/UtilStorage;->storageUtil:Lcom/pinguo/lib/util/UtilStorage;

    if-nez v0, :cond_13

    new-instance v0, Lcom/pinguo/lib/util/UtilStorage;

    invoke-direct {v0}, Lcom/pinguo/lib/util/UtilStorage;-><init>()V

    sput-object v0, Lcom/pinguo/lib/util/UtilStorage;->storageUtil:Lcom/pinguo/lib/util/UtilStorage;

    sget-object v0, Lcom/pinguo/lib/util/UtilStorage;->storageUtil:Lcom/pinguo/lib/util/UtilStorage;

    invoke-direct {v0}, Lcom/pinguo/lib/util/UtilStorage;->init()V

    :cond_13
    sget-object v0, Lcom/pinguo/lib/util/UtilStorage;->storageUtil:Lcom/pinguo/lib/util/UtilStorage;
    :try_end_15
    .catchall {:try_start_3 .. :try_end_15} :catchall_17

    monitor-exit v1

    return-object v0

    :catchall_17
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private init()V
    .registers 5

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v3

    invoke-virtual {v3}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcom/pinguo/lib/util/UtilStorage;->innerSdcard:Ljava/lang/String;

    invoke-direct {p0}, Lcom/pinguo/lib/util/UtilStorage;->getExternalMounts()Ljava/util/HashSet;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_12
    :goto_12
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_2e

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2d

    const/4 v3, 0x1

    sput-boolean v3, Lcom/pinguo/lib/util/UtilStorage;->hasExternalSdCard:Z

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    sput-object v3, Lcom/pinguo/lib/util/UtilStorage;->externalSdcard:Ljava/lang/String;

    :cond_2d
    return-void

    :cond_2e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    sget-object v3, Lcom/pinguo/lib/util/UtilStorage;->innerSdcard:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-interface {v0}, Ljava/util/Iterator;->remove()V

    goto :goto_12
.end method


# virtual methods
.method public getAvailableStorage(Ljava/lang/String;)J
    .registers 10

    const-wide/16 v0, 0x0

    :try_start_2
    new-instance v2, Ljava/io/File;

    invoke-direct {v2, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2}, Ljava/io/File;->isFile()Z

    move-result v4

    if-eqz v4, :cond_18

    sget-object v4, Lcom/pinguo/lib/util/UtilStorage;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Picture save path is a file."

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->w(Ljava/lang/String;Ljava/lang/String;)V

    const-wide/16 v4, 0x0

    :goto_17
    return-wide v4

    :cond_18
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v4

    if-nez v4, :cond_2c

    invoke-virtual {v2}, Ljava/io/File;->mkdirs()Z

    move-result v4

    if-nez v4, :cond_2c

    sget-object v4, Lcom/pinguo/lib/util/UtilStorage;->TAG:Ljava/lang/String;

    const-string/jumbo v5, "Create dir failed!"

    invoke-static {v4, v5}, Lcom/pinguo/lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2c
    new-instance v3, Landroid/os/StatFs;

    invoke-direct {v3, p1}, Landroid/os/StatFs;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3}, Landroid/os/StatFs;->getAvailableBlocks()I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3}, Landroid/os/StatFs;->getBlockSize()I
    :try_end_39
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_39} :catch_3f

    move-result v6

    int-to-long v6, v6

    mul-long v0, v4, v6

    :goto_3d
    move-wide v4, v0

    goto :goto_17

    :catch_3f
    move-exception v4

    goto :goto_3d
.end method

.method public getExternalSdCardPath()Ljava/lang/String;
    .registers 2

    sget-object v0, Lcom/pinguo/lib/util/UtilStorage;->externalSdcard:Ljava/lang/String;

    if-eqz v0, :cond_7

    sget-object v0, Lcom/pinguo/lib/util/UtilStorage;->externalSdcard:Ljava/lang/String;

    :goto_6
    return-object v0

    :cond_7
    const/4 v0, 0x0

    goto :goto_6
.end method

.method public isHasExternalSdCard()Z
    .registers 2

    sget-boolean v0, Lcom/pinguo/lib/util/UtilStorage;->hasExternalSdCard:Z

    return v0
.end method

.method public isSDCardExist()Z
    .registers 3

    invoke-static {}, Landroid/os/Environment;->getExternalStorageState()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "mounted"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
