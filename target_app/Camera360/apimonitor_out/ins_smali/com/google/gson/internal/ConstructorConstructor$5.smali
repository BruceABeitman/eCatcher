.class  Lcom/google/gson/internal/ConstructorConstructor$5;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"
.implements Lcom/google/gson/internal/ObjectConstructor;
.field final synthetic this$0:Lcom/google/gson/internal/ConstructorConstructor;
.field final synthetic val$type:Ljava/lang/reflect/Type;
.method constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Ljava/lang/reflect/Type;)V
.registers 3
iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$5;->this$0:Lcom/google/gson/internal/ConstructorConstructor;
iput-object p2, p0, Lcom/google/gson/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public construct()Ljava/lang/Object;
.registers 5
iget-object v1, p0, Lcom/google/gson/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;
instance-of v1, v1, Ljava/lang/reflect/ParameterizedType;
if-eqz v1, :cond_3c
iget-object v1, p0, Lcom/google/gson/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;
check-cast v1, Ljava/lang/reflect/ParameterizedType;
invoke-interface {v1}, Ljava/lang/reflect/ParameterizedType;->getActualTypeArguments()[Ljava/lang/reflect/Type;
move-result-object v1
const/4 v2, 0x0
aget-object v0, v1, v2
instance-of v1, v0, Ljava/lang/Class;
if-eqz v1, :cond_1c
check-cast v0, Ljava/lang/Class;
invoke-static {v0}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;
move-result-object v1
return-object v1
:cond_1c
new-instance v1, Lcom/google/gson/JsonIOException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Invalid EnumSet type: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/google/gson/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V
throw v1
:cond_3c
new-instance v1, Lcom/google/gson/JsonIOException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string/jumbo v3, "Invalid EnumSet type: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, p0, Lcom/google/gson/internal/ConstructorConstructor$5;->val$type:Ljava/lang/reflect/Type;
invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Lcom/google/gson/JsonIOException;-><init>(Ljava/lang/String;)V
throw v1
.end method