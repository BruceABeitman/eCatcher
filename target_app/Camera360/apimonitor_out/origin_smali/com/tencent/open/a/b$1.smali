.class Lcom/tencent/open/a/b$1;
.super Ljava/lang/Thread;
.source "ProGuard"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/tencent/open/a/b;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Ljava/lang/String;

.field final synthetic b:Landroid/content/Context;

.field final synthetic c:Landroid/os/Bundle;

.field final synthetic d:Lcom/tencent/open/a/b;


# direct methods
.method constructor <init>(Lcom/tencent/open/a/b;Ljava/lang/String;Landroid/content/Context;Landroid/os/Bundle;)V
    .registers 5

    iput-object p1, p0, Lcom/tencent/open/a/b$1;->d:Lcom/tencent/open/a/b;

    iput-object p2, p0, Lcom/tencent/open/a/b$1;->a:Ljava/lang/String;

    iput-object p3, p0, Lcom/tencent/open/a/b$1;->b:Landroid/content/Context;

    iput-object p4, p0, Lcom/tencent/open/a/b$1;->c:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 9

    const/4 v5, 0x0

    const/4 v3, 0x1

    const/4 v1, 0x0

    const-string/jumbo v0, "cgi_report_debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ReportManager doUploadItems Thread start, url = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/open/a/b$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tencent/open/a/b$1;->d:Lcom/tencent/open/a/b;

    iget-object v2, p0, Lcom/tencent/open/a/b$1;->b:Landroid/content/Context;

    invoke-static {v2, v5}, Lcom/tencent/utils/OpenConfig;->getInstance(Landroid/content/Context;Ljava/lang/String;)Lcom/tencent/utils/OpenConfig;

    move-result-object v2

    const-string/jumbo v4, "Common_HttpRetryCount"

    invoke-virtual {v2, v4}, Lcom/tencent/utils/OpenConfig;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {v0, v2}, Lcom/tencent/open/a/b;->a(Lcom/tencent/open/a/b;I)I

    iget-object v2, p0, Lcom/tencent/open/a/b$1;->d:Lcom/tencent/open/a/b;

    iget-object v0, p0, Lcom/tencent/open/a/b$1;->d:Lcom/tencent/open/a/b;

    invoke-static {v0}, Lcom/tencent/open/a/b;->a(Lcom/tencent/open/a/b;)I

    move-result v0

    if-nez v0, :cond_d7

    const/4 v0, 0x3

    :goto_3c
    invoke-static {v2, v0}, Lcom/tencent/open/a/b;->a(Lcom/tencent/open/a/b;I)I

    move v0, v1

    move v2, v1

    :cond_41
    add-int/lit8 v2, v2, 0x1

    const-string/jumbo v4, "cgi_report_debug"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "ReportManager doUploadItems Thread request count = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :try_start_5d
    iget-object v4, p0, Lcom/tencent/open/a/b$1;->b:Landroid/content/Context;

    const/4 v5, 0x0

    iget-object v6, p0, Lcom/tencent/open/a/b$1;->a:Ljava/lang/String;

    invoke-static {v4, v5, v6}, Lcom/tencent/utils/HttpUtils;->getHttpClient(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/http/client/HttpClient;

    move-result-object v4

    new-instance v5, Lorg/apache/http/client/methods/HttpPost;

    iget-object v6, p0, Lcom/tencent/open/a/b$1;->a:Ljava/lang/String;

    invoke-direct {v5, v6}, Lorg/apache/http/client/methods/HttpPost;-><init>(Ljava/lang/String;)V

    const-string/jumbo v6, "Accept-Encoding"

    const-string/jumbo v7, "gzip"

    invoke-virtual {v5, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    const-string/jumbo v6, "Content-Type"

    const-string/jumbo v7, "application/x-www-form-urlencoded"

    invoke-virtual {v5, v6, v7}, Lorg/apache/http/client/methods/HttpPost;->setHeader(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v6, p0, Lcom/tencent/open/a/b$1;->c:Landroid/os/Bundle;

    invoke-static {v6}, Lcom/tencent/utils/Util;->encodeUrl(Landroid/os/Bundle;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->getBytes()[B

    move-result-object v6

    new-instance v7, Lorg/apache/http/entity/ByteArrayEntity;

    invoke-direct {v7, v6}, Lorg/apache/http/entity/ByteArrayEntity;-><init>([B)V

    invoke-virtual {v5, v7}, Lorg/apache/http/client/methods/HttpPost;->setEntity(Lorg/apache/http/HttpEntity;)V

    invoke-interface {v4, v5}, Lorg/apache/http/client/HttpClient;->execute(Lorg/apache/http/client/methods/HttpUriRequest;)Lorg/apache/http/HttpResponse;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/HttpResponse;->getStatusLine()Lorg/apache/http/StatusLine;

    move-result-object v4

    invoke-interface {v4}, Lorg/apache/http/StatusLine;->getStatusCode()I

    move-result v4

    const/16 v5, 0xc8

    if-eq v4, v5, :cond_df

    const-string/jumbo v4, "cgi_report_debug"

    const-string/jumbo v5, "ReportManager doUploadItems : HttpStatuscode != 200"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_aa
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_5d .. :try_end_aa} :catch_ea
    .catch Ljava/net/SocketTimeoutException; {:try_start_5d .. :try_end_aa} :catch_100
    .catch Ljava/lang/Exception; {:try_start_5d .. :try_end_aa} :catch_105

    :goto_aa
    iget-object v2, p0, Lcom/tencent/open/a/b$1;->d:Lcom/tencent/open/a/b;

    invoke-static {v2, v1}, Lcom/tencent/open/a/b;->a(Lcom/tencent/open/a/b;Z)Z

    const-string/jumbo v1, "cgi_report_debug"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "ReportManager doUploadItems Thread end, url = "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v4, p0, Lcom/tencent/open/a/b$1;->a:Ljava/lang/String;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    if-ne v0, v3, :cond_113

    const-string/jumbo v0, "cgi_report_debug"

    const-string/jumbo v1, "ReportManager doUploadItems Thread request success"

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :goto_d6
    return-void

    :cond_d7
    iget-object v0, p0, Lcom/tencent/open/a/b$1;->d:Lcom/tencent/open/a/b;

    invoke-static {v0}, Lcom/tencent/open/a/b;->a(Lcom/tencent/open/a/b;)I

    move-result v0

    goto/16 :goto_3c

    :cond_df
    :try_start_df
    const-string/jumbo v0, "cgi_report_debug"

    const-string/jumbo v4, "ReportManager doUploadItems Thread success"

    invoke-static {v0, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_e8
    .catch Lorg/apache/http/conn/ConnectTimeoutException; {:try_start_df .. :try_end_e8} :catch_134
    .catch Ljava/net/SocketTimeoutException; {:try_start_df .. :try_end_e8} :catch_130
    .catch Ljava/lang/Exception; {:try_start_df .. :try_end_e8} :catch_12c

    move v0, v3

    goto :goto_aa

    :catch_ea
    move-exception v4

    :goto_eb
    invoke-virtual {v4}, Lorg/apache/http/conn/ConnectTimeoutException;->printStackTrace()V

    const-string/jumbo v4, "cgi_report_debug"

    const-string/jumbo v5, "ReportManager doUploadItems : ConnectTimeoutException"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    :goto_f7
    iget-object v4, p0, Lcom/tencent/open/a/b$1;->d:Lcom/tencent/open/a/b;

    invoke-static {v4}, Lcom/tencent/open/a/b;->a(Lcom/tencent/open/a/b;)I

    move-result v4

    if-lt v2, v4, :cond_41

    goto :goto_aa

    :catch_100
    move-exception v4

    :goto_101
    invoke-virtual {v4}, Ljava/net/SocketTimeoutException;->printStackTrace()V

    goto :goto_f7

    :catch_105
    move-exception v2

    :goto_106
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    const-string/jumbo v2, "cgi_report_debug"

    const-string/jumbo v4, "ReportManager doUploadItems : Exception"

    invoke-static {v2, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_aa

    :cond_113
    const-string/jumbo v0, "cgi_report_debug"

    const-string/jumbo v1, "ReportManager doUploadItems Thread request failed"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    iget-object v0, p0, Lcom/tencent/open/a/b$1;->d:Lcom/tencent/open/a/b;

    invoke-static {v0}, Lcom/tencent/open/a/b;->c(Lcom/tencent/open/a/b;)Lcom/tencent/open/a/d;

    move-result-object v0

    iget-object v1, p0, Lcom/tencent/open/a/b$1;->d:Lcom/tencent/open/a/b;

    invoke-static {v1}, Lcom/tencent/open/a/b;->b(Lcom/tencent/open/a/b;)Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/tencent/open/a/d;->a(Ljava/util/ArrayList;)I

    goto :goto_d6

    :catch_12c
    move-exception v0

    move-object v2, v0

    move v0, v3

    goto :goto_106

    :catch_130
    move-exception v0

    move-object v4, v0

    move v0, v3

    goto :goto_101

    :catch_134
    move-exception v0

    move-object v4, v0

    move v0, v3

    goto :goto_eb
.end method