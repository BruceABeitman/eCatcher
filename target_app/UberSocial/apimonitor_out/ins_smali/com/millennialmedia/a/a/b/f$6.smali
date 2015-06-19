.class  Lcom/millennialmedia/a/a/b/f$6;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/millennialmedia/a/a/b/q;
.field final synthetic a:Ljava/lang/reflect/Constructor;
.field final synthetic b:Lcom/millennialmedia/a/a/b/f;
.method constructor <init>(Lcom/millennialmedia/a/a/b/f;Ljava/lang/reflect/Constructor;)V
.registers 3
iput-object p1, p0, Lcom/millennialmedia/a/a/b/f$6;->b:Lcom/millennialmedia/a/a/b/f;
iput-object p2, p0, Lcom/millennialmedia/a/a/b/f$6;->a:Ljava/lang/reflect/Constructor;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a()Ljava/lang/Object;
.registers 5
const/4 v0, 0x0
:try_start_1
iget-object v1, p0, Lcom/millennialmedia/a/a/b/f$6;->a:Ljava/lang/reflect/Constructor;
invoke-virtual {v1, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
:try_end_6
.catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_6} :catch_8
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_6} :catch_2a
.catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_6} :catch_50
move-result-object v0
return-object v0
:catch_8
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Failed to invoke "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/millennialmedia/a/a/b/f$6;->a:Ljava/lang/reflect/Constructor;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " with no args"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:catch_2a
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "Failed to invoke "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/millennialmedia/a/a/b/f$6;->a:Ljava/lang/reflect/Constructor;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " with no args"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
move-result-object v0
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:catch_50
move-exception v0
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
.end method