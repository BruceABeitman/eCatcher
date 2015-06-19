.class public Lcom/facebook/katana/service/api/FacebookPhotoComment;
.super Ljava/lang/Object;
.source "FacebookPhotoComment.java"


# instance fields
.field private final mBody:Ljava/lang/String;

.field private mFromUser:Lcom/facebook/katana/service/api/FacebookUser;

.field private final mFromUserId:J

.field private final mId:J

.field private final mPhotoId:Ljava/lang/String;

.field private final mTime:J


# direct methods
.method public constructor <init>(Ljava/lang/String;JLjava/lang/String;JJ)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookPhotoComment;->mPhotoId:Ljava/lang/String;

    iput-wide p2, p0, Lcom/facebook/katana/service/api/FacebookPhotoComment;->mFromUserId:J

    iput-object p4, p0, Lcom/facebook/katana/service/api/FacebookPhotoComment;->mBody:Ljava/lang/String;

    iput-wide p5, p0, Lcom/facebook/katana/service/api/FacebookPhotoComment;->mTime:J

    iput-wide p7, p0, Lcom/facebook/katana/service/api/FacebookPhotoComment;->mId:J

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v6, 0x0

    const-wide/16 v2, -0x1

    const/4 v0, 0x0

    const-wide/16 v8, -0x1

    const-wide/16 v4, -0x1

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v7

    :goto_f
    sget-object v10, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v7, v10, :cond_1e

    iput-object v6, p0, Lcom/facebook/katana/service/api/FacebookPhotoComment;->mPhotoId:Ljava/lang/String;

    iput-wide v2, p0, Lcom/facebook/katana/service/api/FacebookPhotoComment;->mFromUserId:J

    iput-object v0, p0, Lcom/facebook/katana/service/api/FacebookPhotoComment;->mBody:Ljava/lang/String;

    iput-wide v8, p0, Lcom/facebook/katana/service/api/FacebookPhotoComment;->mTime:J

    iput-wide v4, p0, Lcom/facebook/katana/service/api/FacebookPhotoComment;->mId:J

    return-void

    :cond_1e
    sget-object v10, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v7, v10, :cond_44

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    const-string v10, "pid"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_37

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    :cond_32
    :goto_32
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v7

    goto :goto_f

    :cond_37
    const-string v10, "body"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_32

    :cond_44
    sget-object v10, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v7, v10, :cond_32

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    const-string v10, "from"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_59

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v2

    goto :goto_32

    :cond_59
    const-string v10, "time"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_66

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v8

    goto :goto_32

    :cond_66
    const-string v10, "pcid"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_32

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v4

    goto :goto_32
.end method


# virtual methods
.method public getBody()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPhotoComment;->mBody:Ljava/lang/String;

    return-object v0
.end method

.method public getFromUser()Lcom/facebook/katana/service/api/FacebookUser;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPhotoComment;->mFromUser:Lcom/facebook/katana/service/api/FacebookUser;

    return-object v0
.end method

.method public getFromUserId()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPhotoComment;->mFromUserId:J

    return-wide v0
.end method

.method public getId()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPhotoComment;->mId:J

    return-wide v0
.end method

.method public getPhotoId()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookPhotoComment;->mPhotoId:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookPhotoComment;->mTime:J

    return-wide v0
.end method

.method public setFromUser(Lcom/facebook/katana/service/api/FacebookUser;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookPhotoComment;->mFromUser:Lcom/facebook/katana/service/api/FacebookUser;

    return-void
.end method
