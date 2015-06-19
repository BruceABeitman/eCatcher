.class public Lcom/pinguo/camera360/login/i/user/ApiEmailBind;
.super Lcom/pinguo/lib/network/ApiAsyncTaskBase;
.source "ApiEmailBind.java"


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
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0, p1}, Lcom/pinguo/lib/network/ApiAsyncTaskBase;-><init>(Landroid/content/Context;)V

    iput-object p2, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->mEmail:Ljava/lang/String;

    iput-object p3, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->mPassword:Ljava/lang/String;

    return-void
.end method

.method static synthetic access$0(Lcom/pinguo/camera360/login/i/user/ApiEmailBind;)Landroid/content/Context;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1(Lcom/pinguo/camera360/login/i/user/ApiEmailBind;)Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->mEmail:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic access$2(Lcom/pinguo/camera360/login/i/user/ApiEmailBind;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->postResponse(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic access$3(Lcom/pinguo/camera360/login/i/user/ApiEmailBind;Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V

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

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->mEmail:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_10

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    :cond_10
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "email or password illegal"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V

    :goto_1b
    return-void

    :cond_1c
    new-instance v0, Ljava/lang/StringBuilder;

    sget-object v1, Lcom/pinguo/camera360/login/model/LoginConfig;->HOST:Ljava/lang/String;

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v1, "/api/third/login/bindingEmail"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    iget-object v0, p0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->mPassword:Ljava/lang/String;

    invoke-static {v0}, Lcom/pinguo/lib/util/MD5;->password_md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    new-instance v0, Lcom/pinguo/camera360/login/i/user/ApiEmailBind$1;

    const/4 v2, 0x1

    move-object v1, p0

    move-object v5, v3

    move-object v6, p1

    invoke-direct/range {v0 .. v6}, Lcom/pinguo/camera360/login/i/user/ApiEmailBind$1;-><init>(Lcom/pinguo/camera360/login/i/user/ApiEmailBind;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V

    invoke-virtual {p0, v0}, Lcom/pinguo/camera360/login/i/user/ApiEmailBind;->execute(Lcom/pinguo/Camera360Lib/network/HttpRequestBase;)V

    goto :goto_1b
.end method
