.class public Lcom/facebook/katana/service/api/FacebookApp;
.super Ljava/lang/Object;
.source "FacebookApp.java"


# instance fields
.field private final mAppId:J

.field private final mImageUrl:Ljava/lang/String;

.field private final mName:Ljava/lang/String;


# direct methods
.method public constructor <init>(JLjava/lang/String;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/facebook/katana/service/api/FacebookApp;->mAppId:J

    iput-object p3, p0, Lcom/facebook/katana/service/api/FacebookApp;->mName:Ljava/lang/String;

    iput-object p4, p0, Lcom/facebook/katana/service/api/FacebookApp;->mImageUrl:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lorg/codehaus/jackson/JsonParser;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v7, 0x0

    const-string v8, "null"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    :goto_e
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_2d

    iput-wide v0, p0, Lcom/facebook/katana/service/api/FacebookApp;->mAppId:J

    if-eqz v3, :cond_6f

    const-string v6, "null"

    invoke-virtual {v3, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_6f

    iput-object v7, p0, Lcom/facebook/katana/service/api/FacebookApp;->mName:Ljava/lang/String;

    :goto_20
    if-eqz v4, :cond_72

    const-string v6, "null"

    invoke-virtual {v4, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_72

    iput-object v7, p0, Lcom/facebook/katana/service/api/FacebookApp;->mImageUrl:Ljava/lang/String;

    :goto_2c
    return-void

    :cond_2d
    sget-object v6, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-eq v5, v6, :cond_35

    sget-object v6, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v6, :cond_45

    :cond_35
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v2

    const-string v6, "display_name"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4a

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    :cond_45
    :goto_45
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    goto :goto_e

    :cond_4a
    const-string v6, "logo_url"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_5e

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_45

    const/4 v4, 0x0

    goto :goto_45

    :cond_5e
    const-string v6, "app_id"

    invoke-virtual {v2, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_45

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v0

    goto :goto_45

    :cond_6f
    iput-object v3, p0, Lcom/facebook/katana/service/api/FacebookApp;->mName:Ljava/lang/String;

    goto :goto_20

    :cond_72
    iput-object v4, p0, Lcom/facebook/katana/service/api/FacebookApp;->mImageUrl:Ljava/lang/String;

    goto :goto_2c
.end method


# virtual methods
.method public getAppId()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookApp;->mAppId:J

    return-wide v0
.end method

.method public getImageUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookApp;->mImageUrl:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookApp;->mName:Ljava/lang/String;

    return-object v0
.end method
