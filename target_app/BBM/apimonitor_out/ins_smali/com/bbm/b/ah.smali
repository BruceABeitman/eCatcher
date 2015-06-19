.class public final Lcom/bbm/b/ah;
.super Lcom/bbm/b/ak;
.source "AdsProtocol.java"
.method constructor <init>(Lcom/bbm/b/ai;Lcom/bbm/b/aj;Ljava/lang/String;)V
.registers 6
const-string v0, "trackAd"
invoke-direct {p0, v0}, Lcom/bbm/b/ak;-><init>(Ljava/lang/String;)V
const-string v0, "action"
invoke-virtual {p1}, Lcom/bbm/b/ai;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/bbm/b/ah;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "context"
invoke-virtual {p2}, Lcom/bbm/b/aj;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/bbm/b/ah;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "id"
invoke-virtual {p0, v0, p3}, Lcom/bbm/b/ah;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method