.class public abstract Lcom/google/gson/internal/UnsafeAllocator;
.super Ljava/lang/Object;
.source "UnsafeAllocator.java"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static create()Lcom/google/gson/internal/UnsafeAllocator;
.registers 12
:try_start_0
const-string/jumbo v7, "sun.misc.Unsafe"
invoke-static {v7}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v6
const-string/jumbo v7, "theUnsafe"
invoke-virtual {v6, v7}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;
move-result-object v2
const/4 v7, 0x1
invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->setAccessible(Z)V
const/4 v7, 0x0
invoke-virtual {v2, v7}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v5
const-string/jumbo v7, "allocateInstance"
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/Class;
const/4 v9, 0x0
const-class v10, Ljava/lang/Class;
aput-object v10, v8, v9
invoke-virtual {v6, v7, v8}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
new-instance v7, Lcom/google/gson/internal/UnsafeAllocator$1;
invoke-direct {v7, v0, v5}, Lcom/google/gson/internal/UnsafeAllocator$1;-><init>(Ljava/lang/reflect/Method;Ljava/lang/Object;)V
:try_end_2b
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_2b} :catch_2c
:goto_2b
return-object v7
:catch_2c
move-exception v7
:try_start_2d
const-class v7, Ljava/io/ObjectInputStream;
const-string/jumbo v8, "newInstance"
const/4 v9, 0x2
new-array v9, v9, [Ljava/lang/Class;
const/4 v10, 0x0
const-class v11, Ljava/lang/Class;
aput-object v11, v9, v10
const/4 v10, 0x1
const-class v11, Ljava/lang/Class;
aput-object v11, v9, v10
invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v4
const/4 v7, 0x1
invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V
new-instance v7, Lcom/google/gson/internal/UnsafeAllocator$2;
invoke-direct {v7, v4}, Lcom/google/gson/internal/UnsafeAllocator$2;-><init>(Ljava/lang/reflect/Method;)V
:try_end_4c
.catch Ljava/lang/Exception; {:try_start_2d .. :try_end_4c} :catch_4d
goto :goto_2b
:catch_4d
move-exception v7
:try_start_4e
const-class v7, Ljava/io/ObjectStreamClass;
const-string/jumbo v8, "getConstructorId"
const/4 v9, 0x1
new-array v9, v9, [Ljava/lang/Class;
const/4 v10, 0x0
const-class v11, Ljava/lang/Class;
aput-object v11, v9, v10
invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v3
const/4 v7, 0x1
invoke-virtual {v3, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V
const/4 v7, 0x0
const/4 v8, 0x1
new-array v8, v8, [Ljava/lang/Object;
const/4 v9, 0x0
const-class v10, Ljava/lang/Object;
aput-object v10, v8, v9
invoke-virtual {v3, v7, v8}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/Integer;
invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
move-result v1
const-class v7, Ljava/io/ObjectStreamClass;
const-string/jumbo v8, "newInstance"
const/4 v9, 0x2
new-array v9, v9, [Ljava/lang/Class;
const/4 v10, 0x0
const-class v11, Ljava/lang/Class;
aput-object v11, v9, v10
const/4 v10, 0x1
sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;
aput-object v11, v9, v10
invoke-virtual {v7, v8, v9}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v4
const/4 v7, 0x1
invoke-virtual {v4, v7}, Ljava/lang/reflect/Method;->setAccessible(Z)V
new-instance v7, Lcom/google/gson/internal/UnsafeAllocator$3;
invoke-direct {v7, v4, v1}, Lcom/google/gson/internal/UnsafeAllocator$3;-><init>(Ljava/lang/reflect/Method;I)V
:try_end_95
.catch Ljava/lang/Exception; {:try_start_4e .. :try_end_95} :catch_96
goto :goto_2b
:catch_96
move-exception v7
new-instance v7, Lcom/google/gson/internal/UnsafeAllocator$4;
invoke-direct {v7}, Lcom/google/gson/internal/UnsafeAllocator$4;-><init>()V
goto :goto_2b
.end method
.method public abstract newInstance(Ljava/lang/Class;)Ljava/lang/Object;
.end method