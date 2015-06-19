.class public Lus/pinguo/androidsdk/pgedit/PGEditStep;
.super Ljava/lang/Object;
.source "PGEditStep.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;,
        Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
    }
.end annotation


# instance fields
.field private mBackgroundBitmap:Landroid/graphics/Bitmap;

.field private mContext:Landroid/content/Context;

.field private mPGEditStepBeanArray:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;",
            ">;"
        }
    .end annotation
.end field

.field private mPosition:I

.field private mRootPath:Ljava/lang/String;

.field private mSaveFileFolder:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Ljava/util/LinkedList;

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPGEditStepBeanArray:Ljava/util/LinkedList;

    const/4 v1, -0x1

    iput v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPosition:I

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mContext:Landroid/content/Context;

    iput-object p2, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mRootPath:Ljava/lang/String;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mSaveFileFolder:Ljava/lang/String;

    return-void
.end method

.method private getStepPhotoName(Ljava/lang/String;)Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mSaveFileFolder:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->getUUID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public getBackgroundBitmap()Landroid/graphics/Bitmap;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    return-object v0
.end method

.method public declared-synchronized getLastStep()Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPosition:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPosition:I

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPGEditStepBeanArray:Ljava/util/LinkedList;

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPGEditStepBeanArray:Ljava/util/LinkedList;

    return-object v0
.end method

.method public declared-synchronized getNextStep()Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPosition:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPosition:I

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPGEditStepBeanArray:Ljava/util/LinkedList;

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
    :try_end_11
    .catchall {:try_start_1 .. :try_end_11} :catchall_13

    monitor-exit p0

    return-object v0

    :catchall_13
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNowStep()Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
    .registers 3

    monitor-enter p0

    :try_start_1
    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPosition:I

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPGEditStepBeanArray:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1b

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPosition:I

    if-ltz v0, :cond_1b

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPGEditStepBeanArray:Ljava/util/LinkedList;

    iget v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPosition:I

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;
    :try_end_19
    .catchall {:try_start_1 .. :try_end_19} :catchall_1d

    :goto_19
    monitor-exit p0

    return-object v0

    :cond_1b
    const/4 v0, 0x0

    goto :goto_19

    :catchall_1d
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public getPosition()I
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPosition:I

    return v0
.end method

.method public getRootPath()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mRootPath:Ljava/lang/String;

    return-object v0
.end method

.method public getSaveFileFolder()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mSaveFileFolder:Ljava/lang/String;

    return-object v0
.end method

.method public getStepJPGPhotoName()Ljava/lang/String;
    .registers 2

    const-string/jumbo v0, ".jpg"

    invoke-direct {p0, v0}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getStepPhotoName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public hasLastStep()Z
    .registers 2

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPosition:I

    if-gtz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x1

    goto :goto_5
.end method

.method public hasNextStep()Z
    .registers 3

    iget v0, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPosition:I

    iget-object v1, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPGEditStepBeanArray:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    if-ne v0, v1, :cond_e

    const/4 v0, 0x0

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x1

    goto :goto_d
.end method

.method public saveStep(Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->saveStep(Ljava/lang/String;Ljava/lang/String;Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;[Ljava/lang/String;Ljava/lang/String;Z)V

    return-void
.end method

.method public declared-synchronized saveStep(Ljava/lang/String;Ljava/lang/String;Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;[Ljava/lang/String;Ljava/lang/String;Z)V
    .registers 13

    monitor-enter p0

    :try_start_1
    new-instance v2, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;

    invoke-direct {v2}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;-><init>()V

    invoke-virtual {v2, p2}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;->setBigPhoto(Ljava/lang/String;)V

    invoke-virtual {v2, p1}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;->setNowShowPhoto(Ljava/lang/String;)V

    if-eqz p3, :cond_21

    if-eqz p4, :cond_21

    new-instance v0, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;

    invoke-direct {v0}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;-><init>()V

    invoke-virtual {v0, p3}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;->setFirstMenuName(Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;)V

    invoke-virtual {v0, p4}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;->setSecondName([Ljava/lang/String;)V

    invoke-virtual {v0, p5}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;->setEffectKey(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditStepBean;->setEffectProgressBean(Lus/pinguo/androidsdk/pgedit/PGEditStep$PGEditEffectProgressBean;)V

    :cond_21
    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPGEditStepBeanArray:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    add-int/lit8 v4, v4, -0x1

    iget v5, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPosition:I

    sub-int v3, v4, v5

    const/4 v1, 0x0

    :goto_2e
    if-lt v1, v3, :cond_3f

    if-eqz p6, :cond_47

    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPGEditStepBeanArray:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    :goto_37
    iget v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPosition:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPosition:I
    :try_end_3d
    .catchall {:try_start_1 .. :try_end_3d} :catchall_4d

    monitor-exit p0

    return-void

    :cond_3f
    :try_start_3f
    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPGEditStepBeanArray:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_2e

    :cond_47
    iget-object v4, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mPGEditStepBeanArray:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z
    :try_end_4c
    .catchall {:try_start_3f .. :try_end_4c} :catchall_4d

    goto :goto_37

    :catchall_4d
    move-exception v4

    monitor-exit p0

    throw v4
.end method

.method public saveStep(Landroid/graphics/Bitmap;Ljava/lang/String;)Z
    .registers 10

    const/4 v3, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v6}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->saveStep(Landroid/graphics/Bitmap;Ljava/lang/String;Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;[Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveStep(Landroid/graphics/Bitmap;Ljava/lang/String;Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;[Ljava/lang/String;Ljava/lang/String;)Z
    .registers 13

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v6}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->saveStep(Landroid/graphics/Bitmap;Ljava/lang/String;Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;[Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    return v0
.end method

.method public saveStep(Landroid/graphics/Bitmap;Ljava/lang/String;Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;[Ljava/lang/String;Ljava/lang/String;Z)Z
    .registers 15

    const/4 v0, 0x0

    if-nez p1, :cond_4

    :cond_3
    :goto_3
    return v0

    :cond_4
    invoke-virtual {p0}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->getStepJPGPhotoName()Ljava/lang/String;

    move-result-object v1

    invoke-static {p1, v1}, Lus/pinguo/androidsdk/pgedit/PGEditTools;->bitmapChangeJPGFile(Landroid/graphics/Bitmap;Ljava/lang/String;)Z

    move-result v7

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "PGEditTools.bitmapChangeJPGFile result is "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lus/pinguo/androidsdk/pgedit/PGSDKLog;->i(Ljava/lang/String;)V

    if-eqz v7, :cond_3

    move-object v0, p0

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Lus/pinguo/androidsdk/pgedit/PGEditStep;->saveStep(Ljava/lang/String;Ljava/lang/String;Lus/pinguo/androidsdk/pgedit/PGEditManifestEnum$firstMenu;[Ljava/lang/String;Ljava/lang/String;Z)V

    const/4 v0, 0x1

    goto :goto_3
.end method

.method public setBackgroundBitmap(Landroid/graphics/Bitmap;)V
    .registers 2

    iput-object p1, p0, Lus/pinguo/androidsdk/pgedit/PGEditStep;->mBackgroundBitmap:Landroid/graphics/Bitmap;

    return-void
.end method
