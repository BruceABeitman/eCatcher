.class public final Lcom/bbm/g/cm;
.super Lcom/bbm/g/ct;
.source "GroupsProtocol.java"
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 6
const-string v0, "groupPictureShare"
invoke-direct {p0, v0}, Lcom/bbm/g/ct;-><init>(Ljava/lang/String;)V
const-string v0, "caption"
invoke-virtual {p0, v0, p1}, Lcom/bbm/g/cm;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "groupUri"
invoke-virtual {p0, v0, p2}, Lcom/bbm/g/cm;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "picturePath"
invoke-virtual {p0, v0, p3}, Lcom/bbm/g/cm;->a(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "picturePathThumbnail"
invoke-virtual {p0, v0, p4}, Lcom/bbm/g/cm;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method