.class public final Lcom/bbm/g/bp;
.super Lcom/bbm/g/ct;
.source "GroupsProtocol.java"
.method constructor <init>(Ljava/lang/String;)V
.registers 3
const-string v0, "groupLeave"
invoke-direct {p0, v0}, Lcom/bbm/g/ct;-><init>(Ljava/lang/String;)V
const-string v0, "groupUri"
invoke-virtual {p0, v0, p1}, Lcom/bbm/g/bp;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method