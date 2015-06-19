.class final Lcom/bbm/ui/activities/gc;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Lcom/bbm/ui/e/bg;
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/gc;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/bbm/d/fg;)V
.registers 3
iget-object v0, p1, Lcom/bbm/d/fg;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_10
new-instance v0, Lcom/bbm/ui/activities/gg;
invoke-direct {v0, p0, p1}, Lcom/bbm/ui/activities/gg;-><init>(Lcom/bbm/ui/activities/gc;Lcom/bbm/d/fg;)V
invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
:cond_10
return-void
.end method
.method public final a(Lcom/bbm/d/fg;J)V
.registers 5
iget-object v0, p1, Lcom/bbm/d/fg;->c:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_10
new-instance v0, Lcom/bbm/ui/activities/gd;
invoke-direct {v0, p0, p1, p2, p3}, Lcom/bbm/ui/activities/gd;-><init>(Lcom/bbm/ui/activities/gc;Lcom/bbm/d/fg;J)V
invoke-static {v0}, Lcom/bbm/j/u;->a(Lcom/bbm/j/s;)V
:cond_10
return-void
.end method