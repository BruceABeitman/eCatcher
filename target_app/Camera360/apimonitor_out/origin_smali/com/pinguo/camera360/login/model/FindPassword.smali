.class public Lcom/pinguo/camera360/login/model/FindPassword;
.super Lcom/pinguo/lib/os/AsyncFutureAdapter;
.source "FindPassword.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/os/AsyncFutureAdapter",
        "<",
        "Ljava/lang/Void;",
        "Lcom/pinguo/camera360/login/i/user/ApiFindPassword$Response;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Lcom/pinguo/camera360/login/i/user/ApiFindPassword;

    invoke-direct {v0, p1, p2}, Lcom/pinguo/camera360/login/i/user/ApiFindPassword;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcom/pinguo/lib/os/AsyncFutureAdapter;-><init>(Lcom/pinguo/lib/os/AsyncFuture;)V

    return-void
.end method


# virtual methods
.method public bridge synthetic adapte(Ljava/lang/Object;)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    check-cast p1, Lcom/pinguo/camera360/login/i/user/ApiFindPassword$Response;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/model/FindPassword;->adapte(Lcom/pinguo/camera360/login/i/user/ApiFindPassword$Response;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public adapte(Lcom/pinguo/camera360/login/i/user/ApiFindPassword$Response;)Ljava/lang/Void;
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v0, p1, Lcom/pinguo/camera360/login/i/user/ApiFindPassword$Response;->status:I

    const/16 v1, 0xc8

    if-ne v0, v1, :cond_8

    const/4 v0, 0x0

    return-object v0

    :cond_8
    new-instance v0, Lcom/pinguo/lib/os/Fault;

    iget v1, p1, Lcom/pinguo/camera360/login/i/user/ApiFindPassword$Response;->status:I

    iget-object v2, p1, Lcom/pinguo/camera360/login/i/user/ApiFindPassword$Response;->message:Ljava/lang/String;

    invoke-direct {v0, v1, v2}, Lcom/pinguo/lib/os/Fault;-><init>(ILjava/lang/String;)V

    throw v0
.end method
