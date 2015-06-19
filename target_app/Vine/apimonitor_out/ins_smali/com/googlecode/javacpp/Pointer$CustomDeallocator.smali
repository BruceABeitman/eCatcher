.class public Lcom/googlecode/javacpp/Pointer$CustomDeallocator;
.super Lcom/googlecode/javacpp/Pointer$DeallocatorReference;
.source "Pointer.java"
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;
.field  method:Ljava/lang/reflect/Method;
.field  pointer:Lcom/googlecode/javacpp/Pointer;
.method public constructor <init>(Lcom/googlecode/javacpp/Pointer;)V
.registers 14
const/4 v8, 0x0
const/4 v11, 0x0
const/4 v10, 0x1
invoke-direct {p0, p1, v8}, Lcom/googlecode/javacpp/Pointer$DeallocatorReference;-><init>(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer$Deallocator;)V
iput-object v8, p0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;->pointer:Lcom/googlecode/javacpp/Pointer;
iput-object v8, p0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;->method:Ljava/lang/reflect/Method;
iput-object p0, p0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;->deallocator:Lcom/googlecode/javacpp/Pointer$Deallocator;
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/Class;->getDeclaredMethods()[Ljava/lang/reflect/Method;
move-result-object v0
array-length v5, v0
const/4 v4, 0x0
:goto_16
if-ge v4, v5, :cond_52
aget-object v6, v0, v4
invoke-virtual {v6}, Ljava/lang/reflect/Method;->getParameterTypes()[Ljava/lang/Class;
move-result-object v7
invoke-virtual {v6}, Ljava/lang/reflect/Method;->getModifiers()I
move-result v8
invoke-static {v8}, Ljava/lang/reflect/Modifier;->isStatic(I)Z
move-result v8
if-eqz v8, :cond_8e
invoke-virtual {v6}, Ljava/lang/reflect/Method;->getReturnType()Ljava/lang/Class;
move-result-object v8
sget-object v9, Ljava/lang/Void;->TYPE:Ljava/lang/Class;
invoke-virtual {v8, v9}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_8e
invoke-virtual {v6}, Ljava/lang/reflect/Method;->getName()Ljava/lang/String;
move-result-object v8
const-string v9, "deallocate"
invoke-virtual {v8, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v8
if-eqz v8, :cond_8e
array-length v8, v7
if-ne v8, v10, :cond_8e
const-class v8, Lcom/googlecode/javacpp/Pointer;
aget-object v9, v7, v11
invoke-virtual {v8, v9}, Ljava/lang/Class;->isAssignableFrom(Ljava/lang/Class;)Z
move-result v8
if-eqz v8, :cond_8e
invoke-virtual {v6, v10}, Ljava/lang/reflect/Method;->setAccessible(Z)V
iput-object v6, p0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;->method:Ljava/lang/reflect/Method;
:cond_52
iget-object v8, p0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;->method:Ljava/lang/reflect/Method;
if-nez v8, :cond_91
new-instance v8, Ljava/lang/RuntimeException;
new-instance v9, Ljava/lang/NoSuchMethodException;
new-instance v10, Ljava/lang/StringBuilder;
invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V
const-string v11, "static void "
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v2}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, ".deallocate("
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-class v11, Lcom/googlecode/javacpp/Pointer;
invoke-virtual {v11}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v11
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
const-string v11, ")"
invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v10
invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v10
invoke-direct {v9, v10}, Ljava/lang/NoSuchMethodException;-><init>(Ljava/lang/String;)V
invoke-direct {v8, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v8
:cond_8e
add-int/lit8 v4, v4, 0x1
goto :goto_16
:cond_91
const/4 v8, 0x1
:try_start_92
new-array v8, v8, [Ljava/lang/Class;
const/4 v9, 0x0
const-class v10, Lcom/googlecode/javacpp/Pointer;
aput-object v10, v8, v9
invoke-virtual {v2, v8}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v1
const/4 v8, 0x1
invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
aput-object p1, v8, v9
invoke-virtual {v1, v8}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v8
check-cast v8, Lcom/googlecode/javacpp/Pointer;
iput-object v8, p0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;->pointer:Lcom/googlecode/javacpp/Pointer;
:try_end_af
.catch Ljava/lang/Exception; {:try_start_92 .. :try_end_af} :catch_b0
return-void
:catch_b0
move-exception v3
new-instance v8, Ljava/lang/RuntimeException;
invoke-direct {v8, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v8
.end method
.method public deallocate()V
.registers 7
:try_start_0
iget-object v1, p0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;->method:Ljava/lang/reflect/Method;
const/4 v2, 0x0
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
iget-object v5, p0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;->pointer:Lcom/googlecode/javacpp/Pointer;
aput-object v5, v3, v4
invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
iget-object v1, p0, Lcom/googlecode/javacpp/Pointer$CustomDeallocator;->pointer:Lcom/googlecode/javacpp/Pointer;
invoke-virtual {v1}, Lcom/googlecode/javacpp/Pointer;->setNull()V
:try_end_13
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_13} :catch_14
return-void
:catch_14
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
.end method