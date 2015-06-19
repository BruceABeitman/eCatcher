.class  Lcom/admarvel/android/ads/AdMarvelWebView$i$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/admarvel/android/ads/AdMarvelWebView;
.field final synthetic b:Lcom/admarvel/android/ads/AdMarvelWebView$i;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$i;Lcom/admarvel/android/ads/AdMarvelWebView;)V
.registers 3
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$i$1;->b:Lcom/admarvel/android/ads/AdMarvelWebView$i;
iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$i$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/admarvel/android/ads/AdMarvelWebView$i$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$i$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d(Lcom/admarvel/android/ads/AdMarvelWebView;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$j;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$i$1;->a:Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-direct {v1, v2}, Lcom/admarvel/android/ads/AdMarvelWebView$j;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
const-string v1, " - Lcom/admarvel/android/ads/AdMarvelWebView$i$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method