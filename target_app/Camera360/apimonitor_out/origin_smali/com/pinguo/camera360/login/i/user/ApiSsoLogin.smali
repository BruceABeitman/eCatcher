.class public Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;
.super Lcom/pinguo/lib/network/ApiAsyncTaskBase;
.source "ApiSsoLogin.java"


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
.field private mSiteCode:Ljava/lang/String;

.field public mTokenData:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/pinguo/lib/network/ApiAsyncTaskBase;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->mTokenData:Ljava/lang/String;

    iput-object p3, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->mSiteCode:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->mSiteCode:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/pinguo/lib/os/AsyncResult;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/lib/os/AsyncResult",
            "<",
            "Lcom/pinguo/camera360/login/i/user/UserInfoResponse;",
            ">;)V"
        }
    .end annotation

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pinguo/camera360/login/model/LoginConfig;->HOST:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/api/third/login/sso"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string/jumbo v0, "test"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string/jumbo v2, "mTokenData="

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->mTokenData:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    new-instance v0, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin$1;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v4, v3

    move-object v5, p1

    invoke-direct/range {v0 .. v5}, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin$1;-><init>(Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;ILjava/lang/String;Ljava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/i/user/ApiSsoLogin;->execute(Lcom/pinguo/Camera360Lib/network/HttpRequestBase;)V

    return-void
.end method
