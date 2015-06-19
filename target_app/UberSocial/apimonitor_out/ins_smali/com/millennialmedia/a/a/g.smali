.class  Lcom/millennialmedia/a/a/g;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"
.field private a:Lcom/millennialmedia/a/a/aa;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/aa;)V
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/g;->a:Lcom/millennialmedia/a/a/aa;
if-eqz v0, :cond_a
new-instance v0, Ljava/lang/AssertionError;
invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V
throw v0
:cond_a
iput-object p1, p0, Lcom/millennialmedia/a/a/g;->a:Lcom/millennialmedia/a/a/aa;
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.registers 4
iget-object v0, p0, Lcom/millennialmedia/a/a/g;->a:Lcom/millennialmedia/a/a/aa;
if-nez v0, :cond_a
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_a
iget-object v0, p0, Lcom/millennialmedia/a/a/g;->a:Lcom/millennialmedia/a/a/aa;
invoke-virtual {v0, p1, p2}, Lcom/millennialmedia/a/a/aa;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
return-void
.end method
.method public b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/g;->a:Lcom/millennialmedia/a/a/aa;
if-nez v0, :cond_a
new-instance v0, Ljava/lang/IllegalStateException;
invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V
throw v0
:cond_a
iget-object v0, p0, Lcom/millennialmedia/a/a/g;->a:Lcom/millennialmedia/a/a/aa;
invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/aa;->b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method