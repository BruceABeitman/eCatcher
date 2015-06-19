.class final Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v1, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->af:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->b(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri;->ah:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;
invoke-static {v3}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Lcom/spotify/mobile/android/ui/activity/upsell/u;
move-result-object v3
iget-object v3, v3, Lcom/spotify/mobile/android/ui/activity/upsell/u;->f:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-static {v1, v2, v3, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->b(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;)Lcom/spotify/mobile/android/ui/activity/upsell/u;
move-result-object v1
iget-object v1, v1, Lcom/spotify/mobile/android/ui/activity/upsell/u;->e:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v2, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->finish()V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method