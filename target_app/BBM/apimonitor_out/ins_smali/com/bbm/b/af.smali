.class public final Lcom/bbm/b/af;
.super Lcom/bbm/b/ak;
.source "AdsProtocol.java"
.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
.registers 4
const-string v0, "requestListRemove"
invoke-direct {p0, v0}, Lcom/bbm/b/ak;-><init>(Ljava/lang/String;)V
const-string v0, "elements"
invoke-virtual {p0, v0, p1}, Lcom/bbm/b/af;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "type"
invoke-virtual {p0, v0, p2}, Lcom/bbm/b/af;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method