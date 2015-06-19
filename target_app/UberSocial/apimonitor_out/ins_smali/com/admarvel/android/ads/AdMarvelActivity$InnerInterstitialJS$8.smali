.class  Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic this$0:Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;
.field final synthetic val$adMarvelActivity:Lcom/admarvel/android/ads/AdMarvelActivity;
.field final synthetic val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
.field final synthetic val$allday:Ljava/lang/String;
.field final synthetic val$availability:I
.field final synthetic val$callback:Ljava/lang/String;
.field final synthetic val$date:Ljava/lang/String;
.field final synthetic val$description:Ljava/lang/String;
.field final synthetic val$endDate:Ljava/lang/String;
.field final synthetic val$exceptionDateString:Ljava/lang/String;
.field final synthetic val$location:Ljava/lang/String;
.field final synthetic val$recurrenceRules:Ljava/lang/String;
.field final synthetic val$reminderoffset:I
.field final synthetic val$status:I
.field final synthetic val$timezone:Ljava/lang/String;
.field final synthetic val$title:Ljava/lang/String;
.field final synthetic val$url:Ljava/lang/String;
.method constructor <init>(Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelInternalWebView;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
.registers 19
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->this$0:Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS;
iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$adMarvelActivity:Lcom/admarvel/android/ads/AdMarvelActivity;
iput-object p3, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
iput-object p4, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$date:Ljava/lang/String;
iput-object p5, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$title:Ljava/lang/String;
iput-object p6, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$description:Ljava/lang/String;
iput-object p7, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$location:Ljava/lang/String;
iput-object p8, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$allday:Ljava/lang/String;
iput-object p9, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$endDate:Ljava/lang/String;
iput p10, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$reminderoffset:I
iput-object p11, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$timezone:Ljava/lang/String;
iput-object p12, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$url:Ljava/lang/String;
iput-object p13, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$recurrenceRules:Ljava/lang/String;
iput-object p14, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$exceptionDateString:Ljava/lang/String;
move/from16 v0, p15
iput v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$status:I
move/from16 v0, p16
iput v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$availability:I
move-object/from16 v0, p17
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$callback:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 22
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v1
const/16 v2, 0xe
if-lt v1, v2, :cond_5f
move-object/from16 v0, p0
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$adMarvelActivity:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;
move-result-object v18
new-instance v1, Lcom/admarvel/android/ads/AdMarvelActivity$f;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$adMarvelActivity:Lcom/admarvel/android/ads/AdMarvelActivity;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$date:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v5, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$title:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v6, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$description:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v7, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$location:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v8, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$allday:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v9, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$endDate:Ljava/lang/String;
move-object/from16 v0, p0
iget v10, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$reminderoffset:I
move-object/from16 v0, p0
iget-object v11, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$timezone:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v12, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$url:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$recurrenceRules:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$exceptionDateString:Ljava/lang/String;
move-object/from16 v0, p0
iget v15, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$status:I
move-object/from16 v0, p0
iget v0, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$availability:I
move/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$callback:Ljava/lang/String;
move-object/from16 v17, v0
invoke-direct/range {v1 .. v17}, Lcom/admarvel/android/ads/AdMarvelActivity$f;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
move-object/from16 v0, v18
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_5e
const-string v1, " - Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_5f
move-object/from16 v0, p0
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$adMarvelActivity:Lcom/admarvel/android/ads/AdMarvelActivity;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;
move-result-object v18
new-instance v1, Lcom/admarvel/android/ads/AdMarvelActivity$e;
move-object/from16 v0, p0
iget-object v2, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$adMarvelInternalWebView:Lcom/admarvel/android/ads/AdMarvelInternalWebView;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$adMarvelActivity:Lcom/admarvel/android/ads/AdMarvelActivity;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$date:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v5, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$title:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v6, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$description:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v7, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$location:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v8, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$allday:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v9, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$endDate:Ljava/lang/String;
move-object/from16 v0, p0
iget v10, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$reminderoffset:I
move-object/from16 v0, p0
iget-object v11, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$timezone:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v12, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$url:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v13, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$recurrenceRules:Ljava/lang/String;
move-object/from16 v0, p0
iget-object v14, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$exceptionDateString:Ljava/lang/String;
move-object/from16 v0, p0
iget v15, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$status:I
move-object/from16 v0, p0
iget v0, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$availability:I
move/from16 v16, v0
move-object/from16 v0, p0
iget-object v0, v0, Lcom/admarvel/android/ads/AdMarvelActivity$InnerInterstitialJS$8;->val$callback:Ljava/lang/String;
move-object/from16 v17, v0
invoke-direct/range {v1 .. v17}, Lcom/admarvel/android/ads/AdMarvelActivity$e;-><init>(Lcom/admarvel/android/ads/AdMarvelInternalWebView;Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;)V
move-object/from16 v0, v18
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_5e
.end method