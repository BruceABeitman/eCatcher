.class public final Lcom/bbm/d/bi;
.super Lcom/bbm/d/dw;
.source "BbmdsProtocol.java"
.method constructor <init>(Ljava/lang/String;ZZ)V
.registers 6
const-string v0, "contactInvitationDelete"
invoke-direct {p0, v0}, Lcom/bbm/d/dw;-><init>(Ljava/lang/String;)V
const-string v0, "id"
invoke-virtual {p0, v0, p1}, Lcom/bbm/d/bi;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "ignore"
invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/bbm/d/bi;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "sendResponse"
invoke-static {p3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/bbm/d/bi;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public final bridge synthetic a()Lcom/bbm/f/ab;
.registers 2
invoke-super {p0}, Lcom/bbm/d/dw;->a()Lcom/bbm/f/ab;
move-result-object v0
return-object v0
.end method