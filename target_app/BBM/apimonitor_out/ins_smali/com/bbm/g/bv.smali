.class public final Lcom/bbm/g/bv;
.super Lcom/bbm/g/ct;
.source "GroupsProtocol.java"
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const-string v0, "groupListItemDelete"
invoke-direct {p0, v0}, Lcom/bbm/g/ct;-><init>(Ljava/lang/String;)V
const-string v0, "groupListUri"
invoke-virtual {p0, v0, p1}, Lcom/bbm/g/bv;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "itemId"
invoke-virtual {p0, v0, p2}, Lcom/bbm/g/bv;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public final a(Z)Lcom/bbm/g/bv;
.registers 4
const-string v0, "removeDeletedItem"
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/bbm/g/bv;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-object p0
.end method