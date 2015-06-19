.class public Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;
.super Lcom/facebook/katana/service/api/methods/FqlQuery;
.source "PhotosGetPhotos.java"


# static fields
.field private static final SIMULATE_FAILURE:Z


# instance fields
.field private final mAlbumId:Ljava/lang/String;

.field private final mContext:Landroid/content/Context;

.field private final mPhotos:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPhoto;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;JLcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 10

    invoke-static {p4, p5, p6, p7}, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->buildQuery(Ljava/lang/String;[Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0, p8}, Lcom/facebook/katana/service/api/methods/FqlQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->mContext:Landroid/content/Context;

    iput-object p4, p0, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->mAlbumId:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->mPhotos:Ljava/util/List;

    return-void
.end method

.method private static buildQuery(Ljava/lang/String;[Ljava/lang/String;J)Ljava/lang/String;
    .registers 7

    const-string v0, "SELECT pid,aid,owner,src_small,src_big,src,caption,created,modified FROM photo WHERE "

    if-eqz p1, :cond_43

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "pid IN("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-static {p1}, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->photoIdsParameterString([Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_25
    const-wide/16 v1, -0x1

    cmp-long v1, v1, p2

    if-eqz v1, :cond_42

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, " AND owner = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :cond_42
    return-object v0

    :cond_43
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "aid=\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_25
.end method

.method private static listToCommaString(Ljava/util/List;Z)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v6, "\'"

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v3, 0x40

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_36

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_24
    if-eqz p1, :cond_38

    const-string v4, "\'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_36
    const/4 v0, 0x0

    goto :goto_24

    :cond_38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_e
.end method

.method private static photoIdsParameterString([Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    invoke-static {p0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->listToCommaString(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method protected dispatchOnOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V
    .registers 7

    move v0, p2

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;

    invoke-interface {v1, p1, v0, p3, p4}, Lcom/facebook/katana/service/api/methods/ApiMethodListener;->onOperationComplete(Lcom/facebook/katana/service/api/methods/ApiMethod;ILjava/lang/String;Ljava/lang/Exception;)V

    return-void
.end method

.method public getPhotos()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPhoto;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->mPhotos:Ljava/util/List;

    return-object v0
.end method

.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
    .registers 12
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/katana/service/api/FacebookApiException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v3, 0x1

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v9

    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v9, v0, :cond_16

    new-instance v7, Lcom/facebook/katana/service/api/FacebookApiException;

    invoke-direct {v7, p1}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookApiException;->getErrorCode()I

    move-result v0

    const/4 v1, -0x1

    if-eq v0, v1, :cond_38

    throw v7

    :cond_16
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v9, v0, :cond_58

    :goto_1a
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v9, v0, :cond_39

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->mAlbumId:Ljava/lang/String;

    if-eqz v0, :cond_4c

    move v8, v3

    :goto_23
    move v5, v8

    if-eqz v8, :cond_4f

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->mAlbumId:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/facebook/katana/service/api/methods/PhotoSyncModel;->cursorFactoryForPhotosForAlbum(Landroid/content/Context;Ljava/lang/String;)Lcom/facebook/katana/util/Factory;

    move-result-object v2

    :goto_2e
    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->mPhotos:Ljava/util/List;

    iget-object v6, p0, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->mAlbumId:Ljava/lang/String;

    move v4, v3

    invoke-static/range {v0 .. v6}, Lcom/facebook/katana/service/api/methods/PhotoSyncModel;->doSync(Landroid/content/Context;Ljava/util/Collection;Lcom/facebook/katana/util/Factory;ZZZLjava/lang/String;)V

    :cond_38
    return-void

    :cond_39
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v9, v0, :cond_47

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->mPhotos:Ljava/util/List;

    new-instance v1, Lcom/facebook/katana/service/api/FacebookPhoto;

    invoke-direct {v1, p1}, Lcom/facebook/katana/service/api/FacebookPhoto;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_47
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v9

    goto :goto_1a

    :cond_4c
    const/4 v0, 0x0

    move v8, v0

    goto :goto_23

    :cond_4f
    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/PhotosGetPhotos;->mPhotos:Ljava/util/List;

    invoke-static {v0, v1}, Lcom/facebook/katana/service/api/methods/PhotoSyncModel;->cursorFactoryForPhotos(Landroid/content/Context;Ljava/util/Collection;)Lcom/facebook/katana/util/Factory;

    move-result-object v2

    goto :goto_2e

    :cond_58
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Malformed JSON"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
