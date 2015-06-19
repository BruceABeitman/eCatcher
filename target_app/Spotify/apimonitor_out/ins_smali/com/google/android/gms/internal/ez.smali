.class public final Lcom/google/android/gms/internal/ez;
.super Landroid/webkit/WebViewClient;
.field private final a:Ljava/lang/String;
.field private b:Z
.field private final c:Lcom/google/android/gms/internal/er;
.field private final d:Lcom/google/android/gms/internal/dc;
.method public constructor <init>(Lcom/google/android/gms/internal/dc;Lcom/google/android/gms/internal/er;Ljava/lang/String;)V
.registers 5
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
invoke-static {p3}, Lcom/google/android/gms/internal/ez;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/google/android/gms/internal/ez;->a:Ljava/lang/String;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/google/android/gms/internal/ez;->b:Z
iput-object p2, p0, Lcom/google/android/gms/internal/ez;->c:Lcom/google/android/gms/internal/er;
iput-object p1, p0, Lcom/google/android/gms/internal/ez;->d:Lcom/google/android/gms/internal/dc;
return-void
.end method
.method private a(Ljava/lang/String;)Z
.registers 8
const/4 v1, 0x1
const/4 v0, 0x0
invoke-static {p1}, Lcom/google/android/gms/internal/ez;->b(Ljava/lang/String;)Ljava/lang/String;
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
invoke-static {v2}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V
iget-object v2, p0, Lcom/google/android/gms/internal/ez;->d:Lcom/google/android/gms/internal/dc;
invoke-virtual {v2}, Lcom/google/android/gms/internal/dc;->b()V
move v0, v1
goto :goto_c
:cond_2a
iget-object v2, p0, Lcom/google/android/gms/internal/ez;->a:Ljava/lang/String;
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_c
new-instance v2, Ljava/net/URI;
iget-object v4, p0, Lcom/google/android/gms/internal/ez;->a:Ljava/lang/String;
invoke-direct {v2, v4}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3}, Ljava/net/URI;->getHost()Ljava/lang/String;
move-result-object v5
invoke-virtual {v2}, Ljava/net/URI;->getPath()Ljava/lang/String;
move-result-object v2
invoke-virtual {v3}, Ljava/net/URI;->getPath()Ljava/lang/String;
move-result-object v3
invoke-static {v4, v5}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_c
invoke-static {v2, v3}, Lcom/google/android/gms/internal/hc;->a(Ljava/lang/Object;Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_c
const-string v2, "Passback received"
invoke-static {v2}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V
iget-object v2, p0, Lcom/google/android/gms/internal/ez;->d:Lcom/google/android/gms/internal/dc;
invoke-virtual {v2}, Lcom/google/android/gms/internal/dc;->b()V
:try_end_5f
.catch Ljava/net/URISyntaxException; {:try_start_d .. :try_end_5f} :catch_61
move v0, v1
goto :goto_c
:catch_61
move-exception v1
invoke-virtual {v1}, Ljava/net/URISyntaxException;->getMessage()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;)V
goto :goto_c
.end method
.method private static b(Ljava/lang/String;)Ljava/lang/String;
.registers 3
invoke-static {p0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_7
:goto_6
:cond_6
return-object p0
:try_start_7
:cond_7
const-string v0, "/"
invoke-virtual {p0, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_6
const/4 v0, 0x0
invoke-virtual {p0}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {p0, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
:try_end_19
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_7 .. :try_end_19} :catch_1b
move-result-object p0
goto :goto_6
:catch_1b
move-exception v0
invoke-virtual {v0}, Ljava/lang/IndexOutOfBoundsException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->b(Ljava/lang/String;)V
goto :goto_6
.end method
.method public final onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "JavascriptAdWebViewClient::onLoadResource: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V
invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ez;->a(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_23
iget-object v0, p0, Lcom/google/android/gms/internal/ez;->c:Lcom/google/android/gms/internal/er;
invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->f()Lcom/google/android/gms/internal/eu;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/ez;->c:Lcom/google/android/gms/internal/er;
invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/eu;->onLoadResource(Landroid/webkit/WebView;Ljava/lang/String;)V
:cond_23
return-void
.end method
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "JavascriptAdWebViewClient::onPageFinished: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V
iget-boolean v0, p0, Lcom/google/android/gms/internal/ez;->b:Z
if-nez v0, :cond_1e
iget-object v0, p0, Lcom/google/android/gms/internal/ez;->d:Lcom/google/android/gms/internal/dc;
invoke-virtual {v0}, Lcom/google/android/gms/internal/dc;->a()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/google/android/gms/internal/ez;->b:Z
:cond_1e
return-void
.end method
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 5
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "JavascriptAdWebViewClient::shouldOverrideUrlLoading: "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V
invoke-direct {p0, p2}, Lcom/google/android/gms/internal/ez;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1f
const-string v0, "shouldOverrideUrlLoading: received passback url"
invoke-static {v0}, Lcom/google/android/gms/internal/ep;->a(Ljava/lang/String;)V
const/4 v0, 0x1
:goto_1e
return v0
:cond_1f
iget-object v0, p0, Lcom/google/android/gms/internal/ez;->c:Lcom/google/android/gms/internal/er;
invoke-virtual {v0}, Lcom/google/android/gms/internal/er;->f()Lcom/google/android/gms/internal/eu;
move-result-object v0
iget-object v1, p0, Lcom/google/android/gms/internal/ez;->c:Lcom/google/android/gms/internal/er;
invoke-virtual {v0, v1, p2}, Lcom/google/android/gms/internal/eu;->shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
move-result v0
goto :goto_1e
.end method