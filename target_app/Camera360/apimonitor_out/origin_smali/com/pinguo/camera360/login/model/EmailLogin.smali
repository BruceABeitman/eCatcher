.class public Lcom/pinguo/camera360/login/model/EmailLogin;
.super Lcom/pinguo/lib/os/AsyncFutureAdapter;
.source "EmailLogin.java"


# annotations
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
.field private mContext:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 5

    new-instance v0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;

    invoke-direct {v0, p2, p3, p1}, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V

    invoke-direct {p0, v0}, Lcom/pinguo/lib/os/AsyncFutureAdapter;-><init>(Lcom/pinguo/lib/os/AsyncFuture;)V

    iput-object p1, p0, Lcom/pinguo/camera360/login/model/EmailLogin;->mContext:Landroid/content/Context;

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

    invoke-virtual {p0, p1}, Lcom/pinguo/camera360/login/model/EmailLogin;->adapte(Lcom/pinguo/camera360/login/i/user/UserInfoResponse;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method public adapte(Lcom/pinguo/camera360/login/i/user/UserInfoResponse;)Ljava/lang/Void;
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    iget v2, p1, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->status:I

    const/16 v3, 0xc8

    if-eq v2, v3, :cond_10

    new-instance v2, Lcom/pinguo/lib/os/Fault;

    iget v3, p1, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->status:I

    iget-object v4, p1, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->message:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Lcom/pinguo/lib/os/Fault;-><init>(ILjava/lang/String;)V

    throw v2

    :cond_10
    iget-object v0, p1, Lcom/pinguo/camera360/login/i/user/UserInfoResponse;->data:Ljava/lang/Object;

    check-cast v0, Lcom/pinguo/camera360/login/model/User$Info;

    new-instance v1, Lcom/pinguo/camera360/login/model/User;

    iget-object v2, p0, Lcom/pinguo/camera360/login/model/EmailLogin;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, v0}, Lcom/pinguo/camera360/login/model/User;-><init>(Landroid/content/Context;Lcom/pinguo/camera360/login/model/User$Info;)V

    invoke-virtual {v1}, Lcom/pinguo/camera360/login/model/User;->save()V

    const/4 v2, 0x0

    return-object v2
.end method
