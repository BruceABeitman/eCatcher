.class public final Lcom/bbm/g/cj;
.super Lcom/bbm/g/ct;
.source "GroupsProtocol.java"
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
const-string v0, "groupPictureFavoriteTagAdd"
invoke-direct {p0, v0}, Lcom/bbm/g/ct;-><init>(Ljava/lang/String;)V
const-string v0, "pictureUri"
invoke-virtual {p0, v0, p1}, Lcom/bbm/g/cj;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public final a(Ljava/lang/String;)Lcom/bbm/g/cj;
.registers 3
const-string v0, "message"
invoke-virtual {p0, v0, p1}, Lcom/bbm/g/cj;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-object p0
.end method