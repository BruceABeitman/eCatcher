.class public final Lcom/bbm/d/ay;
.super Lcom/bbm/d/dw;
.source "BbmdsProtocol.java"
.method constructor <init>(Ljava/lang/String;Lcom/bbm/d/az;)V
.registers 5
const-string v0, "channelSubscribe"
invoke-direct {p0, v0}, Lcom/bbm/d/dw;-><init>(Ljava/lang/String;)V
const-string v0, "channelUri"
invoke-virtual {p0, v0, p1}, Lcom/bbm/d/ay;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "reason"
invoke-virtual {p2}, Lcom/bbm/d/az;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/bbm/d/ay;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public final a(J)Lcom/bbm/d/ay;
.registers 5
const-string v0, "minAge"
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/bbm/d/ay;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-object p0
.end method
.method public final a(Ljava/lang/String;)Lcom/bbm/d/ay;
.registers 3
const-string v0, "cookie"
invoke-virtual {p0, v0, p1}, Lcom/bbm/d/ay;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-object p0
.end method
.method public final bridge synthetic a()Lcom/bbm/f/ab;
.registers 2
invoke-super {p0}, Lcom/bbm/d/dw;->a()Lcom/bbm/f/ab;
move-result-object v0
return-object v0
.end method