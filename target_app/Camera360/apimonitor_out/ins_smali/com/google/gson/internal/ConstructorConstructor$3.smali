.class  Lcom/google/gson/internal/ConstructorConstructor$3;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"
.implements Lcom/google/gson/internal/ObjectConstructor;
.field final synthetic this$0:Lcom/google/gson/internal/ConstructorConstructor;
.field final synthetic val$constructor:Ljava/lang/reflect/Constructor;
.method constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Constructor;)V
.registers 3
iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$3;->this$0:Lcom/google/gson/internal/ConstructorConstructor;
iput-object p2, p0, Lcom/google/gson/internal/ConstructorConstructor$3;->val$constructor:Ljava/lang/reflect/Constructor;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public construct()Ljava/lang/Object;
.registers 6
const/4 v0, 0x0
:try_start_1
iget-object v2, p0, Lcom/google/gson/internal/ConstructorConstructor$3;->val$constructor:Ljava/lang/reflect/Constructor;
invoke-virtual {v2, v0}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
:try_end_6
.catch Ljava/lang/InstantiationException; {:try_start_1 .. :try_end_6} :catch_8
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_6} :catch_2c
.catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_6} :catch_54
move-result-object v2
return-object v2
:catch_8
move-exception v1
new-instance v2, Ljava/lang/RuntimeException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "Failed to invoke "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/google/gson/internal/ConstructorConstructor$3;->val$constructor:Ljava/lang/reflect/Constructor;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " with no args"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-direct {v2, v3, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:catch_2c
move-exception v1
new-instance v2, Ljava/lang/RuntimeException;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v4, "Failed to invoke "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, p0, Lcom/google/gson/internal/ConstructorConstructor$3;->val$constructor:Ljava/lang/reflect/Constructor;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string/jumbo v4, " with no args"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
move-result-object v4
invoke-direct {v2, v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v2
:catch_54
move-exception v1
new-instance v2, Ljava/lang/AssertionError;
invoke-direct {v2, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V
throw v2
.end method