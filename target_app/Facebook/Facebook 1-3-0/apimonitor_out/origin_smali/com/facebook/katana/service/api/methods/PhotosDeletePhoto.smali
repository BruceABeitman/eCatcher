.class public Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "PhotosDeletePhoto.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto$AlbumQuery;
    }
.end annotation


# instance fields
.field private mAlbumCoverChanged:Z

.field private final mAlbumId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mPhotoId:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 13

    const-string v2, "GET"

    const-string v3, "photos.deletePhoto"

    const-string v4, "http://api.facebook.com/restserver.php"

    move-object v0, p0

    move-object v1, p2

    move-object v5, p6

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;->mParams:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;->mParams:Ljava/util/Map;

    const-string v1, "call_id"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;->mParams:Ljava/util/Map;

    const-string v1, "pid"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p4, p0, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;->mAlbumId:Ljava/lang/String;

    iput-object p5, p0, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;->mPhotoId:Ljava/lang/String;

    return-void
.end method

.method private adjustAlbumSize()V
    .registers 12

    const/4 v10, 0x1

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_AID_CONTENT_URI:Landroid/net/Uri;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, p0, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;->mAlbumId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto$AlbumQuery;->ALBUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_57

    invoke-interface {v7, v10}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_3b

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;->mPhotoId:Ljava/lang/String;

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3b

    iput-boolean v10, p0, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;->mAlbumCoverChanged:Z

    :cond_3b
    const/4 v2, 0x0

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getInt(I)I

    move-result v8

    sub-int v2, v8, v10

    if-ltz v2, :cond_57

    new-instance v9, Landroid/content/ContentValues;

    invoke-direct {v9}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "size"

    sub-int v4, v8, v10

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v9, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v9, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_57
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    return-void
.end method


# virtual methods
.method public hasAlbumCoverChanged()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;->mAlbumCoverChanged:Z

    return v0
.end method

.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
    .registers 8

    sget-object v1, Lcom/facebook/katana/provider/PhotosProvider;->PHOTOS_AID_CONTENT_URI:Landroid/net/Uri;

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;->mAlbumId:Ljava/lang/String;

    invoke-static {v1, v2}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "pid IN(?)"

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;->mPhotoId:Ljava/lang/String;

    aput-object v5, v3, v4

    invoke-virtual {v1, v0, v2, v3}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-direct {p0}, Lcom/facebook/katana/service/api/methods/PhotosDeletePhoto;->adjustAlbumSize()V

    return-void
.end method
