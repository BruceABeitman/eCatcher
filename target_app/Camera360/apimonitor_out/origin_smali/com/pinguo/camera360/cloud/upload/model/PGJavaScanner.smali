.class public Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;
.super Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner;
.source "PGJavaScanner.java"


# instance fields
.field private mScanPath:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/upload/model/PGSdcardScanner;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->mScanPath:Ljava/util/HashSet;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->mScanPath:Ljava/util/HashSet;

    return-void
.end method

.method private getScanPath(Ljava/util/HashSet;)Ljava/util/HashSet;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2, p1}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_9
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_10

    return-object v2

    :cond_10
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    invoke-virtual {v2}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_1a
    :goto_1a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_9

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_1a

    invoke-virtual {v4, v3}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v5

    const/4 v6, -0x1

    if-eq v5, v6, :cond_1a

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_1a
.end method

.method private startScanPath()I
    .registers 8

    invoke-static {}, Lorg/pinguo/cloudshare/support/HelperConsole;->availableSpace()J

    move-result-wide v3

    const-wide/32 v5, 0xc00000

    cmp-long v3, v3, v5

    if-gez v3, :cond_d

    const/4 v3, 0x1

    :goto_c
    return v3

    :cond_d
    iget-object v3, p0, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->mScanPath:Ljava/util/HashSet;

    invoke-static {v3}, Lorg/pinguo/cloudshare/support/FileSupport;->getCamera360RootPath(Ljava/util/Set;)V

    iget-object v3, p0, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->mScanPath:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_18
    :goto_18
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_34

    iget-object v3, p0, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->mScanPath:Ljava/util/HashSet;

    invoke-direct {p0, v3}, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->getScanPath(Ljava/util/HashSet;)Ljava/util/HashSet;

    move-result-object v3

    iput-object v3, p0, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->mScanPath:Ljava/util/HashSet;

    iget-object v3, p0, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->mScanPath:Ljava/util/HashSet;

    invoke-virtual {v3}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_3e

    const/4 v3, 0x0

    goto :goto_c

    :cond_34
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    if-nez v3, :cond_18

    invoke-interface {v1}, Ljava/util/Iterator;->remove()V

    goto :goto_18

    :cond_3e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const/4 v3, -0x1

    invoke-virtual {p0, v2, v3}, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->scan(Ljava/lang/String;I)V

    goto :goto_2c
.end method


# virtual methods
.method public bridge synthetic put(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->put(Ljava/lang/Void;)V

    return-void
.end method

.method public put(Ljava/lang/Void;)V
    .registers 2

    return-void
.end method

.method public run()V
    .registers 4

    invoke-direct {p0}, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->startScanPath()I

    move-result v0

    if-nez v0, :cond_10

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->mUploadCallback:Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule$PGUploadCallback;

    if-eqz v1, :cond_f

    iget-object v1, p0, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->mUploadCallback:Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule$PGUploadCallback;

    invoke-interface {v1}, Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule$PGUploadCallback;->uploadAllSuccess()V

    :cond_f
    :goto_f
    return-void

    :cond_10
    iget-object v1, p0, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->mUploadCallback:Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule$PGUploadCallback;

    const-string/jumbo v2, "\u626b\u63cf\u8fc7\u7a0b\u51fa\u73b0\u9519\u8bef"

    invoke-interface {v1, v2}, Lcom/pinguo/camera360/cloud/upload/model/PGUploadModule$PGUploadCallback;->uploadAllFail(Ljava/lang/String;)V

    goto :goto_f
.end method

.method protected scan(Ljava/lang/String;I)V
    .registers 18

    const/4 v8, -0x1

    move/from16 v0, p2

    if-ne v0, v8, :cond_e

    const/4 v8, 0x0

    iput v8, p0, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->picCount:I

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v8

    iput-wide v8, p0, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->timeCost:J

    :cond_e
    new-instance v7, Ljava/io/File;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v7}, Lorg/pinguo/cloudshare/support/scanner/FileUtils;->isAccessAble(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_1c

    :cond_1b
    :goto_1b
    return-void

    :cond_1c
    invoke-virtual {v7}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v2

    if-eqz v2, :cond_1b

    array-length v8, v2

    if-lez v8, :cond_1b

    array-length v6, v2

    const/4 v4, 0x0

    :goto_27
    if-lt v4, v6, :cond_55

    const/4 v8, -0x1

    move/from16 v0, p2

    if-ne v0, v8, :cond_1b

    const-string/jumbo v8, "\u641c\u7d22\u5230\uff1a%d\u5f20\uff0c\u8017\u65f6\uff1a%d"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    iget v11, p0, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->picCount:I

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    aput-object v11, v9, v10

    const/4 v10, 0x1

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    iget-wide v13, p0, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->timeCost:J

    sub-long/2addr v11, v13

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    move/from16 v0, p2

    invoke-virtual {p0, v5, v0}, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->notify(Ljava/lang/String;I)V

    goto :goto_1b

    :cond_55
    aget-object v1, v2, v4

    invoke-static {v1}, Lorg/pinguo/cloudshare/support/scanner/FileUtils;->isAccessAble(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_60

    :cond_5d
    :goto_5d
    add-int/lit8 v4, v4, 0x1

    goto :goto_27

    :cond_60
    invoke-static {v1}, Lorg/pinguo/cloudshare/support/scanner/FileUtils;->isNoMedia(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_1b

    invoke-static {v1}, Lorg/pinguo/cloudshare/support/scanner/FileUtils;->isInValid(Ljava/io/File;)Z

    move-result v8

    if-nez v8, :cond_5d

    const-string/jumbo v8, "%s/%s"

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/Object;

    const/4 v10, 0x0

    aput-object p1, v9, v10

    const/4 v10, 0x1

    invoke-virtual {v1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/io/File;->isDirectory()Z

    move-result v8

    if-eqz v8, :cond_8c

    add-int/lit8 v8, p2, 0x1

    invoke-virtual {p0, v3, v8}, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->scan(Ljava/lang/String;I)V

    goto :goto_5d

    :cond_8c
    add-int/lit8 v8, p2, 0x1

    invoke-virtual {p0, v3, v8}, Lcom/pinguo/camera360/cloud/upload/model/PGJavaScanner;->process(Ljava/lang/String;I)V

    goto :goto_5d
.end method
