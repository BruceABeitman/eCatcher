.class public Lcom/facebook/katana/service/api/methods/PhotoSyncModel;
.super Ljava/lang/Object;
.source "PhotoSyncModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/service/api/methods/PhotoSyncModel$PhotoQuery;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-class v0, Lcom/facebook/katana/service/api/methods/PhotoSyncModel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/facebook/katana/service/api/methods/PhotoSyncModel;->$assertionsDisabled:Z

    sput-boolean v1, Lcom/facebook/katana/service/api/methods/PhotoSyncModel;->DEBUG:Z

    return-void

    :cond_f
    move v0, v1

    goto :goto_a
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static D(Ljava/lang/String;)V
    .registers 2

    sget-boolean v0, Lcom/facebook/katana/service/api/methods/PhotoSyncModel;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "PhotoSyncModel"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method private static buildDeleteSelection(Ljava/util/Collection;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const/16 v5, 0x27

    const/4 v1, 0x1

    new-instance v0, Ljava/lang/StringBuffer;

    const/16 v3, 0x100

    invoke-direct {v0, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const-string v3, "pid"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v4, " IN("

    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_19
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_29

    const-string v3, ")"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_29
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    if-eqz v1, :cond_3e

    const/4 v1, 0x0

    :goto_32
    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_19

    :cond_3e
    const/16 v4, 0x2c

    invoke-virtual {v0, v4}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    goto :goto_32
.end method

.method private static compareCaptions(Ljava/lang/String;Ljava/lang/String;)Z
    .registers 3

    if-nez p0, :cond_6

    if-nez p1, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    if-eqz p0, :cond_f

    if-eqz p1, :cond_f

    invoke-virtual {p0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    goto :goto_5

    :cond_f
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public static cursorFactoryForPhotos(Landroid/content/Context;Ljava/util/Collection;)Lcom/facebook/katana/util/Factory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPhoto;",
            ">;)",
            "Lcom/facebook/katana/util/Factory",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    move-object v0, p0

    move-object v1, p1

    new-instance v2, Lcom/facebook/katana/service/api/methods/PhotoSyncModel$2;

    invoke-direct {v2, v0, v1}, Lcom/facebook/katana/service/api/methods/PhotoSyncModel$2;-><init>(Landroid/content/Context;Ljava/util/Collection;)V

    return-object v2
.end method

.method public static cursorFactoryForPhotosForAlbum(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/util/Factory;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            ")",
            "Lcom/facebook/katana/util/Factory",
            "<",
            "Landroid/database/Cursor;",
            ">;"
        }
    .end annotation

    move-object v1, p0

    move-object v0, p1

    new-instance v2, Lcom/facebook/katana/service/api/methods/PhotoSyncModel$1;

    invoke-direct {v2, v1, v0}, Lcom/facebook/katana/service/api/methods/PhotoSyncModel$1;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    return-object v2
.end method

.method public static cursorForPhotos(Landroid/content/Context;Ljava/util/Collection;)Landroid/database/Cursor;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPhoto;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v3, 0x27

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v1, 0x80

    invoke-direct {v8, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v1, "pid"

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " IN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v6, 0x1

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1e
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_37

    const/16 v1, 0x29

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->PHOTOS_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/service/api/methods/PhotoSyncModel$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v1

    return-object v1

    :cond_37
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/katana/service/api/FacebookPhoto;

    if-eqz v6, :cond_4e

    const/4 v6, 0x0

    :goto_40
    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookPhoto;->getPhotoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e

    :cond_4e
    const/16 v2, 0x2c

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_40
.end method

.method public static cursorForPhotosForAlbum(Landroid/content/Context;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 8

    const/4 v3, 0x0

    sget-object v2, Lcom/facebook/katana/provider/PhotosProvider;->PHOTOS_AID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v2, p1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/facebook/katana/service/api/methods/PhotoSyncModel$PhotoQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v2

    return-object v2
.end method

.method public static declared-synchronized doSync(Landroid/content/Context;Ljava/util/Collection;Lcom/facebook/katana/util/Factory;ZZZLjava/lang/String;)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPhoto;",
            ">;",
            "Lcom/facebook/katana/util/Factory",
            "<",
            "Landroid/database/Cursor;",
            ">;ZZZ",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    const-class v6, Lcom/facebook/katana/service/api/methods/PhotoSyncModel;

    monitor-enter v6

    :try_start_3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    if-eqz p6, :cond_10a

    const/4 v2, 0x1

    :goto_15
    and-int/2addr p5, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "merging "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " photos"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/facebook/katana/service/api/methods/PhotoSyncModel;->D(Ljava/lang/String;)V

    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_3b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_10d

    invoke-interface {p2}, Lcom/facebook/katana/util/Factory;->make()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroid/database/Cursor;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_68

    :cond_4d
    const/4 v2, 0x0

    invoke-interface {p2, v2}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/service/api/FacebookPhoto;

    if-nez v2, :cond_11c

    if-eqz p5, :cond_5f

    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_5f
    :goto_5f
    invoke-interface {v4, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {p2}, Landroid/database/Cursor;->moveToNext()Z

    move-result v2

    if-nez v2, :cond_4d

    :cond_68
    invoke-interface {p2}, Landroid/database/Cursor;->close()V

    if-eqz p3, :cond_7b

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p2

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p3

    :goto_75
    invoke-interface {p3}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_132

    :cond_7b
    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p2

    if-gtz p2, :cond_8d

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result p2

    if-gtz p2, :cond_8d

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p2

    if-lez p2, :cond_bf

    :cond_8d
    new-instance p2, Ljava/lang/StringBuilder;

    const-string p3, "adding "

    invoke-direct {p2, p3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, " photos, updating "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    const-string p3, ", and deleting "

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p3

    invoke-virtual {p2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-static {p2}, Lcom/facebook/katana/service/api/methods/PhotoSyncModel;->D(Ljava/lang/String;)V

    :cond_bf
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p2

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p3

    if-lez p3, :cond_e0

    const/4 p3, 0x0

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result p4

    new-array v2, p4, [Landroid/content/ContentValues;

    invoke-interface {v0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v0, p3

    :goto_d5
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-nez p3, :cond_13d

    sget-object p3, Lcom/facebook/katana/provider/PhotosProvider;->PHOTOS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2, p3, v2}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_e0
    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result p3

    if-lez p3, :cond_f5

    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_ef
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result p4

    if-nez p4, :cond_19e

    :cond_f5
    invoke-interface {v1}, Ljava/util/Collection;->size()I

    move-result p3

    if-lez p3, :cond_20d

    sget-boolean p3, Lcom/facebook/katana/service/api/methods/PhotoSyncModel;->$assertionsDisabled:Z

    if-nez p3, :cond_1ff

    if-nez p6, :cond_1ff

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0
    :try_end_107
    .catchall {:try_start_3 .. :try_end_107} :catchall_107

    :catchall_107
    move-exception p0

    monitor-exit v6

    throw p0

    :cond_10a
    const/4 v2, 0x0

    goto/16 :goto_15

    :cond_10d
    :try_start_10d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookPhoto;->getPhotoId()Ljava/lang/String;

    move-result-object v7

    invoke-interface {v4, v7, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_3b

    :cond_11c
    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookPhoto;->getCaption()Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    invoke-interface {p2, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Lcom/facebook/katana/service/api/methods/PhotoSyncModel;->compareCaptions(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v7

    if-nez v7, :cond_5f

    if-eqz p4, :cond_5f

    invoke-interface {v5, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_5f

    :cond_132
    invoke-interface {p3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-interface {v0, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_75

    :cond_13d
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/facebook/katana/service/api/FacebookPhoto;

    new-instance p3, Landroid/content/ContentValues;

    invoke-direct {p3}, Landroid/content/ContentValues;-><init>()V

    aput-object p3, v2, v0

    add-int/lit8 v0, v0, 0x1

    const-string v4, "pid"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookPhoto;->getPhotoId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "aid"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookPhoto;->getAlbumId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "owner"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookPhoto;->getOwnerId()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {p3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "src"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookPhoto;->getSrc()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "src_big"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookPhoto;->getSrcBig()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "src_small"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookPhoto;->getSrcSmall()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "caption"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookPhoto;->getCaption()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p3, v4, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "created"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookPhoto;->getCreated()J

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p4

    invoke-virtual {p3, v4, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    goto/16 :goto_d5

    :cond_19e
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {p3}, Landroid/content/ContentValues;->clear()V

    const-string v2, "aid"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookPhoto;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "owner"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookPhoto;->getOwnerId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "src"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookPhoto;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "src_big"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookPhoto;->getSrcBig()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "src_small"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookPhoto;->getSrcSmall()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "caption"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookPhoto;->getCaption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "created"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookPhoto;->getCreated()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {p3, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/facebook/katana/provider/PhotosProvider;->PHOTOS_PID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookPhoto;->getPhotoId()Ljava/lang/String;

    move-result-object p4

    invoke-static {v2, p4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {p2, p4, p3, v2, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_ef

    :cond_1ff
    sget-object p3, Lcom/facebook/katana/provider/PhotosProvider;->PHOTOS_AID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p3, p6}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p3

    invoke-static {v1}, Lcom/facebook/katana/service/api/methods/PhotoSyncModel;->buildDeleteSelection(Ljava/util/Collection;)Ljava/lang/String;

    move-result-object p4

    const/4 v0, 0x0

    invoke-virtual {p2, p3, p4, v0}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_20d
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-static {p0, p6, p1}, Lcom/facebook/katana/service/api/methods/Utils;->setAlbumsSize(Landroid/content/Context;Ljava/lang/String;I)V
    :try_end_214
    .catchall {:try_start_10d .. :try_end_214} :catchall_107

    monitor-exit v6

    return-void
.end method
