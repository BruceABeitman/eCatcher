.class final Lcom/google/b/b/cb;
.super Ljava/lang/Object;
.source "Striped64.java"
.implements Ljava/security/PrivilegedExceptionAction;
.method constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final synthetic run()Ljava/lang/Object;
.registers 7
const-class v1, Lsun/misc/Unsafe;
invoke-virtual {v1}, Ljava/lang/Class;->getDeclaredFields()[Ljava/lang/reflect/Field;
move-result-object v2
array-length v3, v2
const/4 v0, 0x0
:goto_8
if-ge v0, v3, :cond_25
aget-object v4, v2, v0
const/4 v5, 0x1
invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->setAccessible(Z)V
const/4 v5, 0x0
invoke-virtual {v4, v5}, Ljava/lang/reflect/Field;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v4
invoke-virtual {v1, v4}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_22
invoke-virtual {v1, v4}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lsun/misc/Unsafe;
return-object v0
:cond_22
add-int/lit8 v0, v0, 0x1
goto :goto_8
:cond_25
new-instance v0, Ljava/lang/NoSuchFieldError;
const-string v1, "the Unsafe"
invoke-direct {v0, v1}, Ljava/lang/NoSuchFieldError;-><init>(Ljava/lang/String;)V
throw v0
.end method