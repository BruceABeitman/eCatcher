.class public Lcom/facebook/katana/service/api/methods/AlbumSyncModel;
.super Ljava/lang/Object;
.source "AlbumSyncModel.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/service/api/methods/AlbumSyncModel$AlbumsQuery;,
        Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static DEBUG:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    const-class v0, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_f

    const/4 v0, 0x1

    :goto_a
    sput-boolean v0, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;->$assertionsDisabled:Z

    sput-boolean v1, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;->DEBUG:Z

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

    sget-boolean v0, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;->DEBUG:Z

    if-eqz v0, :cond_9

    const-string v0, "AlbumSyncModel"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_9
    return-void
.end method

.method public static assignCoversToAlbums(Ljava/util/Collection;Ljava/util/Collection;)V
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPhoto;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/katana/service/api/FacebookAlbum;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    invoke-interface {p0}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_9
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_1a

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_13
    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_28

    return-void

    :cond_1a
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPhoto;->getPhotoId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_9

    :cond_28
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/api/FacebookAlbum;

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookAlbum;->getCoverPhotoId()Ljava/lang/String;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/api/FacebookPhoto;

    if-eqz v1, :cond_13

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookPhoto;->getSrcSmall()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v4}, Lcom/facebook/katana/service/api/FacebookAlbum;->setCoverPhotoUrl(Ljava/lang/String;)V

    goto :goto_13
.end method

.method private static commit(Landroid/content/ContentResolver;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;J)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/katana/service/api/FacebookAlbum;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Lcom/facebook/katana/service/api/FacebookAlbum;",
            ">;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;J)V"
        }
    .end annotation

    const-wide/16 v0, -0x1

    cmp-long v0, v0, p4

    if-eqz v0, :cond_78

    sget-object v0, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_OWNER_CONTENT_URI:Landroid/net/Uri;

    invoke-static {p4, p5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object p4

    invoke-static {v0, p4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p4

    move-object v1, p4

    :goto_11
    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p4

    if-lez p4, :cond_2e

    const/4 p4, 0x0

    invoke-interface {p1}, Ljava/util/Collection;->size()I

    move-result p5

    new-array v0, p5, [Landroid/content/ContentValues;

    invoke-interface {p1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    move p5, p4

    :goto_23
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_7b

    sget-object p1, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p0, p1, v0}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    :cond_2e
    invoke-interface {p2}, Ljava/util/Collection;->size()I

    move-result p1

    if-lez p1, :cond_43

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {p2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p5

    :goto_3d
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-nez p2, :cond_108

    :cond_43
    invoke-interface {p3}, Ljava/util/Collection;->size()I

    move-result p1

    if-lez p1, :cond_1f6

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p1, 0x80

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "aid"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " IN("

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p5

    move p4, p1

    :goto_61
    invoke-interface {p5}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1a1

    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-boolean p1, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;->$assertionsDisabled:Z

    if-nez p1, :cond_1c1

    if-nez v1, :cond_1c1

    new-instance p0, Ljava/lang/AssertionError;

    invoke-direct {p0}, Ljava/lang/AssertionError;-><init>()V

    throw p0

    :cond_78
    const/4 p4, 0x0

    move-object v1, p4

    goto :goto_11

    :cond_7b
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p4

    check-cast p4, Lcom/facebook/katana/service/api/FacebookAlbum;

    new-instance p1, Landroid/content/ContentValues;

    invoke-direct {p1}, Landroid/content/ContentValues;-><init>()V

    aput-object p1, v0, p5

    add-int/lit8 p5, p5, 0x1

    const-string v3, "aid"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cover_pid"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookAlbum;->getCoverPhotoId()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "cover_url"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookAlbum;->getCoverPhotoUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "owner"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookAlbum;->getOwner()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "name"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookAlbum;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "created"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookAlbum;->getCreated()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "modified"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookAlbum;->getModified()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v3, "description"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookAlbum;->getDescription()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "location"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookAlbum;->getLocation()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "size"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookAlbum;->getSize()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v3, "visibility"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookAlbum;->getVisibility()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v3, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v3, "type"

    invoke-virtual {p4}, Lcom/facebook/katana/service/api/FacebookAlbum;->getType()Ljava/lang/String;

    move-result-object p4

    invoke-virtual {p1, v3, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_23

    :cond_108
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/katana/service/api/FacebookAlbum;

    invoke-virtual {p1}, Landroid/content/ContentValues;->clear()V

    const-string p4, "cover_pid"

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookAlbum;->getCoverPhotoId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "cover_url"

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookAlbum;->getCoverPhotoUrl()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "name"

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookAlbum;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "created"

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookAlbum;->getCreated()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p4, "modified"

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookAlbum;->getModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string p4, "description"

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookAlbum;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "location"

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookAlbum;->getLocation()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "size"

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookAlbum;->getSize()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string p4, "visibility"

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookAlbum;->getVisibility()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string p4, "type"

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookAlbum;->getType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookAlbum;->hasCoverChanged()Z

    move-result p4

    if-eqz p4, :cond_183

    const-string p4, "thumbnail"

    const/4 v0, 0x0

    invoke-virtual {p1, p4, v0}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    :cond_183
    move-object p4, v1

    if-nez p4, :cond_190

    sget-object p4, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_OWNER_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookAlbum;->getOwner()J

    move-result-wide v2

    invoke-static {p4, v2, v3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object p4

    :cond_190
    const-string v0, "aid IN(?)"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    const/4 v3, 0x0

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object p2

    aput-object p2, v2, v3

    invoke-virtual {p0, p4, p1, v0, v2}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    goto/16 :goto_3d

    :cond_1a1
    invoke-interface {p5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p4, :cond_1bb

    const/4 p4, 0x0

    :goto_1aa
    const/16 v0, 0x27

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 v0, 0x27

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto/16 :goto_61

    :cond_1bb
    const/16 v0, 0x2c

    invoke-virtual {p2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1aa

    :cond_1c1
    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x0

    invoke-virtual {p0, v1, p1, p2}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance p2, Ljava/lang/StringBuilder;

    const/16 p1, 0x80

    invoke-direct {p2, p1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string p1, "aid"

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p4, " IN("

    invoke-virtual {p1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 p1, 0x1

    invoke-interface {p3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p4

    move p3, p1

    :goto_1e1
    invoke-interface {p4}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_1f7

    const/16 p1, 0x29

    invoke-virtual {p2, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object p1, Lcom/facebook/katana/provider/PhotosProvider;->PHOTOS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x0

    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_1f6
    return-void

    :cond_1f7
    invoke-interface {p4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    if-eqz p3, :cond_210

    const/4 p3, 0x0

    :goto_200
    const/16 p5, 0x27

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual {p5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    const/16 p5, 0x27

    invoke-virtual {p1, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1e1

    :cond_210
    const/16 p5, 0x2c

    invoke-virtual {p2, p5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_200
.end method

.method public static cursorForAlbums(Landroid/content/ContentResolver;Ljava/util/List;)Landroid/database/Cursor;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookAlbum;",
            ">;)",
            "Landroid/database/Cursor;"
        }
    .end annotation

    const/4 v4, 0x0

    const/16 v2, 0x27

    new-instance v8, Ljava/lang/StringBuilder;

    const/16 v0, 0x80

    invoke-direct {v8, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "aid"

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " IN("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v7, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1a
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_34

    const/16 v0, 0x29

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/service/api/methods/AlbumSyncModel$AlbumsQuery;->PROJECTION:[Ljava/lang/String;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v0, p0

    move-object v5, v4

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    :cond_34
    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/facebook/katana/service/api/FacebookAlbum;

    if-eqz v7, :cond_4b

    const/4 v7, 0x0

    :goto_3d
    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_1a

    :cond_4b
    const/16 v1, 0x2c

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    goto :goto_3d
.end method

.method public static cursorForAlbumsForUser(Landroid/content/ContentResolver;J)Landroid/database/Cursor;
    .registers 9

    const/4 v3, 0x0

    sget-object v0, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_OWNER_CONTENT_URI:Landroid/net/Uri;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/service/api/methods/AlbumSyncModel$AlbumsQuery;->PROJECTION:[Ljava/lang/String;

    move-object v0, p0

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public static declared-synchronized doSync(Landroid/content/ContentResolver;Ljava/util/List;Lcom/facebook/katana/util/Factory;ZZZZJ)Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;
    .registers 24
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookAlbum;",
            ">;",
            "Lcom/facebook/katana/util/Factory",
            "<",
            "Landroid/database/Cursor;",
            ">;ZZZZJ)",
            "Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;"
        }
    .end annotation

    const-class v10, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;

    monitor-enter v10

    :try_start_3
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    new-instance p5, Ljava/lang/StringBuilder;

    const-string v3, "received "

    move-object/from16 v0, p5

    move-object v1, v3

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->size()I

    move-result v3

    move-object/from16 v0, p5

    move v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p5

    const-string v3, " albums"

    move-object/from16 v0, p5

    move-object v1, v3

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p5

    invoke-virtual/range {p5 .. p5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p5

    invoke-static/range {p5 .. p5}, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;->D(Ljava/lang/String;)V

    new-instance p5, Ljava/util/HashMap;

    invoke-direct/range {p5 .. p5}, Ljava/util/HashMap;-><init>()V

    invoke-interface/range {p1 .. p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_f8

    invoke-interface/range {p2 .. p2}, Lcom/facebook/katana/util/Factory;->make()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/database/Cursor;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result p1

    if-eqz p1, :cond_81

    :cond_57
    const/16 p1, 0x0

    move-object v0, v7

    move/from16 v1, p1

    invoke-interface {v0, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object p2

    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/katana/service/api/FacebookAlbum;

    if-nez p1, :cond_10f

    if-eqz p4, :cond_74

    move-object v0, v6

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_74
    :goto_74
    move-object/from16 v0, p5

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result p1

    if-nez p1, :cond_57

    :cond_81
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    if-eqz p3, :cond_90

    invoke-interface/range {p5 .. p5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object p1

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Collection;->addAll(Ljava/util/Collection;)Z

    :cond_90
    new-instance p1, Ljava/lang/StringBuilder;

    const-string p2, "found "

    invoke-direct/range {p1 .. p2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v4}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " albums to add, "

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v5}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " albums to update, and "

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-interface {v6}, Ljava/util/Collection;->size()I

    move-result p2

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p1

    const-string p2, " albums to delete"

    invoke-virtual/range {p1 .. p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p1

    invoke-virtual/range {p1 .. p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static/range {p1 .. p1}, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;->D(Ljava/lang/String;)V

    if-eqz p6, :cond_1a5

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_ce
    :goto_ce
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_154

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :cond_d8
    :goto_d8
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-nez p1, :cond_168

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result p1

    if-nez p1, :cond_182

    const-string p1, "no covers missing"

    invoke-static/range {p1 .. p1}, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;->D(Ljava/lang/String;)V

    move-object v3, p0

    move-wide/from16 v7, p7

    invoke-static/range {v3 .. v8}, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;->commit(Landroid/content/ContentResolver;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;J)V

    new-instance p0, Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;

    const/16 p1, 0x1

    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;-><init>(Z)V
    :try_end_f6
    .catchall {:try_start_3 .. :try_end_f6} :catchall_10c

    :goto_f6
    monitor-exit v10

    return-object p0

    :cond_f8
    :try_start_f8
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/katana/service/api/FacebookAlbum;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/FacebookAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v7

    move-object/from16 v0, p5

    move-object v1, v7

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_10a
    .catchall {:try_start_f8 .. :try_end_10a} :catchall_10c

    goto/16 :goto_45

    :catchall_10c
    move-exception p0

    monitor-exit v10

    throw p0

    :cond_10f
    :try_start_10f
    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/FacebookAlbum;->getModified()J

    move-result-wide v11

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v13

    cmp-long v3, v11, v13

    if-eqz v3, :cond_74

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/FacebookAlbum;->getCoverPhotoUrl()Ljava/lang/String;

    move-result-object v3

    const/4 v9, 0x2

    invoke-interface {v7, v9}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v9

    if-nez v3, :cond_138

    if-nez v9, :cond_138

    const/4 v3, 0x0

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookAlbum;->setCoverChanged(Z)V

    :goto_130
    move-object v0, v5

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_74

    :cond_138
    if-eqz v3, :cond_14c

    if-eqz v9, :cond_14c

    invoke-virtual {v3, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14a

    const/4 v3, 0x0

    :goto_143
    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookAlbum;->setCoverChanged(Z)V

    goto :goto_130

    :cond_14a
    const/4 v3, 0x1

    goto :goto_143

    :cond_14c
    const/4 v3, 0x1

    move-object/from16 v0, p1

    move v1, v3

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookAlbum;->setCoverChanged(Z)V

    goto :goto_130

    :cond_154
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/katana/service/api/FacebookAlbum;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/FacebookAlbum;->getCoverPhotoId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_ce

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_ce

    :cond_168
    invoke-interface/range {p2 .. p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/facebook/katana/service/api/FacebookAlbum;

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/FacebookAlbum;->hasCoverChanged()Z

    move-result p3

    if-eqz p3, :cond_d8

    invoke-virtual/range {p1 .. p1}, Lcom/facebook/katana/service/api/FacebookAlbum;->getCoverPhotoId()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d8

    move-object v0, v8

    move-object/from16 v1, p1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto/16 :goto_d8

    :cond_182
    new-instance p0, Ljava/lang/StringBuilder;

    const-string p1, "missing "

    invoke-direct/range {p0 .. p1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-interface {v8}, Ljava/util/Collection;->size()I

    move-result p1

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object p0

    const-string p1, " covers"

    invoke-virtual/range {p0 .. p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object p0

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;->D(Ljava/lang/String;)V

    new-instance p0, Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;

    invoke-direct {p0, v8}, Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;-><init>(Ljava/util/Collection;)V

    goto/16 :goto_f6

    :cond_1a5
    move-object v3, p0

    move-wide/from16 v7, p7

    invoke-static/range {v3 .. v8}, Lcom/facebook/katana/service/api/methods/AlbumSyncModel;->commit(Landroid/content/ContentResolver;Ljava/util/Collection;Ljava/util/Collection;Ljava/util/Collection;J)V

    new-instance p0, Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;

    const/16 p1, 0x1

    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/service/api/methods/AlbumSyncModel$Result;-><init>(Z)V
    :try_end_1b2
    .catchall {:try_start_10f .. :try_end_1b2} :catchall_10c

    goto/16 :goto_f6
.end method
