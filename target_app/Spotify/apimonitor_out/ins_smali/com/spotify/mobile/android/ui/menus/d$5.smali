.class final Lcom/spotify/mobile/android/ui/menus/d$5;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/MenuItem$OnMenuItemClickListener;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field final synthetic c:Lcom/spotify/mobile/android/util/ViewUri$SubView;
.field final synthetic d:Ljava/lang/String;
.field final synthetic e:Ljava/lang/String;
.field final synthetic f:Lcom/spotify/mobile/android/ui/menus/d;
.method constructor <init>(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
iput-object p1, p0, Lcom/spotify/mobile/android/ui/menus/d$5;->f:Lcom/spotify/mobile/android/ui/menus/d;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/menus/d$5;->a:Landroid/content/Context;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/menus/d$5;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object p4, p0, Lcom/spotify/mobile/android/ui/menus/d$5;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;
iput-object p5, p0, Lcom/spotify/mobile/android/ui/menus/d$5;->d:Ljava/lang/String;
iput-object p6, p0, Lcom/spotify/mobile/android/ui/menus/d$5;->e:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onMenuItemClick(Landroid/view/MenuItem;)Z
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/menus/d$5; onMenuItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->x:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$5;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/d$5;->a:Landroid/content/Context;
const/16 v2, 0x8
invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogActivity;->a(Landroid/content/Context;I)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
:goto_15
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/spotify/mobile/android/ui/menus/d$5; onMenuItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
:cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$5;->f:Lcom/spotify/mobile/android/ui/menus/d;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/d$5;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/d$5;->b:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v3, p0, Lcom/spotify/mobile/android/ui/menus/d$5;->c:Lcom/spotify/mobile/android/util/ViewUri$SubView;
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$Event;->p:Lcom/spotify/mobile/android/util/ClientEvent$Event;
invoke-static {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/menus/d;->a(Lcom/spotify/mobile/android/ui/menus/d;Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent$Event;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/menus/d$5;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/menus/d$5;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/d$5;->d:Ljava/lang/String;
invoke-static {v1, v2}, Lcom/spotify/mobile/android/ui/activity/AddToPlaylistActivity;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/ui/menus/d$5;->e:Ljava/lang/String;
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto :goto_15
.end method