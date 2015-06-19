.class final Lcom/tencent/utils/Util$1;
.super Ljava/lang/Thread;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/utils/Util;->reportBernoulli(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic a:Landroid/content/Context;

.field final synthetic b:Landroid/os/Bundle;


# direct methods
.method constructor <init>(Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 3

    iput-object p1, p0, Lcom/tencent/utils/Util$1;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/tencent/utils/Util$1;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 5

    :try_start_0
    iget-object v0, p0, Lcom/tencent/utils/Util$1;->a:Landroid/content/Context;

    const-string/jumbo v1, "http://cgi.qplus.com/report/report"

    const-string/jumbo v2, "GET"

    iget-object v3, p0, Lcom/tencent/utils/Util$1;->b:Landroid/os/Bundle;

    invoke-static {v0, v1, v2, v3}, Lcom/tencent/utils/HttpUtils;->openUrl2(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Lcom/tencent/utils/Util$Statistic;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_d} :catch_e

    :goto_d
    return-void

    :catch_e
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_d
.end method
