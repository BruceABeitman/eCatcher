.class final Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$3;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnCreateContextMenuListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$3; onCreateContextMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
iget-object v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
instance-of v1, v0, Lcom/spotify/mobile/android/model/n;
if-eqz v1, :cond_17
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$3;->a:Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;->a(Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity;)Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;
move-result-object v1
check-cast v0, Lcom/spotify/mobile/android/model/n;
invoke-virtual {v1, p1, v0}, Lcom/spotify/mobile/android/ui/menus/TrackMenuDelegate;->a(Landroid/view/ContextMenu;Lcom/spotify/mobile/android/model/n;)V
:cond_17
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/PlayHistoryActivity$3; onCreateContextMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method