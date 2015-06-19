.class final Lcom/bbm/ui/activities/ga;
.super Lcom/bbm/j/u;
.source "ConversationActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/fz;
.method constructor <init>(Lcom/bbm/ui/activities/fz;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ga;->a:Lcom/bbm/ui/activities/fz;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 6
const/4 v1, 0x1
const/4 v0, 0x0
iget-object v2, p0, Lcom/bbm/ui/activities/ga;->a:Lcom/bbm/ui/activities/fz;
iget-object v2, v2, Lcom/bbm/ui/activities/fz;->a:Lcom/bbm/d/fg;
iget-object v2, v2, Lcom/bbm/d/fg;->h:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
move-result v2
if-nez v2, :cond_85
iget-object v2, p0, Lcom/bbm/ui/activities/ga;->a:Lcom/bbm/ui/activities/fz;
iget-object v2, v2, Lcom/bbm/ui/activities/fz;->b:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v3, p0, Lcom/bbm/ui/activities/ga;->a:Lcom/bbm/ui/activities/fz;
iget-object v3, v3, Lcom/bbm/ui/activities/fz;->b:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v3
iget-object v4, p0, Lcom/bbm/ui/activities/ga;->a:Lcom/bbm/ui/activities/fz;
iget-object v4, v4, Lcom/bbm/ui/activities/fz;->a:Lcom/bbm/d/fg;
iget-object v4, v4, Lcom/bbm/d/fg;->h:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/bbm/d/a;->H(Ljava/lang/String;)Lcom/bbm/d/ex;
move-result-object v3
invoke-static {v2, v3}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Lcom/bbm/d/ex;)Lcom/bbm/d/ex;
iget-object v2, p0, Lcom/bbm/ui/activities/ga;->a:Lcom/bbm/ui/activities/fz;
iget-object v2, v2, Lcom/bbm/ui/activities/fz;->b:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->T(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/ex;
move-result-object v2
if-eqz v2, :cond_3f
iget-object v2, p0, Lcom/bbm/ui/activities/ga;->a:Lcom/bbm/ui/activities/fz;
iget-object v2, v2, Lcom/bbm/ui/activities/fz;->b:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->T(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/ex;
move-result-object v2
iget-object v2, v2, Lcom/bbm/d/ex;->m:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v2, v3, :cond_40
:cond_3f
:goto_3f
return v0
:cond_40
new-instance v0, Landroid/content/Intent;
iget-object v2, p0, Lcom/bbm/ui/activities/ga;->a:Lcom/bbm/ui/activities/fz;
iget-object v2, v2, Lcom/bbm/ui/activities/fz;->b:Lcom/bbm/ui/activities/ConversationActivity;
const-class v3, Lcom/bbm/ui/activities/FilePickerActivity;
invoke-direct {v0, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "extra_save_mode"
invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
const-string v2, "extra_save_suggested_filename"
iget-object v3, p0, Lcom/bbm/ui/activities/ga;->a:Lcom/bbm/ui/activities/fz;
iget-object v3, v3, Lcom/bbm/ui/activities/fz;->b:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->T(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/ex;
move-result-object v3
iget-object v3, v3, Lcom/bbm/d/ex;->j:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v2, "extra_active_file_transfert_id"
iget-object v3, p0, Lcom/bbm/ui/activities/ga;->a:Lcom/bbm/ui/activities/fz;
iget-object v3, v3, Lcom/bbm/ui/activities/fz;->b:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->T(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/ex;
move-result-object v3
iget-object v3, v3, Lcom/bbm/d/ex;->f:Ljava/lang/String;
invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
const-string v2, "extra_conversation_uri"
iget-object v3, p0, Lcom/bbm/ui/activities/ga;->a:Lcom/bbm/ui/activities/fz;
iget-object v3, v3, Lcom/bbm/ui/activities/fz;->b:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
iget-object v2, p0, Lcom/bbm/ui/activities/ga;->a:Lcom/bbm/ui/activities/fz;
iget-object v2, v2, Lcom/bbm/ui/activities/fz;->b:Lcom/bbm/ui/activities/ConversationActivity;
const/4 v3, 0x4
invoke-virtual {v2, v0, v3}, Lcom/bbm/ui/activities/ConversationActivity;->startActivityForResult(Landroid/content/Intent;I)V
:cond_83
:goto_83
move v0, v1
goto :goto_3f
:cond_85
iget-object v2, p0, Lcom/bbm/ui/activities/ga;->a:Lcom/bbm/ui/activities/fz;
iget-object v2, v2, Lcom/bbm/ui/activities/fz;->a:Lcom/bbm/d/fg;
iget-object v2, v2, Lcom/bbm/d/fg;->m:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
move-result v2
if-nez v2, :cond_83
iget-object v2, p0, Lcom/bbm/ui/activities/ga;->a:Lcom/bbm/ui/activities/fz;
iget-object v2, v2, Lcom/bbm/ui/activities/fz;->b:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/ga;->a:Lcom/bbm/ui/activities/fz;
iget-object v3, v3, Lcom/bbm/ui/activities/fz;->a:Lcom/bbm/d/fg;
iget-object v3, v3, Lcom/bbm/d/fg;->m:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/d/a;->w(Ljava/lang/String;)Lcom/bbm/d/fs;
move-result-object v2
if-eqz v2, :cond_3f
iget-object v3, v2, Lcom/bbm/d/fs;->r:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v3, v4, :cond_3f
iget-boolean v0, v2, Lcom/bbm/d/fs;->f:Z
if-eqz v0, :cond_c6
iget-object v0, p0, Lcom/bbm/ui/activities/ga;->a:Lcom/bbm/ui/activities/fz;
iget-object v0, v0, Lcom/bbm/ui/activities/fz;->b:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/activities/ga;->a:Lcom/bbm/ui/activities/fz;
iget-object v2, v2, Lcom/bbm/ui/activities/fz;->a:Lcom/bbm/d/fg;
iget-object v2, v2, Lcom/bbm/d/fg;->m:Ljava/lang/String;
new-instance v3, Lcom/bbm/d/ci;
invoke-direct {v3, v2}, Lcom/bbm/d/ci;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v3}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
goto :goto_83
:cond_c6
iget-object v0, p0, Lcom/bbm/ui/activities/ga;->a:Lcom/bbm/ui/activities/fz;
iget-object v0, v0, Lcom/bbm/ui/activities/fz;->b:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/activities/ga;->a:Lcom/bbm/ui/activities/fz;
iget-object v2, v2, Lcom/bbm/ui/activities/fz;->a:Lcom/bbm/d/fg;
iget-object v2, v2, Lcom/bbm/d/fg;->m:Ljava/lang/String;
new-instance v3, Lcom/bbm/d/cj;
invoke-direct {v3, v2}, Lcom/bbm/d/cj;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v3}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
goto :goto_83
.end method