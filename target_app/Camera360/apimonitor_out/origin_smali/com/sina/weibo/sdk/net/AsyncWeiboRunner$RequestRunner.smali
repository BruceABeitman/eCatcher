.class Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;
.super Landroid/os/AsyncTask;
.source "AsyncWeiboRunner.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sina/weibo/sdk/net/AsyncWeiboRunner;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "RequestRunner"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult",
        "<",
        "Ljava/lang/String;",
        ">;>;"
    }
.end annotation


# instance fields
.field private final mHttpMethod:Ljava/lang/String;

.field private final mListener:Lcom/sina/weibo/sdk/net/RequestListener;

.field private final mParams:Lcom/sina/weibo/sdk/net/WeiboParameters;

.field private final mUrl:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;Ljava/lang/String;Lcom/sina/weibo/sdk/net/RequestListener;)V
    .registers 5

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    iput-object p1, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;->mParams:Lcom/sina/weibo/sdk/net/WeiboParameters;

    iput-object p3, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;->mHttpMethod:Ljava/lang/String;

    iput-object p4, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;->mListener:Lcom/sina/weibo/sdk/net/RequestListener;

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/Void;",
            ")",
            "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    :try_start_0
    iget-object v2, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;->mUrl:Ljava/lang/String;

    iget-object v3, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;->mHttpMethod:Ljava/lang/String;

    iget-object v4, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;->mParams:Lcom/sina/weibo/sdk/net/WeiboParameters;

    invoke-static {v2, v3, v4}, Lcom/sina/weibo/sdk/net/HttpManager;->openUrl(Ljava/lang/String;Ljava/lang/String;Lcom/sina/weibo/sdk/net/WeiboParameters;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;

    invoke-direct {v2, v1}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;-><init>(Ljava/lang/Object;)V
    :try_end_f
    .catch Lcom/sina/weibo/sdk/exception/WeiboException; {:try_start_0 .. :try_end_f} :catch_10

    :goto_f
    return-object v2

    :catch_10
    move-exception v0

    new-instance v2, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;

    invoke-direct {v2, v0}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;-><init>(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    goto :goto_f
.end method

.method protected bridge varargs synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3

    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;->doInBackground([Ljava/lang/Void;)Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;->getError()Lcom/sina/weibo/sdk/exception/WeiboException;

    move-result-object v0

    if-eqz v0, :cond_c

    iget-object v1, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;->mListener:Lcom/sina/weibo/sdk/net/RequestListener;

    invoke-interface {v1, v0}, Lcom/sina/weibo/sdk/net/RequestListener;->onWeiboException(Lcom/sina/weibo/sdk/exception/WeiboException;)V

    :goto_b
    return-void

    :cond_c
    iget-object v2, p0, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;->mListener:Lcom/sina/weibo/sdk/net/RequestListener;

    invoke-virtual {p1}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;->getResult()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v2, v1}, Lcom/sina/weibo/sdk/net/RequestListener;->onComplete(Ljava/lang/String;)V

    goto :goto_b
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .registers 2

    check-cast p1, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;

    invoke-virtual {p0, p1}, Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$RequestRunner;->onPostExecute(Lcom/sina/weibo/sdk/net/AsyncWeiboRunner$AsyncTaskResult;)V

    return-void
.end method

.method protected onPreExecute()V
    .registers 1

    return-void
.end method
