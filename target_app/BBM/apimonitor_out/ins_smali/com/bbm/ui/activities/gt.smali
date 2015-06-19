.class final Lcom/bbm/ui/activities/gt;
.super Lcom/bbm/ui/am;
.source "ConversationActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/gq;
.method constructor <init>(Lcom/bbm/ui/activities/gq;Landroid/content/Context;Landroid/app/ActionBar;Ljava/lang/String;)V
.registers 5
iput-object p1, p0, Lcom/bbm/ui/activities/gt;->a:Lcom/bbm/ui/activities/gq;
invoke-direct {p0, p2, p3, p4}, Lcom/bbm/ui/am;-><init>(Landroid/content/Context;Landroid/app/ActionBar;Ljava/lang/String;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/activities/gt;->a:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->X(Lcom/bbm/ui/activities/ConversationActivity;)Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/bbm/ui/activities/gt;->a:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/gt;->a:Lcom/bbm/ui/activities/gq;
iget-object v1, v1, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->k(Ljava/lang/String;)V
:cond_1d
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/gt;->a:Lcom/bbm/ui/activities/gq;
iget-object v1, v1, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
const-class v2, Lcom/bbm/ui/activities/ProfileActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "user_uri"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/gt;->a:Lcom/bbm/ui/activities/gq;
iget-object v1, v1, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v1, v0}, Lcom/bbm/ui/activities/ConversationActivity;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method protected final b()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/gt;->a:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
iget-object v0, p0, Lcom/bbm/ui/activities/gt;->a:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v1, p0, Lcom/bbm/ui/activities/gt;->a:Lcom/bbm/ui/activities/gq;
iget-object v1, v1, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/meetings/a;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public final b(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/gt;->a:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->X(Lcom/bbm/ui/activities/ConversationActivity;)Z
move-result v0
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/bbm/ui/activities/gt;->a:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/gt;->a:Lcom/bbm/ui/activities/gq;
iget-object v1, v1, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->k(Ljava/lang/String;)V
:cond_1d
iget-object v0, p0, Lcom/bbm/ui/activities/gt;->a:Lcom/bbm/ui/activities/gq;
iget-object v0, v0, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0, p1}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;Ljava/lang/String;)V
return-void
.end method
.method public final c()V
.registers 4
new-instance v0, Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/gt;->a:Lcom/bbm/ui/activities/gq;
iget-object v1, v1, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
const-class v2, Lcom/bbm/ui/activities/GlympseViewerActivity;
invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "EXTRA_CONV_URI"
iget-object v2, p0, Lcom/bbm/ui/activities/gt;->a:Lcom/bbm/ui/activities/gq;
iget-object v2, v2, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v1, p0, Lcom/bbm/ui/activities/gt;->a:Lcom/bbm/ui/activities/gq;
iget-object v1, v1, Lcom/bbm/ui/activities/gq;->a:Lcom/bbm/ui/activities/ConversationActivity;
const/16 v2, 0x9
invoke-virtual {v1, v0, v2}, Lcom/bbm/ui/activities/ConversationActivity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method