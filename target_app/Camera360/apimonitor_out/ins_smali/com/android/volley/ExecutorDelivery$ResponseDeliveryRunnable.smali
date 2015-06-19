.class  Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;
.super Ljava/lang/Object;
.source "ExecutorDelivery.java"
.implements Ljava/lang/Runnable;
.field private final mRequest:Lcom/android/volley/Request;
.field private final mResponse:Lcom/android/volley/Response;
.field private final mRunnable:Ljava/lang/Runnable;
.field final synthetic this$0:Lcom/android/volley/ExecutorDelivery;
.method public constructor <init>(Lcom/android/volley/ExecutorDelivery;Lcom/android/volley/Request;Lcom/android/volley/Response;Ljava/lang/Runnable;)V
.registers 5
iput-object p1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->this$0:Lcom/android/volley/ExecutorDelivery;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;
iput-object p3, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;
iput-object p4, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;
invoke-virtual {v0}, Lcom/android/volley/Request;->isCanceled()Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;
const-string/jumbo v1, "canceled-at-delivery"
invoke-virtual {v0, v1}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
:cond_10
:goto_10
return-void
:cond_11
iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;
invoke-virtual {v0}, Lcom/android/volley/Response;->isSuccess()Z
move-result v0
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;
iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;
iget-object v1, v1, Lcom/android/volley/Response;->result:Ljava/lang/Object;
invoke-virtual {v0, v1}, Lcom/android/volley/Request;->deliverResponse(Ljava/lang/Object;)V
:goto_22
iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;
iget-boolean v0, v0, Lcom/android/volley/Response;->intermediate:Z
if-eqz v0, :cond_44
iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;
const-string/jumbo v1, "intermediate-response"
invoke-virtual {v0, v1}, Lcom/android/volley/Request;->addMarker(Ljava/lang/String;)V
:goto_30
iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRunnable:Ljava/lang/Runnable;
invoke-interface {v0}, Ljava/lang/Runnable;->run()V
goto :goto_10
:cond_3a
iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;
iget-object v1, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mResponse:Lcom/android/volley/Response;
iget-object v1, v1, Lcom/android/volley/Response;->error:Lcom/android/volley/VolleyError;
invoke-virtual {v0, v1}, Lcom/android/volley/Request;->deliverError(Lcom/android/volley/VolleyError;)V
goto :goto_22
:cond_44
iget-object v0, p0, Lcom/android/volley/ExecutorDelivery$ResponseDeliveryRunnable;->mRequest:Lcom/android/volley/Request;
const-string/jumbo v1, "done"
invoke-virtual {v0, v1}, Lcom/android/volley/Request;->finish(Ljava/lang/String;)V
goto :goto_30
.end method