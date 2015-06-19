.class  Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/reflect/ParameterizedType;
.field final synthetic this$0:Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
.field final synthetic val$expectedType:Ljava/lang/Class;
.method constructor <init>(Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;Ljava/lang/Class;)V
.registers 3
iput-object p1, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy$1;->this$0:Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy;
iput-object p2, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy$1;->val$expectedType:Ljava/lang/Class;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getActualTypeArguments()[Ljava/lang/reflect/Type;
.registers 4
const/4 v0, 0x1
new-array v0, v0, [Ljava/lang/reflect/Type;
const/4 v1, 0x0
iget-object v2, p0, Lcom/facebook/model/GraphObject$Factory$GraphObjectProxy$1;->val$expectedType:Ljava/lang/Class;
aput-object v2, v0, v1
return-object v0
.end method
.method public getOwnerType()Ljava/lang/reflect/Type;
.registers 2
const/4 v0, 0x0
return-object v0
.end method
.method public getRawType()Ljava/lang/reflect/Type;
.registers 2
const-class v0, Lcom/facebook/model/GraphObjectList;
return-object v0
.end method