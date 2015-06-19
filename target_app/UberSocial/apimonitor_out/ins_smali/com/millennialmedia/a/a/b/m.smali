.class  Lcom/millennialmedia/a/a/b/m;
.super Ljava/util/AbstractSet;
.source "SourceFile"
.field final synthetic a:Lcom/millennialmedia/a/a/b/j;
.method constructor <init>(Lcom/millennialmedia/a/a/b/j;)V
.registers 2
iput-object p1, p0, Lcom/millennialmedia/a/a/b/m;->a:Lcom/millennialmedia/a/a/b/j;
invoke-direct {p0}, Ljava/util/AbstractSet;-><init>()V
return-void
.end method
.method public clear()V
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/b/m;->a:Lcom/millennialmedia/a/a/b/j;
invoke-virtual {v0}, Lcom/millennialmedia/a/a/b/j;->clear()V
return-void
.end method
.method public contains(Ljava/lang/Object;)Z
.registers 3
instance-of v0, p1, Ljava/util/Map$Entry;
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/millennialmedia/a/a/b/m;->a:Lcom/millennialmedia/a/a/b/j;
check-cast p1, Ljava/util/Map$Entry;
invoke-virtual {v0, p1}, Lcom/millennialmedia/a/a/b/j;->a(Ljava/util/Map$Entry;)Lcom/millennialmedia/a/a/b/p;
move-result-object v0
if-eqz v0, :cond_10
const/4 v0, 0x1
:goto_f
return v0
:cond_10
const/4 v0, 0x0
goto :goto_f
.end method
.method public iterator()Ljava/util/Iterator;
.registers 2
new-instance v0, Lcom/millennialmedia/a/a/b/m$1;
invoke-direct {v0, p0}, Lcom/millennialmedia/a/a/b/m$1;-><init>(Lcom/millennialmedia/a/a/b/m;)V
return-object v0
.end method
.method public remove(Ljava/lang/Object;)Z
.registers 5
const/4 v1, 0x1
const/4 v0, 0x0
instance-of v2, p1, Ljava/util/Map$Entry;
if-nez v2, :cond_7
:goto_6
:cond_6
return v0
:cond_7
iget-object v2, p0, Lcom/millennialmedia/a/a/b/m;->a:Lcom/millennialmedia/a/a/b/j;
check-cast p1, Ljava/util/Map$Entry;
invoke-virtual {v2, p1}, Lcom/millennialmedia/a/a/b/j;->a(Ljava/util/Map$Entry;)Lcom/millennialmedia/a/a/b/p;
move-result-object v2
if-eqz v2, :cond_6
iget-object v0, p0, Lcom/millennialmedia/a/a/b/m;->a:Lcom/millennialmedia/a/a/b/j;
invoke-virtual {v0, v2, v1}, Lcom/millennialmedia/a/a/b/j;->a(Lcom/millennialmedia/a/a/b/p;Z)V
move v0, v1
goto :goto_6
.end method
.method public size()I
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/b/m;->a:Lcom/millennialmedia/a/a/b/j;
iget v0, v0, Lcom/millennialmedia/a/a/b/j;->d:I
return v0
.end method