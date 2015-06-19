.class final Lcom/bbm/k/d;
.super Ljava/lang/Object;
.source "GroupsCalendarProvider.java"
.implements Lcom/bbm/util/cj;
.field final synthetic a:Lcom/bbm/k/a;
.method constructor <init>(Lcom/bbm/k/a;)V
.registers 2
iput-object p1, p0, Lcom/bbm/k/d;->a:Lcom/bbm/k/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final bridge synthetic a(Ljava/lang/Object;)Ljava/lang/String;
.registers 4
check-cast p1, Lcom/bbm/k/g;
const-string v0, ""
iget-object v1, p1, Lcom/bbm/k/g;->a:Lcom/bbm/g/b;
iget-object v1, v1, Lcom/bbm/g/b;->o:Ljava/lang/String;
if-eqz v1, :cond_e
iget-object v0, p1, Lcom/bbm/k/g;->a:Lcom/bbm/g/b;
iget-object v0, v0, Lcom/bbm/g/b;->o:Ljava/lang/String;
:cond_e
return-object v0
.end method