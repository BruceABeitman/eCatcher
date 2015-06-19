.class  Lorg/apache/b/a/c/a/a/u;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Ljava/util/Stack;
.field private b:Ljava/util/Stack;
.field private c:I
.field private d:I
.field private e:Z
.method constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Ljava/util/Stack;
invoke-direct {v0}, Ljava/util/Stack;-><init>()V
iput-object v0, p0, Lorg/apache/b/a/c/a/a/u;->a:Ljava/util/Stack;
new-instance v0, Ljava/util/Stack;
invoke-direct {v0}, Ljava/util/Stack;-><init>()V
iput-object v0, p0, Lorg/apache/b/a/c/a/a/u;->b:Ljava/util/Stack;
iput v1, p0, Lorg/apache/b/a/c/a/a/u;->c:I
iput v1, p0, Lorg/apache/b/a/c/a/a/u;->d:I
return-void
.end method
.method  a(Lorg/apache/b/a/c/a/a/v;)V
.registers 3
iget-object v0, p0, Lorg/apache/b/a/c/a/a/u;->a:Ljava/util/Stack;
invoke-virtual {v0, p1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
iget v0, p0, Lorg/apache/b/a/c/a/a/u;->c:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lorg/apache/b/a/c/a/a/u;->c:I
return-void
.end method
.method  a(Lorg/apache/b/a/c/a/a/v;I)V
.registers 5
iget-object v0, p0, Lorg/apache/b/a/c/a/a/u;->b:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iput v0, p0, Lorg/apache/b/a/c/a/a/u;->d:I
:goto_e
add-int/lit8 v0, p2, -0x1
if-lez p2, :cond_1e
invoke-virtual {p0}, Lorg/apache/b/a/c/a/a/u;->d()Lorg/apache/b/a/c/a/a/v;
move-result-object v1
invoke-interface {v1, p1}, Lorg/apache/b/a/c/a/a/v;->a(Lorg/apache/b/a/c/a/a/v;)V
invoke-interface {p1, v1, v0}, Lorg/apache/b/a/c/a/a/v;->a(Lorg/apache/b/a/c/a/a/v;I)V
move p2, v0
goto :goto_e
:cond_1e
invoke-interface {p1}, Lorg/apache/b/a/c/a/a/v;->b()V
invoke-virtual {p0, p1}, Lorg/apache/b/a/c/a/a/u;->a(Lorg/apache/b/a/c/a/a/v;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/b/a/c/a/a/u;->e:Z
return-void
.end method
.method  a(Lorg/apache/b/a/c/a/a/v;Z)V
.registers 5
if-eqz p2, :cond_2f
invoke-virtual {p0}, Lorg/apache/b/a/c/a/a/u;->f()I
move-result v1
iget-object v0, p0, Lorg/apache/b/a/c/a/a/u;->b:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iput v0, p0, Lorg/apache/b/a/c/a/a/u;->d:I
move v0, v1
:goto_15
add-int/lit8 v1, v0, -0x1
if-lez v0, :cond_25
invoke-virtual {p0}, Lorg/apache/b/a/c/a/a/u;->d()Lorg/apache/b/a/c/a/a/v;
move-result-object v0
invoke-interface {v0, p1}, Lorg/apache/b/a/c/a/a/v;->a(Lorg/apache/b/a/c/a/a/v;)V
invoke-interface {p1, v0, v1}, Lorg/apache/b/a/c/a/a/v;->a(Lorg/apache/b/a/c/a/a/v;I)V
move v0, v1
goto :goto_15
:cond_25
invoke-interface {p1}, Lorg/apache/b/a/c/a/a/v;->b()V
invoke-virtual {p0, p1}, Lorg/apache/b/a/c/a/a/u;->a(Lorg/apache/b/a/c/a/a/v;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lorg/apache/b/a/c/a/a/u;->e:Z
:goto_2e
return-void
:cond_2f
iget-object v0, p0, Lorg/apache/b/a/c/a/a/u;->b:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iput v0, p0, Lorg/apache/b/a/c/a/a/u;->d:I
const/4 v0, 0x0
iput-boolean v0, p0, Lorg/apache/b/a/c/a/a/u;->e:Z
goto :goto_2e
.end method
.method  a()Z
.registers 2
iget-boolean v0, p0, Lorg/apache/b/a/c/a/a/u;->e:Z
return v0
.end method
.method  b()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lorg/apache/b/a/c/a/a/u;->a:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V
iget-object v0, p0, Lorg/apache/b/a/c/a/a/u;->b:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->removeAllElements()V
iput v1, p0, Lorg/apache/b/a/c/a/a/u;->c:I
iput v1, p0, Lorg/apache/b/a/c/a/a/u;->d:I
return-void
.end method
.method  b(Lorg/apache/b/a/c/a/a/v;)V
.registers 4
:goto_0
iget v0, p0, Lorg/apache/b/a/c/a/a/u;->c:I
iget v1, p0, Lorg/apache/b/a/c/a/a/u;->d:I
if-le v0, v1, :cond_a
invoke-virtual {p0}, Lorg/apache/b/a/c/a/a/u;->d()Lorg/apache/b/a/c/a/a/v;
goto :goto_0
:cond_a
iget-object v0, p0, Lorg/apache/b/a/c/a/a/u;->b:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iput v0, p0, Lorg/apache/b/a/c/a/a/u;->d:I
return-void
.end method
.method  c()Lorg/apache/b/a/c/a/a/v;
.registers 3
iget-object v0, p0, Lorg/apache/b/a/c/a/a/u;->a:Ljava/util/Stack;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Ljava/util/Stack;->elementAt(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/b/a/c/a/a/v;
return-object v0
.end method
.method  c(Lorg/apache/b/a/c/a/a/v;)V
.registers 5
iget-object v0, p0, Lorg/apache/b/a/c/a/a/u;->b:Ljava/util/Stack;
new-instance v1, Ljava/lang/Integer;
iget v2, p0, Lorg/apache/b/a/c/a/a/u;->d:I
invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V
invoke-virtual {v0, v1}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;
iget v0, p0, Lorg/apache/b/a/c/a/a/u;->c:I
iput v0, p0, Lorg/apache/b/a/c/a/a/u;->d:I
invoke-interface {p1}, Lorg/apache/b/a/c/a/a/v;->a()V
return-void
.end method
.method  d()Lorg/apache/b/a/c/a/a/v;
.registers 3
iget v0, p0, Lorg/apache/b/a/c/a/a/u;->c:I
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lorg/apache/b/a/c/a/a/u;->c:I
iget v1, p0, Lorg/apache/b/a/c/a/a/u;->d:I
if-ge v0, v1, :cond_18
iget-object v0, p0, Lorg/apache/b/a/c/a/a/u;->b:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iput v0, p0, Lorg/apache/b/a/c/a/a/u;->d:I
:cond_18
iget-object v0, p0, Lorg/apache/b/a/c/a/a/u;->a:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->pop()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/b/a/c/a/a/v;
return-object v0
.end method
.method  e()Lorg/apache/b/a/c/a/a/v;
.registers 2
iget-object v0, p0, Lorg/apache/b/a/c/a/a/u;->a:Ljava/util/Stack;
invoke-virtual {v0}, Ljava/util/Stack;->peek()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/b/a/c/a/a/v;
return-object v0
.end method
.method  f()I
.registers 3
iget v0, p0, Lorg/apache/b/a/c/a/a/u;->c:I
iget v1, p0, Lorg/apache/b/a/c/a/a/u;->d:I
sub-int/2addr v0, v1
return v0
.end method