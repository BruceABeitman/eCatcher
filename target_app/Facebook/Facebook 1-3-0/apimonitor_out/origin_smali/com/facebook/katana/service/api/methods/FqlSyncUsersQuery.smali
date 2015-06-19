.class public Lcom/facebook/katana/service/api/methods/FqlSyncUsersQuery;
.super Lcom/facebook/katana/service/api/methods/FqlQuery;
.source "FqlSyncUsersQuery.java"


# static fields
.field private static final FRIENDS_QUERY:Ljava/lang/String; = "SELECT uid,first_name,last_name,name,pic_square,cell,other_phone,contact_email,birthday_date FROM user WHERE (uid IN (SELECT uid2 FROM friend WHERE uid1=%1));"


# instance fields
.field private final mFriends:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookFriendInfo;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Intent;Ljava/lang/String;JLcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 9

    const-string v0, "SELECT uid,first_name,last_name,name,pic_square,cell,other_phone,contact_email,birthday_date FROM user WHERE (uid IN (SELECT uid2 FROM friend WHERE uid1=%1));"

    const-string v1, "%1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p3, p4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p1, p2, v0, p5}, Lcom/facebook/katana/service/api/methods/FqlQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlSyncUsersQuery;->mFriends:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public getFriends()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookFriendInfo;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlSyncUsersQuery;->mFriends:Ljava/util/List;

    return-object v0
.end method

.method protected parseJSON(Lorg/codehaus/jackson/JsonParser;)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/facebook/katana/service/api/FacebookApiException;,
            Lorg/codehaus/jackson/JsonParseException;,
            Ljava/io/IOException;
        }
    .end annotation

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_48

    const/4 v0, -0x1

    const/4 v1, 0x0

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    :goto_e
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_1a

    if-lez v0, :cond_50

    new-instance v3, Lcom/facebook/katana/service/api/FacebookApiException;

    invoke-direct {v3, v0, v1}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(ILjava/lang/String;)V

    throw v3

    :cond_1a
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_NUMBER_INT:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_33

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "error_code"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getIntValue()I

    move-result v0

    :cond_2e
    :goto_2e
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_e

    :cond_33
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->VALUE_STRING:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_2e

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "error_msg"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2e

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getText()Ljava/lang/String;

    move-result-object v1

    goto :goto_2e

    :cond_48
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_50

    :goto_4c
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_51

    :cond_50
    return-void

    :cond_51
    sget-object v3, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v2, v3, :cond_62

    iget-object v4, p0, Lcom/facebook/katana/service/api/methods/FqlSyncUsersQuery;->mFriends:Ljava/util/List;

    const-class v3, Lcom/facebook/katana/service/api/FacebookFriendInfo;

    invoke-static {v3, p1}, Lcom/facebook/katana/service/api/FacebookUser;->parseFromJSON(Ljava/lang/Class;Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v3

    check-cast v3, Lcom/facebook/katana/service/api/FacebookFriendInfo;

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_62
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v2

    goto :goto_4c
.end method
