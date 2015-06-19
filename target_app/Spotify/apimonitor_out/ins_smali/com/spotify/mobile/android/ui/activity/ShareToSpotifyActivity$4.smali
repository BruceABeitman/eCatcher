.class final Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$4; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/spotify/mobile/android/model/o;
if-eqz v0, :cond_21
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/model/o;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/o;->b()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->a(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;Ljava/lang/String;)Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;->h(Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity;)Landroid/widget/Button;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
:cond_21
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/ShareToSpotifyActivity$4; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method