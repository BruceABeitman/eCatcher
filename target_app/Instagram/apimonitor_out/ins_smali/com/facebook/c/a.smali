.class public final Lcom/facebook/c/a;
.super Ljava/lang/Object;
.source "ReflectionHelper.java"
.method public static a(Ljava/lang/reflect/InvocationTargetException;)V
.registers 3
invoke-virtual {p0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;
move-result-object v0
instance-of v1, v0, Ljava/lang/RuntimeException;
if-eqz v1, :cond_b
check-cast v0, Ljava/lang/RuntimeException;
throw v0
:cond_b
instance-of v1, v0, Ljava/lang/Error;
if-eqz v1, :cond_12
check-cast v0, Ljava/lang/Error;
throw v0
:cond_12
return-void
.end method