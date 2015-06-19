.class public final Lcom/bbm/g/ba;
.super Lcom/bbm/g/ct;
.source "GroupsProtocol.java"
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const-string v0, "groupClearSplatListItem"
invoke-direct {p0, v0}, Lcom/bbm/g/ct;-><init>(Ljava/lang/String;)V
const-string v0, "itemId"
invoke-virtual {p0, v0, p1}, Lcom/bbm/g/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "listUri"
invoke-virtual {p0, v0, p2}, Lcom/bbm/g/ba;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method