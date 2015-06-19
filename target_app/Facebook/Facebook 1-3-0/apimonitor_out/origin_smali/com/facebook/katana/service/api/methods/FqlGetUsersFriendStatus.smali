.class public Lcom/facebook/katana/service/api/methods/FqlGetUsersFriendStatus;
.super Lcom/facebook/katana/service/api/methods/FqlQuery;
.source "FqlGetUsersFriendStatus.java"


# static fields
.field static final synthetic $assertionsDisabled:Z


# instance fields
.field private mFriends:Z

.field private uid1:J

.field private uid2:J


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/katana/service/api/methods/FqlGetUsersFriendStatus;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/facebook/katana/service/api/methods/FqlGetUsersFriendStatus;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;JJLcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "SELECT uid1, uid2 FROM friend WHERE uid1="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " AND uid2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5, p6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p7}, Lcom/facebook/katana/service/api/methods/FqlQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iput-wide p3, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersFriendStatus;->uid1:J

    iput-wide p5, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersFriendStatus;->uid2:J

    return-void
.end method


# virtual methods
.method public areFriends()Z
    .registers 2

    iget-boolean v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersFriendStatus;->mFriends:Z

    return v0
.end method

.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/katana/service/api/FacebookApiException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    const/4 v8, 0x0

    const-string v6, "Unexpected JSON response"

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_20

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_1d

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected JSON response"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_1d
    iput-boolean v8, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersFriendStatus;->mFriends:Z

    :goto_1f
    return-void

    :cond_20
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_2c

    new-instance v4, Ljava/io/IOException;

    const-string v5, "Unexpected JSON response"

    invoke-direct {v4, v6}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v4

    :cond_2c
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    sget-boolean v4, Lcom/facebook/katana/service/api/methods/FqlGetUsersFriendStatus;->$assertionsDisabled:Z

    if-nez v4, :cond_3e

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_3e

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_3e
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    :goto_42
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_69

    :goto_46
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_97

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    if-eqz v2, :cond_c1

    if-eqz v3, :cond_c1

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersFriendStatus;->uid1:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_c1

    invoke-virtual {v3}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    iget-wide v6, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersFriendStatus;->uid2:J

    cmp-long v4, v4, v6

    if-nez v4, :cond_c1

    const/4 v4, 0x1

    iput-boolean v4, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersFriendStatus;->mFriends:Z

    goto :goto_1f

    :cond_69
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_81

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    const-string v4, "uid1"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_86

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v2

    :cond_81
    :goto_81
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_42

    :cond_86
    const-string v4, "uid2"

    invoke-virtual {v1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_81

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Ljava/lang/Long;->valueOf(Ljava/lang/String;)Ljava/lang/Long;

    move-result-object v3

    goto :goto_81

    :cond_97
    sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v0, v4, :cond_9f

    sget-object v4, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v0, v4, :cond_bc

    :cond_9f
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->skipChildren()V

    sget-boolean v4, Lcom/facebook/katana/service/api/methods/FqlGetUsersFriendStatus;->$assertionsDisabled:Z

    if-nez v4, :cond_bc

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_bc

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v4

    sget-object v5, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v4, v5, :cond_bc

    new-instance v4, Ljava/lang/AssertionError;

    invoke-direct {v4}, Ljava/lang/AssertionError;-><init>()V

    throw v4

    :cond_bc
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v0

    goto :goto_46

    :cond_c1
    iput-boolean v8, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersFriendStatus;->mFriends:Z

    goto/16 :goto_1f
.end method
