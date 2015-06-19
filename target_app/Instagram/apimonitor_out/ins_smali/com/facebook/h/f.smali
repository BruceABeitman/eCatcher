.class abstract Lcom/facebook/h/f;
.super Ljava/lang/Object;
.source "GraphObject.java"
.implements Ljava/lang/reflect/InvocationHandler;
.field protected final a:Ljava/lang/Object;
.method protected constructor <init>(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/h/f;->a:Ljava/lang/Object;
return-void
.end method
.method protected final a(Ljava/lang/reflect/Method;)Ljava/lang/Object;
.registers 5
new-instance v0, Lcom/facebook/aa;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " got an unexpected method signature: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Ljava/lang/reflect/Method;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Lcom/facebook/aa;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method protected final a(Ljava/lang/reflect/Method;[Ljava/lang/Object;)Ljava/lang/Object;
.registers 6
const/4 v2, 0x0
invoke-virtual {p1}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v0
const-string v1, "equals"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_32
aget-object v0, p2, v2
if-nez v0, :cond_16
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
:goto_15
return-object v0
:cond_16
invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;
move-result-object v0
instance-of v1, v0, Lcom/facebook/h/e;
if-nez v1, :cond_23
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_15
:cond_23
check-cast v0, Lcom/facebook/h/e;
iget-object v1, p0, Lcom/facebook/h/f;->a:Ljava/lang/Object;
iget-object v0, v0, Lcom/facebook/h/e;->a:Ljava/lang/Object;
invoke-virtual {v1, v0}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v0
invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
goto :goto_15
:cond_32
const-string v1, "toString"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_3f
invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_15
:cond_3f
iget-object v0, p0, Lcom/facebook/h/f;->a:Ljava/lang/Object;
invoke-virtual {p1, v0, p2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
goto :goto_15
.end method