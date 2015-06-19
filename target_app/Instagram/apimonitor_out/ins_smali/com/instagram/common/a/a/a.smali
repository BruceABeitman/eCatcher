.class public abstract Lcom/instagram/common/a/a/a;
.super Ljava/lang/Object;
.source "AbstractRequest.java"
.implements Lcom/instagram/common/a/d/a;
.field protected a:Lcom/instagram/common/a/a/l;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/instagram/common/a/a/l;)Lcom/instagram/common/a/a/a;
.registers 2
iput-object p1, p0, Lcom/instagram/common/a/a/a;->a:Lcom/instagram/common/a/a/l;
return-object p0
.end method
.method protected a(Ljava/lang/Object;)V
.registers 3
iget-object v0, p0, Lcom/instagram/common/a/a/a;->a:Lcom/instagram/common/a/a/l;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/common/a/a/a;->a:Lcom/instagram/common/a/a/l;
invoke-virtual {v0, p1}, Lcom/instagram/common/a/a/l;->b(Ljava/lang/Object;)V
:cond_9
return-void
.end method
.method public abstract c_()Ljava/lang/String;
.end method
.method public d()Lcom/instagram/common/a/a/p;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method protected f()Ljava/lang/Object;
.registers 3
invoke-static {p0}, Lcom/instagram/common/a/a/n;->a(Lcom/instagram/common/a/a/a;)Ljava/lang/Object;
move-result-object v0
iget-object v1, p0, Lcom/instagram/common/a/a/a;->a:Lcom/instagram/common/a/a/l;
if-eqz v1, :cond_a
iget-object v1, p0, Lcom/instagram/common/a/a/a;->a:Lcom/instagram/common/a/a/l;
:cond_a
return-object v0
.end method
.method protected g()Ljava/lang/Object;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method protected final j()V
.registers 2
iget-object v0, p0, Lcom/instagram/common/a/a/a;->a:Lcom/instagram/common/a/a/l;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/common/a/a/a;->a:Lcom/instagram/common/a/a/l;
invoke-virtual {v0}, Lcom/instagram/common/a/a/l;->a()V
:cond_9
return-void
.end method
.method public m()Ljava/util/List;
.registers 2
const/4 v0, 0x0
return-object v0
.end method