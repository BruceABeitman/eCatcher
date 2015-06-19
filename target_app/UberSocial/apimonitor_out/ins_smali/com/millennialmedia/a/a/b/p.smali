.class final Lcom/millennialmedia/a/a/b/p;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/util/Map$Entry;
.field  a:Lcom/millennialmedia/a/a/b/p;
.field  b:Lcom/millennialmedia/a/a/b/p;
.field  c:Lcom/millennialmedia/a/a/b/p;
.field  d:Lcom/millennialmedia/a/a/b/p;
.field  e:Lcom/millennialmedia/a/a/b/p;
.field final f:Ljava/lang/Object;
.field final g:I
.field  h:Ljava/lang/Object;
.field  i:I
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/millennialmedia/a/a/b/p;->f:Ljava/lang/Object;
const/4 v0, -0x1
iput v0, p0, Lcom/millennialmedia/a/a/b/p;->g:I
iput-object p0, p0, Lcom/millennialmedia/a/a/b/p;->e:Lcom/millennialmedia/a/a/b/p;
iput-object p0, p0, Lcom/millennialmedia/a/a/b/p;->d:Lcom/millennialmedia/a/a/b/p;
return-void
.end method
.method constructor <init>(Lcom/millennialmedia/a/a/b/p;Ljava/lang/Object;ILcom/millennialmedia/a/a/b/p;Lcom/millennialmedia/a/a/b/p;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/millennialmedia/a/a/b/p;->a:Lcom/millennialmedia/a/a/b/p;
iput-object p2, p0, Lcom/millennialmedia/a/a/b/p;->f:Ljava/lang/Object;
iput p3, p0, Lcom/millennialmedia/a/a/b/p;->g:I
const/4 v0, 0x1
iput v0, p0, Lcom/millennialmedia/a/a/b/p;->i:I
iput-object p4, p0, Lcom/millennialmedia/a/a/b/p;->d:Lcom/millennialmedia/a/a/b/p;
iput-object p5, p0, Lcom/millennialmedia/a/a/b/p;->e:Lcom/millennialmedia/a/a/b/p;
iput-object p0, p5, Lcom/millennialmedia/a/a/b/p;->d:Lcom/millennialmedia/a/a/b/p;
iput-object p0, p4, Lcom/millennialmedia/a/a/b/p;->e:Lcom/millennialmedia/a/a/b/p;
return-void
.end method
.method public a()Lcom/millennialmedia/a/a/b/p;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;
:goto_2
if-eqz v0, :cond_9
iget-object v1, v0, Lcom/millennialmedia/a/a/b/p;->b:Lcom/millennialmedia/a/a/b/p;
move-object p0, v0
move-object v0, v1
goto :goto_2
:cond_9
return-object p0
.end method
.method public b()Lcom/millennialmedia/a/a/b/p;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;
:goto_2
if-eqz v0, :cond_9
iget-object v1, v0, Lcom/millennialmedia/a/a/b/p;->c:Lcom/millennialmedia/a/a/b/p;
move-object p0, v0
move-object v0, v1
goto :goto_2
:cond_9
return-object p0
.end method
.method public equals(Ljava/lang/Object;)Z
.registers 5
const/4 v0, 0x0
instance-of v1, p1, Ljava/util/Map$Entry;
if-eqz v1, :cond_1c
check-cast p1, Ljava/util/Map$Entry;
iget-object v1, p0, Lcom/millennialmedia/a/a/b/p;->f:Ljava/lang/Object;
if-nez v1, :cond_1d
invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_1c
:goto_11
iget-object v1, p0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;
if-nez v1, :cond_2a
invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v1
if-nez v1, :cond_1c
:goto_1b
const/4 v0, 0x1
:cond_1c
return v0
:cond_1d
iget-object v1, p0, Lcom/millennialmedia/a/a/b/p;->f:Ljava/lang/Object;
invoke-interface {p1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1c
goto :goto_11
:cond_2a
iget-object v1, p0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;
invoke-interface {p1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_1c
goto :goto_1b
.end method
.method public getKey()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/b/p;->f:Ljava/lang/Object;
return-object v0
.end method
.method public getValue()Ljava/lang/Object;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;
return-object v0
.end method
.method public hashCode()I
.registers 4
const/4 v1, 0x0
iget-object v0, p0, Lcom/millennialmedia/a/a/b/p;->f:Ljava/lang/Object;
if-nez v0, :cond_c
move v0, v1
:goto_6
iget-object v2, p0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;
if-nez v2, :cond_13
:goto_a
xor-int/2addr v0, v1
return v0
:cond_c
iget-object v0, p0, Lcom/millennialmedia/a/a/b/p;->f:Ljava/lang/Object;
invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I
move-result v0
goto :goto_6
:cond_13
iget-object v1, p0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;
invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I
move-result v1
goto :goto_a
.end method
.method public setValue(Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;
iput-object p1, p0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;
return-object v0
.end method
.method public toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p0, Lcom/millennialmedia/a/a/b/p;->f:Ljava/lang/Object;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "="
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-object v1, p0, Lcom/millennialmedia/a/a/b/p;->h:Ljava/lang/Object;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method