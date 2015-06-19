.class public abstract Lorg/apache/b/a/e/a/g;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static a:Lorg/apache/commons/logging/Log;
.field static b:Ljava/lang/Class;
.field private static c:Lorg/apache/b/a/e/a/g;
.method static constructor <clinit>()V
.registers 5
sget-object v0, Lorg/apache/b/a/e/a/g;->b:Ljava/lang/Class;
if-nez v0, :cond_35
const-string v0, "org.apache.b.a.e.a.g"
invoke-static {v0}, Lorg/apache/b/a/e/a/g;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/b/a/e/a/g;->b:Ljava/lang/Class;
:goto_c
invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
move-result-object v0
sput-object v0, Lorg/apache/b/a/e/a/g;->a:Lorg/apache/commons/logging/Log;
const/4 v0, 0x0
sput-object v0, Lorg/apache/b/a/e/a/g;->c:Lorg/apache/b/a/e/a/g;
const-string v0, "org.apache.james.mime4j.tempStorage"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_29
:try_start_1d
invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/apache/b/a/e/a/g;
sput-object v0, Lorg/apache/b/a/e/a/g;->c:Lorg/apache/b/a/e/a/g;
:cond_29
:goto_29
:try_end_29
.catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_29} :catch_38
sget-object v0, Lorg/apache/b/a/e/a/g;->c:Lorg/apache/b/a/e/a/g;
if-nez v0, :cond_34
new-instance v0, Lorg/apache/b/a/e/a/a;
invoke-direct {v0}, Lorg/apache/b/a/e/a/a;-><init>()V
sput-object v0, Lorg/apache/b/a/e/a/g;->c:Lorg/apache/b/a/e/a/g;
:cond_34
return-void
:cond_35
sget-object v0, Lorg/apache/b/a/e/a/g;->b:Ljava/lang/Class;
goto :goto_c
:catch_38
move-exception v0
sget-object v2, Lorg/apache/b/a/e/a/g;->a:Lorg/apache/commons/logging/Log;
new-instance v3, Ljava/lang/StringBuffer;
invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V
const-string v4, "Unable to create or instantiate TempStorage class \'"
invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v3
invoke-virtual {v3, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v3, "\' using SimpleTempStorage instead"
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-interface {v2, v1, v0}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;Ljava/lang/Throwable;)V
goto :goto_29
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Lorg/apache/b/a/e/a/g;)V
.registers 3
if-nez p0, :cond_a
new-instance v0, Ljava/lang/NullPointerException;
const-string v1, "inst"
invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V
throw v0
:cond_a
sput-object p0, Lorg/apache/b/a/e/a/g;->c:Lorg/apache/b/a/e/a/g;
return-void
.end method
.method static b(Ljava/lang/String;)Ljava/lang/Class;
.registers 3
:try_start_0
invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_3
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_3} :catch_5
move-result-object v0
return-object v0
:catch_5
move-exception v0
new-instance v1, Ljava/lang/NoClassDefFoundError;
invoke-direct {v1}, Ljava/lang/NoClassDefFoundError;-><init>()V
invoke-virtual {v1, v0}, Ljava/lang/NoClassDefFoundError;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;
move-result-object v0
throw v0
.end method
.method public static b()Lorg/apache/b/a/e/a/g;
.registers 1
sget-object v0, Lorg/apache/b/a/e/a/g;->c:Lorg/apache/b/a/e/a/g;
return-object v0
.end method
.method public abstract a()Lorg/apache/b/a/e/a/f;
.end method