.class  Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;
.field final synthetic val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
.field final synthetic val$callback:Ljava/lang/String;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelInternalWebView;)V
.registers 4
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11;->this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;
iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11;->val$callback:Ljava/lang/String;
iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11;->val$callback:Ljava/lang/String;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11;->this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;
#getter for: Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->access$4900(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11$1;
invoke-direct {v1, p0}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11$1;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_12
invoke-interface {p1}, Landroid/content/DialogInterface;->cancel()V
const-string v1, " - Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$11; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method