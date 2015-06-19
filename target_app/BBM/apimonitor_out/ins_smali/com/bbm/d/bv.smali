.class public final Lcom/bbm/d/bv;
.super Lcom/bbm/d/dw;
.source "BbmdsProtocol.java"
.method constructor <init>(ZLjava/lang/String;Lcom/bbm/d/bw;)V
.registers 6
const-string v0, "inviteReceived"
invoke-direct {p0, v0}, Lcom/bbm/d/dw;-><init>(Ljava/lang/String;)V
const-string v0, "autoAccept"
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/bbm/d/bv;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "invite"
invoke-virtual {p0, v0, p2}, Lcom/bbm/d/bv;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "type"
invoke-virtual {p3}, Lcom/bbm/d/bw;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/bbm/d/bv;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public final a(Ljava/lang/String;)Lcom/bbm/d/bv;
.registers 3
const-string v0, "cookie"
invoke-virtual {p0, v0, p1}, Lcom/bbm/d/bv;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-object p0
.end method
.method public final bridge synthetic a()Lcom/bbm/f/ab;
.registers 2
invoke-super {p0}, Lcom/bbm/d/dw;->a()Lcom/bbm/f/ab;
move-result-object v0
return-object v0
.end method