.class public final Lcom/bbm/g/cc;
.super Lcom/bbm/g/ct;
.source "GroupsProtocol.java"
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const-string v0, "groupMemberAdminRemove"
invoke-direct {p0, v0}, Lcom/bbm/g/ct;-><init>(Ljava/lang/String;)V
const-string v0, "contactUri"
invoke-virtual {p0, v0, p1}, Lcom/bbm/g/cc;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "groupUri"
invoke-virtual {p0, v0, p2}, Lcom/bbm/g/cc;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method