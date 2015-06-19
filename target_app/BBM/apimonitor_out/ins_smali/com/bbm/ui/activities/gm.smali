.class final Lcom/bbm/ui/activities/gm;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Lcom/bbm/ui/e/bi;
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/gm;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/d/fg;)V
.registers 4
const-string v0, "picture onLongClick"
const-class v1, Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/activities/gm;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0, p1}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Lcom/bbm/d/fg;)Lcom/bbm/d/fg;
iget-object v0, p0, Lcom/bbm/ui/activities/gm;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->U(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/j/u;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/u;->c()V
return-void
.end method