.class public Lch/boye/httpclientandroidlib/client/utils/JdkIdn;
.super Ljava/lang/Object;
.source "JdkIdn.java"
.implements Lch/boye/httpclientandroidlib/client/utils/Idn;
.field private final toUnicode:Ljava/lang/reflect/Method;
.method public constructor <init>()V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-string v0, "java.net.IDN"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
:try_start_9
const-string v1, "toUnicode"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
const-class v4, Ljava/lang/String;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
iput-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/JdkIdn;->toUnicode:Ljava/lang/reflect/Method;
:try_end_19
.catch Ljava/lang/SecurityException; {:try_start_9 .. :try_end_19} :catch_1a
.catch Ljava/lang/NoSuchMethodException; {:try_start_9 .. :try_end_19} :catch_25
return-void
:catch_1a
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-virtual {v0}, Ljava/lang/SecurityException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:catch_25
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-virtual {v0}, Ljava/lang/NoSuchMethodException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method
.method public toUnicode(Ljava/lang/String;)Ljava/lang/String;
.registers 6
:try_start_0
iget-object v0, p0, Lch/boye/httpclientandroidlib/client/utils/JdkIdn;->toUnicode:Ljava/lang/reflect/Method;
const/4 v1, 0x0
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object p1, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:try_end_f
.catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_f} :catch_10
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_f} :catch_1b
return-object v0
:catch_10
move-exception v0
new-instance v1, Ljava/lang/IllegalStateException;
invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
:catch_1b
move-exception v0
invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;
move-result-object v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
throw v1
.end method