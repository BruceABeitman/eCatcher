.class public Lch/boye/httpclientandroidlib/client/utils/CloneUtils;
.super Ljava/lang/Object;
.source "CloneUtils.java"
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static clone(Ljava/lang/Object;)Ljava/lang/Object;
.registers 4
const/4 v0, 0x0
if-nez p0, :cond_4
:goto_3
return-object v0
:cond_4
instance-of v0, p0, Ljava/lang/Cloneable;
if-eqz v0, :cond_43
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
:try_start_c
const-string v1, "clone"
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
:try_end_12
.catch Ljava/lang/NoSuchMethodException; {:try_start_c .. :try_end_12} :catch_19
move-result-object v0
const/4 v1, 0x0
:try_start_14
invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:try_end_17
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_14 .. :try_end_17} :catch_24
.catch Ljava/lang/IllegalAccessException; {:try_start_14 .. :try_end_17} :catch_38
move-result-object v0
goto :goto_3
:catch_19
move-exception v0
new-instance v1, Ljava/lang/NoSuchMethodError;
invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/NoSuchMethodError;-><init>(Ljava/lang/String;)V
throw v1
:catch_24
move-exception v0
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;
move-result-object v0
instance-of v1, v0, Ljava/lang/CloneNotSupportedException;
if-eqz v1, :cond_30
check-cast v0, Ljava/lang/CloneNotSupportedException;
throw v0
:cond_30
new-instance v1, Ljava/lang/Error;
const-string v2, "Unexpected exception"
invoke-direct {v1, v2, v0}, Ljava/lang/Error;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:catch_38
move-exception v0
new-instance v1, Ljava/lang/IllegalAccessError;
invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/IllegalAccessError;-><init>(Ljava/lang/String;)V
throw v1
:cond_43
new-instance v0, Ljava/lang/CloneNotSupportedException;
invoke-direct {v0}, Ljava/lang/CloneNotSupportedException;-><init>()V
throw v0
.end method