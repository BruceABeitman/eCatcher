.class public Lcom/facebook/katana/service/api/FacebookSessionInfo;
.super Ljava/lang/Object;
.source "FacebookSessionInfo.java"


# static fields
.field public static final FILTER_KEY:Ljava/lang/String; = "filter"

.field public static final PROFILE_KEY:Ljava/lang/String; = "profile"

.field public static final SECRET_KEY:Ljava/lang/String; = "secret"

.field public static final SESSION_KEY:Ljava/lang/String; = "session_key"

.field public static final USERNAME_KEY:Ljava/lang/String; = "username"

.field public static final USER_ID_KEY:Ljava/lang/String; = "uid"


# instance fields
.field private mFilterKey:Ljava/lang/String;

.field private mMyself:Lcom/facebook/katana/service/api/FacebookUser;

.field private final mSessionKey:Ljava/lang/String;

.field private final mSessionSecret:Ljava/lang/String;

.field private final mUserId:J

.field private final mUsername:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const-string v10, "uid"

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    const/4 v8, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v6, -0x1

    new-instance v9, Lorg/codehaus/jackson/JsonFactory;

    invoke-direct {v9}, Lorg/codehaus/jackson/JsonFactory;-><init>()V

    invoke-virtual {v9, p1}, Lorg/codehaus/jackson/JsonFactory;->createJsonParser(Ljava/lang/String;)Lorg/codehaus/jackson/JsonParser;

    move-result-object v2

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    :goto_18
    sget-object v9, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v9, :cond_25

    iput-object v8, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mUsername:Ljava/lang/String;

    iput-object v3, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mSessionKey:Ljava/lang/String;

    iput-object v4, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mSessionSecret:Ljava/lang/String;

    iput-wide v6, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mUserId:J

    return-void

    :cond_25
    sget-object v9, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v9, :cond_78

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    const-string v9, "username"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_3e

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v8

    :cond_39
    :goto_39
    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v5

    goto :goto_18

    :cond_3e
    const-string v9, "session_key"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_4b

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v3

    goto :goto_39

    :cond_4b
    const-string v9, "secret"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_58

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    goto :goto_39

    :cond_58
    const-string v9, "filter"

    invoke-virtual {v1, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_67

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v9

    iput-object v9, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mFilterKey:Ljava/lang/String;

    goto :goto_39

    :cond_67
    const-string v9, "uid"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J

    move-result-wide v6

    goto :goto_39

    :cond_78
    sget-object v9, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v9, :cond_8d

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    const-string v9, "uid"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->getLongValue()J

    move-result-wide v6

    goto :goto_39

    :cond_8d
    sget-object v9, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v9, :cond_a4

    if-eqz v0, :cond_39

    const-string v9, "profile"

    invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_39

    const-class v9, Lcom/facebook/katana/service/api/FacebookUser;

    invoke-static {v9, v2}, Lcom/facebook/katana/service/api/FacebookUser;->parseFromJSON(Ljava/lang/Class;Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v9

    iput-object v9, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mMyself:Lcom/facebook/katana/service/api/FacebookUser;

    goto :goto_39

    :cond_a4
    sget-object v9, Lorg/codehaus/jackson/JsonToken;->FIELD_NAME:Lorg/codehaus/jackson/JsonToken;

    if-ne v5, v9, :cond_39

    invoke-virtual {v2}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v0

    goto :goto_39
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mUsername:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mSessionKey:Ljava/lang/String;

    iput-object p3, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mSessionSecret:Ljava/lang/String;

    iput-wide p4, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mUserId:J

    return-void
.end method


# virtual methods
.method public getFilterKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mFilterKey:Ljava/lang/String;

    return-object v0
.end method

.method public getProfile()Lcom/facebook/katana/service/api/FacebookUser;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mMyself:Lcom/facebook/katana/service/api/FacebookUser;

    return-object v0
.end method

.method public getSessionKey()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mSessionKey:Ljava/lang/String;

    return-object v0
.end method

.method public getSessionSecret()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mSessionSecret:Ljava/lang/String;

    return-object v0
.end method

.method public getUserId()J
    .registers 3

    iget-wide v0, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mUserId:J

    return-wide v0
.end method

.method public getUsername()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mUsername:Ljava/lang/String;

    return-object v0
.end method

.method public setFilterKey(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mFilterKey:Ljava/lang/String;

    return-void
.end method

.method public setProfile(Lcom/facebook/katana/service/api/FacebookUser;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mMyself:Lcom/facebook/katana/service/api/FacebookUser;

    return-void
.end method

.method public toJSONObject()Lorg/json/JSONObject;
    .registers 6

    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V

    const-string v2, "username"

    iget-object v3, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mUsername:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "uid"

    iget-wide v3, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mUserId:J

    invoke-virtual {v1, v2, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mSessionKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    const-string v2, "secret"

    iget-object v3, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mSessionSecret:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mMyself:Lcom/facebook/katana/service/api/FacebookUser;

    if-eqz v2, :cond_30

    const-string v2, "profile"

    iget-object v3, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mMyself:Lcom/facebook/katana/service/api/FacebookUser;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    :cond_30
    iget-object v2, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mFilterKey:Ljava/lang/String;

    if-eqz v2, :cond_3b

    const-string v2, "filter"

    iget-object v3, p0, Lcom/facebook/katana/service/api/FacebookSessionInfo;->mFilterKey:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_3b
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_3b} :catch_3d

    :cond_3b
    move-object v2, v1

    :goto_3c
    return-object v2

    :catch_3d
    move-exception v2

    move-object v0, v2

    new-instance v2, Lorg/json/JSONObject;

    invoke-direct {v2}, Lorg/json/JSONObject;-><init>()V

    goto :goto_3c
.end method
