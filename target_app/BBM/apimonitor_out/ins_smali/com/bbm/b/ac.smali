.class public final Lcom/bbm/b/ac;
.super Lcom/bbm/b/ak;
.source "AdsProtocol.java"
.method public constructor <init>(Lcom/bbm/b/ad;Ljava/lang/String;)V
.registers 5
const-string v0, "hideAd"
invoke-direct {p0, v0}, Lcom/bbm/b/ak;-><init>(Ljava/lang/String;)V
const-string v0, "context"
invoke-virtual {p1}, Lcom/bbm/b/ad;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/bbm/b/ac;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "id"
invoke-virtual {p0, v0, p2}, Lcom/bbm/b/ac;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method