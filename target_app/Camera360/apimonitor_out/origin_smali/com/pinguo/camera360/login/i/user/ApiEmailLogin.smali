.class public Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;
.super Lcom/pinguo/lib/network/ApiAsyncTaskBase;
.source "ApiEmailLogin.java"


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
.field private mEmail:Ljava/lang/String;

.field private mPassword:Ljava/lang/String;


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Landroid/content/Context;)V
    .registers 4

    invoke-direct {p0, p3}, Lcom/pinguo/lib/network/ApiAsyncTaskBase;-><init>(Landroid/content/Context;)V

    iput-object p1, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;->mEmail:Ljava/lang/String;

    iput-object p2, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;->mPassword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/pinguo/lib/os/AsyncResult;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/lib/os/AsyncResult",
            "<",
            "Lcom/pinguo/camera360/login/i/user/UserInfoResponse;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Lcom/pinguo/lib/util/MD5;->password_md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pinguo/camera360/login/model/LoginConfig;->HOST:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/api/user/login"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    new-instance v0, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin$1;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v5, v3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin$1;-><init>(Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/i/user/ApiEmailLogin;->execute(Lcom/pinguo/Camera360Lib/network/HttpRequestBase;)V

    return-void
.end method
