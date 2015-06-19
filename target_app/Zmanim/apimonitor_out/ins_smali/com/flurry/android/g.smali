.class final Lcom/flurry/android/g;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"
.field private synthetic a:Lcom/flurry/android/CatalogActivity;
.method synthetic constructor <init>(Lcom/flurry/android/CatalogActivity;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/flurry/android/g;-><init>(Lcom/flurry/android/CatalogActivity;B)V
return-void
.end method
.method private constructor <init>(Lcom/flurry/android/CatalogActivity;B)V
.registers 3
iput-object p1, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/CatalogActivity;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method public final onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 8
:try_start_0
iget-object v0, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/CatalogActivity;
invoke-static {v0}, Lcom/flurry/android/CatalogActivity;->a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/y;
move-result-object v0
new-instance v1, Lcom/flurry/android/i;
const/4 v2, 0x5
iget-object v3, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/CatalogActivity;
invoke-static {v3}, Lcom/flurry/android/CatalogActivity;->b(Lcom/flurry/android/CatalogActivity;)J
move-result-wide v3
invoke-direct {v1, v2, v3, v4}, Lcom/flurry/android/i;-><init>(BJ)V
iget-object v2, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/CatalogActivity;
invoke-static {v2}, Lcom/flurry/android/CatalogActivity;->a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/y;
move-result-object v2
iget-wide v2, v2, Lcom/flurry/android/y;->c:J
iget-object v4, v0, Lcom/flurry/android/y;->d:Ljava/util/List;
invoke-interface {v4, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iput-wide v2, v0, Lcom/flurry/android/y;->c:J
:goto_21
:try_end_21
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_21} :catch_22
return-void
:catch_22
move-exception v0
goto :goto_21
.end method
.method public final onReceivedError(Landroid/webkit/WebView;ILjava/lang/String;Ljava/lang/String;)V
.registers 8
const-string v0, "FlurryAgent"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Failed to load url: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/flurry/android/z;->c(Ljava/lang/String;Ljava/lang/String;)I
const-string v0, "Cannot find Android Market information. <p>Please check your network"
const-string v1, "text/html"
const-string v2, "UTF-8"
invoke-virtual {p1, v0, v1, v2}, Landroid/webkit/WebView;->loadData(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 8
if-nez p2, :cond_4
const/4 v0, 0x0
:goto_3
return v0
:cond_4
iget-object v0, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/CatalogActivity;
invoke-static {v0}, Lcom/flurry/android/CatalogActivity;->a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/y;
move-result-object v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/CatalogActivity;
invoke-static {v0}, Lcom/flurry/android/CatalogActivity;->a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/y;
move-result-object v0
new-instance v1, Lcom/flurry/android/i;
const/4 v2, 0x6
iget-object v3, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/CatalogActivity;
invoke-static {v3}, Lcom/flurry/android/CatalogActivity;->b(Lcom/flurry/android/CatalogActivity;)J
move-result-wide v3
invoke-direct {v1, v2, v3, v4}, Lcom/flurry/android/i;-><init>(BJ)V
invoke-virtual {v0, v1}, Lcom/flurry/android/y;->a(Lcom/flurry/android/i;)V
:cond_21
iget-object v0, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/CatalogActivity;
invoke-static {v0}, Lcom/flurry/android/CatalogActivity;->c(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/n;
move-result-object v0
invoke-virtual {p1}, Landroid/webkit/WebView;->getContext()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/flurry/android/g;->a:Lcom/flurry/android/CatalogActivity;
invoke-static {v2}, Lcom/flurry/android/CatalogActivity;->a(Lcom/flurry/android/CatalogActivity;)Lcom/flurry/android/y;
move-result-object v2
invoke-virtual {v0, v1, v2, p2}, Lcom/flurry/android/n;->a(Landroid/content/Context;Lcom/flurry/android/y;Ljava/lang/String;)V
const/4 v0, 0x1
goto :goto_3
.end method