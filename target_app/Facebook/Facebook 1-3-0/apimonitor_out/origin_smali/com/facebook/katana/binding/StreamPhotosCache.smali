.class public Lcom/facebook/katana/binding/StreamPhotosCache;
.super Ljava/lang/Object;
.source "StreamPhotosCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;,
        Lcom/facebook/katana/binding/StreamPhotosCache$StreamPhotoQuery;
    }
.end annotation


# static fields
.field private static final MAX_CACHE_ENTRIES:J = 0x64L

.field private static final MAX_CACHE_SIZE:J = 0x7a120L

.field public static final TYPE_CACHE_FULL_PHOTO:I = 0x3

.field public static final TYPE_STREAM_PHOTO:I = 0x1

.field public static final TYPE_STREAM_PROFILE_PHOTO:I = 0x2


# instance fields
.field private final mCacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/binding/StreamPhoto;",
            ">;"
        }
    .end annotation
.end field

.field private mCacheSize:J

.field private mDecoderThread:Lcom/facebook/katana/binding/WorkerThread;

.field private final mListener:Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;

.field private final mPendingDownload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotos:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/binding/StreamPhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mPhotos:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mCacheList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mPendingDownload:Ljava/util/Map;

    iput-object p1, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mListener:Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/katana/binding/StreamPhotosCache;)Lcom/facebook/katana/binding/WorkerThread;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mDecoderThread:Lcom/facebook/katana/binding/WorkerThread;

    return-object v0
.end method

.method public static getPhotos(Landroid/content/Context;)Ljava/util/Map;
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/binding/StreamPhoto;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->STREAM_PHOTOS_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/binding/StreamPhotosCache$StreamPhotoQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v11

    if-eqz v11, :cond_5f

    invoke-interface {v11}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_5c

    :cond_1c
    sget-object v0, Lcom/facebook/katana/provider/PhotosProvider;->STREAM_PHOTOS_CONTENT_URI:Landroid/net/Uri;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const/4 v2, 0x0

    invoke-interface {v11, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    const/4 v0, 0x2

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v7

    new-instance v12, Ljava/io/File;

    invoke-direct {v12, v7}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v12}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_60

    const/4 v0, 0x1

    invoke-interface {v11, v0}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    new-instance v4, Lcom/facebook/katana/binding/StreamPhoto;

    invoke-virtual {v12}, Ljava/io/File;->length()J

    move-result-wide v8

    move-object v10, v3

    invoke-direct/range {v4 .. v10}, Lcom/facebook/katana/binding/StreamPhoto;-><init>(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;JLandroid/graphics/Bitmap;)V

    invoke-interface {v13, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_56
    invoke-interface {v11}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_5c
    invoke-interface {v11}, Landroid/database/Cursor;->close()V

    :cond_5f
    return-object v13

    :cond_60
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    invoke-virtual {v0, v5, v3, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    goto :goto_56
.end method

.method private makeRoom(Landroid/content/Context;J)V
    .registers 11

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mCacheList:Ljava/util/List;

    iget-object v3, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mPhotos:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mCacheList:Ljava/util/List;

    new-instance v3, Lcom/facebook/katana/binding/StreamPhotosCache$1;

    invoke-direct {v3, p0}, Lcom/facebook/katana/binding/StreamPhotosCache$1;-><init>(Lcom/facebook/katana/binding/StreamPhotosCache;)V

    invoke-static {v2, v3}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mCacheList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1c
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_28

    :goto_22
    iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mCacheList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    return-void

    :cond_28
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/binding/StreamPhoto;

    iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mPhotos:Ljava/util/Map;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/StreamPhoto;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-virtual {p1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v1}, Lcom/facebook/katana/binding/StreamPhoto;->getContentUri()Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {v2, v3, v6, v6}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    iget-wide v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mCacheSize:J

    invoke-virtual {v1}, Lcom/facebook/katana/binding/StreamPhoto;->getLength()J

    move-result-wide v4

    sub-long/2addr v2, v4

    iput-wide v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mCacheSize:J

    iget-wide v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mCacheSize:J

    cmp-long v2, v2, p2

    if-gtz v2, :cond_1c

    iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mPhotos:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-gez v2, :cond_1c

    goto :goto_22
.end method


# virtual methods
.method protected close()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mPhotos:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mPendingDownload:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mDecoderThread:Lcom/facebook/katana/binding/WorkerThread;

    return-void
.end method

.method public decode(Lcom/facebook/katana/binding/StreamPhoto;Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mDecoderThread:Lcom/facebook/katana/binding/WorkerThread;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/WorkerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lcom/facebook/katana/binding/StreamPhotosCache$2;

    invoke-direct {v1, p0, p1, p2}, Lcom/facebook/katana/binding/StreamPhotosCache$2;-><init>(Lcom/facebook/katana/binding/StreamPhotosCache;Lcom/facebook/katana/binding/StreamPhoto;Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;)Landroid/graphics/Bitmap;
    .registers 4

    const/4 v0, 0x1

    invoke-virtual {p0, p1, p2, v0}, Lcom/facebook/katana/binding/StreamPhotosCache;->get(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public get(Landroid/content/Context;Ljava/lang/String;I)Landroid/graphics/Bitmap;
    .registers 7

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mPhotos:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/binding/StreamPhoto;

    if-eqz v1, :cond_1a

    invoke-virtual {v1}, Lcom/facebook/katana/binding/StreamPhoto;->incrUsageCount()V

    invoke-virtual {v1}, Lcom/facebook/katana/binding/StreamPhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_19

    iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mListener:Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;

    invoke-virtual {p0, v1, v2}, Lcom/facebook/katana/binding/StreamPhotosCache;->decode(Lcom/facebook/katana/binding/StreamPhoto;Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;)V

    :cond_19
    :goto_19
    return-object v0

    :cond_1a
    iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mPendingDownload:Ljava/util/Map;

    invoke-interface {v2, p2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_19

    iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mListener:Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;

    invoke-interface {v2, p1, p2, p3}, Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;->onPhotoRequested(Landroid/content/Context;Ljava/lang/String;I)V

    iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mPendingDownload:Ljava/util/Map;

    invoke-interface {v2, p2, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19
.end method

.method protected onDownloadComplete(Landroid/content/Context;ILjava/lang/String;Lcom/facebook/katana/binding/StreamPhoto;)Lcom/facebook/katana/binding/StreamPhoto;
    .registers 13

    const-wide/32 v6, 0x7a120

    const/16 v2, 0xc8

    if-ne p2, v2, :cond_36

    invoke-virtual {p4}, Lcom/facebook/katana/binding/StreamPhoto;->getLength()J

    move-result-wide v0

    cmp-long v2, v0, v6

    if-gez v2, :cond_36

    iget-wide v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mCacheSize:J

    add-long/2addr v2, v0

    cmp-long v2, v2, v6

    if-gtz v2, :cond_23

    iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mPhotos:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    int-to-long v2, v2

    const-wide/16 v4, 0x64

    cmp-long v2, v2, v4

    if-ltz v2, :cond_28

    :cond_23
    sub-long v2, v6, v0

    invoke-direct {p0, p1, v2, v3}, Lcom/facebook/katana/binding/StreamPhotosCache;->makeRoom(Landroid/content/Context;J)V

    :cond_28
    iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mPhotos:Ljava/util/Map;

    invoke-virtual {p4}, Lcom/facebook/katana/binding/StreamPhoto;->getUrl()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-wide v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mCacheSize:J

    add-long/2addr v2, v0

    iput-wide v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mCacheSize:J

    :cond_36
    iget-object v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mPendingDownload:Ljava/util/Map;

    invoke-interface {v2, p3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p4
.end method

.method protected open(Landroid/content/Context;Lcom/facebook/katana/binding/WorkerThread;)V
    .registers 9

    iget-object v1, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mPhotos:Ljava/util/Map;

    invoke-static {p1}, Lcom/facebook/katana/binding/StreamPhotosCache;->getPhotos(Landroid/content/Context;)Ljava/util/Map;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    iget-object v1, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mPhotos:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_1c

    iput-object p2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mDecoderThread:Lcom/facebook/katana/binding/WorkerThread;

    return-void

    :cond_1c
    iget-wide v2, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mCacheSize:J

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/binding/StreamPhoto;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/StreamPhoto;->getLength()J

    move-result-wide v4

    add-long v1, v2, v4

    iput-wide v1, p0, Lcom/facebook/katana/binding/StreamPhotosCache;->mCacheSize:J

    goto :goto_13
.end method
