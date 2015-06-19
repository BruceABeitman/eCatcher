.class final Lcom/spotify/mobile/android/ui/menus/e$15;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field final synthetic c:Lcom/spotify/mobile/android/util/ClientEvent$Event;
.field final synthetic d:Ljava/lang/String;
.field final synthetic e:Ljava/lang/String;
.method constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$Event;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iput-object p1, p0, Lcom/spotify/mobile/android/ui/menus/e$15;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/menus/e$15;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/menus/e$15;->c:Lcom/spotify/mobile/android/util/ClientEvent$Event;
iput-object p4, p0, Lcom/spotify/mobile/android/ui/menus/e$15;->d:Ljava/lang/String;
iput-object p5, p0, Lcom/spotify/mobile/android/ui/menus/e$15;->e:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/menus/e$15; onMenuItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/e$15;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/e$15;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/e$15;->c:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/e$15;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/e$15;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/e$15;->d:Ljava/lang/String;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/e$15;->e:Ljava/lang/String;
invoke-static {v1, v2, v3}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/spotify/mobile/android/ui/menus/e$15; onMenuItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method