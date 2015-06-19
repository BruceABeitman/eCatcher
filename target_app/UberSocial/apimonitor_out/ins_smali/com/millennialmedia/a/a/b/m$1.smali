.class  Lcom/millennialmedia/a/a/b/m$1;
.super Lcom/millennialmedia/a/a/b/o;
.source "SourceFile"
.field final synthetic a:Lcom/millennialmedia/a/a/b/m;
.method constructor <init>(Lcom/millennialmedia/a/a/b/m;)V
.registers 4
iput-object p1, p0, Lcom/millennialmedia/a/a/b/m$1;->a:Lcom/millennialmedia/a/a/b/m;
iget-object v0, p1, Lcom/millennialmedia/a/a/b/m;->a:Lcom/millennialmedia/a/a/b/j;
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/millennialmedia/a/a/b/o;-><init>(Lcom/millennialmedia/a/a/b/j;Lcom/millennialmedia/a/a/b/j$1;)V
return-void
.end method
.method public a()Ljava/util/Map$Entry;
.registers 2
invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/m$1;->b()Lcom/millennialmedia/a/a/b/p;
move-result-object v0
return-object v0
.end method
.method public synthetic next()Ljava/lang/Object;
.registers 2
invoke-virtual {p0}, Lcom/millennialmedia/a/a/b/m$1;->a()Ljava/util/Map$Entry;
move-result-object v0
return-object v0
.end method