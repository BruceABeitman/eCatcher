.class final Lcom/bbm/ui/activities/fz;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Lcom/bbm/ui/e/bh;
.field  a:Lcom/bbm/d/fg;
.field final synthetic b:Lcom/bbm/ui/activities/ConversationActivity;
.field private final c:Lcom/bbm/j/u;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/fz;->b:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/bbm/ui/activities/ga;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ga;-><init>(Lcom/bbm/ui/activities/fz;)V
iput-object v0, p0, Lcom/bbm/ui/activities/fz;->c:Lcom/bbm/j/u;
return-void
.end method
.method public final a(Lcom/bbm/d/fg;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/activities/fz;->a:Lcom/bbm/d/fg;
iget-object v0, p0, Lcom/bbm/ui/activities/fz;->c:Lcom/bbm/j/u;
invoke-virtual {v0}, Lcom/bbm/j/u;->c()V
return-void
.end method
.method public final b(Lcom/bbm/d/fg;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/bbm/ui/activities/fz;->c(Lcom/bbm/d/fg;)V
return-void
.end method
.method public final c(Lcom/bbm/d/fg;)V
.registers 5
iget-object v0, p1, Lcom/bbm/d/fg;->h:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_18
iget-object v0, p0, Lcom/bbm/ui/activities/fz;->b:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p1, Lcom/bbm/d/fg;->h:Ljava/lang/String;
new-instance v2, Lcom/bbm/d/bm;
invoke-direct {v2, v1}, Lcom/bbm/d/bm;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
:cond_18
iget-object v0, p1, Lcom/bbm/d/fg;->m:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_30
iget-object v0, p0, Lcom/bbm/ui/activities/fz;->b:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p1, Lcom/bbm/d/fg;->m:Ljava/lang/String;
new-instance v2, Lcom/bbm/d/ck;
invoke-direct {v2, v1}, Lcom/bbm/d/ck;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v2}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
:cond_30
return-void
.end method