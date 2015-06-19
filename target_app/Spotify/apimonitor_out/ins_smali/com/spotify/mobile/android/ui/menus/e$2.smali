.class final Lcom/spotify/mobile/android/ui/menus/e$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field final synthetic c:Z
.field final synthetic d:Ljava/lang/String;
.method constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;ZLjava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/spotify/mobile/android/ui/menus/e$2;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/menus/e$2;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-boolean p3, p0, Lcom/spotify/mobile/android/ui/menus/e$2;->c:Z
iput-object p4, p0, Lcom/spotify/mobile/android/ui/menus/e$2;->d:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/menus/e$2; onMenuItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
const/4 v1, 0x1
iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/e$2;->a:Landroid/content/Context;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/menus/e$2;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/menus/e$2;->c:Z
if-eqz v0, :cond_2b
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->F:Lcom/spotify/mobile/android/util/ClientEvent$Event;
:goto_c
invoke-static {v3, v4, v0}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
const-class v0, Lcom/spotify/mobile/android/ui/actions/c;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/e$2;->a:Landroid/content/Context;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/menus/e$2;->d:Ljava/lang/String;
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/menus/e$2;->c:Z
if-nez v0, :cond_2e
move v0, v1
:goto_1d
invoke-static {v3, v4, v0}, Lcom/spotify/mobile/android/ui/actions/c;->b(Landroid/content/Context;Ljava/lang/String;Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/e$2;->a:Landroid/content/Context;
iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/menus/e$2;->c:Z
if-nez v3, :cond_27
move v2, v1
:cond_27
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/dp;->c(Landroid/content/Context;Z)V
move v2, v1
const-string v1, " - Lcom/spotify/mobile/android/ui/menus/e$2; onMenuItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v1, v2
return v1
:cond_2b
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$Event;->G:Lcom/spotify/mobile/android/util/ClientEvent$Event;
goto :goto_c
:cond_2e
move v0, v2
goto :goto_1d
.end method