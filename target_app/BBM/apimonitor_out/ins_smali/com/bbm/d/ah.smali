.class public final Lcom/bbm/d/ah;
.super Lcom/bbm/d/dw;
.source "BbmdsProtocol.java"
.method public constructor <init>(ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 7
const-string v0, "channelBlockUser"
invoke-direct {p0, v0}, Lcom/bbm/d/dw;-><init>(Ljava/lang/String;)V
const-string v0, "block"
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/bbm/d/ah;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "channelUri"
invoke-virtual {p0, v0, p2}, Lcom/bbm/d/ah;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "commentId"
invoke-virtual {p0, v0, p3}, Lcom/bbm/d/ah;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "postId"
invoke-virtual {p0, v0, p4}, Lcom/bbm/d/ah;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public final bridge synthetic a()Lcom/bbm/f/ab;
.registers 2
invoke-super {p0}, Lcom/bbm/d/dw;->a()Lcom/bbm/f/ab;
move-result-object v0
return-object v0
.end method