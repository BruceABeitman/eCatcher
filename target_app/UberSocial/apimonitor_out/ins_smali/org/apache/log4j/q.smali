.class public final Lorg/apache/log4j/q;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/log4j/k/u;
.field static a:Ljava/lang/Class;
.field private b:Ljava/lang/reflect/Method;
.field private c:Ljava/lang/reflect/Method;
.method public constructor <init>()V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v1, 0x0
:try_start_4
sget-object v0, Lorg/apache/log4j/q;->a:Ljava/lang/Class;
if-nez v0, :cond_27
const-string v0, "java.lang.Throwable"
invoke-static {v0}, Lorg/apache/log4j/q;->a(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/log4j/q;->a:Ljava/lang/Class;
:goto_10
const-string v2, "getStackTrace"
invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/q;->b:Ljava/lang/reflect/Method;
const-string v0, "java.lang.StackTraceElement"
invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
const-string v2, "getClassName"
invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
iput-object v0, p0, Lorg/apache/log4j/q;->c:Ljava/lang/reflect/Method;
:goto_26
return-void
:cond_27
sget-object v0, Lorg/apache/log4j/q;->a:Ljava/lang/Class;
:try_end_29
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_29} :catch_2a
goto :goto_10
:catch_2a
move-exception v0
goto :goto_26
.end method
.method static a(Ljava/lang/String;)Ljava/lang/Class;
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
.method private a(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
.registers 11
new-instance v2, Ljava/lang/StringBuffer;
const-string v0, "\tat "
invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
:try_start_a
iget-object v1, p0, Lorg/apache/log4j/q;->c:Ljava/lang/reflect/Method;
const/4 v0, 0x0
check-cast v0, [Ljava/lang/Object;
invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-interface {p2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_25
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
:try_end_20
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_20} :catch_90
:goto_20
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_25
:try_start_25
invoke-direct {p0, v3}, Lorg/apache/log4j/q;->b(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v4
invoke-virtual {v2}, Ljava/lang/StringBuffer;->length()I
move-result v5
const/16 v0, 0x5b
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
:try_start_32
:try_end_32
.catch Ljava/lang/Exception; {:try_start_25 .. :try_end_32} :catch_90
invoke-virtual {v4}, Ljava/lang/Class;->getProtectionDomain()Ljava/security/ProtectionDomain;
move-result-object v0
invoke-virtual {v0}, Ljava/security/ProtectionDomain;->getCodeSource()Ljava/security/CodeSource;
move-result-object v0
if-eqz v0, :cond_6f
invoke-virtual {v0}, Ljava/security/CodeSource;->getLocation()Ljava/net/URL;
move-result-object v6
if-eqz v6, :cond_6f
const-string v0, "file"
invoke-virtual {v6}, Ljava/net/URL;->getProtocol()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_9e
invoke-virtual {v6}, Ljava/net/URL;->getPath()Ljava/lang/String;
move-result-object v7
if-eqz v7, :cond_6f
const/16 v0, 0x2f
invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(I)I
move-result v1
sget-char v0, Ljava/io/File;->separatorChar:C
invoke-virtual {v7, v0}, Ljava/lang/String;->lastIndexOf(I)I
move-result v0
if-le v0, v1, :cond_a2
:goto_62
if-lez v0, :cond_6c
invoke-virtual {v7}, Ljava/lang/String;->length()I
move-result v1
add-int/lit8 v1, v1, -0x1
if-ne v0, v1, :cond_92
:cond_6c
invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
:goto_6f
:cond_6f
:try_end_6f
.catch Ljava/lang/SecurityException; {:try_start_32 .. :try_end_6f} :catch_9c
.catch Ljava/lang/Exception; {:try_start_32 .. :try_end_6f} :catch_90
const/16 v0, 0x3a
:try_start_71
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v4}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;
move-result-object v0
if-eqz v0, :cond_83
invoke-virtual {v0}, Ljava/lang/Package;->getImplementationVersion()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_83
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
:cond_83
const/16 v0, 0x5d
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
invoke-virtual {v2, v5}, Ljava/lang/StringBuffer;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-interface {p2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_8f
.catch Ljava/lang/Exception; {:try_start_71 .. :try_end_8f} :catch_90
goto :goto_20
:catch_90
move-exception v0
goto :goto_20
:cond_92
add-int/lit8 v0, v0, 0x1
:try_start_94
invoke-virtual {v7, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
goto :goto_6f
:catch_9c
move-exception v0
goto :goto_6f
:cond_9e
invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
:try_end_a1
.catch Ljava/lang/SecurityException; {:try_start_94 .. :try_end_a1} :catch_9c
.catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a1} :catch_90
goto :goto_6f
:cond_a2
move v0, v1
goto :goto_62
.end method
.method private b(Ljava/lang/String;)Ljava/lang/Class;
.registers 3
:try_start_0
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
:try_end_b
.catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_b} :catch_d
move-result-object v0
:goto_c
return-object v0
:catch_d
move-exception v0
:try_start_e
invoke-static {p1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
:try_end_11
.catch Ljava/lang/ClassNotFoundException; {:try_start_e .. :try_end_11} :catch_13
move-result-object v0
goto :goto_c
:catch_13
move-exception v0
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
goto :goto_c
.end method
.method public a(Ljava/lang/Throwable;)[Ljava/lang/String;
.registers 8
const/4 v2, 0x0
iget-object v0, p0, Lorg/apache/log4j/q;->b:Ljava/lang/reflect/Method;
if-eqz v0, :cond_34
const/4 v0, 0x0
:try_start_6
iget-object v1, p0, Lorg/apache/log4j/q;->b:Ljava/lang/reflect/Method;
invoke-virtual {v1, p1, v0}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, [Ljava/lang/Object;
check-cast v0, [Ljava/lang/Object;
array-length v1, v0
add-int/lit8 v1, v1, 0x1
new-array v1, v1, [Ljava/lang/String;
const/4 v3, 0x0
invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;
move-result-object v4
aput-object v4, v1, v3
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
:goto_21
array-length v4, v0
if-ge v2, v4, :cond_31
add-int/lit8 v4, v2, 0x1
aget-object v5, v0, v2
invoke-direct {p0, v5, v3}, Lorg/apache/log4j/q;->a(Ljava/lang/Object;Ljava/util/Map;)Ljava/lang/String;
move-result-object v5
aput-object v5, v1, v4
:try_end_2e
.catch Ljava/lang/Exception; {:try_start_6 .. :try_end_2e} :catch_33
add-int/lit8 v2, v2, 0x1
goto :goto_21
:cond_31
move-object v0, v1
:goto_32
return-object v0
:catch_33
move-exception v0
:cond_34
invoke-static {p1}, Lorg/apache/log4j/n;->b(Ljava/lang/Throwable;)[Ljava/lang/String;
move-result-object v0
goto :goto_32
.end method