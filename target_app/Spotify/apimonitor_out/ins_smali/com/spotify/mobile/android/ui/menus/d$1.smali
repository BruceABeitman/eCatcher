.class final Lcom/spotify/mobile/android/ui/menus/d$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field final synthetic c:Lcom/spotify/mobile/android/util/ViewUri$SubView;
.field final synthetic d:Landroid/net/Uri;
.field final synthetic e:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
.field final synthetic f:Lcom/spotify/mobile/android/ui/menus/d;
.method constructor <init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Landroid/net/Uri;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;)V
.registers 7
iput-object p1, p0, Lcom/spotify/mobile/android/ui/menus/d$1;->f:Lcom/spotify/mobile/android/ui/menus/d;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/menus/d$1;->a:Landroid/content/Context;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/menus/d$1;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object p4, p0, Lcom/spotify/mobile/android/ui/menus/d$1;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;
iput-object p5, p0, Lcom/spotify/mobile/android/ui/menus/d$1;->d:Landroid/net/Uri;
iput-object p6, p0, Lcom/spotify/mobile/android/ui/menus/d$1;->e:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/menus/d$1; onMenuItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$1;->f:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/d$1;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/d$1;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/d$1;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$Event;->n:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-static {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/menus/d;->a(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$1;->f:Lcom/spotify/mobile/android/ui/menus/d;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/menus/d;->a(Lcom/spotify/mobile/android/ui/menus/d;)Lcom/spotify/mobile/android/ui/actions/c;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$1;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/d$1;->d:Landroid/net/Uri;
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/actions/c;->a(Landroid/content/Context;Landroid/net/Uri;Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$1;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/d$1;->e:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dp;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/spotify/mobile/android/ui/menus/d$1; onMenuItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method