.class  Lcom/millennialmedia/a/a/b/n;
.super Ljava/util/AbstractSet;
.source "SourceFile"
.field final synthetic a:Lcom/millennialmedia/a/a/b/j;
.method constructor <init>(Lcom/millennialmedia/a/a/b/j;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/a/a/b/n;->a:Lcom/millennialmedia/a/a/b/j;
invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V
return-void
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/b/n;->a:Lcom/millennialmedia/a/a/b/j;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/b/j;->clear()V
return-void
.end method
.method public contains(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/b/n;->a:Lcom/millennialmedia/a/a/b/j;
invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/b/j;->containsKey(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public iterator()Ljava/util/Iterator;
.registers 2
new-instance v0, Lcom/millennialmedia/a/a/b/n$1;
invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/n$1;-><init>(Lcom/millennialmedia/a/a/b/n;)V
return-object v0
.end method
.method public remove(Ljava/lang/Object;)Z
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/b/n;->a:Lcom/millennialmedia/a/a/b/j;
invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/b/j;->b(Ljava/lang/Object;)Lcom/millennialmedia/a/a/b/p;
move-result-object v0
if-eqz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public size()I
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/b/n;->a:Lcom/millennialmedia/a/a/b/j;
iget v0, v0, Lcom/millennialmedia/a/a/b/j;->d:I
return v0
.end method