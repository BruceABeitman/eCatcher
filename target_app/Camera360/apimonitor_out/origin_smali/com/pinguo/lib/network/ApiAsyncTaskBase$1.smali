.class Lcom/pinguo/lib/network/ApiAsyncTaskBase$1;
.super Lcom/pinguo/lib/os/AsyncResult;
.source "ApiAsyncTaskBase.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/lib/network/ApiAsyncTaskBase;->get()Ljava/lang/Object;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/os/AsyncResult",
        "<TV;>;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/lib/network/ApiAsyncTaskBase;


# direct methods
.method constructor <init>(Lcom/pinguo/lib/network/ApiAsyncTaskBase;)V
    .registers 2

    iput-object p1, p0, Lcom/pinguo/lib/network/ApiAsyncTaskBase$1;->this$0:Lcom/pinguo/lib/network/ApiAsyncTaskBase;

    invoke-direct {p0}, Lcom/pinguo/lib/os/AsyncResult;-><init>()V

    return-void
.end method


# virtual methods
.method public onError(Ljava/lang/Exception;)V
    .registers 4

    iget-object v0, p0, Lcom/pinguo/lib/network/ApiAsyncTaskBase$1;->this$0:Lcom/pinguo/lib/network/ApiAsyncTaskBase;

    iget-object v0, v0, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->mHttpRequestFuture:Lcom/android/volley/toolbox/RequestFuture;

    new-instance v1, Lcom/android/volley/VolleyError;

    invoke-direct {v1, p1}, Lcom/android/volley/VolleyError;-><init>(Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Lcom/android/volley/toolbox/RequestFuture;->onErrorResponse(Lcom/android/volley/VolleyError;)V

    return-void
.end method

.method public onSuccess(Ljava/lang/Object;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TV;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/lib/network/ApiAsyncTaskBase$1;->this$0:Lcom/pinguo/lib/network/ApiAsyncTaskBase;

    iget-object v0, v0, Lcom/pinguo/lib/network/ApiAsyncTaskBase;->mHttpRequestFuture:Lcom/android/volley/toolbox/RequestFuture;

    invoke-virtual {v0, p1}, Lcom/android/volley/toolbox/RequestFuture;->onResponse(Ljava/lang/Object;)V

    return-void
.end method
