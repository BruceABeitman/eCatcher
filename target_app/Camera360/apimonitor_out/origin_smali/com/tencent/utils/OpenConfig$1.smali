.class Lcom/tencent/utils/OpenConfig$1;
.super Ljava/lang/Thread;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/utils/OpenConfig;->b()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/os/Bundle;

.field final synthetic b:Lcom/tencent/utils/OpenConfig;


# direct methods
.method constructor <init>(Lcom/tencent/utils/OpenConfig;Landroid/os/Bundle;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/utils/OpenConfig$1;->b:Lcom/tencent/utils/OpenConfig;

    iput-object p2, p0, Lcom/tencent/utils/OpenConfig$1;->a:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/tencent/utils/OpenConfig$1;->b:Lcom/tencent/utils/OpenConfig;

    invoke-static {v0}, Lcom/tencent/utils/OpenConfig;->a(Lcom/tencent/utils/OpenConfig;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "http://cgi.connect.qq.com/qqconnectopen/openapi/policy_conf"

    const-string/jumbo v2, "GET"

    iget-object v3, p0, Lcom/tencent/utils/OpenConfig$1;->a:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/utils/HttpUtils;->openUrl2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/utils/Util$Statistic;

    move-result-object v0

    iget-object v0, v0, Lcom/tencent/utils/Util$Statistic;->response:Ljava/lang/String;

    invoke-static {v0}, Lcom/tencent/utils/Util;->parseJson(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/utils/OpenConfig$1;->b:Lcom/tencent/utils/OpenConfig;

    invoke-static {v1, v0}, Lcom/tencent/utils/OpenConfig;->a(Lcom/tencent/utils/OpenConfig;Lorg/json/JSONObject;)V
    :try_end_1d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_24

    :goto_1d
    iget-object v0, p0, Lcom/tencent/utils/OpenConfig$1;->b:Lcom/tencent/utils/OpenConfig;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/tencent/utils/OpenConfig;->a(Lcom/tencent/utils/OpenConfig;I)I

    return-void

    :catch_24
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1d
.end method
