.class public abstract Lcom/pinguo/album/data/MediaSet;
.super Lcom/pinguo/album/data/MediaObject;
.source "MediaSet.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/album/data/MediaSet$ItemConsumer;,
        Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;,
        Lcom/pinguo/album/data/MediaSet$SortTag;,
        Lcom/pinguo/album/data/MediaSet$SyncListener;
    }
.end annotation


# static fields
.field private static final FUTURE_STUB:Lcom/pinguo/album/Future; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/pinguo/album/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final INDEX_NOT_FOUND:I = -0x1

.field public static final MEDIAITEM_BATCH_FETCH_COUNT:I = 0x1f4

.field public static final SYNC_RESULT_CANCELLED:I = 0x1

.field public static final SYNC_RESULT_ERROR:I = 0x2

.field public static final SYNC_RESULT_SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "MediaSet"


# instance fields
.field private mListeners:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Lcom/pinguo/album/data/ContentListener;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/pinguo/album/data/MediaSet$1;

    invoke-direct {v0}, Lcom/pinguo/album/data/MediaSet$1;-><init>()V

    sput-object v0, Lcom/pinguo/album/data/MediaSet;->FUTURE_STUB:Lcom/pinguo/album/Future;

    return-void
.end method

.method public constructor <init>(Lcom/pinguo/album/data/MediaPath;J)V
    .registers 5

    invoke-direct {p0, p1, p2, p3}, Lcom/pinguo/album/data/MediaObject;-><init>(Lcom/pinguo/album/data/MediaPath;J)V

    new-instance v0, Ljava/util/WeakHashMap;

    invoke-direct {v0}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v0, p0, Lcom/pinguo/album/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    return-void
.end method


# virtual methods
.method public addContentListener(Lcom/pinguo/album/data/ContentListener;)V
    .registers 4

    const-string/jumbo v0, "MediaSet"

    const-string/jumbo v1, "addContentListener"

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/album/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_12

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/pinguo/album/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Ljava/util/WeakHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11
.end method

.method public analysisSortTags(Ljava/util/ArrayList;)I
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/data/MediaSet$SortTag;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public closeCursor()V
    .registers 1

    return-void
.end method

.method public abstract delete([Lcom/pinguo/album/data/MediaPath;)V
.end method

.method protected enumerateMediaItems(Lcom/pinguo/album/data/MediaSet$ItemConsumer;I)I
    .registers 12

    invoke-virtual {p0}, Lcom/pinguo/album/data/MediaSet;->getMediaItemCount()I

    move-result v6

    const/4 v5, 0x0

    :goto_5
    if-lt v5, v6, :cond_8

    return v6

    :cond_8
    const/16 v7, 0x1f4

    sub-int v8, v6, v5

    invoke-static {v7, v8}, Ljava/lang/Math;->min(II)I

    move-result v0

    invoke-virtual {p0, v5, v0}, Lcom/pinguo/album/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v1, 0x0

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v4

    :goto_19
    if-lt v1, v4, :cond_1d

    add-int/2addr v5, v0

    goto :goto_5

    :cond_1d
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/album/data/MediaItem;

    add-int v7, p2, v5

    add-int/2addr v7, v1

    invoke-interface {p1, v7, v2}, Lcom/pinguo/album/data/MediaSet$ItemConsumer;->consume(ILcom/pinguo/album/data/MediaItem;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_19
.end method

.method public enumerateMediaItems(Lcom/pinguo/album/data/MediaSet$ItemConsumer;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/data/MediaSet;->enumerateMediaItems(Lcom/pinguo/album/data/MediaSet$ItemConsumer;I)I

    return-void
.end method

.method protected enumerateTotalMediaItems(Lcom/pinguo/album/data/MediaSet$ItemConsumer;I)I
    .registers 8

    const/4 v2, 0x0

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/album/data/MediaSet;->enumerateMediaItems(Lcom/pinguo/album/data/MediaSet$ItemConsumer;I)I

    move-result v3

    add-int/2addr v2, v3

    invoke-virtual {p0}, Lcom/pinguo/album/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    const/4 v0, 0x0

    :goto_b
    if-lt v0, v1, :cond_e

    return v2

    :cond_e
    invoke-virtual {p0, v0}, Lcom/pinguo/album/data/MediaSet;->getSubMediaSet(I)Lcom/pinguo/album/data/MediaSet;

    move-result-object v3

    add-int v4, p2, v2

    invoke-virtual {v3, p1, v4}, Lcom/pinguo/album/data/MediaSet;->enumerateTotalMediaItems(Lcom/pinguo/album/data/MediaSet$ItemConsumer;I)I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_b
.end method

.method public enumerateTotalMediaItems(Lcom/pinguo/album/data/MediaSet$ItemConsumer;)V
    .registers 3

    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/album/data/MediaSet;->enumerateTotalMediaItems(Lcom/pinguo/album/data/MediaSet$ItemConsumer;I)I

    return-void
.end method

.method public getCoverMediaItem()Lcom/pinguo/album/data/MediaItem;
    .registers 7

    const/4 v5, 0x0

    const/4 v4, 0x1

    invoke-virtual {p0, v5, v4}, Lcom/pinguo/album/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-lez v4, :cond_13

    invoke-virtual {v2, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/pinguo/album/data/MediaItem;

    :goto_12
    return-object v4

    :cond_13
    const/4 v1, 0x0

    invoke-virtual {p0}, Lcom/pinguo/album/data/MediaSet;->getSubMediaSetCount()I

    move-result v3

    :goto_18
    if-lt v1, v3, :cond_1c

    const/4 v4, 0x0

    goto :goto_12

    :cond_1c
    invoke-virtual {p0, v1}, Lcom/pinguo/album/data/MediaSet;->getSubMediaSet(I)Lcom/pinguo/album/data/MediaSet;

    move-result-object v4

    invoke-virtual {v4}, Lcom/pinguo/album/data/MediaSet;->getCoverMediaItem()Lcom/pinguo/album/data/MediaItem;

    move-result-object v0

    if-eqz v0, :cond_28

    move-object v4, v0

    goto :goto_12

    :cond_28
    add-int/lit8 v1, v1, 0x1

    goto :goto_18
.end method

.method public getDetails()Lcom/pinguo/album/data/MediaDetails;
    .registers 4

    invoke-super {p0}, Lcom/pinguo/album/data/MediaObject;->getDetails()Lcom/pinguo/album/data/MediaDetails;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0}, Lcom/pinguo/album/data/MediaSet;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/pinguo/album/data/MediaDetails;->addDetail(ILjava/lang/Object;)V

    return-object v0
.end method

.method protected getIndexOf(Lcom/pinguo/album/data/MediaPath;Ljava/util/ArrayList;)I
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/album/data/MediaPath;",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/data/MediaItem;",
            ">;)I"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-virtual {p2}, Ljava/util/ArrayList;->size()I

    move-result v1

    :goto_5
    if-lt v0, v1, :cond_9

    const/4 v0, -0x1

    :cond_8
    return v0

    :cond_9
    invoke-virtual {p2, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/pinguo/album/data/MediaItem;

    iget-object v2, v2, Lcom/pinguo/album/data/MediaItem;->mPath:Lcom/pinguo/album/data/MediaPath;

    if-eq v2, p1, :cond_8

    add-int/lit8 v0, v0, 0x1

    goto :goto_5
.end method

.method public getIndexOfItem(Lcom/pinguo/album/data/MediaPath;I)I
    .registers 10

    const/4 v4, 0x0

    const/4 v5, -0x1

    const/16 v3, 0x1f4

    add-int/lit16 v6, p2, -0xfa

    invoke-static {v4, v6}, Ljava/lang/Math;->max(II)I

    move-result v2

    invoke-virtual {p0, v2, v3}, Lcom/pinguo/album/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {p0, p1, v1}, Lcom/pinguo/album/data/MediaSet;->getIndexOf(Lcom/pinguo/album/data/MediaPath;Ljava/util/ArrayList;)I

    move-result v0

    if-eq v0, v5, :cond_17

    add-int v3, v2, v0

    :goto_16
    return v3

    :cond_17
    if-nez v2, :cond_27

    move v2, v3

    :goto_1a
    invoke-virtual {p0, v2, v3}, Lcom/pinguo/album/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    :goto_1e
    invoke-virtual {p0, p1, v1}, Lcom/pinguo/album/data/MediaSet;->getIndexOf(Lcom/pinguo/album/data/MediaPath;Ljava/util/ArrayList;)I

    move-result v0

    if-eq v0, v5, :cond_29

    add-int v3, v2, v0

    goto :goto_16

    :cond_27
    move v2, v4

    goto :goto_1a

    :cond_29
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v4, v3, :cond_31

    move v3, v5

    goto :goto_16

    :cond_31
    add-int/lit16 v2, v2, 0x1f4

    invoke-virtual {p0, v2, v3}, Lcom/pinguo/album/data/MediaSet;->getMediaItem(II)Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_1e
.end method

.method public getMediaItem(II)Ljava/util/ArrayList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(II)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/data/MediaItem;",
            ">;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    return-object v0
.end method

.method public abstract getMediaItem(Ljava/util/ArrayList;I)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/views/layout/ThumbnailLayout$ThumbnailPos;",
            ">;I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/data/MediaPath;",
            ">;"
        }
    .end annotation
.end method

.method public abstract getMediaItemByIds([Lcom/pinguo/album/data/MediaPath;)Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/pinguo/album/data/MediaPath;",
            ")",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/pinguo/album/data/MediaItem;",
            ">;"
        }
    .end annotation
.end method

.method public getMediaItemCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getMediaItemCountWithoutCache()I
    .registers 2

    invoke-virtual {p0}, Lcom/pinguo/album/data/MediaSet;->getMediaItemCount()I

    move-result v0

    return v0
.end method

.method public abstract getName()Ljava/lang/String;
.end method

.method public getSubMediaSet(I)Lcom/pinguo/album/data/MediaSet;
    .registers 3

    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0
.end method

.method public getSubMediaSetCount()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public getTotalMediaItemCount()I
    .registers 5

    invoke-virtual {p0}, Lcom/pinguo/album/data/MediaSet;->getMediaItemCount()I

    move-result v2

    const/4 v0, 0x0

    invoke-virtual {p0}, Lcom/pinguo/album/data/MediaSet;->getSubMediaSetCount()I

    move-result v1

    :goto_9
    if-lt v0, v1, :cond_c

    return v2

    :cond_c
    invoke-virtual {p0, v0}, Lcom/pinguo/album/data/MediaSet;->getSubMediaSet(I)Lcom/pinguo/album/data/MediaSet;

    move-result-object v3

    invoke-virtual {v3}, Lcom/pinguo/album/data/MediaSet;->getTotalMediaItemCount()I

    move-result v3

    add-int/2addr v2, v3

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public isLeafAlbum()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public isLoading()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public notifyContentChanged()V
    .registers 4

    const-string/jumbo v1, "MediaSet"

    const-string/jumbo v2, "notifyContentChanged"

    invoke-static {v1, v2}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v1, p0, Lcom/pinguo/album/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v1}, Ljava/util/WeakHashMap;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_13
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_1a

    return-void

    :cond_1a
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/pinguo/album/data/ContentListener;

    invoke-interface {v0}, Lcom/pinguo/album/data/ContentListener;->onContentDirty()V

    goto :goto_13
.end method

.method public abstract reload()J
.end method

.method public removeContentListener(Lcom/pinguo/album/data/ContentListener;)V
    .registers 4

    const-string/jumbo v0, "MediaSet"

    const-string/jumbo v1, "removeContentListener"

    invoke-static {v0, v1}, Lcom/pinguo/album/common/PGLog;->i(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/pinguo/album/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_12

    :goto_11
    return-void

    :cond_12
    iget-object v0, p0, Lcom/pinguo/album/data/MediaSet;->mListeners:Ljava/util/WeakHashMap;

    invoke-virtual {v0, p1}, Ljava/util/WeakHashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11
.end method

.method public requestSync(Lcom/pinguo/album/data/MediaSet$SyncListener;)Lcom/pinguo/album/Future;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/album/data/MediaSet$SyncListener;",
            ")",
            "Lcom/pinguo/album/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-interface {p1, p0, v0}, Lcom/pinguo/album/data/MediaSet$SyncListener;->onSyncDone(Lcom/pinguo/album/data/MediaSet;I)V

    sget-object v0, Lcom/pinguo/album/data/MediaSet;->FUTURE_STUB:Lcom/pinguo/album/Future;

    return-object v0
.end method

.method protected requestSyncOnMultipleSets([Lcom/pinguo/album/data/MediaSet;Lcom/pinguo/album/data/MediaSet$SyncListener;)Lcom/pinguo/album/Future;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Lcom/pinguo/album/data/MediaSet;",
            "Lcom/pinguo/album/data/MediaSet$SyncListener;",
            ")",
            "Lcom/pinguo/album/Future",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    new-instance v0, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;

    invoke-direct {v0, p0, p1, p2}, Lcom/pinguo/album/data/MediaSet$MultiSetSyncFuture;-><init>(Lcom/pinguo/album/data/MediaSet;[Lcom/pinguo/album/data/MediaSet;Lcom/pinguo/album/data/MediaSet$SyncListener;)V

    return-object v0
.end method
