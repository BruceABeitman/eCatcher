.class final Lcom/bbm/ui/activities/gd;
.super Ljava/lang/Object;
.source "ConversationActivity.java"
.implements Lcom/bbm/j/s;
.field final synthetic a:Lcom/bbm/d/fg;
.field final synthetic b:J
.field final synthetic c:Lcom/bbm/ui/activities/gc;
.method constructor <init>(Lcom/bbm/ui/activities/gc;Lcom/bbm/d/fg;J)V
.registers 5
iput-object p1, p0, Lcom/bbm/ui/activities/gd;->c:Lcom/bbm/ui/activities/gc;
iput-object p2, p0, Lcom/bbm/ui/activities/gd;->a:Lcom/bbm/d/fg;
iput-wide p3, p0, Lcom/bbm/ui/activities/gd;->b:J
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method final a(Lcom/bbm/d/eg;J)V
.registers 8
iget-object v0, p1, Lcom/bbm/d/eg;->a:Ljava/lang/String;
sget-object v1, Lcom/bbm/d/az;->d:Lcom/bbm/d/az;
invoke-static {v0, v1}, Lcom/bbm/d/z;->a(Ljava/lang/String;Lcom/bbm/d/az;)Lcom/bbm/d/ay;
move-result-object v0
invoke-virtual {v0, p2, p3}, Lcom/bbm/d/ay;->a(J)Lcom/bbm/d/ay;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p1, Lcom/bbm/d/eg;->a:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v2
invoke-virtual {v2}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/ay;->a(Ljava/lang/String;)Lcom/bbm/d/ay;
new-instance v2, Lcom/bbm/ui/activities/gf;
iget-object v3, p1, Lcom/bbm/d/eg;->a:Ljava/lang/String;
invoke-direct {v2, p0, v3}, Lcom/bbm/ui/activities/gf;-><init>(Lcom/bbm/ui/activities/gd;Ljava/lang/String;)V
iget-object v3, p0, Lcom/bbm/ui/activities/gd;->c:Lcom/bbm/ui/activities/gc;
iget-object v3, v3, Lcom/bbm/ui/activities/gc;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v2, v1, v3}, Lcom/bbm/ui/d/e;->a(Ljava/lang/String;Ljava/lang/Object;)V
iget-object v1, p0, Lcom/bbm/ui/activities/gd;->c:Lcom/bbm/ui/activities/gc;
iget-object v1, v1, Lcom/bbm/ui/activities/gc;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
return-void
.end method
.method public final a()Z
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/gd;->c:Lcom/bbm/ui/activities/gc;
iget-object v0, v0, Lcom/bbm/ui/activities/gc;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/gd;->a:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->S(Ljava/lang/String;)Lcom/bbm/d/eg;
move-result-object v0
iget-object v1, v0, Lcom/bbm/d/eg;->h:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_18
const/4 v0, 0x0
:goto_17
return v0
:cond_18
invoke-static {}, Lcom/bbm/util/ac;->b()Z
move-result v1
if-eqz v1, :cond_33
new-instance v1, Lcom/bbm/ui/b/a;
iget-object v2, p0, Lcom/bbm/ui/activities/gd;->c:Lcom/bbm/ui/activities/gc;
iget-object v2, v2, Lcom/bbm/ui/activities/gc;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {v1, v2}, Lcom/bbm/ui/b/a;-><init>(Landroid/app/Activity;)V
new-instance v2, Lcom/bbm/ui/activities/ge;
invoke-direct {v2, p0, v0, v1}, Lcom/bbm/ui/activities/ge;-><init>(Lcom/bbm/ui/activities/gd;Lcom/bbm/d/eg;Lcom/bbm/ui/b/a;)V
iput-object v2, v1, Lcom/bbm/ui/b/a;->a:Lcom/bbm/ui/b/f;
invoke-virtual {v1}, Lcom/bbm/ui/b/a;->show()V
:goto_31
const/4 v0, 0x1
goto :goto_17
:cond_33
iget-wide v1, p0, Lcom/bbm/ui/activities/gd;->b:J
invoke-virtual {p0, v0, v1, v2}, Lcom/bbm/ui/activities/gd;->a(Lcom/bbm/d/eg;J)V
goto :goto_31
.end method