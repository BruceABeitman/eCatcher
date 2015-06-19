.class final Lcom/spotify/mobile/android/spotlets/activityfeed/a$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
.method constructor <init>(Lcom/spotify/mobile/android/spotlets/activityfeed/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$4;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/activityfeed/a$4; onItemLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v0, 0x7f0a011b
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a013c
invoke-virtual {v0, v1}, Landroid/view/View;->getTag(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/contextmenu/a/a;
if-eqz v0, :cond_1d
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/activityfeed/a$4;->a:Lcom/spotify/mobile/android/spotlets/activityfeed/a;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/activityfeed/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/contextmenu/a/a;->a(Landroid/content/Context;)V
const/4 v0, 0x1
:goto_1c
move v2, v0
const-string v1, " - Lcom/spotify/mobile/android/spotlets/activityfeed/a$4; onItemLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_1d
const/4 v0, 0x0
goto :goto_1c
.end method