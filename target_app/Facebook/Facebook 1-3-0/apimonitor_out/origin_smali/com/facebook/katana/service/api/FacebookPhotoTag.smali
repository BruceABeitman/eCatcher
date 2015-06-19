.class public Lcom/facebook/katana/service/api/FacebookPhotoTag;
.super Ljava/lang/Object;
.source "FacebookPhotoTag.java"


# instance fields
.field private final mCreated:J

.field private final mPhotoId:Ljava/lang/String;

.field private final mSubject:Ljava/lang/String;

.field private final mUserId:J

.field private final mX:D

.field private final mY:D


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;JDDJ)V
    .registers 11

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookPhotoTag;->mPhotoId:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookPhotoTag;->mSubject:Ljava/lang/String;

    iput-wide p3, p0, Lcom/facebook/katana/service/api/FacebookPhotoTag;->mUserId:J

    iput-wide p5, p0, Lcom/facebook/katana/service/api/FacebookPhotoTag;->mX:D

    iput-wide p7, p0, Lcom/facebook/katana/service/api/FacebookPhotoTag;->mY:D

    iput-wide p9, p0, Lcom/facebook/katana/service/api/FacebookPhotoTag;->mCreated:J

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .registers 15
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, -0x1

    const-wide/16 v0, -0x1

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    :goto_11
    sget-object v12, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v12, :cond_22

    iput-object v3, p0, Lcom/facebook/katana/service/api/FacebookPhotoTag;->mPhotoId:Ljava/lang/String;

    iput-object v4, p0, Lcom/facebook/katana/service/api/FacebookPhotoTag;->mSubject:Ljava/lang/String;

    iput-wide v6, p0, Lcom/facebook/katana/service/api/FacebookPhotoTag;->mUserId:J

    iput-wide v8, p0, Lcom/facebook/katana/service/api/FacebookPhotoTag;->mX:D

    iput-wide v10, p0, Lcom/facebook/katana/service/api/FacebookPhotoTag;->mY:D

    iput-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPhotoTag;->mCreated:J

    return-void

    :cond_22
    sget-object v12, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v12, :cond_48

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    const-string v12, "pid"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_3b

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    :cond_36
    :goto_36
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    goto :goto_11

    :cond_3b
    const-string v12, "subject"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_36

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_36

    :cond_48
    sget-object v12, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v12, :cond_6a

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    const-string v12, "uid"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_5d

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v6

    goto :goto_36

    :cond_5d
    const-string v12, "created"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_36

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v0

    goto :goto_36

    :cond_6a
    sget-object v12, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_FLOAT:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v12, :cond_36

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    const-string v12, "xcoord"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_80

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getFloatValue()F

    move-result v12

    float-to-double v8, v12

    goto :goto_36

    :cond_80
    const-string v12, "ycoord"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_36

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getFloatValue()F

    move-result v12

    float-to-double v10, v12

    goto :goto_36
.end method

.method public static encode(Ljava/util/List;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPhotoTag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v7, "\""

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_11
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_21

    const-string v3, "]"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_21
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/facebook/katana/service/api/FacebookPhotoTag;

    if-nez v0, :cond_6e

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2e
    const-string v4, "{\"x\":\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookPhotoTag;->getX()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\",\"y\":\""

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookPhotoTag;->getY()D

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookPhotoTag;->getSubject()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_70

    const-string v4, ",\"tag_text\":\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookPhotoTag;->getSubject()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_68
    const-string v4, "}"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_11

    :cond_6e
    const/4 v0, 0x0

    goto :goto_2e

    :cond_70
    const-string v4, ",\"tag_uid\":\""

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookPhotoTag;->getUid()J

    move-result-wide v5

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "\""

    invoke-virtual {v4, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_68
.end method


# virtual methods
.method public getCreated()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPhotoTag;->mCreated:J

    return-wide v0
.end method

.method public getPhotoId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPhotoTag;->mPhotoId:Ljava/lang/String;

    return-object v0
.end method

.method public getSubject()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPhotoTag;->mSubject:Ljava/lang/String;

    return-object v0
.end method

.method public getUid()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPhotoTag;->mUserId:J

    return-wide v0
.end method

.method public getX()D
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPhotoTag;->mX:D

    return-wide v0
.end method

.method public getY()D
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPhotoTag;->mY:D

    return-wide v0
.end method
