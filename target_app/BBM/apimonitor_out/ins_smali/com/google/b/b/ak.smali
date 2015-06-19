.class public final Lcom/google/b/b/ak;
.super Ljava/lang/Object;
.source "LocalCache.java"
.implements Lcom/google/b/b/d;
.implements Ljava/io/Serializable;
.field final a:Lcom/google/b/b/n;
.method public constructor <init>(Lcom/google/b/b/e;)V
.registers 3
new-instance v0, Lcom/google/b/b/n;
invoke-direct {v0, p1}, Lcom/google/b/b/n;-><init>(Lcom/google/b/b/e;)V
invoke-direct {p0, v0}, Lcom/google/b/b/ak;-><init>(Lcom/google/b/b/n;)V
return-void
.end method
.method private constructor <init>(Lcom/google/b/b/n;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/google/b/b/ak;->a:Lcom/google/b/b/n;
return-void
.end method
.method public final a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
iget-object v0, p0, Lcom/google/b/b/ak;->a:Lcom/google/b/b/n;
invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/google/b/b/n;->a(Ljava/lang/Object;)I
move-result v1
invoke-virtual {v0, v1}, Lcom/google/b/b/n;->a(I)Lcom/google/b/b/an;
move-result-object v2
invoke-virtual {v2, p1, v1}, Lcom/google/b/b/an;->a(Ljava/lang/Object;I)Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_1a
iget-object v0, v0, Lcom/google/b/b/n;->t:Lcom/google/b/b/c;
invoke-interface {v0}, Lcom/google/b/b/c;->b()V
:goto_19
return-object v1
:cond_1a
iget-object v0, v0, Lcom/google/b/b/n;->t:Lcom/google/b/b/c;
invoke-interface {v0}, Lcom/google/b/b/c;->a()V
goto :goto_19
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/google/b/b/ak;->a:Lcom/google/b/b/n;
invoke-virtual {v0}, Lcom/google/b/b/n;->clear()V
return-void
.end method
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Lcom/google/b/b/ak;->a:Lcom/google/b/b/n;
invoke-virtual {v0, p1, p2}, Lcom/google/b/b/n;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method