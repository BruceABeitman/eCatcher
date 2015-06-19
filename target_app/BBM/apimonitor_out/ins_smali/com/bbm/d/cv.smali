.class public final Lcom/bbm/d/cv;
.super Lcom/bbm/d/dw;
.source "BbmdsProtocol.java"
.method constructor <init>(Ljava/util/List;J)V
.registers 6
const-string v0, "requestChangeCategory"
invoke-direct {p0, v0}, Lcom/bbm/d/dw;-><init>(Ljava/lang/String;)V
const-string v0, "contacts"
invoke-virtual {p0, v0, p1}, Lcom/bbm/d/cv;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "newCategoryId"
invoke-static {p2, p3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/bbm/d/cv;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public final bridge synthetic a()Lcom/bbm/f/ab;
.registers 2
invoke-super {p0}, Lcom/bbm/d/dw;->a()Lcom/bbm/f/ab;
move-result-object v0
return-object v0
.end method