.class public Lcom/tencent/weibo/sdk/android/api/PublishWeiBoAPI;
.super Lcom/tencent/weibo/sdk/android/api/BaseAPI;
.source "PublishWeiBoAPI.java"


# static fields
.field public static final MUTUAL_LIST_URL:Ljava/lang/String; = "https://open.t.qq.com/api/friends/mutual_list"

.field public static final RECENT_USED_URL:Ljava/lang/String; = "https://open.t.qq.com/api/ht/recent_used"


# direct methods
.method public constructor <init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/tencent/weibo/sdk/android/api/BaseAPI;-><init>(Lcom/tencent/weibo/sdk/android/model/AccountModel;)V

    return-void
.end method


# virtual methods
.method public mutual_list(Landroid/content/Context;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;IIII)V
    .registers 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tencent/weibo/sdk/android/network/HttpCallback;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/weibo/sdk/android/model/BaseVO;",
            ">;IIII)V"
        }
    .end annotation

    new-instance v3, Lcom/tencent/weibo/sdk/android/network/ReqParam;

    invoke-direct {v3}, Lcom/tencent/weibo/sdk/android/network/ReqParam;-><init>()V

    const-string/jumbo v0, "format"

    const-string/jumbo v1, "json"

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "oauth_consumer_key"

    const-string/jumbo v1, "CLIENT_ID"

    invoke-static {p1, v1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "oauth_version"

    const-string/jumbo v1, "2.a"

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "scope"

    const-string/jumbo v1, "all"

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "openid"

    const-string/jumbo v1, "OPEN_ID"

    invoke-static {p1, v1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "clientip"

    invoke-static {p1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getLocalIPAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    if-eqz p4, :cond_50

    const-string/jumbo v0, "fopenid"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_50
    const-string/jumbo v0, "startindex"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "install"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "reqnum"

    invoke-static {p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "name"

    const-string/jumbo v1, "NAME"

    invoke-static {p1, v1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v2, "https://open.t.qq.com/api/friends/mutual_list"

    const-string/jumbo v6, "GET"

    const/4 v7, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/weibo/sdk/android/api/PublishWeiBoAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V

    return-void
.end method

.method public recent_used(Landroid/content/Context;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;III)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/tencent/weibo/sdk/android/network/HttpCallback;",
            "Ljava/lang/Class",
            "<+",
            "Lcom/tencent/weibo/sdk/android/model/BaseVO;",
            ">;III)V"
        }
    .end annotation

    new-instance v3, Lcom/tencent/weibo/sdk/android/network/ReqParam;

    invoke-direct {v3}, Lcom/tencent/weibo/sdk/android/network/ReqParam;-><init>()V

    const-string/jumbo v0, "oauth_consumer_key"

    const-string/jumbo v1, "CLIENT_ID"

    invoke-static {p1, v1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "openid"

    const-string/jumbo v1, "OPEN_ID"

    invoke-static {p1, v1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getSharePersistent(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "clientip"

    invoke-static {p1}, Lcom/tencent/weibo/sdk/android/api/util/Util;->getLocalIPAddress(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "oauth_version"

    const-string/jumbo v1, "2.a"

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "scope"

    const-string/jumbo v1, "all"

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "format"

    const-string/jumbo v1, "json"

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v0, "reqnum"

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "page"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v0, "sorttype"

    invoke-static {p6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v3, v0, v1}, Lcom/tencent/weibo/sdk/android/network/ReqParam;->addParam(Ljava/lang/String;Ljava/lang/Object;)V

    const-string/jumbo v2, "https://open.t.qq.com/api/ht/recent_used"

    const-string/jumbo v6, "GET"

    const/4 v7, 0x4

    move-object v0, p0

    move-object v1, p1

    move-object v4, p2

    move-object v5, p3

    invoke-virtual/range {v0 .. v7}, Lcom/tencent/weibo/sdk/android/api/PublishWeiBoAPI;->startRequest(Landroid/content/Context;Ljava/lang/String;Lcom/tencent/weibo/sdk/android/network/ReqParam;Lcom/tencent/weibo/sdk/android/network/HttpCallback;Ljava/lang/Class;Ljava/lang/String;I)V

    return-void
.end method
