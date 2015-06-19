.class public Lcom/pinguo/camera360/login/i/user/ApiChangeGender;
.super Lcom/pinguo/lib/network/ApiAsyncTaskBase;
.source "ApiChangeGender.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/network/ApiAsyncTaskBase",
        "<",
        "Lcom/pinguo/camera360/login/i/user/UserInfoResponse;",
        ">;"
    }
.end annotation


# instance fields
.field private mGender:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/lib/network/ApiAsyncTaskBase;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/pinguo/camera360/login/i/user/ApiChangeGender;->mGender:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/login/i/user/ApiChangeGender;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiChangeGender;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/login/i/user/ApiChangeGender;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiChangeGender;->mGender:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/login/i/user/ApiChangeGender;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/login/i/user/ApiChangeGender;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/login/i/user/ApiChangeGender;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/login/i/user/ApiChangeGender;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/pinguo/lib/os/AsyncResult;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/lib/os/AsyncResult",
            "<",
            "Lcom/pinguo/camera360/login/i/user/UserInfoResponse;",
            ">;)V"
        }
    .end annotation

    iget-object v1, p0, Lcom/pinguo/camera360/login/i/user/ApiChangeGender;->mGender:Ljava/lang/String;

    if-nez v1, :cond_10

    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "\u6027\u522b\u4e0d\u5408\u6cd5"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lcom/pinguo/camera360/login/i/user/ApiChangeGender;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V

    :goto_f
    return-void

    :cond_10
    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/pinguo/camera360/login/model/LoginConfig;->HOST:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "/api/user/updateInfo"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/login/i/user/ApiChangeGender$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/pinguo/camera360/login/i/user/ApiChangeGender$1;-><init>(Lcom/pinguo/camera360/login/i/user/ApiChangeGender;ILjava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/login/i/user/ApiChangeGender;->execute(Lcom/pinguo/Camera360Lib/network/HttpRequestBase;)V

    goto :goto_f
.end method
