.class Lcom/glympse/android/lib/n;
.super Lcom/glympse/android/lib/HttpJob;
.source "ApiStatus.java"


# instance fields
.field private hf:Ljava/lang/String;

.field private hk:Lcom/glympse/android/lib/m;

.field private hl:Lcom/glympse/android/api/GApiStatusListener;


# direct methods
.method public constructor <init>(Lcom/glympse/android/lib/m;Lcom/glympse/android/api/GApiStatusListener;)V
    .registers 3

    invoke-direct {p0}, Lcom/glympse/android/lib/HttpJob;-><init>()V

    iput-object p1, p0, Lcom/glympse/android/lib/n;->hk:Lcom/glympse/android/lib/m;

    iput-object p2, p0, Lcom/glympse/android/lib/n;->hl:Lcom/glympse/android/api/GApiStatusListener;

    return-void
.end method


# virtual methods
.method public onAbort()V
    .registers 4

    invoke-super {p0}, Lcom/glympse/android/lib/HttpJob;->onAbort()V

    iget-object v0, p0, Lcom/glympse/android/lib/n;->hk:Lcom/glympse/android/lib/m;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/glympse/android/lib/n;->hl:Lcom/glympse/android/api/GApiStatusListener;

    invoke-static {v0, v1, v2}, Lcom/glympse/android/lib/m;->a(Lcom/glympse/android/lib/m;ZLcom/glympse/android/api/GApiStatusListener;)V

    return-void
.end method

.method public onComplete()V
    .registers 4

    invoke-super {p0}, Lcom/glympse/android/lib/HttpJob;->onComplete()V

    invoke-virtual {p0}, Lcom/glympse/android/lib/n;->isSucceeded()Z

    move-result v0

    if-nez v0, :cond_1a

    iget v0, p0, Lcom/glympse/android/lib/n;->_failures:I

    const/4 v1, 0x4

    if-le v0, v1, :cond_19

    invoke-virtual {p0}, Lcom/glympse/android/lib/n;->abort()V

    iget-object v0, p0, Lcom/glympse/android/lib/n;->hk:Lcom/glympse/android/lib/m;

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/glympse/android/lib/n;->hl:Lcom/glympse/android/api/GApiStatusListener;

    invoke-static {v0, v1, v2}, Lcom/glympse/android/lib/m;->a(Lcom/glympse/android/lib/m;ZLcom/glympse/android/api/GApiStatusListener;)V

    :cond_19
    :goto_19
    return-void

    :cond_1a
    iget-object v0, p0, Lcom/glympse/android/lib/n;->hk:Lcom/glympse/android/lib/m;

    iget-object v1, p0, Lcom/glympse/android/lib/n;->hf:Ljava/lang/String;

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    iget-object v2, p0, Lcom/glympse/android/lib/n;->hl:Lcom/glympse/android/api/GApiStatusListener;

    invoke-static {v0, v1, v2}, Lcom/glympse/android/lib/m;->a(Lcom/glympse/android/lib/m;ZLcom/glympse/android/api/GApiStatusListener;)V

    goto :goto_19
.end method

.method public onPreProcess()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x100

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->HTTPS()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/glympse/android/lib/n;->hk:Lcom/glympse/android/lib/m;

    invoke-static {v1}, Lcom/glympse/android/lib/m;->a(Lcom/glympse/android/lib/m;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->BASE_URL_SUFFIX()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcom/glympse/android/lib/StaticConfig;->API_STATUS_URL_PATH()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/glympse/android/lib/n;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/glympse/android/hal/GHttpConnection;->setUrl(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/glympse/android/lib/n;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/glympse/android/hal/GHttpConnection;->setRequestMethod(Z)V

    return-void
.end method

.method public onProcessResponse()V
    .registers 4

    invoke-virtual {p0}, Lcom/glympse/android/lib/n;->isSucceeded()Z

    move-result v0

    if-nez v0, :cond_7

    :cond_6
    :goto_6
    return-void

    :cond_7
    iget-object v0, p0, Lcom/glympse/android/lib/n;->_httpConnection:Lcom/glympse/android/hal/GHttpConnection;

    invoke-interface {v0}, Lcom/glympse/android/hal/GHttpConnection;->getResponseDataString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/glympse/android/lib/json/JsonSerializer;->toPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-eqz v0, :cond_49

    const-string v1, "result"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/glympse/android/lib/n;->hf:Ljava/lang/String;

    iget-object v1, p0, Lcom/glympse/android/lib/n;->hf:Ljava/lang/String;

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_49

    iget-object v1, p0, Lcom/glympse/android/lib/n;->hf:Ljava/lang/String;

    const-string v2, "ok"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_49

    const-string v1, "response"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;

    move-result-object v0

    if-eqz v0, :cond_49

    const-string v1, "status"

    invoke-static {v1}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/glympse/android/core/GPrimitive;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/n;->hf:Ljava/lang/String;

    :cond_49
    iget-object v0, p0, Lcom/glympse/android/lib/n;->hf:Ljava/lang/String;

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->isEmpty(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_6

    const-string v0, "failure"

    invoke-static {v0}, Lcom/glympse/android/hal/Helpers;->staticString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/glympse/android/lib/n;->hf:Ljava/lang/String;

    goto :goto_6
.end method
