.class final Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$7;->a:[I
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->a(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$ShareType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_84
:goto_11
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->finish()V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:pswitch_17
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->e(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Lcom/spotify/mobile/android/ui/actions/a;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->b(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->c(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Landroid/widget/EditText;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
invoke-static {v3}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->d(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Landroid/content/Intent;
move-result-object v3
const-string v4, "android.intent.extra.TEXT"
invoke-virtual {v3, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/actions/a;->b(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->f(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Landroid/widget/AutoCompleteTextView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/AutoCompleteTextView;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dp;->b(Landroid/content/Context;Ljava/lang/String;)V
goto :goto_11
:pswitch_55
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->g(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->d(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Landroid/content/Intent;
move-result-object v1
const-string v2, "android.intent.extra.TEXT"
invoke-virtual {v1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->c(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Landroid/widget/EditText;
move-result-object v2
invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v2
new-instance v3, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2$1;
new-instance v4, Landroid/os/Handler;
invoke-direct {v4}, Landroid/os/Handler;-><init>()V
invoke-direct {v3, p0, v4}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2$1;-><init>(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$2;Landroid/os/Handler;)V
invoke-virtual {v0, v1, v2, v3}, Lcom/spotify/mobile/android/spotlets/activityfeed/client/e;->a(Ljava/lang/String;Ljava/lang/String;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)V
goto :goto_11
nop
:pswitch_data_84
.packed-switch 0x1
:pswitch_17
:pswitch_55
.end packed-switch
.end method