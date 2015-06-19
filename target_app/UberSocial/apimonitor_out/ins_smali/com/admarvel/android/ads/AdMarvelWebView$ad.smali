.class  Lcom/admarvel/android/ads/AdMarvelWebView$ad;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field private a:Ljava/lang/String;
.field private final b:Ljava/lang/ref/WeakReference;
.field private final c:Lcom/admarvel/android/ads/AdMarvelAd;
.method public constructor <init>(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelAd;)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->b:Ljava/lang/ref/WeakReference;
iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->c:Lcom/admarvel/android/ads/AdMarvelAd;
return-void
.end method
.method public run()V
.registers 9
:try_start_0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->b:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->g(Lcom/admarvel/android/ads/AdMarvelWebView;)Z
move-result v1
if-eqz v1, :cond_1ef
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
sget-boolean v2, Lcom/admarvel/android/ads/AdMarvelView;->b:Z
if-eqz v2, :cond_ac
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
invoke-static {v2}, Lcom/admarvel/android/ads/ab;->e(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_ac
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
invoke-static {v2}, Landroid/webkit/URLUtil;->isNetworkUrl(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_63
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/admarvel/android/ads/ab;->b(Landroid/content/Context;Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_63
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v1
if-eqz v1, :cond_a
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v0
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->c:Lcom/admarvel/android/ads/AdMarvelAd;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V
:try_end_46
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_46} :catch_47
goto :goto_a
:catch_47
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " Exception in RedirectRunnable "
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto :goto_a
:cond_63
:try_start_63
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getAdMarvelAd()Lcom/admarvel/android/ads/AdMarvelAd;
move-result-object v2
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelAd;->getOfflinekeyUrl()Ljava/lang/String;
move-result-object v2
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const/4 v4, 0x0
const-string v5, "/"
invoke-virtual {v2, v5}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I
move-result v5
invoke-virtual {v2, v4, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v1, v2}, Lcom/admarvel/android/ads/ab;->b(Landroid/content/Context;Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_eb
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v1
if-eqz v1, :cond_a
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v0
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->c:Lcom/admarvel/android/ads/AdMarvelAd;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V
goto/16 :goto_a
:cond_ac
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
invoke-static {v2}, Lcom/admarvel/android/ads/ab;->e(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_eb
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
invoke-static {v2, v3}, Lcom/admarvel/android/ads/ab;->b(Landroid/content/Context;Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_eb
new-instance v1, Lcom/admarvel/android/ads/ab;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v1
if-eqz v1, :cond_a
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v0
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->c:Lcom/admarvel/android/ads/AdMarvelAd;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V
goto/16 :goto_a
:cond_eb
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
if-eqz v2, :cond_13a
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
const-string v3, "admarvelsdk"
invoke-static {v2, v3}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v2
sget-object v3, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-eq v2, v3, :cond_13a
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v1
if-eqz v1, :cond_124
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->c:Lcom/admarvel/android/ads/AdMarvelAd;
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
const-string v4, "admarvelsdk"
const-string v5, ""
iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
const-string v7, "admarvelsdk"
invoke-static {v6, v7}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v6
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v7
invoke-static {v3, v4, v5, v6, v7}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V
:cond_124
new-instance v1, Lcom/admarvel/android/ads/ab;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V
goto/16 :goto_a
:cond_13a
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
if-eqz v2, :cond_189
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
const-string v3, "admarvelinternal"
invoke-static {v2, v3}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v2
sget-object v3, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-eq v2, v3, :cond_189
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v1
if-eqz v1, :cond_173
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->c:Lcom/admarvel/android/ads/AdMarvelAd;
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
const-string v4, "admarvelinternal"
const-string v5, ""
iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
const-string v7, "admarvelinternal"
invoke-static {v6, v7}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v6
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v7
invoke-static {v3, v4, v5, v6, v7}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-interface {v1, v2, v3}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V
:cond_173
new-instance v1, Lcom/admarvel/android/ads/ab;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V
goto/16 :goto_a
:cond_189
invoke-static {v1}, Lcom/admarvel/android/ads/ab;->f(Landroid/content/Context;)Z
move-result v2
if-eqz v2, :cond_206
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
if-eqz v2, :cond_206
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
const-string v3, "admarvelvideo"
invoke-static {v2, v3}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v2
sget-object v3, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-eq v2, v3, :cond_206
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
const-string v2, "admarvelvideo"
const-string v3, "http://"
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
const-string v5, "admarvelvideo"
invoke-static {v4, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v4
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v5
invoke-static {v1, v2, v3, v4, v5}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
new-instance v2, Landroid/content/Intent;
const-string v3, "android.intent.action.VIEW"
invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const/high16 v3, 0x1000
invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v1
const-string v3, "video/*"
invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1, v2}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v1
if-eqz v1, :cond_1db
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:cond_1db
new-instance v1, Lcom/admarvel/android/ads/ab;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V
:goto_1ef
:cond_1ef
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v1
if-eqz v1, :cond_a
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;)Lcom/admarvel/android/ads/s;
move-result-object v0
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->c:Lcom/admarvel/android/ads/AdMarvelAd;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Lcom/admarvel/android/ads/s;->a(Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;)V
goto/16 :goto_a
:cond_206
invoke-static {v1}, Lcom/admarvel/android/ads/ab;->f(Landroid/content/Context;)Z
move-result v2
if-eqz v2, :cond_268
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
if-eqz v2, :cond_268
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
const-string v3, "admarvelexternal"
invoke-static {v2, v3}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v2
sget-object v3, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-eq v2, v3, :cond_268
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
const-string v4, "admarvelexternal"
const-string v5, ""
iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
const-string v7, "admarvelexternal"
invoke-static {v6, v7}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v6
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v7
invoke-static {v3, v4, v5, v6, v7}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/admarvel/android/ads/ab$f;Landroid/content/Context;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
const/high16 v2, 0x1000
invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v2, v1}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;Landroid/content/Intent;)Z
move-result v2
if-eqz v2, :cond_253
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:cond_253
new-instance v1, Lcom/admarvel/android/ads/ab;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V
goto :goto_1ef
:cond_268
invoke-static {v1}, Lcom/admarvel/android/ads/ab;->f(Landroid/content/Context;)Z
move-result v2
if-eqz v2, :cond_2f6
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
if-eqz v2, :cond_2f6
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
const-string v3, "admarvelcustomvideo"
invoke-static {v2, v3}, Lcom/admarvel/android/ads/ab;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/ab$f;
move-result-object v2
sget-object v3, Lcom/admarvel/android/ads/ab$f;->c:Lcom/admarvel/android/ads/ab$f;
if-eq v2, v3, :cond_2f6
new-instance v2, Landroid/content/Intent;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
const-class v3, Lcom/admarvel/android/ads/AdMarvelVideoActivity;
invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x1000
invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->c:Lcom/admarvel/android/ads/AdMarvelAd;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->removeNonStringEntriesTargetParam()V
:try_start_293
:try_end_293
.catch Ljava/lang/Exception; {:try_start_63 .. :try_end_293} :catch_47
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v3, Ljava/io/ObjectOutputStream;
invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->c:Lcom/admarvel/android/ads/AdMarvelAd;
invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
const-string v3, "serialized_admarvelad"
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
:goto_2ae
:try_end_2ae
.catch Ljava/io/IOException; {:try_start_293 .. :try_end_2ae} :catch_2f1
.catch Ljava/lang/Exception; {:try_start_293 .. :try_end_2ae} :catch_47
:try_start_2ae
const-string v1, "url"
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "isCustomUrl"
const/4 v3, 0x1
invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "xml"
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "source"
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->i(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "GUID"
iget-object v3, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
new-instance v1, Lcom/admarvel/android/ads/ab;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V
goto/16 :goto_1ef
:catch_2f1
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_2ae
:cond_2f6
invoke-static {v1}, Lcom/admarvel/android/ads/ab;->f(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_1ef
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
if-eqz v1, :cond_1ef
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_1ef
new-instance v2, Landroid/content/Intent;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
const-class v3, Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-direct {v2, v1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x1000
invoke-virtual {v2, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
const-string v1, "url"
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->a:Ljava/lang/String;
invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "isInterstitial"
const/4 v3, 0x0
invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "isInterstitialClick"
const/4 v3, 0x0
invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v1, "xml"
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "source"
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->i(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v1, "GUID"
iget-object v3, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
invoke-virtual {v2, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->c:Lcom/admarvel/android/ads/AdMarvelAd;
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelAd;->removeNonStringEntriesTargetParam()V
:try_start_349
:try_end_349
.catch Ljava/lang/Exception; {:try_start_2ae .. :try_end_349} :catch_47
new-instance v1, Ljava/io/ByteArrayOutputStream;
invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V
new-instance v3, Ljava/io/ObjectOutputStream;
invoke-direct {v3, v1}, Ljava/io/ObjectOutputStream;-><init>(Ljava/io/OutputStream;)V
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$ad;->c:Lcom/admarvel/android/ads/AdMarvelAd;
invoke-virtual {v3, v4}, Ljava/io/ObjectOutputStream;->writeObject(Ljava/lang/Object;)V
invoke-virtual {v3}, Ljava/io/ObjectOutputStream;->close()V
const-string v3, "serialized_admarvelad"
invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
move-result-object v1
invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;
:try_end_364
.catch Ljava/io/IOException; {:try_start_349 .. :try_end_364} :catch_381
.catch Ljava/lang/Exception; {:try_start_349 .. :try_end_364} :catch_47
:try_start_364
:goto_364
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
new-instance v1, Lcom/admarvel/android/ads/ab;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v3
invoke-direct {v1, v2, v3}, Lcom/admarvel/android/ads/ab;-><init>(Landroid/content/Context;Landroid/os/Handler;)V
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->h(Lcom/admarvel/android/ads/AdMarvelWebView;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/ab;->b(Ljava/lang/String;)V
goto/16 :goto_1ef
:catch_381
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
:try_end_385
.catch Ljava/lang/Exception; {:try_start_364 .. :try_end_385} :catch_47
goto :goto_364
.end method