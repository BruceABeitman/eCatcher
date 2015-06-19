.class final Lcom/bbm/ui/activities/aaz;
.super Ljava/lang/Object;
.source "OwnedChannelLobbyActivity.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;
.method constructor <init>(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/aaz;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/activities/aaz; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Channel URL:"
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/ui/activities/aaz;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, " post clicked"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-class v1, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/aaz;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->a(Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;)Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/views/ChannelLobbyPostsPaneView;->getPostExists()Z
move-result v0
if-eqz v0, :cond_46
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/aaz;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;
const-class v2, Lcom/bbm/ui/activities/ViewOwnedChannelActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "bbm_channel_uri"
iget-object v2, p0, Lcom/bbm/ui/activities/aaz;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/aaz;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;
invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->startActivity(Landroid/content/Intent;)V
:goto_45
const-string v1, " - Lcom/bbm/ui/activities/aaz; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_46
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/aaz;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;
const-class v2, Lcom/bbm/ui/activities/AddChannelPostActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "channelURI"
iget-object v2, p0, Lcom/bbm/ui/activities/aaz;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/aaz;->a:Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;
invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/OwnedChannelLobbyActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_45
.end method