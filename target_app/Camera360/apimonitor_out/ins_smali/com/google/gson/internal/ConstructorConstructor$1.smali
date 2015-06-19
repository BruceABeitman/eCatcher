.class  Lcom/google/gson/internal/ConstructorConstructor$1;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"
.implements Lcom/google/gson/internal/ObjectConstructor;
.field final synthetic this$0:Lcom/google/gson/internal/ConstructorConstructor;
.field final synthetic val$type:Ljava/lang/reflect/Type;
.field final synthetic val$typeCreator:Lcom/google/gson/InstanceCreator;
.method constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;Lcom/google/gson/InstanceCreator;Ljava/lang/reflect/Type;)V
.registers 4
iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$1;->this$0:Lcom/google/gson/internal/ConstructorConstructor;
iput-object p2, p0, Lcom/google/gson/internal/ConstructorConstructor$1;->val$typeCreator:Lcom/google/gson/InstanceCreator;
iput-object p3, p0, Lcom/google/gson/internal/ConstructorConstructor$1;->val$type:Ljava/lang/reflect/Type;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public construct()Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/google/gson/internal/ConstructorConstructor$1;->val$typeCreator:Lcom/google/gson/InstanceCreator;
iget-object v1, p0, Lcom/google/gson/internal/ConstructorConstructor$1;->val$type:Ljava/lang/reflect/Type;
invoke-interface {v0, v1}, Lcom/google/gson/InstanceCreator;->createInstance(Ljava/lang/reflect/Type;)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method