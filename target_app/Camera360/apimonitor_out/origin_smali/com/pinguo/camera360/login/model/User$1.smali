.class Lcom/pinguo/camera360/login/model/User$1;
.super Lcom/pinguo/lib/os/AsyncFutureAdapter;
.source "User.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/pinguo/camera360/login/model/User;->changeDescription(Ljava/lang/String;)Lcom/pinguo/lib/os/AsyncFuture;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/os/AsyncFutureAdapter",
        "<",
        "Ljava/lang/Void;",
        "Lcom/pinguo/camera360/login/i/user/UserInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/pinguo/camera360/login/model/User;

.field private final synthetic val$description:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/pinguo/camera360/login/model/User;Lcom/pinguo/lib/os/AsyncFuture;Ljava/lang/String;)V
    .registers 4

    iput-object p1, p0, Lcom/pinguo/camera360/login/model/User$1;->this$0:Lcom/pinguo/camera360/login/model/User;

    iput-object p3, p0, Lcom/pinguo/camera360/login/model/User$1;->val$description:Ljava/lang/String;

    invoke-direct {p0, p2}, Lcom/pinguo/lib/os/AsyncFutureAdapter;-><init>(Lcom/pinguo/lib/os/AsyncFuture;)V

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

    check-cast p1, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/model/User$1;->adapte(Lcom/pinguo/camera360/login/i/user/UserInfoResponse;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public adapte(Lcom/pinguo/camera360/login/i/user/UserInfoResponse;)Ljava/lang/Void;
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v1, p1, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->status:I

    const/16 v2, 0xc8

    if-eq v1, v2, :cond_10

    new-instance v1, Lcom/pinguo/lib/os/Fault;

    iget v2, p1, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->status:I

    iget-object v3, p1, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->message:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/pinguo/lib/os/Fault;-><init>(ILjava/lang/String;)V

    throw v1

    :cond_10
    iget-object v1, p0, Lcom/pinguo/camera360/login/model/User$1;->this$0:Lcom/pinguo/camera360/login/model/User;

    invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->getInfo()Lcom/pinguo/camera360/login/model/User$Info;

    move-result-object v0

    iget-object v1, p0, Lcom/pinguo/camera360/login/model/User$1;->val$description:Ljava/lang/String;

    iput-object v1, v0, Lcom/pinguo/camera360/login/model/User$Info;->description:Ljava/lang/String;

    iget-object v1, p0, Lcom/pinguo/camera360/login/model/User$1;->this$0:Lcom/pinguo/camera360/login/model/User;

    invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->save()V

    const/4 v1, 0x0

    return-object v1
.end method
