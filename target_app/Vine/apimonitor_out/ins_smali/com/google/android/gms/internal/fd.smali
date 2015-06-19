.class public Lcom/google/android/gms/internal/fd;
.super Landroid/webkit/WebViewClient;
.field private final lL:Lcom/google/android/gms/internal/ey;
.field private final sQ:Ljava/lang/String;
.field private sR:Z
.field private final sS:Lcom/google/android/gms/internal/dp;
.method public constructor <init>(Lcom/google/android/gms/internal/dp;Lcom/google/android/gms/internal/ey;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
invoke-direct {p0, p3}, Lcom/google/android/gms/internal/fd;->G(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/fd;->sQ:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/fd;->sR:Z
iput-object p2, p0, Lcom/google/android/gms/internal/fd;->lL:Lcom/google/android/gms/internal/ey;
iput-object p1, p0, Lcom/google/android/gms/internal/fd;->sS:Lcom/google/android/gms/internal/dp;
return-void
.end method
.method private G(Ljava/lang/String;)Ljava/lang/String;
.registers 4
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_7
:goto_6
:cond_6
return-object p1
:try_start_7
:cond_7
const-string v0, "/"
invoke-virtual {p1, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_6
const/4 v0, 0x0
invoke-virtual {p1}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {p1, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
:try_end_19
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_19} :catch_1b
move-result-object p1
goto :goto_6
:catch_1b
move-exception v0
invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->A(Ljava/lang/String;)V
goto :goto_6
.end method
.method protected F(Ljava/lang/String;)Z
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
invoke-direct {p0, p1}, Lcom/google/android/gms/internal/fd;->G(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-eqz v3, :cond_d
:cond_c
:goto_c
return v0
:cond_d
:try_start_d
new-instance v3, Ljava/net/URI;
invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
const-string v2, "passback"
invoke-virtual {v3}, Ljava/net/URI;->getScheme()Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_2a
const-string v2, "Passback received"
invoke-static {v2}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iget-object v2, p0, Lcom/google/android/gms/internal/fd;->sS:Lcom/google/android/gms/internal/dp;
invoke-virtual {v2}, Lcom/google/android/gms/internal/dp;->bk()V
move v0, v1
goto :goto_c
:cond_2a
iget-object v2, p0, Lcom/google/android/gms/internal/fd;->sQ:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_c
new-instance v2, Ljava/net/URI;
iget-object v4, p0, Lcom/google/android/gms/internal/fd;->sQ:Ljava/lang/String;
invoke-direct {v2, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v5
invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;
move-result-object v3
invoke-static {v4, v5}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_c
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hl;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_c
const-string v2, "Passback received"
invoke-static {v2}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iget-object v2, p0, Lcom/google/android/gms/internal/fd;->sS:Lcom/google/android/gms/internal/dp;
invoke-virtual {v2}, Lcom/google/android/gms/internal/dp;->bk()V
:try_end_5f
.catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_5f} :catch_61
move v0, v1
goto :goto_c
:catch_61
move-exception v1
invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/ev;->A(Ljava/lang/String;)V
goto :goto_c
.end method
.method public onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "JavascriptAdWebViewClient::onLoadResource: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/fd;->F(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_27
iget-object v0, p0, Lcom/google/android/gms/internal/fd;->lL:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bW()Lcom/google/android/gms/internal/ez;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/fd;->lL:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ez;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
:cond_27
return-void
.end method
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "JavascriptAdWebViewClient::onPageFinished: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/google/android/gms/internal/fd;->sR:Z
if-nez v0, :cond_22
iget-object v0, p0, Lcom/google/android/gms/internal/fd;->sS:Lcom/google/android/gms/internal/dp;
invoke-virtual {v0}, Lcom/google/android/gms/internal/dp;->bj()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/internal/fd;->sR:Z
:cond_22
return-void
.end method
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "JavascriptAdWebViewClient::shouldOverrideUrlLoading: "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
invoke-virtual {p0, p2}, Lcom/google/android/gms/internal/fd;->F(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_23
const-string v0, "shouldOverrideUrlLoading: received passback url"
invoke-static {v0}, Lcom/google/android/gms/internal/ev;->z(Ljava/lang/String;)V
const/4 v0, 0x1
:goto_22
return v0
:cond_23
iget-object v0, p0, Lcom/google/android/gms/internal/fd;->lL:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0}, Lcom/google/android/gms/internal/ey;->bW()Lcom/google/android/gms/internal/ez;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/fd;->lL:Lcom/google/android/gms/internal/ey;
invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/ez;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
move-result v0
goto :goto_22
.end method