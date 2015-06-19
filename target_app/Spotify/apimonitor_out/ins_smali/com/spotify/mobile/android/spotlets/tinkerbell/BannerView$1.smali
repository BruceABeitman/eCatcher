.class final Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v3, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;)Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;
move-result-object v0
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;)Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;
move-result-object v0
iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->d:Landroid/content/Intent;
if-eqz v0, :cond_3e
const-string v0, "Opening intent: %s"
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;
invoke-static {v2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;)Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;
move-result-object v2
iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->d:Landroid/content/Intent;
aput-object v2, v1, v3
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->getContext()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->a(Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;)Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;
move-result-object v1
iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerItem;->d:Landroid/content/Intent;
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:goto_36
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1;->a:Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;
const-wide/16 v1, 0x3e8
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView;->a(J)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/tinkerbell/BannerView$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_3e
const-string v0, "No intent to open"
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->b(Ljava/lang/String;[Ljava/lang/Object;)V
goto :goto_36
.end method