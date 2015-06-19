.class public Lcom/igexin/a/a/b/e;
.super Lcom/igexin/a/a/d/a;
.field  a:Lcom/igexin/a/a/b/b;
.field volatile b:Lcom/igexin/a/a/d/a/a;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/igexin/a/a/d/a;-><init>()V
return-void
.end method
.method public final a(Lcom/igexin/a/a/b/b;)V
.registers 2
iput-object p1, p0, Lcom/igexin/a/a/b/e;->a:Lcom/igexin/a/a/b/b;
return-void
.end method
.method public final a(Lcom/igexin/a/a/d/a/a;)V
.registers 2
iput-object p1, p0, Lcom/igexin/a/a/b/e;->b:Lcom/igexin/a/a/d/a/a;
return-void
.end method
.method public a_()I
.registers 2
const/16 v0, 0x801
return v0
.end method
.method public final b()Lcom/igexin/a/a/d/a/a;
.registers 2
iget-object v0, p0, Lcom/igexin/a/a/b/e;->b:Lcom/igexin/a/a/d/a/a;
return-object v0
.end method