.class public Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;
.super Lcom/pinguo/lib/network/ApiAsyncTaskBase;
.source "ApiEmailCheck.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$Response;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/network/ApiAsyncTaskBase",
        "<",
        "Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$Response;",
        ">;"
    }
.end annotation


# instance fields
.field private mEmail:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/pinguo/lib/network/ApiAsyncTaskBase;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;->mEmail:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V

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
            "Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$Response;",
            ">;)V"
        }
    .end annotation

    new-instance v1, Ljava/lang/StringBuilder;

    sget-object v2, Lcom/pinguo/camera360/login/model/LoginConfig;->HOST:Ljava/lang/String;

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v2, "/api/user/checkemail"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$1;

    const/4 v2, 0x1

    invoke-direct {v1, p0, v2, v0, p1}, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck$1;-><init>(Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;ILjava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V

    invoke-virtual {p0, v1}, Lcom/pinguo/camera360/login/i/user/ApiEmailCheck;->execute(Lcom/pinguo/Camera360Lib/network/HttpRequestBase;)V

    return-void
.end method
