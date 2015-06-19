.class final Lcom/bbm/ui/activities/go;
.super Lcom/bbm/ui/z;
.source "ConversationActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;Landroid/app/Activity;Landroid/app/ActionBar;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
iput-object p1, p0, Lcom/bbm/ui/activities/go;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0, p2, p3, p4, p5}, Lcom/bbm/ui/z;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/go;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v0, p1}, Lcom/bbm/ui/activities/ConversationActivity;->setTitle(Ljava/lang/CharSequence;)V
return-void
.end method
.method public final a_()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/activities/go;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->X(Lcom/bbm/ui/activities/ConversationActivity;)Z
move-result v0
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/bbm/ui/activities/go;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/go;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->k(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->k(Ljava/lang/String;)V
:cond_17
iget-object v0, p0, Lcom/bbm/ui/activities/go;->a:Lcom/bbm/ui/activities/ConversationActivity;
new-instance v1, Lcom/bbm/ui/activities/gp;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/gp;-><init>(Lcom/bbm/ui/activities/go;)V
invoke-static {v0, v1}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Lcom/bbm/j/u;)Lcom/bbm/j/u;
iget-object v0, p0, Lcom/bbm/ui/activities/go;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->Y(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/u;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/u;->c()V
return-void
.end method