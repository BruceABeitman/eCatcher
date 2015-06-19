.class public Lcom/facebook/katana/binding/UserImagesCache;
.super Ljava/lang/Object;
.source "UserImagesCache.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/binding/UserImagesCache$ImagesQuery;,
        Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;
    }
.end annotation


# static fields
.field private static final MAX_CACHE_ENTRIES:J = 0x4bL


# instance fields
.field private final mCacheList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/binding/UserImage;",
            ">;"
        }
    .end annotation
.end field

.field private final mListener:Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;

.field private final mLoadPendingMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/binding/UserImage;",
            ">;"
        }
    .end annotation
.end field

.field private mLoaderThread:Lcom/facebook/katana/binding/WorkerThread;

.field private final mPendingDownload:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserImages:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/binding/UserImage;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method protected constructor <init>(Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache;->mUserImages:Ljava/util/Map;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache;->mCacheList:Ljava/util/List;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache;->mPendingDownload:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache;->mLoadPendingMap:Ljava/util/Map;

    iput-object p1, p0, Lcom/facebook/katana/binding/UserImagesCache;->mListener:Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;

    return-void
.end method

.method static synthetic access$0(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .registers 4

    invoke-static {p0, p1, p2}, Lcom/facebook/katana/binding/UserImagesCache;->getUserImageBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/katana/binding/UserImagesCache;)Lcom/facebook/katana/binding/WorkerThread;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache;->mLoaderThread:Lcom/facebook/katana/binding/WorkerThread;

    return-object v0
.end method

.method static synthetic access$2(Lcom/facebook/katana/binding/UserImagesCache;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache;->mLoadPendingMap:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/katana/binding/UserImagesCache;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache;->mUserImages:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$4(Lcom/facebook/katana/binding/UserImagesCache;Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/UserImagesCache;->makeRoom(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$5(Lcom/facebook/katana/binding/UserImagesCache;)Ljava/util/Map;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache;->mPendingDownload:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic access$6(Lcom/facebook/katana/binding/UserImagesCache;)Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache;->mListener:Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;

    return-object v0
.end method

.method private static getUserImageBitmap(Landroid/content/Context;J)Landroid/graphics/Bitmap;
    .registers 13

    const/4 v9, 0x0

    const/4 v3, 0x0

    const/4 v6, 0x0

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIEND_UID_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/facebook/katana/binding/UserImagesCache$ImagesQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_38

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_35

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getBlob(I)[B

    move-result-object v8

    if-eqz v8, :cond_35

    array-length v0, v8

    invoke-static {v8, v9, v0}, Landroid/graphics/BitmapFactory;->decodeByteArray([BII)Landroid/graphics/Bitmap;

    move-result-object v6

    :cond_35
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_38
    return-object v6
.end method

.method private load(Landroid/content/Context;Lcom/facebook/katana/binding/UserImage;Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;)V
    .registers 12

    invoke-virtual {p2}, Lcom/facebook/katana/binding/UserImage;->getFriendId()J

    move-result-wide v3

    iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache;->mLoadPendingMap:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11

    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache;->mLoadPendingMap:Ljava/util/Map;

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache;->mLoaderThread:Lcom/facebook/katana/binding/WorkerThread;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/WorkerThread;->getThreadHandler()Landroid/os/Handler;

    move-result-object v7

    new-instance v0, Lcom/facebook/katana/binding/UserImagesCache$2;

    move-object v1, p0

    move-object v2, p1

    move-object v5, p2

    move-object v6, p3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/binding/UserImagesCache$2;-><init>(Lcom/facebook/katana/binding/UserImagesCache;Landroid/content/Context;JLcom/facebook/katana/binding/UserImage;Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;)V

    invoke-virtual {v7, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_10
.end method

.method private makeRoom(Landroid/content/Context;)V
    .registers 8

    iget-object v3, p0, Lcom/facebook/katana/binding/UserImagesCache;->mCacheList:Ljava/util/List;

    iget-object v4, p0, Lcom/facebook/katana/binding/UserImagesCache;->mUserImages:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v3, p0, Lcom/facebook/katana/binding/UserImagesCache;->mCacheList:Ljava/util/List;

    new-instance v4, Lcom/facebook/katana/binding/UserImagesCache$1;

    invoke-direct {v4, p0}, Lcom/facebook/katana/binding/UserImagesCache$1;-><init>(Lcom/facebook/katana/binding/UserImagesCache;)V

    invoke-static {v3, v4}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    iget-object v3, p0, Lcom/facebook/katana/binding/UserImagesCache;->mCacheList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x5

    invoke-static {v3, v4}, Ljava/lang/Math;->min(II)I

    move-result v0

    const/4 v1, 0x0

    :goto_21
    if-lt v1, v0, :cond_29

    iget-object v3, p0, Lcom/facebook/katana/binding/UserImagesCache;->mCacheList:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->clear()V

    return-void

    :cond_29
    iget-object v3, p0, Lcom/facebook/katana/binding/UserImagesCache;->mCacheList:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/binding/UserImage;

    iget-object v3, p0, Lcom/facebook/katana/binding/UserImagesCache;->mUserImages:Ljava/util/Map;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/UserImage;->getFriendId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-interface {v3, v4}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v1, v1, 0x1

    goto :goto_21
.end method


# virtual methods
.method protected close()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache;->mUserImages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache;->mPendingDownload:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache;->mLoadPendingMap:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;
    .registers 9

    const/4 v0, 0x0

    iget-object v2, p0, Lcom/facebook/katana/binding/UserImagesCache;->mUserImages:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/binding/UserImage;

    if-eqz p4, :cond_58

    invoke-virtual {p4}, Ljava/lang/String;->length()I

    move-result v2

    if-lez v2, :cond_58

    if-eqz v1, :cond_4c

    invoke-virtual {v1}, Lcom/facebook/katana/binding/UserImage;->getUrl()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_31

    invoke-virtual {v1}, Lcom/facebook/katana/binding/UserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-nez v0, :cond_2d

    iget-object v2, p0, Lcom/facebook/katana/binding/UserImagesCache;->mListener:Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;

    invoke-direct {p0, p1, v1, v2}, Lcom/facebook/katana/binding/UserImagesCache;->load(Landroid/content/Context;Lcom/facebook/katana/binding/UserImage;Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;)V

    :cond_2c
    :goto_2c
    return-object v0

    :cond_2d
    invoke-virtual {v1}, Lcom/facebook/katana/binding/UserImage;->incrUsageCount()V

    goto :goto_2c

    :cond_31
    iget-object v2, p0, Lcom/facebook/katana/binding/UserImagesCache;->mPendingDownload:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2c

    iget-object v2, p0, Lcom/facebook/katana/binding/UserImagesCache;->mListener:Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;

    invoke-interface {v2, p1, p2, p3, p4}, Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;->onUserImageDownload(Landroid/content/Context;JLjava/lang/String;)V

    iget-object v2, p0, Lcom/facebook/katana/binding/UserImagesCache;->mPendingDownload:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c

    :cond_4c
    new-instance v2, Lcom/facebook/katana/binding/UserImage;

    const/4 v3, 0x0

    invoke-direct {v2, p2, p3, p4, v3}, Lcom/facebook/katana/binding/UserImage;-><init>(JLjava/lang/String;Landroid/graphics/Bitmap;)V

    iget-object v3, p0, Lcom/facebook/katana/binding/UserImagesCache;->mListener:Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;

    invoke-direct {p0, p1, v2, v3}, Lcom/facebook/katana/binding/UserImagesCache;->load(Landroid/content/Context;Lcom/facebook/katana/binding/UserImage;Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;)V

    goto :goto_2c

    :cond_58
    if-eqz v1, :cond_2c

    iget-object v2, p0, Lcom/facebook/katana/binding/UserImagesCache;->mUserImages:Ljava/util/Map;

    invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2c
.end method

.method public get(Landroid/content/Context;Ljava/util/Map;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/facebook/katana/binding/UserImagesCache;->mPendingDownload:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    invoke-interface {p2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_d
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_14

    return-void

    :cond_14
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    iget-object v3, p0, Lcom/facebook/katana/binding/UserImagesCache;->mListener:Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v3, p1, v4, v5, v1}, Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;->onUserImageDownload(Landroid/content/Context;JLjava/lang/String;)V

    goto :goto_d
.end method

.method protected onDownloadComplete(Landroid/content/Context;IJLcom/facebook/katana/binding/UserImage;)Lcom/facebook/katana/binding/UserImage;
    .registers 10

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_1d

    iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache;->mUserImages:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->size()I

    move-result v0

    int-to-long v0, v0

    const-wide/16 v2, 0x4b

    cmp-long v0, v0, v2

    if-ltz v0, :cond_14

    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/UserImagesCache;->makeRoom(Landroid/content/Context;)V

    :cond_14
    iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache;->mUserImages:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_1d
    iget-object v0, p0, Lcom/facebook/katana/binding/UserImagesCache;->mPendingDownload:Ljava/util/Map;

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    return-object p5
.end method

.method protected open(Landroid/content/Context;Lcom/facebook/katana/binding/WorkerThread;)V
    .registers 3

    iput-object p2, p0, Lcom/facebook/katana/binding/UserImagesCache;->mLoaderThread:Lcom/facebook/katana/binding/WorkerThread;

    return-void
.end method
