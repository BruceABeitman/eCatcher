.class public final Lcom/bbm/d/be;
.super Lcom/bbm/d/dw;
.source "BbmdsProtocol.java"
.method constructor <init>(Ljava/lang/String;Lcom/bbm/d/bf;)V
.registers 5
const-string v0, "conferenceInvitationResponse"
invoke-direct {p0, v0}, Lcom/bbm/d/dw;-><init>(Ljava/lang/String;)V
const-string v0, "requestId"
invoke-virtual {p0, v0, p1}, Lcom/bbm/d/be;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "response"
invoke-virtual {p2}, Lcom/bbm/d/bf;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/bbm/d/be;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public final bridge synthetic a()Lcom/bbm/f/ab;
.registers 2
invoke-super {p0}, Lcom/bbm/d/dw;->a()Lcom/bbm/f/ab;
move-result-object v0
return-object v0
.end method