.class public Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;
.super Ljava/lang/Object;
.source "AsyncWeiboRunner.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;,
        Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static request(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;)Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sina/weibo/sdk/exception/WeiboException;
        }
    .end annotation

    invoke-static {p0, p2, p1}, Lcom/sina/weibo/sdk/net/HttpManager;->openUrl(Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static requestAsync(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .registers 6

    new-instance v0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;-><init>(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    return-void
.end method

.method public static requestByThread(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .registers 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    new-instance v0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;

    invoke-direct {v0, p0, p2, p1, p3}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;-><init>(Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Lcom/sina/weibo/sdk/net/RequestListener;)V

    invoke-virtual {v0}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$1;->start()V

    return-void
.end method
