.class public Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "PhotosCreateAlbum.java"


# instance fields
.field private mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;

.field private mAlbumUri:Landroid/net/Uri;

.field private final mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 15

    const-string v2, "GET"

    const-string v3, "photos.createAlbum"

    const-string v4, "http://api.facebook.com/restserver.php"

    move-object v0, p0

    move-object v1, p2

    move-object v5, p8

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;->mContext:Landroid/content/Context;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;->mParams:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;->mParams:Ljava/util/Map;

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

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;->mParams:Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    if-eqz p5, :cond_3d

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;->mParams:Ljava/util/Map;

    const-string v1, "location"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_3d
    if-eqz p6, :cond_46

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;->mParams:Ljava/util/Map;

    const-string v1, "description"

    invoke-interface {v0, v1, p6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_46
    if-eqz p7, :cond_4f

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;->mParams:Ljava/util/Map;

    const-string v1, "visible"

    invoke-interface {v0, v1, p7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_4f
    return-void
.end method

.method private static insert(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookAlbum;)Landroid/net/Uri;
    .registers 6

    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    const-string v1, "aid"

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookAlbum;->getAlbumId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "cover_pid"

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookAlbum;->getCoverPhotoId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "owner"

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookAlbum;->getOwner()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "name"

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookAlbum;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "created"

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookAlbum;->getCreated()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "modified"

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookAlbum;->getModified()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v1, "description"

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookAlbum;->getDescription()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "location"

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookAlbum;->getLocation()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "size"

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookAlbum;->getSize()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    const-string v1, "visibility"

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookAlbum;->getVisibility()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "type"

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/FacebookAlbum;->getType()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v1, v2, v0}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getAlbum()Lcom/facebook/katana/service/api/FacebookAlbum;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;

    return-object v0
.end method

.method public getAlbumUri()Landroid/net/Uri;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;->mAlbumUri:Landroid/net/Uri;

    return-object v0
.end method

.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/katana/service/api/FacebookApiException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/facebook/katana/service/api/FacebookAlbum;

    invoke-direct {v0, p1}, Lcom/facebook/katana/service/api/FacebookAlbum;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;->mAlbum:Lcom/facebook/katana/service/api/FacebookAlbum;

    invoke-static {v0, v1}, Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;->insert(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookAlbum;)Landroid/net/Uri;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosCreateAlbum;->mAlbumUri:Landroid/net/Uri;

    return-void
.end method
