.class public final Lcom/bbm/d/cz;
.super Lcom/bbm/d/dw;
.source "BbmdsProtocol.java"
.method constructor <init>(Ljava/util/List;Ljava/lang/String;)V
.registers 4
const-string v0, "requestListChange"
invoke-direct {p0, v0}, Lcom/bbm/d/dw;-><init>(Ljava/lang/String;)V
const-string v0, "elements"
invoke-virtual {p0, v0, p1}, Lcom/bbm/d/cz;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "type"
invoke-virtual {p0, v0, p2}, Lcom/bbm/d/cz;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public final bridge synthetic a()Lcom/bbm/f/ab;
.registers 2
invoke-super {p0}, Lcom/bbm/d/dw;->a()Lcom/bbm/f/ab;
move-result-object v0
return-object v0
.end method