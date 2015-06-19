.class public final Lcom/bbm/g/cg;
.super Lcom/bbm/g/ct;
.source "GroupsProtocol.java"
.method constructor <init>(Z)V
.registers 4
const-string v0, "groupPersonalQRCodeDisplayed"
invoke-direct {p0, v0}, Lcom/bbm/g/ct;-><init>(Ljava/lang/String;)V
const-string v0, "displayed"
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/bbm/g/cg;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-void
.end method
.method public final a(Ljava/lang/String;)Lcom/bbm/g/cg;
.registers 3
const-string v0, "qrcode"
invoke-virtual {p0, v0, p1}, Lcom/bbm/g/cg;->a(Ljava/lang/String;Ljava/lang/Object;)V
return-object p0
.end method