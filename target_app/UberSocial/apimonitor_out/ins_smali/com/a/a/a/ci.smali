.class final Lcom/a/a/a/ci;
.super Ljava/lang/Object;
.source "SourceFile"
.field final a:Ljava/lang/Object;
.field private final b:Ljava/lang/reflect/Method;
.field private final c:I
.field private d:Z
.method constructor <init>(Ljava/lang/Object;Ljava/lang/reflect/Method;)V
.registers 5
const/4 v0, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-boolean v0, p0, Lcom/a/a/a/ci;->d:Z
if-nez p1, :cond_10
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "EventProducer target cannot be null."
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
if-nez p2, :cond_1a
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "EventProducer method cannot be null."
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1a
iput-object p1, p0, Lcom/a/a/a/ci;->a:Ljava/lang/Object;
iput-object p2, p0, Lcom/a/a/a/ci;->b:Ljava/lang/reflect/Method;
invoke-virtual {p2, v0}, Ljava/lang/reflect/Method;->setAccessible(Z)V
invoke-virtual {p2}, Ljava/lang/reflect/Method;->hashCode()I
move-result v0
add-int/lit8 v0, v0, 0x1f
mul-int/lit8 v0, v0, 0x1f
invoke-virtual {p1}, Ljava/lang/Object;->hashCode()I
move-result v1
add-int/2addr v0, v1
iput v0, p0, Lcom/a/a/a/ci;->c:I
return-void
.end method
.method public final a()Z
.registers 2
iget-boolean v0, p0, Lcom/a/a/a/ci;->d:Z
return v0
.end method
.method public final b()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/a/a/a/ci;->d:Z
return-void
.end method
.method public final c()Ljava/lang/Object;
.registers 4
iget-boolean v0, p0, Lcom/a/a/a/ci;->d:Z
if-nez v0, :cond_21
new-instance v0, Ljava/lang/IllegalStateException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/a/a/a/ci;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " has been invalidated and can no longer produce events."
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_21
:try_start_21
iget-object v0, p0, Lcom/a/a/a/ci;->b:Ljava/lang/reflect/Method;
iget-object v1, p0, Lcom/a/a/a/ci;->a:Ljava/lang/Object;
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_2b
.catch Ljava/lang/IllegalAccessException; {:try_start_21 .. :try_end_2b} :catch_2d
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_21 .. :try_end_2b} :catch_34
move-result-object v0
return-object v0
:catch_2d
move-exception v0
new-instance v1, Ljava/lang/AssertionError;
invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v1
:catch_34
move-exception v0
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;
move-result-object v1
instance-of v1, v1, Ljava/lang/Error;
if-eqz v1, :cond_44
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;
move-result-object v0
check-cast v0, Ljava/lang/Error;
throw v0
:cond_44
throw v0
.end method
.method public final equals(Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
const/4 v1, 0x0
if-ne p0, p1, :cond_5
:goto_4
:cond_4
return v0
:cond_5
if-nez p1, :cond_9
move v0, v1
goto :goto_4
:cond_9
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v3
if-eq v2, v3, :cond_15
move v0, v1
goto :goto_4
:cond_15
check-cast p1, Lcom/a/a/a/ci;
iget-object v2, p0, Lcom/a/a/a/ci;->b:Ljava/lang/reflect/Method;
iget-object v3, p1, Lcom/a/a/a/ci;->b:Ljava/lang/reflect/Method;
invoke-virtual {v2, v3}, Ljava/lang/reflect/Method;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_27
iget-object v2, p0, Lcom/a/a/a/ci;->a:Ljava/lang/Object;
iget-object v3, p1, Lcom/a/a/a/ci;->a:Ljava/lang/Object;
if-eq v2, v3, :cond_4
:cond_27
move v0, v1
goto :goto_4
.end method
.method public final hashCode()I
.registers 2
iget v0, p0, Lcom/a/a/a/ci;->c:I
return v0
.end method
.method public final toString()Ljava/lang/String;
.registers 3
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "[EventProducer "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v1, p0, Lcom/a/a/a/ci;->b:Ljava/lang/reflect/Method;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "]"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method