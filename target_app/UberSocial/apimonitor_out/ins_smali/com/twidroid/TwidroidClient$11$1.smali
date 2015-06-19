.class  Lcom/twidroid/TwidroidClient$11$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/TwidroidClient$11;
.method constructor <init>(Lcom/twidroid/TwidroidClient$11;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/TwidroidClient$11$1;->a:Lcom/twidroid/TwidroidClient$11;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 6
:try_start_0
iget-object v0, p0, Lcom/twidroid/TwidroidClient$11$1;->a:Lcom/twidroid/TwidroidClient$11;
iget-object v0, v0, Lcom/twidroid/TwidroidClient$11;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->a(Lcom/twidroid/TwidroidClient;)Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->aV()Z
move-result v0
if-nez v0, :cond_20
iget-object v0, p0, Lcom/twidroid/TwidroidClient$11$1;->a:Lcom/twidroid/TwidroidClient$11;
iget-object v0, v0, Lcom/twidroid/TwidroidClient$11;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->m(Lcom/twidroid/TwidroidClient;)Z
move-result v0
if-nez v0, :cond_21
iget-object v0, p0, Lcom/twidroid/TwidroidClient$11$1;->a:Lcom/twidroid/TwidroidClient$11;
iget-object v0, v0, Lcom/twidroid/TwidroidClient$11;->a:Lcom/twidroid/TwidroidClient;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/twidroid/TwidroidClient;->b(Lcom/twidroid/TwidroidClient;Z)Z
:goto_20
:cond_20
return-void
:cond_21
iget-object v0, p0, Lcom/twidroid/TwidroidClient$11$1;->a:Lcom/twidroid/TwidroidClient$11;
iget-object v0, v0, Lcom/twidroid/TwidroidClient$11;->a:Lcom/twidroid/TwidroidClient;
invoke-static {v0}, Lcom/twidroid/TwidroidClient;->n(Lcom/twidroid/TwidroidClient;)V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$11$1;->a:Lcom/twidroid/TwidroidClient$11;
iget-object v0, v0, Lcom/twidroid/TwidroidClient$11;->a:Lcom/twidroid/TwidroidClient;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/twidroid/TwidroidClient;->c(Lcom/twidroid/TwidroidClient;Z)V
iget-object v0, p0, Lcom/twidroid/TwidroidClient$11$1;->a:Lcom/twidroid/TwidroidClient$11;
iget-object v0, v0, Lcom/twidroid/TwidroidClient$11;->a:Lcom/twidroid/TwidroidClient;
iget-object v0, v0, Lcom/twidroid/TwidroidClient;->J:Lcom/admarvel/android/ads/AdMarvelView;
iget-object v1, p0, Lcom/twidroid/TwidroidClient$11$1;->a:Lcom/twidroid/TwidroidClient$11;
iget-object v1, v1, Lcom/twidroid/TwidroidClient$11;->a:Lcom/twidroid/TwidroidClient;
iget-object v1, v1, Lcom/twidroid/TwidroidClient;->K:Ljava/util/HashMap;
const-string v2, "799a979405bbb74b"
iget-object v3, p0, Lcom/twidroid/TwidroidClient$11$1;->a:Lcom/twidroid/TwidroidClient$11;
iget-object v3, v3, Lcom/twidroid/TwidroidClient$11;->a:Lcom/twidroid/TwidroidClient;
iget-object v3, v3, Lcom/twidroid/TwidroidClient;->J:Lcom/admarvel/android/ads/AdMarvelView;
invoke-static {v3}, Lcom/twidroid/d/b;->a(Landroid/view/View;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/TwidroidClient$11$1;->a:Lcom/twidroid/TwidroidClient$11;
iget-object v4, v4, Lcom/twidroid/TwidroidClient$11;->a:Lcom/twidroid/TwidroidClient;
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/admarvel/android/ads/AdMarvelView;->requestNewAd(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
:try_end_4f
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_4f} :catch_50
goto :goto_20
:catch_50
move-exception v0
const-string v1, "AdMarvelException"
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_20
.end method