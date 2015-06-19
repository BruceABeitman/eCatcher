.class final Lcom/bbm/ui/activities/gp;
.super Lcom/bbm/j/u;
.source "ConversationActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/go;
.method constructor <init>(Lcom/bbm/ui/activities/go;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/gp;->a:Lcom/bbm/ui/activities/go;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 6
const/4 v1, 0x1
iget-object v0, p0, Lcom/bbm/ui/activities/gp;->a:Lcom/bbm/ui/activities/go;
iget-object v0, v0, Lcom/bbm/ui/activities/go;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->x(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/es;
iget-object v2, v0, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v2, v3, :cond_17
const/4 v0, 0x0
:goto_16
return v0
:cond_17
iget-boolean v2, v0, Lcom/bbm/d/es;->j:Z
if-eqz v2, :cond_1d
move v0, v1
goto :goto_16
:cond_1d
new-instance v2, Landroid/content/Intent;
iget-object v3, p0, Lcom/bbm/ui/activities/gp;->a:Lcom/bbm/ui/activities/go;
iget-object v3, v3, Lcom/bbm/ui/activities/go;->a:Lcom/bbm/ui/activities/ConversationActivity;
const-class v4, Lcom/bbm/ui/activities/ChannelDetailsActivity;
invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v3, "bbm_channel_uri"
iget-object v0, v0, Lcom/bbm/d/es;->a:Ljava/lang/String;
invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v0, p0, Lcom/bbm/ui/activities/gp;->a:Lcom/bbm/ui/activities/go;
iget-object v0, v0, Lcom/bbm/ui/activities/go;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v0, v2}, Lcom/bbm/ui/activities/ConversationActivity;->startActivity(Landroid/content/Intent;)V
move v0, v1
goto :goto_16
.end method