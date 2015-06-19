.class final Lcom/tencent/utils/HttpUtils$1;
.super Ljava/lang/Thread;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/utils/HttpUtils;->requestAsync(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/tencent/connect/auth/QQToken;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Ljava/lang/String;

.field final synthetic d:Landroid/os/Bundle;

.field final synthetic e:Ljava/lang/String;

.field final synthetic f:Lcom/tencent/tauth/IRequestListener;


# direct methods
.method constructor <init>(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;Lcom/tencent/tauth/IRequestListener;)V
    .registers 7

    iput-object p1, p0, Lcom/tencent/utils/HttpUtils$1;->a:Lcom/tencent/connect/auth/QQToken;

    iput-object p2, p0, Lcom/tencent/utils/HttpUtils$1;->b:Landroid/content/Context;

    iput-object p3, p0, Lcom/tencent/utils/HttpUtils$1;->c:Ljava/lang/String;

    iput-object p4, p0, Lcom/tencent/utils/HttpUtils$1;->d:Landroid/os/Bundle;

    iput-object p5, p0, Lcom/tencent/utils/HttpUtils$1;->e:Ljava/lang/String;

    iput-object p6, p0, Lcom/tencent/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    :try_start_0
    iget-object v0, p0, Lcom/tencent/utils/HttpUtils$1;->a:Lcom/tencent/connect/auth/QQToken;

    iget-object v1, p0, Lcom/tencent/utils/HttpUtils$1;->b:Landroid/content/Context;

    iget-object v2, p0, Lcom/tencent/utils/HttpUtils$1;->c:Ljava/lang/String;

    iget-object v3, p0, Lcom/tencent/utils/HttpUtils$1;->d:Landroid/os/Bundle;

    iget-object v4, p0, Lcom/tencent/utils/HttpUtils$1;->e:Ljava/lang/String;

    invoke-static {v0, v1, v2, v3, v4}, Lcom/tencent/utils/HttpUtils;->request(Lcom/tencent/connect/auth/QQToken;Landroid/content/Context;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/tencent/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/IRequestListener;->onComplete(Lorg/json/JSONObject;)V

    const-string/jumbo v0, "openSDK_LOG"

    const-string/jumbo v1, "OpenApi onComplete"

    invoke-static {v0, v1}, Lcom/tencent/a/a/d;->b(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_20
    .catch Ljava/net/MalformedURLException; {:try_start_0 .. :try_end_20} :catch_21
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_0 .. :try_end_20} :catch_35
    .catch Ljava/net/SocketTimeoutException; {:try_start_0 .. :try_end_20} :catch_49
    .catch Lcom/tencent/utils/HttpUtils$NetworkUnavailableException; {:try_start_0 .. :try_end_20} :catch_5d
    .catch Lcom/tencent/utils/HttpUtils$HttpStatusException; {:try_start_0 .. :try_end_20} :catch_71
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_20} :catch_85
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_20} :catch_99
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_20} :catch_ae

    :cond_20
    :goto_20
    return-void

    :catch_21
    move-exception v0

    iget-object v1, p0, Lcom/tencent/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/tencent/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/IRequestListener;->onMalformedURLException(Ljava/net/MalformedURLException;)V

    const-string/jumbo v1, "openSDK_LOG"

    const-string/jumbo v2, "OpenApi requestAsync MalformedURLException"

    invoke-static {v1, v2, v0}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    :catch_35
    move-exception v0

    iget-object v1, p0, Lcom/tencent/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/tencent/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/IRequestListener;->onConnectTimeoutException(Lorg/apache/http/conn/ConnectTimeoutException;)V

    const-string/jumbo v1, "openSDK_LOG"

    const-string/jumbo v2, "OpenApi requestAsync onConnectTimeoutException"

    invoke-static {v1, v2, v0}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    :catch_49
    move-exception v0

    iget-object v1, p0, Lcom/tencent/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/tencent/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/IRequestListener;->onSocketTimeoutException(Ljava/net/SocketTimeoutException;)V

    const-string/jumbo v1, "openSDK_LOG"

    const-string/jumbo v2, "OpenApi requestAsync onSocketTimeoutException"

    invoke-static {v1, v2, v0}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    :catch_5d
    move-exception v0

    iget-object v1, p0, Lcom/tencent/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/tencent/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/IRequestListener;->onNetworkUnavailableException(Lcom/tencent/utils/HttpUtils$NetworkUnavailableException;)V

    const-string/jumbo v1, "openSDK_LOG"

    const-string/jumbo v2, "OpenApi requestAsync onNetworkUnavailableException"

    invoke-static {v1, v2, v0}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    :catch_71
    move-exception v0

    iget-object v1, p0, Lcom/tencent/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/tencent/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/IRequestListener;->onHttpStatusException(Lcom/tencent/utils/HttpUtils$HttpStatusException;)V

    const-string/jumbo v1, "openSDK_LOG"

    const-string/jumbo v2, "OpenApi requestAsync onHttpStatusException"

    invoke-static {v1, v2, v0}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    :catch_85
    move-exception v0

    iget-object v1, p0, Lcom/tencent/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/tencent/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/IRequestListener;->onIOException(Ljava/io/IOException;)V

    const-string/jumbo v1, "openSDK_LOG"

    const-string/jumbo v2, "OpenApi requestAsync IOException"

    invoke-static {v1, v2, v0}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_20

    :catch_99
    move-exception v0

    iget-object v1, p0, Lcom/tencent/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/tencent/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/IRequestListener;->onJSONException(Lorg/json/JSONException;)V

    const-string/jumbo v1, "openSDK_LOG"

    const-string/jumbo v2, "OpenApi requestAsync JSONException"

    invoke-static {v1, v2, v0}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20

    :catch_ae
    move-exception v0

    iget-object v1, p0, Lcom/tencent/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    if-eqz v1, :cond_20

    iget-object v1, p0, Lcom/tencent/utils/HttpUtils$1;->f:Lcom/tencent/tauth/IRequestListener;

    invoke-interface {v1, v0}, Lcom/tencent/tauth/IRequestListener;->onUnknowException(Ljava/lang/Exception;)V

    const-string/jumbo v1, "openSDK_LOG"

    const-string/jumbo v2, "OpenApi requestAsync onUnknowException"

    invoke-static {v1, v2, v0}, Lcom/tencent/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_20
.end method
