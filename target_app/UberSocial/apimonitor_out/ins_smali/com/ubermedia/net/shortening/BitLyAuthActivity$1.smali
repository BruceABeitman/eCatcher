.class  Lcom/ubermedia/net/shortening/BitLyAuthActivity$1;
.super Landroid/webkit/WebViewClient;
.source "SourceFile"
.field final synthetic a:Lcom/ubermedia/net/shortening/BitLyAuthActivity;
.method constructor <init>(Lcom/ubermedia/net/shortening/BitLyAuthActivity;)V
.registers 2
iput-object p1, p0, Lcom/ubermedia/net/shortening/BitLyAuthActivity$1;->a:Lcom/ubermedia/net/shortening/BitLyAuthActivity;
invoke-direct {p0}, Landroid/webkit/WebViewClient;-><init>()V
return-void
.end method
.method public onPageFinished(Landroid/webkit/WebView;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/ubermedia/net/shortening/BitLyAuthActivity$1;->a:Lcom/ubermedia/net/shortening/BitLyAuthActivity;
invoke-static {v0}, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->a(Lcom/ubermedia/net/shortening/BitLyAuthActivity;)Landroid/widget/ProgressBar;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V
return-void
.end method
.method public onPageStarted(Landroid/webkit/WebView;Ljava/lang/String;Landroid/graphics/Bitmap;)V
.registers 4
return-void
.end method
.method public shouldOverrideUrlLoading(Landroid/webkit/WebView;Ljava/lang/String;)Z
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/ubermedia/net/shortening/BitLyAuthActivity$1;->a:Lcom/ubermedia/net/shortening/BitLyAuthActivity;
iget-object v0, v0, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->f:Ljava/lang/String;
invoke-virtual {p2, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_78
const-string v0, "code="
invoke-virtual {p2, v0}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_78
:try_start_14
new-instance v0, Ljava/net/URI;
invoke-direct {v0, p2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
const-string v3, "UTF-8"
invoke-static {v0, v3}, Lorg/apache/http/client/utils/URLEncodedUtils;->parse(Ljava/net/URI;Ljava/lang/String;)Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v3
:cond_23
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_78
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/http/NameValuePair;
invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getName()Ljava/lang/String;
move-result-object v4
const-string v5, "code"
invoke-virtual {v4, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v4
if-eqz v4, :cond_23
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
const-string v4, "code"
invoke-interface {v0}, Lorg/apache/http/NameValuePair;->getValue()Ljava/lang/String;
move-result-object v0
invoke-interface {v3, v4, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "redirect_uri"
iget-object v4, p0, Lcom/ubermedia/net/shortening/BitLyAuthActivity$1;->a:Lcom/ubermedia/net/shortening/BitLyAuthActivity;
iget-object v4, v4, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->f:Ljava/lang/String;
invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "client_id"
iget-object v4, p0, Lcom/ubermedia/net/shortening/BitLyAuthActivity$1;->a:Lcom/ubermedia/net/shortening/BitLyAuthActivity;
iget-object v4, v4, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->g:Ljava/lang/String;
invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v0, "client_secret"
iget-object v4, p0, Lcom/ubermedia/net/shortening/BitLyAuthActivity$1;->a:Lcom/ubermedia/net/shortening/BitLyAuthActivity;
iget-object v4, v4, Lcom/ubermedia/net/shortening/BitLyAuthActivity;->h:Ljava/lang/String;
invoke-interface {v3, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Lcom/ubermedia/net/shortening/a;
iget-object v4, p0, Lcom/ubermedia/net/shortening/BitLyAuthActivity$1;->a:Lcom/ubermedia/net/shortening/BitLyAuthActivity;
const/4 v5, 0x0
invoke-direct {v0, v4, v5}, Lcom/ubermedia/net/shortening/a;-><init>(Lcom/ubermedia/net/shortening/BitLyAuthActivity;Lcom/ubermedia/net/shortening/BitLyAuthActivity$1;)V
const/4 v4, 0x1
new-array v4, v4, [Ljava/util/Map;
const/4 v5, 0x0
aput-object v3, v4, v5
invoke-virtual {v0, v4}, Lcom/ubermedia/net/shortening/a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:try_end_75
.catch Ljava/lang/Exception; {:try_start_14 .. :try_end_75} :catch_77
move v0, v1
:goto_76
return v0
:catch_77
move-exception v0
:cond_78
move v0, v2
goto :goto_76
.end method