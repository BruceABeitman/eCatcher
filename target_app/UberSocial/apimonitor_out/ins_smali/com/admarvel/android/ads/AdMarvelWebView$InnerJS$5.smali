.class  Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;
.field final synthetic val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
.field final synthetic val$adMarvelWebView:Lcom/admarvel/android/ads/AdMarvelWebView;
.field final synthetic val$allday:Ljava/lang/String;
.field final synthetic val$date:Ljava/lang/String;
.field final synthetic val$description:Ljava/lang/String;
.field final synthetic val$endDate:Ljava/lang/String;
.field final synthetic val$location:Ljava/lang/String;
.field final synthetic val$reminderoffset:I
.field final synthetic val$title:Ljava/lang/String;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
.registers 11
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;
iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$adMarvelWebView:Lcom/admarvel/android/ads/AdMarvelWebView;
iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$date:Ljava/lang/String;
iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$title:Ljava/lang/String;
iput-object p6, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$description:Ljava/lang/String;
iput-object p7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$location:Ljava/lang/String;
iput-object p8, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$allday:Ljava/lang/String;
iput-object p9, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$endDate:Ljava/lang/String;
iput p10, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$reminderoffset:I
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 14
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xe
if-lt v0, v1, :cond_29
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;
#getter for: Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->access$4900(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;)Landroid/os/Handler;
move-result-object v10
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$l;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$adMarvelWebView:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$date:Ljava/lang/String;
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$title:Ljava/lang/String;
iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$description:Ljava/lang/String;
iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$location:Ljava/lang/String;
iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$allday:Ljava/lang/String;
iget-object v8, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$endDate:Ljava/lang/String;
iget v9, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$reminderoffset:I
invoke-direct/range {v0 .. v9}, Lcom/admarvel/android/ads/AdMarvelWebView$l;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_28
const-string v1, " - Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_29
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->this$0:Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;
#getter for: Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->handler:Landroid/os/Handler;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;->access$4900(Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS;)Landroid/os/Handler;
move-result-object v10
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView$k;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$adMarvelWebView:Lcom/admarvel/android/ads/AdMarvelWebView;
iget-object v3, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$date:Ljava/lang/String;
iget-object v4, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$title:Ljava/lang/String;
iget-object v5, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$description:Ljava/lang/String;
iget-object v6, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$location:Ljava/lang/String;
iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$allday:Ljava/lang/String;
iget-object v8, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$endDate:Ljava/lang/String;
iget v9, p0, Lcom/admarvel/android/ads/AdMarvelWebView$InnerJS$5;->val$reminderoffset:I
invoke-direct/range {v0 .. v9}, Lcom/admarvel/android/ads/AdMarvelWebView$k;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
invoke-virtual {v10, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_28
.end method