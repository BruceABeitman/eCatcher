.class public final Lcom/instagram/bugreport/a/e;
.super Lcom/instagram/common/a/a/c;
.source "FlytrapResponse.java"
.field  a:Ljava/lang/String;
.field  b:Ljava/lang/String;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/instagram/common/a/a/c;-><init>()V
return-void
.end method
.method public final f_()Z
.registers 2
invoke-super {p0}, Lcom/instagram/common/a/a/c;->f_()Z
move-result v0
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/instagram/bugreport/a/e;->b:Ljava/lang/String;
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method