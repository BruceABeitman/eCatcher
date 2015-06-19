.class final Lcom/spotify/mobile/android/ui/menus/d$18;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field final synthetic c:Lcom/spotify/mobile/android/util/ViewUri$SubView;
.field final synthetic d:Ljava/lang/String;
.field final synthetic e:Lcom/spotify/mobile/android/ui/menus/d;
.method constructor <init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;)V
.registers 6
iput-object p1, p0, Lcom/spotify/mobile/android/ui/menus/d$18;->e:Lcom/spotify/mobile/android/ui/menus/d;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/menus/d$18;->a:Landroid/content/Context;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/menus/d$18;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object p4, p0, Lcom/spotify/mobile/android/ui/menus/d$18;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;
iput-object p5, p0, Lcom/spotify/mobile/android/ui/menus/d$18;->d:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/menus/d$18; onMenuItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$18;->e:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/d$18;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/d$18;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/d$18;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$Event;->ak:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-static {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/menus/d;->a(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$18;->e:Lcom/spotify/mobile/android/ui/menus/d;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/menus/d;->b(Lcom/spotify/mobile/android/ui/menus/d;)Lcom/spotify/mobile/android/ui/actions/d;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$18;->a:Landroid/content/Context;
new-array v1, v5, [Ljava/lang/String;
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/d$18;->d:Ljava/lang/String;
aput-object v3, v1, v2
invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Ljava/util/List;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/menus/d$18; onMenuItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return v5
.end method