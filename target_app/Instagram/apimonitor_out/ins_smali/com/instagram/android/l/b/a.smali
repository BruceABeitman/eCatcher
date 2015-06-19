.class public final Lcom/instagram/android/l/b/a;
.super Lcom/instagram/api/k/a/b;
.source "DisconnectAddressBookRequest.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/api/k/a/b;-><init>()V
return-void
.end method
.method protected final a(Lcom/instagram/api/b/a;)V
.registers 2
return-void
.end method
.method public final c()I
.registers 2
sget v0, Lcom/instagram/common/a/c/a;->a:I
return v0
.end method
.method protected final d_()Ljava/lang/String;
.registers 2
const-string v0, "address_book/unlink/"
return-object v0
.end method
.method public final e_()Z
.registers 2
const/4 v0, 0x1
return v0
.end method