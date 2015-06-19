.class public Lcom/pinguo/camera360/login/i/user/ApiGetLocation;
.super Lcom/pinguo/lib/network/ApiAsyncTaskBase;
.source "ApiGetLocation.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/pinguo/lib/network/ApiAsyncTaskBase",
        "<",
        "Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response;",
        ">;"
    }
.end annotation


# static fields
.field public static GEO_APPKEY:Ljava/lang/String;

.field public static GEO_APPSECRET:Ljava/lang/String;

.field public static HOST:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-string/jumbo v0, "http://appres.camera360.com"

    sput-object v0, Lcom/pinguo/camera360/login/i/user/ApiGetLocation;->HOST:Ljava/lang/String;

    const-string/jumbo v0, "e6923d4b8cf1057a"

    sput-object v0, Lcom/pinguo/camera360/login/i/user/ApiGetLocation;->GEO_APPKEY:Ljava/lang/String;

    const-string/jumbo v0, "iJDWoel8NO948mcB8h_mN8vJqyt3elTC"

    sput-object v0, Lcom/pinguo/camera360/login/i/user/ApiGetLocation;->GEO_APPSECRET:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/pinguo/lib/network/ApiAsyncTaskBase;-><init>(Landroid/content/Context;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/pinguo/lib/os/AsyncResult;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/pinguo/lib/os/AsyncResult",
            "<",
            "Lcom/pinguo/camera360/login/i/user/ApiGetLocation$Response;",
            ">;)V"
        }
    .end annotation

    new-instance v2, Ljava/lang/StringBuilder;

    sget-object v3, Lcom/pinguo/camera360/login/i/user/ApiGetLocation;->HOST:Ljava/lang/String;

    invoke-static {v3}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string/jumbo v3, "/geo/info/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :try_start_16
    new-instance v2, Lcom/pinguo/camera360/login/i/user/ApiGetLocation$1;

    const/4 v3, 0x1

    invoke-direct {v2, p0, v3, v1, p1}, Lcom/pinguo/camera360/login/i/user/ApiGetLocation$1;-><init>(Lcom/pinguo/camera360/login/i/user/ApiGetLocation;ILjava/lang/String;Lcom/pinguo/lib/os/AsyncResult;)V

    invoke-virtual {p0, v2}, Lcom/pinguo/camera360/login/i/user/ApiGetLocation;->execute(Lcom/pinguo/Camera360Lib/network/HttpRequestBase;)V
    :try_end_1f
    .catch Ljava/lang/Exception; {:try_start_16 .. :try_end_1f} :catch_20

    :goto_1f
    return-void

    :catch_20
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    invoke-virtual {p0, p1, v0}, Lcom/pinguo/camera360/login/i/user/ApiGetLocation;->postError(Lcom/pinguo/lib/os/AsyncResult;Ljava/lang/Exception;)V

    goto :goto_1f
.end method
