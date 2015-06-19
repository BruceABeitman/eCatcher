.class final Lcom/bbm/ui/activities/gb;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Lcom/bbm/ui/e/cc;
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/gb;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/ui/e/bz;)V
.registers 5
iget-object v1, p0, Lcom/bbm/ui/activities/gb;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v0, p0, Lcom/bbm/ui/activities/gb;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->x(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/es;
iget-boolean v0, v0, Lcom/bbm/d/es;->k:Z
new-instance v2, Lcom/bbm/ui/e/cb;
invoke-direct {v2, p1, v1, v0}, Lcom/bbm/ui/e/cb;-><init>(Lcom/bbm/ui/e/bz;Landroid/app/Activity;Z)V
invoke-virtual {v2}, Lcom/bbm/j/u;->c()V
return-void
.end method