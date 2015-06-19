.class public abstract Lcom/bbm/d/a/a/a;
.super Ljava/lang/Object;
.source "BaseObservable.java"
.implements Lcom/bbm/j/g;
.field protected c:Lcom/bbm/j/i;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/bbm/j/i;
invoke-direct {v0}, Lcom/bbm/j/i;-><init>()V
iput-object v0, p0, Lcom/bbm/d/a/a/a;->c:Lcom/bbm/j/i;
return-void
.end method
.method public final a(Lcom/bbm/j/h;)V
.registers 3
iget-object v0, p0, Lcom/bbm/d/a/a/a;->c:Lcom/bbm/j/i;
invoke-virtual {v0, p1}, Lcom/bbm/j/i;->a(Lcom/bbm/j/h;)V
return-void
.end method
.method public final b(Lcom/bbm/j/h;)V
.registers 3
iget-object v0, p0, Lcom/bbm/d/a/a/a;->c:Lcom/bbm/j/i;
invoke-virtual {v0, p1}, Lcom/bbm/j/i;->b(Lcom/bbm/j/h;)V
return-void
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/bbm/d/a/a/a;->c:Lcom/bbm/j/i;
invoke-virtual {v0}, Lcom/bbm/j/i;->a()V
return-void
.end method