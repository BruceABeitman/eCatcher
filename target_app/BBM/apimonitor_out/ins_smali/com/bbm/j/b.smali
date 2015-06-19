.class final Lcom/bbm/j/b;
.super Ljava/lang/Object;
.source "ComputedValue.java"
.implements Lcom/bbm/j/q;
.field final synthetic a:Lcom/bbm/j/a;
.method constructor <init>(Lcom/bbm/j/a;)V
.registers 2
iput-object p1, p0, Lcom/bbm/j/b;->a:Lcom/bbm/j/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/bbm/j/b;->a:Lcom/bbm/j/a;
iget-object v1, p0, Lcom/bbm/j/b;->a:Lcom/bbm/j/a;
invoke-virtual {v1}, Lcom/bbm/j/a;->a()Ljava/lang/Object;
move-result-object v1
iput-object v1, v0, Lcom/bbm/j/a;->b:Ljava/lang/Object;
return-void
.end method