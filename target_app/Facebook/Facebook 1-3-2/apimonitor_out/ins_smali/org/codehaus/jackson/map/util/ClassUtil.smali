.class public final Lorg/codehaus/jackson/map/util/ClassUtil;
.super Ljava/lang/Object;
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method private static _addSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/ArrayList;Z)V
.registers 9
const/4 v4, 0x1
if-eq p0, p1, :cond_9
if-eqz p0, :cond_9
const-class v0, Ljava/lang/Object;
if-ne p0, v0, :cond_a
:goto_9
:cond_9
return-void
:cond_a
if-eqz p3, :cond_15
invoke-virtual {p2, p0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_9
invoke-virtual {p2, p0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_15
invoke-virtual {p0}, Ljava/lang/Class;->getInterfaces()[Ljava/lang/Class;
move-result-object v0
array-length v1, v0
const/4 v2, 0x0
:goto_1b
if-ge v2, v1, :cond_25
aget-object v3, v0, v2
invoke-static {v3, p1, p2, v4}, Lorg/codehaus/jackson/map/util/ClassUtil;->_addSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/ArrayList;Z)V
add-int/lit8 v2, v2, 0x1
goto :goto_1b
:cond_25
invoke-virtual {p0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;
move-result-object v0
invoke-static {v0, p1, p2, v4}, Lorg/codehaus/jackson/map/util/ClassUtil;->_addSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/ArrayList;Z)V
goto :goto_9
.end method
.method public static canBeABeanType(Ljava/lang/Class;)Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Ljava/lang/Class;->isAnnotation()Z
move-result v0
if-eqz v0, :cond_9
const-string v0, "annotation"
:goto_8
return-object v0
:cond_9
invoke-virtual {p0}, Ljava/lang/Class;->isArray()Z
move-result v0
if-eqz v0, :cond_12
const-string v0, "array"
goto :goto_8
:cond_12
invoke-virtual {p0}, Ljava/lang/Class;->isEnum()Z
move-result v0
if-eqz v0, :cond_1b
const-string v0, "enum"
goto :goto_8
:cond_1b
invoke-virtual {p0}, Ljava/lang/Class;->isPrimitive()Z
move-result v0
if-eqz v0, :cond_24
const-string v0, "primitive"
goto :goto_8
:cond_24
const/4 v0, 0x0
goto :goto_8
.end method
.method public static checkAndFixAccess(Ljava/lang/reflect/Member;)V
.registers 7
move-object v0, p0
check-cast v0, Ljava/lang/reflect/AccessibleObject;
move-object v1, v0
const/4 v2, 0x1
:try_start_5
invoke-virtual {v1, v2}, Ljava/lang/reflect/AccessibleObject;->setAccessible(Z)V
:cond_8
:try_end_8
.catch Ljava/lang/SecurityException; {:try_start_5 .. :try_end_8} :catch_9
return-void
:catch_9
move-exception v2
invoke-virtual {v1}, Ljava/lang/reflect/AccessibleObject;->isAccessible()Z
move-result v1
if-nez v1, :cond_8
invoke-interface {p0}, Ljava/lang/reflect/Member;->getDeclaringClass()Ljava/lang/Class;
move-result-object v1
new-instance v3, Ljava/lang/IllegalArgumentException;
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "Can not access "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " (from class "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v4, "; failed to set access: "
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v2}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v3, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v3
.end method
.method public static createInstance(Ljava/lang/Class;Z)Ljava/lang/Object;
.registers 7
const/4 v3, 0x0
const-string v4, ", problem: "
const/4 v0, 0x0
:try_start_4
new-array v0, v0, [Ljava/lang/Class;
invoke-virtual {p0, v0}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
:try_end_9
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_9} :catch_2f
move-result-object v0
:goto_a
if-nez v0, :cond_5a
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Class "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " has no default (no arg) constructor"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:catch_2f
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Failed to find default constructor of class "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", problem: "
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lorg/codehaus/jackson/map/util/ClassUtil;->unwrapAndThrowAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V
move-object v0, v3
goto :goto_a
:cond_5a
if-eqz p1, :cond_67
invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->checkAndFixAccess(Ljava/lang/reflect/Member;)V
:cond_5f
const/4 v1, 0x0
:try_start_60
new-array v1, v1, [Ljava/lang/Object;
invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
:try_end_65
.catch Ljava/lang/Exception; {:try_start_60 .. :try_end_65} :catch_94
move-result-object v0
:goto_66
return-object v0
:cond_67
invoke-virtual {v0}, Ljava/lang/reflect/Constructor;->getModifiers()I
move-result v1
invoke-static {v1}, Ljava/lang/reflect/Modifier;->isPublic(I)Z
move-result v1
if-nez v1, :cond_5f
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Default constructor for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " is not accessible (non-public?): not allowed to try modify access via Reflection: can not instantiate type"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:catch_94
move-exception v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Failed to instantiate class "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", problem: "
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lorg/codehaus/jackson/map/util/ClassUtil;->unwrapAndThrowAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V
move-object v0, v3
goto :goto_66
.end method
.method public static findSuperTypes(Ljava/lang/Class;Ljava/lang/Class;)Ljava/util/List;
.registers 4
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
const/4 v1, 0x0
invoke-static {p0, p1, v0, v1}, Lorg/codehaus/jackson/map/util/ClassUtil;->_addSuperTypes(Ljava/lang/Class;Ljava/lang/Class;Ljava/util/ArrayList;Z)V
return-object v0
.end method
.method public static getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
.registers 3
move-object v0, p0
:goto_1
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v1
if-eqz v1, :cond_c
invoke-virtual {v0}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;
move-result-object v0
goto :goto_1
:cond_c
return-object v0
.end method
.method public static hasGetterSignature(Ljava/lang/reflect/Method;)Z
.registers 4
const/4 v2, 0x0
invoke-virtual {p0}, Ljava/lang/reflect/Method;->getModifiers()I
move-result v0
invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v0
if-eqz v0, :cond_d
move v0, v2
:goto_c
return v0
:cond_d
invoke-virtual {p0}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v0
if-eqz v0, :cond_18
array-length v0, v0
if-eqz v0, :cond_18
move v0, v2
goto :goto_c
:cond_18
sget-object v0, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
invoke-virtual {p0}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v1
if-ne v0, v1, :cond_22
move v0, v2
goto :goto_c
:cond_22
const/4 v0, 0x1
goto :goto_c
.end method
.method public static isConcrete(Ljava/lang/Class;)Z
.registers 2
invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I
move-result v0
and-int/lit16 v0, v0, 0x600
if-nez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public static isLocalType(Ljava/lang/Class;)Ljava/lang/String;
.registers 2
invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingMethod()Ljava/lang/reflect/Method;
move-result-object v0
if-eqz v0, :cond_9
const-string v0, "local/anonymous"
:goto_8
return-object v0
:cond_9
invoke-virtual {p0}, Ljava/lang/Class;->getEnclosingClass()Ljava/lang/Class;
move-result-object v0
if-eqz v0, :cond_1c
invoke-virtual {p0}, Ljava/lang/Class;->getModifiers()I
move-result v0
invoke-static {v0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v0
if-nez v0, :cond_1c
const-string v0, "non-static member class"
goto :goto_8
:cond_1c
const/4 v0, 0x0
goto :goto_8
.end method
.method public static isProxyType(Ljava/lang/Class;)Z
.registers 4
const/4 v2, 0x1
invoke-static {p0}, Ljava/lang/reflect/Proxy;->isProxyClass(Ljava/lang/Class;)Z
move-result v0
if-eqz v0, :cond_9
move v0, v2
:goto_8
return v0
:cond_9
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v0
const-string v1, "net.sf.cglib.proxy."
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_1d
const-string v1, "org.hibernate.proxy."
invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1f
:cond_1d
move v0, v2
goto :goto_8
:cond_1f
const/4 v0, 0x0
goto :goto_8
.end method
.method public static throwAsIAE(Ljava/lang/Throwable;)V
.registers 2
invoke-virtual {p0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-static {p0, v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->throwAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V
return-void
.end method
.method public static throwAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V
.registers 3
instance-of v0, p0, Ljava/lang/RuntimeException;
if-eqz v0, :cond_7
check-cast p0, Ljava/lang/RuntimeException;
throw p0
:cond_7
instance-of v0, p0, Ljava/lang/Error;
if-eqz v0, :cond_e
check-cast p0, Ljava/lang/Error;
throw p0
:cond_e
new-instance v0, Ljava/lang/IllegalArgumentException;
invoke-direct {v0, p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v0
.end method
.method public static unwrapAndThrowAsIAE(Ljava/lang/Throwable;)V
.registers 2
invoke-static {p0}, Lorg/codehaus/jackson/map/util/ClassUtil;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
invoke-static {v0}, Lorg/codehaus/jackson/map/util/ClassUtil;->throwAsIAE(Ljava/lang/Throwable;)V
return-void
.end method
.method public static unwrapAndThrowAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V
.registers 3
invoke-static {p0}, Lorg/codehaus/jackson/map/util/ClassUtil;->getRootCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
invoke-static {v0, p1}, Lorg/codehaus/jackson/map/util/ClassUtil;->throwAsIAE(Ljava/lang/Throwable;Ljava/lang/String;)V
return-void
.end method