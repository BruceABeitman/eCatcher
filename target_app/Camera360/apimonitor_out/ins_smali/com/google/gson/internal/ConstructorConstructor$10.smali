.class  Lcom/google/gson/internal/ConstructorConstructor$10;
.super Ljava/lang/Object;
.source "ConstructorConstructor.java"
.implements Lcom/google/gson/internal/ObjectConstructor;
.field final synthetic this$0:Lcom/google/gson/internal/ConstructorConstructor;
.method constructor <init>(Lcom/google/gson/internal/ConstructorConstructor;)V
.registers 2
iput-object p1, p0, Lcom/google/gson/internal/ConstructorConstructor$10;->this$0:Lcom/google/gson/internal/ConstructorConstructor;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public construct()Ljava/lang/Object;
.registers 2
new-instance v0, Ljava/util/LinkedHashMap;
invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V
return-object v0
.end method