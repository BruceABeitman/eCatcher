.class  Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;
.field final synthetic val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
.field final synthetic val$adMarvelWebView:Lcom/admarvel/android/ads/AdMarvelWebView;
.field final synthetic val$callback:Ljava/lang/String;
.field final synthetic val$redirectUrl:Ljava/lang/String;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12;->this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;
iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12;->val$adMarvelWebView:Lcom/admarvel/android/ads/AdMarvelWebView;
iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12;->val$redirectUrl:Ljava/lang/String;
iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12;->val$callback:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0x8
if-ge v0, v1, :cond_1f
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12;->this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;
#getter for: Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->access$4900(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$ak;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12;->val$adMarvelWebView:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12;->val$redirectUrl:Ljava/lang/String;
iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12;->val$callback:Ljava/lang/String;
invoke-direct {v1, v2, v3, v4, v5}, Lcom/admarvel/android/ads/AdMarvelWebView$ak;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_1e
const-string v1, " - Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1f
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12;->this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;
#getter for: Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->access$4900(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;)Landroid/os/Handler;
move-result-object v0
new-instance v1, Lcom/admarvel/android/ads/AdMarvelWebView$aj;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12;->val$adMarvelWebView:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12;->val$redirectUrl:Ljava/lang/String;
iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$12;->val$callback:Ljava/lang/String;
invoke-direct {v1, v2, v3, v4, v5}, Lcom/admarvel/android/ads/AdMarvelWebView$aj;-><init>(Lcom/admarvel/android/ads/AdMarvelWebView;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_1e
.end method