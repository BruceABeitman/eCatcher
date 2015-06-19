.class final Lcom/bbm/k/b;
.super Lcom/bbm/d/b/l;
.source "GroupsCalendarProvider.java"
.field final synthetic b:Lcom/bbm/k/a;
.method constructor <init>(Lcom/bbm/k/a;Lcom/bbm/j/r;)V
.registers 3
iput-object p1, p0, Lcom/bbm/k/b;->b:Lcom/bbm/k/a;
invoke-direct {p0, p2}, Lcom/bbm/d/b/l;-><init>(Lcom/bbm/j/r;)V
return-void
.end method
.method public final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 8
check-cast p1, Lcom/bbm/g/a;
iget-object v1, p0, Lcom/bbm/k/b;->b:Lcom/bbm/k/a;
iget-object v2, p1, Lcom/bbm/g/a;->v:Ljava/lang/String;
iget-object v0, v1, Lcom/bbm/k/a;->c:Ljava/util/HashMap;
invoke-virtual {v0, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/b/l;
const-string v3, "getAppointmentsForGroup: got appointments for groupUri: %s"
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object v2, v4, v5
invoke-static {v3, v4}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
if-eqz v0, :cond_1c
:goto_1b
return-object v0
:cond_1c
new-instance v0, Lcom/bbm/k/c;
iget-object v3, v1, Lcom/bbm/k/a;->a:Lcom/bbm/g/am;
invoke-virtual {v3, v2}, Lcom/bbm/g/am;->r(Ljava/lang/String;)Lcom/bbm/j/w;
move-result-object v3
invoke-direct {v0, v1, v3, v2}, Lcom/bbm/k/c;-><init>(Lcom/bbm/k/a;Lcom/bbm/j/r;Ljava/lang/String;)V
iget-object v1, v1, Lcom/bbm/k/a;->c:Ljava/util/HashMap;
invoke-virtual {v1, v2, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_1b
.end method