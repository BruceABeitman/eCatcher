.class public Lcom/facebook/katana/service/api/methods/AuthLogin;
.super Lcom/facebook/katana/service/api/methods/ApiMethod;
.source "AuthLogin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/service/api/methods/AuthLogin$ClearAccountDataTask;,
        Lcom/facebook/katana/service/api/methods/AuthLogin$LoginListener;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

.field private final mUserListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 12

    const/4 v5, 0x0

    const-string v2, "GET"

    const-string v3, "auth.login"

    const-string v4, "https://api.facebook.com/restserver.php"

    move-object v0, p0

    move-object v1, p2

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/methods/ApiMethod;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthLogin;->mParams:Ljava/util/Map;

    const-string v1, "email"

    invoke-interface {v0, v1, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthLogin;->mParams:Ljava/util/Map;

    const-string v1, "password"

    invoke-interface {v0, v1, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/AuthLogin;->mContext:Landroid/content/Context;

    new-instance v0, Lcom/facebook/katana/service/api/methods/AuthLogin$LoginListener;

    invoke-direct {v0, p0, v5}, Lcom/facebook/katana/service/api/methods/AuthLogin$LoginListener;-><init>(Lcom/facebook/katana/service/api/methods/AuthLogin;Lcom/facebook/katana/service/api/methods/AuthLogin$LoginListener;)V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthLogin;->mListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;

    iput-object p5, p0, Lcom/facebook/katana/service/api/methods/AuthLogin;->mUserListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/katana/service/api/methods/AuthLogin;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthLogin;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/katana/service/api/methods/AuthLogin;)Lcom/facebook/katana/service/api/methods/ApiMethodListener;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthLogin;->mUserListener:Lcom/facebook/katana/service/api/methods/ApiMethodListener;

    return-object v0
.end method


# virtual methods
.method public getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthLogin;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    return-object v0
.end method

.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/katana/service/api/FacebookApiException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v1, "uid"

    const/4 v2, 0x0

    const/4 v3, 0x0

    const-wide/16 v4, -0x1

    const/4 v6, -0x1

    const/4 v7, 0x0

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v9

    :goto_c
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v9, v0, :cond_19

    const/4 v0, -0x1

    if-eq v6, v0, :cond_7f

    new-instance v0, Lcom/facebook/katana/service/api/FacebookApiException;

    invoke-direct {v0, v6, v7}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(ILjava/lang/String;)V

    throw v0

    :cond_19
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v9, v0, :cond_5d

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    const-string v0, "session_key"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_32

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v2

    :cond_2d
    :goto_2d
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v9

    goto :goto_c

    :cond_32
    const-string v0, "secret"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_3f

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_2d

    :cond_3f
    const-string v0, "uid"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_50

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v4

    goto :goto_2d

    :cond_50
    const-string v0, "error_msg"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v7

    goto :goto_2d

    :cond_5d
    sget-object v0, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v9, v0, :cond_2d

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v8

    const-string v0, "error_code"

    invoke-virtual {v8, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_72

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v6

    goto :goto_2d

    :cond_72
    const-string v0, "uid"

    invoke-virtual {v8, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2d

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v4

    goto :goto_2d

    :cond_7f
    if-eqz v2, :cond_99

    const-wide/16 v0, -0x1

    cmp-long v0, v4, v0

    if-eqz v0, :cond_99

    new-instance v0, Lcom/facebook/katana/service/api/FacebookSessionInfo;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/AuthLogin;->mParams:Ljava/util/Map;

    const-string v10, "email"

    invoke-interface {v1, v10}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct/range {v0 .. v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/AuthLogin;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    return-void

    :cond_99
    new-instance v0, Ljava/io/IOException;

    const-string v1, "Session info not found"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method protected signatureKey()Ljava/lang/String;
    .registers 2

    const-string v0, "62f8ce9f74b12f84c123cc23437a4a32"

    return-object v0
.end method

.method protected simulateSessionKeyError()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method
