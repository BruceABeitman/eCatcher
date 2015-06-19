.class public Lcom/facebook/katana/service/api/methods/PhotosUpload;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "PhotosUpload.java"

# interfaces
.implements Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/service/api/methods/PhotosUpload$AlbumQuery;
    }
.end annotation


# static fields
.field private static SIMULATE_FAILURE:Z


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

.field private final mPhotoUri:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->SIMULATE_FAILURE:Z

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 14

    const-string v2, "POST"

    const-string v3, "photos.upload"

    const-string v4, "http://api.facebook.com/restserver.php"

    move-object v0, p0

    move-object v1, p2

    move-object v5, p7

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mContext:Landroid/content/Context;

    iput-object p6, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mPhotoUri:Ljava/lang/String;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mParams:Ljava/util/Map;

    const-string v1, "method"

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mFacebookMethod:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mParams:Ljava/util/Map;

    const-string v1, "v"

    const-string v2, "1.0"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mParams:Ljava/util/Map;

    const-string v1, "api_key"

    const-string v2, "882a8490361da98702bf97a021ddc14d"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mParams:Ljava/util/Map;

    const-string v1, "format"

    const-string v2, "JSON"

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mParams:Ljava/util/Map;

    const-string v1, "session_key"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mParams:Ljava/util/Map;

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

    if-eqz p5, :cond_5c

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mParams:Ljava/util/Map;

    const-string v1, "caption"

    invoke-interface {v0, v1, p5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5c
    if-eqz p4, :cond_65

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mParams:Ljava/util/Map;

    const-string v1, "aid"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_65
    return-void
.end method

.method private adjustAlbum()V
    .registers 9

    const/4 v3, 0x0

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v2, Lcom/facebook/katana/provider/PhotosProvider;->ALBUMS_AID_CONTENT_URI:Landroid/net/Uri;

    iget-object v4, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookPhoto;->getAlbumId()Ljava/lang/String;

    move-result-object v4

    invoke-static {v2, v4}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    sget-object v2, Lcom/facebook/katana/service/api/methods/PhotosUpload$AlbumQuery;->ALBUM_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v2

    if-eqz v2, :cond_39

    new-instance v7, Landroid/content/ContentValues;

    invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "size"

    const/4 v4, 0x0

    invoke-interface {v6, v4}, Landroid/database/Cursor;->getInt(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v7, v2, v4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    invoke-virtual {v0, v1, v7, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    :cond_39
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    return-void
.end method

.method private insertPhoto()V
    .registers 6

    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v2, "pid"

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPhoto;->getPhotoId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "owner"

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPhoto;->getOwnerId()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v2, "src"

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPhoto;->getSrc()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "src_big"

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPhoto;->getSrcBig()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "src_small"

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPhoto;->getSrcSmall()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "caption"

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPhoto;->getCaption()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "created"

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPhoto;->getCreated()J

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v2, Lcom/facebook/katana/provider/PhotosProvider;->PHOTOS_AID_CONTENT_URI:Landroid/net/Uri;

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookPhoto;->getAlbumId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    return-void
.end method


# virtual methods
.method public getPhoto()Lcom/facebook/katana/service/api/FacebookPhoto;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    return-object v0
.end method

.method public onHttpOperationComplete(Lcom/facebook/katana/service/api/methods/HttpOperation;ILjava/lang/String;Ljava/io/OutputStream;Ljava/lang/Exception;)V
    .registers 16

    const-wide/16 v4, 0x0

    const/16 v1, 0xc8

    if-ne p2, v1, :cond_15

    move-object v0, p4

    check-cast v0, Ljava/io/ByteArrayOutputStream;

    move-object v1, v0

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->size()I

    move-result v1

    int-to-long v4, v1

    :try_start_f
    sget-boolean v1, Lcom/facebook/katana/service/api/methods/PhotosUpload;->SIMULATE_FAILURE:Z
    :try_end_11
    .catch Ljava/lang/Exception; {:try_start_f .. :try_end_11} :catch_4c

    if-eqz v1, :cond_31

    const/16 p2, 0x193

    :cond_15
    :goto_15
    invoke-static {p2}, Lcom/facebook/katana/service/api/methods/ApiLogging;->reportAndCheckTrx(I)Z

    move-result v1

    if-eqz v1, :cond_2d

    iget-object v1, p1, Lcom/facebook/katana/service/api/methods/HttpOperation;->mHttpMethod:Lorg/apache/http/client/methods/HttpRequestBase;

    invoke-virtual {v1}, Lorg/apache/http/client/methods/HttpRequestBase;->getURI()Ljava/net/URI;

    move-result-object v1

    invoke-virtual {v1}, Ljava/net/URI;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/facebook/katana/service/api/methods/HttpOperation;->calculateTimeElapsed()J

    move-result-wide v2

    move v6, p2

    invoke-static/range {v1 .. v6}, Lcom/facebook/katana/service/api/methods/ApiLogging;->logTransferResponse(Ljava/lang/String;JJI)V

    :cond_2d
    invoke-virtual {p0, p2, p3, p5}, Lcom/facebook/katana/service/api/methods/PhotosUpload;->onHttpComplete(ILjava/lang/String;Ljava/lang/Exception;)V

    return-void

    :cond_31
    :try_start_31
    new-instance v8, Ljava/lang/String;

    check-cast p4, Ljava/io/ByteArrayOutputStream;

    invoke-virtual {p4}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v1

    invoke-direct {v8, v1}, Ljava/lang/String;-><init>([B)V

    invoke-static {v8}, Lcom/facebook/katana/service/api/methods/PhotosUpload;->printJson(Ljava/lang/String;)V

    sget-object v1, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mJsonFactory:Lcom/facebook/katana/service/api/methods/FBJsonFactory;

    invoke-virtual {v1, v8}, Lcom/facebook/katana/service/api/methods/FBJsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v7

    invoke-virtual {v7}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    invoke-virtual {p0, v7}, Lcom/facebook/katana/service/api/methods/PhotosUpload;->parseJSON(Lorg/codehaus/jackson/JsonParser;)V
    :try_end_4b
    .catch Ljava/lang/Exception; {:try_start_31 .. :try_end_4b} :catch_4c

    goto :goto_15

    :catch_4c
    move-exception v1

    move-object v9, v1

    invoke-virtual {v9}, Ljava/lang/Exception;->printStackTrace()V

    const/4 p2, 0x0

    const/4 p3, 0x0

    move-object p5, v9

    goto :goto_15
.end method

.method public onHttpOperationProgress(Lcom/facebook/katana/service/api/methods/HttpOperation;JJ)V
    .registers 13

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;

    if-eqz v0, :cond_11

    sget-object v6, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mHandler:Landroid/os/Handler;

    new-instance v0, Lcom/facebook/katana/service/api/methods/PhotosUpload$1;

    move-object v1, p0

    move-wide v2, p2

    move-wide v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/PhotosUpload$1;-><init>(Lcom/facebook/katana/service/api/methods/PhotosUpload;JJ)V

    invoke-virtual {v6, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_11
    return-void
.end method

.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/katana/service/api/FacebookApiException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-direct {v0, p1}, Lcom/facebook/katana/service/api/FacebookPhoto;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mPhoto:Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-direct {p0}, Lcom/facebook/katana/service/api/methods/PhotosUpload;->insertPhoto()V

    invoke-direct {p0}, Lcom/facebook/katana/service/api/methods/PhotosUpload;->adjustAlbum()V

    return-void
.end method

.method public start()V
    .registers 26

    const/4 v5, 0x4

    :try_start_1
    invoke-static {v5}, Lcom/facebook/katana/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v11

    const-string v14, "--"

    const-string v12, "\r\n"

    const-string v15, "\""

    const-string v13, "content-disposition: form-data; name="

    new-instance v19, Ljava/io/ByteArrayOutputStream;

    invoke-direct/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;-><init>()V

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "--"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "content-disposition: form-data; name="

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\"media\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "; filename=\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/16 v6, 0x8

    invoke-static {v6}, Lcom/facebook/katana/util/StringUtils;->randomString(I)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "content-type: image/jpeg"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "content-Transfer-Encoding: binary"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v18

    const/4 v5, 0x0

    move-object/from16 v0, v18

    array-length v0, v0

    move v6, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    const/16 v5, 0x1000

    move v0, v5

    new-array v0, v0, [B

    move-object/from16 v16, v0

    const/16 v20, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mPhotoUri:Ljava/lang/String;

    move-object v5, v0

    const-string v6, "content:"

    invoke-virtual {v5, v6}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_422

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mContext:Landroid/content/Context;

    move-object v5, v0

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mPhotoUri:Ljava/lang/String;

    move-object v6, v0

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/content/ContentResolver;->openInputStream(Landroid/net/Uri;)Ljava/io/InputStream;

    move-result-object v20

    :goto_b9
    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/io/InputStream;->read([B)I

    move-result v21

    if-gtz v21, :cond_431

    invoke-virtual/range {v20 .. v20}, Ljava/io/InputStream;->close()V

    new-instance v22, Ljava/lang/StringBuilder;

    const/16 v5, 0x800

    move-object/from16 v0, v22

    move v1, v5

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v5, "\r\n"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "content-disposition: form-data; name="

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "method"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mFacebookMethod:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "content-disposition: form-data; name="

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "v"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "1.0"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "content-disposition: form-data; name="

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "api_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "882a8490361da98702bf97a021ddc14d"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "content-disposition: form-data; name="

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "format"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mParams:Ljava/util/Map;

    move-object v5, v0

    const-string v6, "format"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "content-disposition: form-data; name="

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "session_key"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mParams:Ljava/util/Map;

    move-object v5, v0

    const-string v6, "session_key"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "content-disposition: form-data; name="

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "call_id"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mParams:Ljava/util/Map;

    move-object v5, v0

    const-string v6, "call_id"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mParams:Ljava/util/Map;

    move-object v5, v0

    const-string v6, "caption"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_30c

    const-string v5, "--"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "content-disposition: form-data; name="

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "caption"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mParams:Ljava/util/Map;

    move-object v5, v0

    const-string v6, "caption"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mParams:Ljava/util/Map;

    move-object v5, v0

    const-string v6, "aid"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    if-eqz v5, :cond_36c

    const-string v5, "--"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "content-disposition: form-data; name="

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "aid"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mParams:Ljava/util/Map;

    move-object v5, v0

    const-string v6, "aid"

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_36c
    const-string v5, "--"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "content-disposition: form-data; name="

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "sig"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "\r\n"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/service/api/methods/PhotosUpload;->buildSignature()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v5, "--"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "--"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\r\n"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->getBytes()[B

    move-result-object v24

    const/4 v5, 0x0

    move-object/from16 v0, v24

    array-length v0, v0

    move v6, v0

    move-object/from16 v0, v19

    move-object/from16 v1, v24

    move v2, v5

    move v3, v6

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->flush()V

    new-instance v5, Lcom/facebook/katana/service/api/methods/HttpOperation;

    const-string v6, "http://api.facebook.com/restserver.php"

    new-instance v7, Ljava/io/ByteArrayInputStream;

    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v8

    invoke-direct {v7, v8}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    new-instance v8, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x4000

    invoke-direct {v8, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v9, Ljava/lang/StringBuilder;

    const-string v10, "multipart/form-data; boundary="

    invoke-direct {v9, v10}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v9, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    move-object/from16 v10, p0

    invoke-direct/range {v5 .. v10}, Lcom/facebook/katana/service/api/methods/HttpOperation;-><init>(Ljava/lang/String;Ljava/io/InputStream;Ljava/io/OutputStream;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/HttpOperation$HttpOperationListener;)V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mHttpOp:Lcom/facebook/katana/service/api/methods/HttpOperation;

    invoke-virtual/range {v19 .. v19}, Ljava/io/ByteArrayOutputStream;->close()V

    const/16 v19, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mHttpOp:Lcom/facebook/katana/service/api/methods/HttpOperation;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/methods/HttpOperation;->start()V

    :cond_421
    :goto_421
    return-void

    :cond_422
    new-instance v20, Ljava/io/FileInputStream;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mPhotoUri:Ljava/lang/String;

    move-object v5, v0

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    goto/16 :goto_b9

    :cond_431
    const/4 v5, 0x0

    move-object/from16 v0, v19

    move-object/from16 v1, v16

    move v2, v5

    move/from16 v3, v21

    invoke-virtual {v0, v1, v2, v3}, Ljava/io/ByteArrayOutputStream;->write([BII)V
    :try_end_43c
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_43c} :catch_43e

    goto/16 :goto_b9

    :catch_43e
    move-exception v5

    move-object/from16 v17, v5

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;

    move-object v5, v0

    if-eqz v5, :cond_421

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/service/api/methods/PhotosUpload;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;

    move-object v5, v0

    const/4 v6, 0x0

    const/4 v7, 0x0

    move-object v0, v5

    move-object/from16 v1, p0

    move v2, v6

    move-object v3, v7

    move-object/from16 v4, v17

    invoke-interface {v0, v1, v2, v3, v4}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_421
.end method
