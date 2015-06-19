.class Lcom/pinguo/Camera360Lib/async/AsyncEngine$1;
.super Ljava/lang/Object;
.source "AsyncEngine.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/Camera360Lib/async/AsyncEngine;->submit(Lcom/pinguo/Camera360Lib/async/AsyncRequest;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/Camera360Lib/async/AsyncEngine;

.field private final synthetic val$asyncRequest:Lcom/pinguo/Camera360Lib/async/AsyncRequest;


# direct methods
.method constructor <init>(Lcom/pinguo/Camera360Lib/async/AsyncEngine;Lcom/pinguo/Camera360Lib/async/AsyncRequest;)V
    .registers 3

    iput-object p1, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine$1;->this$0:Lcom/pinguo/Camera360Lib/async/AsyncEngine;

    iput-object p2, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine$1;->val$asyncRequest:Lcom/pinguo/Camera360Lib/async/AsyncRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    iget-object v1, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine$1;->this$0:Lcom/pinguo/Camera360Lib/async/AsyncEngine;

    #getter for: Lcom/pinguo/Camera360Lib/async/AsyncEngine;->requestMapper:Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;
    invoke-static {v1}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->access$0(Lcom/pinguo/Camera360Lib/async/AsyncEngine;)Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;

    move-result-object v1

    iget-object v2, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine$1;->val$asyncRequest:Lcom/pinguo/Camera360Lib/async/AsyncRequest;

    invoke-interface {v1, v2}, Lcom/pinguo/Camera360Lib/async/mapper/RequestMapper;->getExecutor(Lcom/pinguo/Camera360Lib/async/AsyncRequest;)Ljava/util/concurrent/Executor;

    move-result-object v0

    if-eqz v0, :cond_14

    iget-object v1, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine$1;->val$asyncRequest:Lcom/pinguo/Camera360Lib/async/AsyncRequest;

    invoke-virtual {v1, v0}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->executeOnExecutor(Ljava/util/concurrent/Executor;)Lcom/pinguo/Camera360Lib/async/AsyncRequest;

    :goto_13
    return-void

    :cond_14
    invoke-static {}, Lcom/pinguo/Camera360Lib/async/AsyncEngine;->access$1()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "Executor is null for request: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v3, p0, Lcom/pinguo/Camera360Lib/async/AsyncEngine$1;->val$asyncRequest:Lcom/pinguo/Camera360Lib/async/AsyncRequest;

    invoke-virtual {v3}, Lcom/pinguo/Camera360Lib/async/AsyncRequest;->getRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Lcom/pinguo/Camera360Lib/log/GLogger;->e(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_13
.end method
