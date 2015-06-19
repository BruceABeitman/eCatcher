.class public Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;
.super Lcom/facebook/katana/service/api/methods/FqlQuery;
.source "FqlGetUsersProfile.java"


# static fields
#the value of this static final field might be set in the static constructor
.field static final synthetic $assertionsDisabled:Z = false

.field private static final TAG:Ljava/lang/String; = "FqlGetUsersProfile"


# instance fields
.field private final mCls:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mOpaque:Ljava/lang/Object;

.field private final mProfiles:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_9
    sput-boolean v0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->$assertionsDisabled:Z

    return-void

    :cond_c
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/lang/String;Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/api/methods/ApiMethodListener;",
            "Ljava/lang/String;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;)V"
        }
    .end annotation

    invoke-static {p6}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->getQueryFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->buildQuery(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/facebook/katana/service/api/methods/FqlQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mContext:Landroid/content/Context;

    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mProfiles:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mOpaque:Ljava/lang/Object;

    iput-object p6, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mCls:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/util/Map;Ljava/lang/Class;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/api/methods/ApiMethodListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;)V"
        }
    .end annotation

    invoke-static {p6}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->getQueryFields(Ljava/lang/Class;)Ljava/util/List;

    move-result-object v0

    invoke-static {p5, v0}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->buildQuery(Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/facebook/katana/service/api/methods/FqlQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mProfiles:Ljava/util/Map;

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mOpaque:Ljava/lang/Object;

    iput-object p6, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mCls:Ljava/lang/Class;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/util/Map;Ljava/lang/Object;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/service/api/methods/ApiMethodListener;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    invoke-static {p5, v0}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->buildQuery(Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p2, p3, v0, p4}, Lcom/facebook/katana/service/api/methods/FqlQuery;-><init>(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;)V

    iput-object p1, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mContext:Landroid/content/Context;

    iput-object p5, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mProfiles:Ljava/util/Map;

    iput-object p6, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mOpaque:Ljava/lang/Object;

    const-class v0, Lcom/facebook/katana/service/api/FacebookUser;

    iput-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mCls:Ljava/lang/Class;

    return-void
.end method

.method private static buildQuery(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "SELECT "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    if-nez p1, :cond_1b

    const-string v3, "uid,first_name,last_name,name,pic_square"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_e
    const-string v3, " FROM user WHERE "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_1b
    const/4 v1, 0x1

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_20
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_e

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-nez v1, :cond_37

    const-string v4, ","

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_33
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_20

    :cond_37
    const/4 v1, 0x0

    goto :goto_33
.end method

.method private static buildQuery(Ljava/util/Map;Ljava/util/List;)Ljava/lang/String;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    invoke-static {p0}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->getFilterString(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->buildQuery(Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static getFilterString(Ljava/util/Map;)Ljava/lang/String;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v3, "uid IN("

    invoke-direct {v1, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_20

    const-string v3, ")"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_20
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Long;

    if-nez v0, :cond_31

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :goto_2d
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    goto :goto_10

    :cond_31
    const/4 v0, 0x0

    goto :goto_2d
.end method

.method private static getQueryFields(Ljava/lang/Class;)Ljava/util/List;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<+",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    const/4 v7, 0x0

    const/4 v3, 0x0

    const/4 v2, 0x0

    :try_start_3
    const-string v5, "getQueryFields"

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Class;

    invoke-virtual {p0, v5, v6}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    new-array v6, v6, [Ljava/lang/Object;

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Ljava/util/List;

    move-object v3, v0
    :try_end_18
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_18} :catch_23
    .catch Ljava/lang/IllegalAccessException; {:try_start_3 .. :try_end_18} :catch_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3 .. :try_end_18} :catch_2b

    :goto_18
    if-eqz v2, :cond_2f

    const-string v5, "FqlGetUsersProfile"

    const-string v6, "a subclass of FacebookUser doesn\'t implement getQueryFields"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v7

    :goto_22
    return-object v5

    :catch_23
    move-exception v5

    move-object v1, v5

    const/4 v2, 0x1

    goto :goto_18

    :catch_27
    move-exception v5

    move-object v1, v5

    const/4 v2, 0x1

    goto :goto_18

    :catch_2b
    move-exception v5

    move-object v1, v5

    const/4 v2, 0x1

    goto :goto_18

    :cond_2f
    move-object v5, v3

    goto :goto_22
.end method


# virtual methods
.method public getOpaque()Ljava/lang/Object;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mOpaque:Ljava/lang/Object;

    return-object v0
.end method

.method public getUsers()Ljava/util/Map;
    .registers 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mProfiles:Ljava/util/Map;

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

    const/4 v3, 0x0

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->getCurrentToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v8, v1, :cond_3b

    :goto_9
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_ARRAY:Lorg/codehaus/jackson/JsonToken;

    if-ne v8, v1, :cond_1f

    :cond_d
    const/4 v0, 0x0

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mProfiles:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :cond_18
    :goto_18
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_51

    return-void

    :cond_1f
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v8, v1, :cond_36

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mCls:Ljava/lang/Class;

    invoke-static {v1, p1}, Lcom/facebook/katana/service/api/FacebookUser;->parseFromJSON(Ljava/lang/Class;Lorg/codehaus/jackson/JsonParser;)Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v7

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mProfiles:Ljava/util/Map;

    invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_36
    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    goto :goto_9

    :cond_3b
    sget-object v1, Lorg/codehaus/jackson/JsonToken;->START_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-ne v8, v1, :cond_d

    invoke-virtual {p1}, Lorg/codehaus/jackson/JsonParser;->nextToken()Lorg/codehaus/jackson/JsonToken;

    move-result-object v8

    sget-boolean v1, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->$assertionsDisabled:Z

    if-nez v1, :cond_d

    sget-object v1, Lorg/codehaus/jackson/JsonToken;->END_OBJECT:Lorg/codehaus/jackson/JsonToken;

    if-eq v8, v1, :cond_d

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    :cond_51
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Long;

    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mProfiles:Ljava/util/Map;

    invoke-interface {v1, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_18

    const-string v1, "FqlGetUsersProfile"

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v4, "User not found: "

    invoke-direct {v2, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    if-nez v0, :cond_89

    new-instance v0, Lcom/facebook/katana/service/api/FacebookUser;

    invoke-virtual {v9}, Ljava/lang/Long;->longValue()J

    move-result-wide v1

    iget-object v4, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mContext:Landroid/content/Context;

    const v5, 0x7f080050

    invoke-virtual {v4, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    move-object v4, v3

    move-object v6, v3

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/api/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    :cond_89
    iget-object v1, p0, Lcom/facebook/katana/service/api/methods/FqlGetUsersProfile;->mProfiles:Ljava/util/Map;

    invoke-interface {v1, v9, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_18
.end method
