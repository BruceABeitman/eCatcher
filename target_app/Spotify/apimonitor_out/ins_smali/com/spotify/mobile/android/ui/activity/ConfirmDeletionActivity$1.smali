.class final Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->a(Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;)Landroid/net/Uri;
move-result-object v0
const-string v1, "We need a non-null content uri"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->c(Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;)Lcom/spotify/mobile/android/ui/actions/c;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->a(Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;)Landroid/net/Uri;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->b(Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;)J
move-result-wide v2
invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Landroid/net/Uri;J)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1;->a:Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity;->finish()V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/ConfirmDeletionActivity$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method