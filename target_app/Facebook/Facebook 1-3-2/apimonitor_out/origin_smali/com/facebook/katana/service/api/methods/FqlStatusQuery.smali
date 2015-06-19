.class public Lcom/facebook/katana/service/api/methods/FqlStatusQuery;
.super Lcom/facebook/katana/service/api/methods/FqlQuery;
.source "FqlStatusQuery.java"


# static fields
.field public static final FRIENDS_STATUS_QUERY:Ljava/lang/String; = "SELECT uid,first_name,last_name,name,status,pic_square FROM user WHERE ((uid IN (SELECT uid2 FROM friend WHERE uid1=%1)) AND (status.message != \'\')) ORDER BY status.time DESC LIMIT 25"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mMyUsername:Ljava/lang/String;

.field private final mStatusList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookStatus;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V
    .registers 8

    invoke-direct {p0, p2, p3, p4, p6}, Lcom/facebook/katana/service/api/methods/FqlQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/FqlStatusQuery;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlStatusQuery;->mStatusList:Ljava/util/List;

    iput-object p5, p0, Lcom/facebook/katana/service/api/methods/FqlStatusQuery;->mMyUsername:Ljava/lang/String;

    return-void
.end method

.method private static saveUserStatuses(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookStatus;",
            ">;)V"
        }
    .end annotation

    const/4 v4, 0x0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v3, Lcom/facebook/katana/provider/UserStatusesProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v3, v4, v4}, Landroid/content/ContentResolver;->delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-interface {p2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_23

    invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->platformStorageSupported(Landroid/content/Context;)Z

    move-result v3

    if-eqz v3, :cond_22

    invoke-static {p0, p1, p2}, Lcom/facebook/katana/platform/PlatformStorage;->insertStatuses(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_22
    return-void

    :cond_23
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/service/api/FacebookStatus;

    invoke-virtual {v2}, Landroid/content/ContentValues;->clear()V

    const-string v4, "user_id"

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookStatus;->getUser()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    const-string v4, "first_name"

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookStatus;->getUser()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getFirstName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "last_name"

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookStatus;->getUser()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getLastName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "display_name"

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookStatus;->getUser()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "user_pic"

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookStatus;->getUser()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getImageUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "message"

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookStatus;->getMessage()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    const-string v4, "timestamp"

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookStatus;->getTime()J

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v5

    invoke-virtual {v2, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    sget-object v4, Lcom/facebook/katana/provider/UserStatusesProvider;->CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0, v4, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    goto :goto_13
.end method


# virtual methods
.method public getStatusList()Ljava/util/List;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookStatus;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlStatusQuery;->mStatusList:Ljava/util/List;

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

    move-result-object v1

    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_15

    new-instance v0, Lcom/facebook/katana/service/api/FacebookApiException;

    invoke-direct {v0, p1}, Lcom/facebook/katana/service/api/FacebookApiException;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookApiException;->getErrorCode()I

    move-result v2

    const/4 v3, -0x1

    if-eq v2, v3, :cond_21

    throw v0

    :cond_15
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_46

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    :goto_1d
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_33

    :cond_21
    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/FqlStatusQuery;->mStatusList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_32

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/FqlStatusQuery;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/facebook/katana/service/api/methods/FqlStatusQuery;->mMyUsername:Ljava/lang/String;

    iget-object v4, p0, Lcom/facebook/katana/service/api/methods/FqlStatusQuery;->mStatusList:Ljava/util/List;

    invoke-static {v2, v3, v4}, Lcom/facebook/katana/service/api/methods/FqlStatusQuery;->saveUserStatuses(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V

    :cond_32
    return-void

    :cond_33
    sget-object v2, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v1, v2, :cond_41

    iget-object v2, p0, Lcom/facebook/katana/service/api/methods/FqlStatusQuery;->mStatusList:Ljava/util/List;

    new-instance v3, Lcom/facebook/katana/service/api/FacebookStatus;

    invoke-direct {v3, p1}, Lcom/facebook/katana/service/api/FacebookStatus;-><init>(Lorg/codehaus/jackson/JsonParser;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_41
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v1

    goto :goto_1d

    :cond_46
    new-instance v2, Ljava/io/IOException;

    const-string v3, "Malformed JSON"

    invoke-direct {v2, v3}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v2
.end method
