.class final Lcom/millennialmedia/a/a/b/a/p$1;
.super Lcom/millennialmedia/a/a/aa;
.source "SourceFile"
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/millennialmedia/a/a/aa;-><init>()V
return-void
.end method
.method public a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Class;
.registers 4
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->f()Lcom/millennialmedia/a/a/d/c;
move-result-object v0
sget-object v1, Lcom/millennialmedia/a/a/d/c;->i:Lcom/millennialmedia/a/a/d/c;
if-ne v0, v1, :cond_d
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/a;->j()V
const/4 v0, 0x0
return-object v0
:cond_d
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Attempted to deserialize a java.lang.Class. Forgot to register a type adapter?"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Class;)V
.registers 6
if-nez p2, :cond_6
invoke-virtual {p1}, Lcom/millennialmedia/a/a/d/d;->f()Lcom/millennialmedia/a/a/d/d;
return-void
:cond_6
new-instance v0, Ljava/lang/UnsupportedOperationException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Attempted to serialize java.lang.Class: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ". Forgot to register a type adapter?"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public bridge synthetic a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Object;)V
.registers 3
check-cast p2, Ljava/lang/Class;
invoke-virtual {p0, p1, p2}, Lcom/millennialmedia/a/a/b/a/p$1;->a(Lcom/millennialmedia/a/a/d/d;Ljava/lang/Class;)V
return-void
.end method
.method public synthetic b(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Object;
.registers 3
invoke-virtual {p0, p1}, Lcom/millennialmedia/a/a/b/a/p$1;->a(Lcom/millennialmedia/a/a/d/a;)Ljava/lang/Class;
move-result-object v0
return-object v0
.end method