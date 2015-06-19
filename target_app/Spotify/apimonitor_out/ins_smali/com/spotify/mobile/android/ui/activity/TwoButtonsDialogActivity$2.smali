.class final Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;->a(Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;)Lcom/spotify/mobile/android/ui/actions/a;
invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;->a()Lcom/spotify/mobile/android/util/ViewUri$Verified;
move-result-object v1
new-instance v2, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v3, Lcom/spotify/mobile/android/util/ClientEvent$Event;->J:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity;
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/TwoButtonsDialogActivity$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method