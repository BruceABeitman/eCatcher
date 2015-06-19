.class public final Lcom/bbm/g/cr;
.super Lcom/bbm/g/ct;
.source "GroupsProtocol.java"
.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
.registers 4
const-string v0, "requestListChange"
invoke-direct {p0, v0}, Lcom/bbm/g/ct;-><init>(Ljava/lang/String;)V
const-string v0, "elements"
invoke-virtual {p0, v0, p1}, Lcom/bbm/g/cr;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "type"
invoke-virtual {p0, v0, p2}, Lcom/bbm/g/cr;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public final a(Ljava/lang/String;)Lcom/bbm/g/cr;
.registers 3
const-string v0, "id"
invoke-virtual {p0, v0, p1}, Lcom/bbm/g/cr;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-object p0
.end method