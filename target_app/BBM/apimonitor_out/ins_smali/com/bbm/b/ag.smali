.class public final Lcom/bbm/b/ag;
.super Lcom/bbm/b/ak;
.source "AdsProtocol.java"
.method constructor <init>()V
.registers 2
const-string v0, "requestPostAd"
invoke-direct {p0, v0}, Lcom/bbm/b/ak;-><init>(Ljava/lang/String;)V
return-void
.end method
.method public final a(Z)Lcom/bbm/b/ag;
.registers 4
const-string v0, "forceRequest"
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/bbm/b/ag;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-object p0
.end method