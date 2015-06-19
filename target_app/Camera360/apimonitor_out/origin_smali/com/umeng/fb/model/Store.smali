.class public Lcom/umeng/fb/model/Store;
.super Ljava/lang/Object;
.source "Store.java"


# static fields
.field private static final a:Ljava/lang/String; = null

.field private static b:Lcom/umeng/fb/model/Store; = null

.field private static final d:Ljava/lang/String; = "umeng_feedback_conversations"

.field private static final e:Ljava/lang/String; = "umeng_feedback_user_info"

.field private static final f:Ljava/lang/String; = "user"

.field private static final g:Ljava/lang/String; = "last_update_at"

.field private static final h:Ljava/lang/String; = "last_sync_at"


# instance fields
.field private c:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/umeng/fb/model/Store;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/umeng/fb/model/Store;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/umeng/fb/model/Store;->c:Landroid/content/Context;

    return-void
.end method

.method public static getInstance(Landroid/content/Context;)Lcom/umeng/fb/model/Store;
    .registers 2

    sget-object v0, Lcom/umeng/fb/model/Store;->b:Lcom/umeng/fb/model/Store;

    if-nez v0, :cond_b

    new-instance v0, Lcom/umeng/fb/model/Store;

    invoke-direct {v0, p0}, Lcom/umeng/fb/model/Store;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/umeng/fb/model/Store;->b:Lcom/umeng/fb/model/Store;

    :cond_b
    sget-object v0, Lcom/umeng/fb/model/Store;->b:Lcom/umeng/fb/model/Store;

    return-object v0
.end method


# virtual methods
.method a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/umeng/fb/model/Store;->c:Landroid/content/Context;

    const-string/jumbo v1, "umeng_feedback_conversations"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    iget-object v0, p0, Lcom/umeng/fb/model/Store;->c:Landroid/content/Context;

    const-string/jumbo v1, "umeng_feedback_user_info"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->clear()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public getAllConversationIds()Ljava/util/List;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/umeng/fb/model/Store;->c:Landroid/content/Context;

    const-string/jumbo v1, "umeng_feedback_conversations"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v0

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_1b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-nez v0, :cond_22

    return-object v1

    :cond_22
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1b
.end method

.method public getConversationById(Ljava/lang/String;)Lcom/umeng/fb/model/Conversation;
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/umeng/fb/model/Store;->c:Landroid/content/Context;

    const-string/jumbo v1, "umeng_feedback_conversations"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, ""

    invoke-interface {v0, p1, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v0, Lcom/umeng/fb/model/Conversation;

    new-instance v2, Lorg/json/JSONArray;

    invoke-direct {v2, v1}, Lorg/json/JSONArray;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/umeng/fb/model/Store;->c:Landroid/content/Context;

    invoke-direct {v0, p1, v2, v1}, Lcom/umeng/fb/model/Conversation;-><init>(Ljava/lang/String;Lorg/json/JSONArray;Landroid/content/Context;)V
    :try_end_1d
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_1d} :catch_1e

    :goto_1d
    return-object v0

    :catch_1e
    move-exception v0

    invoke-virtual {v0}, Lorg/json/JSONException;->printStackTrace()V

    const/4 v0, 0x0

    goto :goto_1d
.end method

.method public getUserInfo()Lcom/umeng/fb/model/UserInfo;
    .registers 5

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/umeng/fb/model/Store;->c:Landroid/content/Context;

    const-string/jumbo v2, "umeng_feedback_user_info"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string/jumbo v2, "user"

    const-string/jumbo v3, ""

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v1, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1f

    :goto_1e
    return-object v0

    :cond_1f
    :try_start_1f
    new-instance v1, Lcom/umeng/fb/model/UserInfo;

    new-instance v3, Lorg/json/JSONObject;

    invoke-direct {v3, v2}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    invoke-direct {v1, v3}, Lcom/umeng/fb/model/UserInfo;-><init>(Lorg/json/JSONObject;)V
    :try_end_29
    .catch Lorg/json/JSONException; {:try_start_1f .. :try_end_29} :catch_2b

    move-object v0, v1

    goto :goto_1e

    :catch_2b
    move-exception v1

    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    goto :goto_1e
.end method

.method public getUserInfoLastSyncAt()J
    .registers 5

    iget-object v0, p0, Lcom/umeng/fb/model/Store;->c:Landroid/content/Context;

    const-string/jumbo v1, "umeng_feedback_user_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "last_sync_at"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public getUserInfoLastUpdateAt()J
    .registers 5

    iget-object v0, p0, Lcom/umeng/fb/model/Store;->c:Landroid/content/Context;

    const-string/jumbo v1, "umeng_feedback_user_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string/jumbo v1, "last_update_at"

    const-wide/16 v2, 0x0

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v0

    return-wide v0
.end method

.method public saveCoversation(Lcom/umeng/fb/model/Conversation;)V
    .registers 5

    iget-object v0, p0, Lcom/umeng/fb/model/Store;->c:Landroid/content/Context;

    const-string/jumbo v1, "umeng_feedback_conversations"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-virtual {p1}, Lcom/umeng/fb/model/Conversation;->getId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/umeng/fb/model/Conversation;->a()Lorg/json/JSONArray;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public saveUserInfo(Lcom/umeng/fb/model/UserInfo;)V
    .registers 6

    iget-object v0, p0, Lcom/umeng/fb/model/Store;->c:Landroid/content/Context;

    const-string/jumbo v1, "umeng_feedback_user_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "user"

    invoke-virtual {p1}, Lcom/umeng/fb/model/UserInfo;->toJson()Lorg/json/JSONObject;

    move-result-object v2

    invoke-virtual {v2}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_update_at"

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    invoke-interface {v0, v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method

.method public setUserInfoLastSyncAt(J)V
    .registers 6

    iget-object v0, p0, Lcom/umeng/fb/model/Store;->c:Landroid/content/Context;

    const-string/jumbo v1, "umeng_feedback_user_info"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string/jumbo v1, "last_sync_at"

    invoke-interface {v0, v1, p1, p2}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    return-void
.end method
