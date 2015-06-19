.class public abstract Lcom/ibm/icu/impl/URLHandler;
.super Ljava/lang/Object;
.source "URLHandler.java"
.field private static final DEBUG:Z = false
.field public static final PROPNAME:Ljava/lang/String; = "urlhandler.props"
.field private static final handlers:Ljava/util/Map;
.method static constructor <clinit>()V
.registers 16
const-string v13, "URLHandler"
invoke-static {v13}, Lcom/ibm/icu/impl/ICUDebug;->enabled(Ljava/lang/String;)Z
move-result v13
sput-boolean v13, Lcom/ibm/icu/impl/URLHandler;->DEBUG:Z
const/4 v3, 0x0
:try_start_9
const-class v13, Lcom/ibm/icu/impl/URLHandler;
const-string v14, "urlhandler.props"
invoke-virtual {v13, v14}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v5
if-nez v5, :cond_1d
invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;
move-result-object v13
const-string v14, "urlhandler.props"
invoke-virtual {v13, v14}, Ljava/lang/ClassLoader;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v5
:cond_1d
if-eqz v5, :cond_7e
const/4 v13, 0x1
new-array v10, v13, [Ljava/lang/Class;
const/4 v13, 0x0
const-class v14, Ljava/net/URL;
aput-object v14, v10, v13
new-instance v0, Ljava/io/BufferedReader;
new-instance v13, Ljava/io/InputStreamReader;
invoke-direct {v13, v5}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V
invoke-direct {v0, v13}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V
invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
:try_end_34
.catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_34} :catch_b5
move-result-object v8
move-object v4, v3
:goto_36
if-eqz v8, :cond_ed
:try_start_38
invoke-virtual {v8}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v8
invoke-virtual {v8}, Ljava/lang/String;->length()I
move-result v13
if-eqz v13, :cond_ef
const/4 v13, 0x0
invoke-virtual {v8, v13}, Ljava/lang/String;->charAt(I)C
:try_end_46
.catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_46} :catch_dd
move-result v13
const/16 v14, 0x23
if-ne v13, v14, :cond_52
move-object v3, v4
:try_start_4c
:cond_4c
:goto_4c
invoke-virtual {v0}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;
:try_end_4f
.catch Ljava/lang/Throwable; {:try_start_4c .. :try_end_4f} :catch_b5
move-result-object v8
move-object v4, v3
goto :goto_36
:cond_52
const/16 v13, 0x3d
:try_start_54
invoke-virtual {v8, v13}, Ljava/lang/String;->indexOf(I)I
move-result v6
const/4 v13, -0x1
if-ne v6, v13, :cond_81
sget-boolean v13, Lcom/ibm/icu/impl/URLHandler;->DEBUG:Z
if-eqz v13, :cond_ed
sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;
new-instance v14, Ljava/lang/StringBuilder;
invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V
const-string v15, "bad urlhandler line: \'"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
const-string v15, "\'"
invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v14
invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v14
invoke-virtual {v13, v14}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V
:try_end_7d
.catch Ljava/lang/Throwable; {:try_start_54 .. :try_end_7d} :catch_dd
move-object v3, v4
:goto_7e
:cond_7e
sput-object v3, Lcom/ibm/icu/impl/URLHandler;->handlers:Ljava/util/Map;
return-void
:cond_81
const/4 v13, 0x0
:try_start_82
invoke-virtual {v8, v13, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v7
add-int/lit8 v13, v6, 0x1
invoke-virtual {v8, v13}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/String;->trim()Ljava/lang/String;
:try_end_93
.catch Ljava/lang/Throwable; {:try_start_82 .. :try_end_93} :catch_dd
move-result-object v12
:try_start_94
invoke-static {v12}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v1
const-string v13, "get"
invoke-virtual {v1, v13, v10}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v9
if-nez v4, :cond_eb
new-instance v3, Ljava/util/HashMap;
invoke-direct {v3}, Ljava/util/HashMap;-><init>()V
:try_end_a5
.catch Ljava/lang/ClassNotFoundException; {:try_start_94 .. :try_end_a5} :catch_e7
.catch Ljava/lang/NoSuchMethodException; {:try_start_94 .. :try_end_a5} :catch_c1
.catch Ljava/lang/SecurityException; {:try_start_94 .. :try_end_a5} :catch_cf
.catch Ljava/lang/Throwable; {:try_start_94 .. :try_end_a5} :catch_dd
:try_start_a5
:goto_a5
invoke-interface {v3, v7, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_a8
.catch Ljava/lang/ClassNotFoundException; {:try_start_a5 .. :try_end_a8} :catch_a9
.catch Ljava/lang/NoSuchMethodException; {:try_start_a5 .. :try_end_a8} :catch_e4
.catch Ljava/lang/SecurityException; {:try_start_a5 .. :try_end_a8} :catch_e1
.catch Ljava/lang/Throwable; {:try_start_a5 .. :try_end_a8} :catch_b5
goto :goto_4c
:catch_a9
move-exception v13
move-object v2, v13
:try_start_ab
:goto_ab
sget-boolean v13, Lcom/ibm/icu/impl/URLHandler;->DEBUG:Z
if-eqz v13, :cond_4c
sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;
invoke-virtual {v13, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
:try_end_b4
.catch Ljava/lang/Throwable; {:try_start_ab .. :try_end_b4} :catch_b5
goto :goto_4c
:catch_b5
move-exception v13
move-object v11, v13
:goto_b7
sget-boolean v13, Lcom/ibm/icu/impl/URLHandler;->DEBUG:Z
if-eqz v13, :cond_7e
sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;
invoke-virtual {v13, v11}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
goto :goto_7e
:catch_c1
move-exception v13
move-object v2, v13
move-object v3, v4
:goto_c4
:try_start_c4
sget-boolean v13, Lcom/ibm/icu/impl/URLHandler;->DEBUG:Z
if-eqz v13, :cond_4c
sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;
invoke-virtual {v13, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
goto/16 :goto_4c
:catch_cf
move-exception v13
move-object v2, v13
move-object v3, v4
:goto_d2
sget-boolean v13, Lcom/ibm/icu/impl/URLHandler;->DEBUG:Z
if-eqz v13, :cond_4c
sget-object v13, Ljava/lang/System;->err:Ljava/io/PrintStream;
invoke-virtual {v13, v2}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
:try_end_db
.catch Ljava/lang/Throwable; {:try_start_c4 .. :try_end_db} :catch_b5
goto/16 :goto_4c
:catch_dd
move-exception v13
move-object v11, v13
move-object v3, v4
goto :goto_b7
:catch_e1
move-exception v13
move-object v2, v13
goto :goto_d2
:catch_e4
move-exception v13
move-object v2, v13
goto :goto_c4
:catch_e7
move-exception v13
move-object v2, v13
move-object v3, v4
goto :goto_ab
:cond_eb
move-object v3, v4
goto :goto_a5
:cond_ed
move-object v3, v4
goto :goto_7e
:cond_ef
move-object v3, v4
goto/16 :goto_4c
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method static synthetic access$000()Z
.registers 1
sget-boolean v0, Lcom/ibm/icu/impl/URLHandler;->DEBUG:Z
return v0
.end method
.method public static get(Ljava/net/URL;)Lcom/ibm/icu/impl/URLHandler;
.registers 8
const/4 v4, 0x0
if-nez p0, :cond_4
:goto_3
return-object v4
:cond_4
invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;
move-result-object v3
sget-object v4, Lcom/ibm/icu/impl/URLHandler;->handlers:Ljava/util/Map;
if-eqz v4, :cond_32
sget-object v4, Lcom/ibm/icu/impl/URLHandler;->handlers:Ljava/util/Map;
invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/reflect/Method;
if-eqz v2, :cond_32
const/4 v4, 0x0
const/4 v5, 0x1
:try_start_18
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
aput-object p0, v5, v6
invoke-virtual {v2, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/ibm/icu/impl/URLHandler;
:try_end_23
.catch Ljava/lang/IllegalAccessException; {:try_start_18 .. :try_end_23} :catch_27
.catch Ljava/lang/IllegalArgumentException; {:try_start_18 .. :try_end_23} :catch_37
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_18 .. :try_end_23} :catch_43
if-eqz v1, :cond_32
move-object v4, v1
goto :goto_3
:catch_27
move-exception v4
move-object v0, v4
sget-boolean v4, Lcom/ibm/icu/impl/URLHandler;->DEBUG:Z
if-eqz v4, :cond_32
sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;
invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
:goto_32
:cond_32
invoke-static {p0}, Lcom/ibm/icu/impl/URLHandler;->getDefault(Ljava/net/URL;)Lcom/ibm/icu/impl/URLHandler;
move-result-object v4
goto :goto_3
:catch_37
move-exception v4
move-object v0, v4
sget-boolean v4, Lcom/ibm/icu/impl/URLHandler;->DEBUG:Z
if-eqz v4, :cond_32
sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;
invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
goto :goto_32
:catch_43
move-exception v4
move-object v0, v4
sget-boolean v4, Lcom/ibm/icu/impl/URLHandler;->DEBUG:Z
if-eqz v4, :cond_32
sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;
invoke-virtual {v4, v0}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V
goto :goto_32
.end method
.method protected static getDefault(Ljava/net/URL;)Lcom/ibm/icu/impl/URLHandler;
.registers 3
invoke-virtual {p0}, Ljava/net/URL;->getProtocol()Ljava/lang/String;
move-result-object v0
const-string v1, "file"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_12
new-instance v1, Lcom/ibm/icu/impl/URLHandler$FileURLHandler;
invoke-direct {v1, p0}, Lcom/ibm/icu/impl/URLHandler$FileURLHandler;-><init>(Ljava/net/URL;)V
:goto_11
return-object v1
:cond_12
const-string v1, "jar"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_20
new-instance v1, Lcom/ibm/icu/impl/URLHandler$JarURLHandler;
invoke-direct {v1, p0}, Lcom/ibm/icu/impl/URLHandler$JarURLHandler;-><init>(Ljava/net/URL;)V
goto :goto_11
:cond_20
const/4 v1, 0x0
goto :goto_11
.end method
.method public guide(Lcom/ibm/icu/impl/URLHandler$URLVisitor;Z)V
.registers 4
const/4 v0, 0x1
invoke-virtual {p0, p1, p2, v0}, Lcom/ibm/icu/impl/URLHandler;->guide(Lcom/ibm/icu/impl/URLHandler$URLVisitor;ZZ)V
return-void
.end method
.method public abstract guide(Lcom/ibm/icu/impl/URLHandler$URLVisitor;ZZ)V
.end method