.class final Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$4;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
.method constructor <init>(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$4; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v1, Landroid/app/AlertDialog$Builder;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-direct {v1, v0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
const v3, 0x7f0f003d
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v2, Landroid/content/Intent;
const-string v3, "android.media.action.IMAGE_CAPTURE"
invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-virtual {v3}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/content/Intent;->resolveActivity(Landroid/content/pm/PackageManager;)Landroid/content/ComponentName;
move-result-object v2
if-eqz v2, :cond_37
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
const v3, 0x7f0f003f
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_37
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->g(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Z
move-result v2
if-eqz v2, :cond_4b
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
const v3, 0x7f0f003e
invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_4b
const/4 v2, 0x1
invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setCancelable(Z)Landroid/app/AlertDialog$Builder;
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/CharSequence;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$4;->a:Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;
invoke-static {v2}, Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;->h(Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity;)Landroid/content/DialogInterface$OnClickListener;
move-result-object v2
invoke-virtual {v1, v0, v2}, Landroid/app/AlertDialog$Builder;->setItems([Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->show()Landroid/app/AlertDialog;
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/AnnotatePlaylistActivity$4; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method