.class  Lcom/twidroid/activity/MobileViewActivity$5$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/twidroid/activity/MobileViewActivity$5;
.method constructor <init>(Lcom/twidroid/activity/MobileViewActivity$5;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/MobileViewActivity$5$1;->a:Lcom/twidroid/activity/MobileViewActivity$5;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 6
:try_start_0
iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity$5$1;->a:Lcom/twidroid/activity/MobileViewActivity$5;
iget-object v0, v0, Lcom/twidroid/activity/MobileViewActivity$5;->a:Lcom/twidroid/activity/MobileViewActivity;
invoke-static {v0}, Lcom/twidroid/activity/MobileViewActivity;->a(Lcom/twidroid/activity/MobileViewActivity;)Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->aV()Z
move-result v0
if-nez v0, :cond_20
iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity$5$1;->a:Lcom/twidroid/activity/MobileViewActivity$5;
iget-object v0, v0, Lcom/twidroid/activity/MobileViewActivity$5;->a:Lcom/twidroid/activity/MobileViewActivity;
invoke-static {v0}, Lcom/twidroid/activity/MobileViewActivity;->d(Lcom/twidroid/activity/MobileViewActivity;)Z
move-result v0
if-nez v0, :cond_21
iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity$5$1;->a:Lcom/twidroid/activity/MobileViewActivity$5;
iget-object v0, v0, Lcom/twidroid/activity/MobileViewActivity$5;->a:Lcom/twidroid/activity/MobileViewActivity;
const/4 v1, 0x1
invoke-static {v0, v1}, Lcom/twidroid/activity/MobileViewActivity;->a(Lcom/twidroid/activity/MobileViewActivity;Z)Z
:goto_20
:cond_20
return-void
:cond_21
iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity$5$1;->a:Lcom/twidroid/activity/MobileViewActivity$5;
iget-object v0, v0, Lcom/twidroid/activity/MobileViewActivity$5;->a:Lcom/twidroid/activity/MobileViewActivity;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/twidroid/activity/MobileViewActivity;->b(Lcom/twidroid/activity/MobileViewActivity;Z)V
iget-object v0, p0, Lcom/twidroid/activity/MobileViewActivity$5$1;->a:Lcom/twidroid/activity/MobileViewActivity$5;
iget-object v0, v0, Lcom/twidroid/activity/MobileViewActivity$5;->a:Lcom/twidroid/activity/MobileViewActivity;
iget-object v0, v0, Lcom/twidroid/activity/MobileViewActivity;->d:Lcom/admarvel/android/ads/AdMarvelView;
iget-object v1, p0, Lcom/twidroid/activity/MobileViewActivity$5$1;->a:Lcom/twidroid/activity/MobileViewActivity$5;
iget-object v1, v1, Lcom/twidroid/activity/MobileViewActivity$5;->a:Lcom/twidroid/activity/MobileViewActivity;
iget-object v1, v1, Lcom/twidroid/activity/MobileViewActivity;->e:Ljava/util/HashMap;
const-string v2, "799a979405bbb74b"
iget-object v3, p0, Lcom/twidroid/activity/MobileViewActivity$5$1;->a:Lcom/twidroid/activity/MobileViewActivity$5;
iget-object v3, v3, Lcom/twidroid/activity/MobileViewActivity$5;->a:Lcom/twidroid/activity/MobileViewActivity;
iget-object v3, v3, Lcom/twidroid/activity/MobileViewActivity;->d:Lcom/admarvel/android/ads/AdMarvelView;
invoke-static {v3}, Lcom/twidroid/d/b;->a(Landroid/view/View;)Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/activity/MobileViewActivity$5$1;->a:Lcom/twidroid/activity/MobileViewActivity$5;
iget-object v4, v4, Lcom/twidroid/activity/MobileViewActivity$5;->a:Lcom/twidroid/activity/MobileViewActivity;
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/admarvel/android/ads/AdMarvelView;->requestNewAd(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
:try_end_48
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_48} :catch_49
goto :goto_20
:catch_49
move-exception v0
const-string v1, "AdMarvelException"
invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_20
.end method