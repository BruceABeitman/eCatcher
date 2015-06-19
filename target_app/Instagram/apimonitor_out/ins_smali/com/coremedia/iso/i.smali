.class public final Lcom/coremedia/iso/i;
.super Lcom/coremedia/iso/a;
.source "PropertyBoxParserImpl.java"
.field  b:Ljava/util/Properties;
.field  c:Ljava/util/regex/Pattern;
.method public varargs constructor <init>()V
.registers 5
invoke-direct {p0}, Lcom/coremedia/iso/a;-><init>()V
const-string v0, "(.*)\\((.*?)\\)"
invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;
move-result-object v0
iput-object v0, p0, Lcom/coremedia/iso/i;->c:Ljava/util/regex/Pattern;
new-instance v1, Ljava/io/BufferedInputStream;
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-string v2, "/isoparser-default.properties"
invoke-virtual {v0, v2}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v0
invoke-direct {v1, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_start_1a
new-instance v0, Ljava/util/Properties;
invoke-direct {v0}, Ljava/util/Properties;-><init>()V
iput-object v0, p0, Lcom/coremedia/iso/i;->b:Ljava/util/Properties;
:try_end_21
.catchall {:try_start_1a .. :try_end_21} :catchall_59
:try_start_21
iget-object v0, p0, Lcom/coremedia/iso/i;->b:Ljava/util/Properties;
invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->getContextClassLoader()Ljava/lang/ClassLoader;
move-result-object v0
const-string v2, "isoparser-custom.properties"
invoke-virtual {v0, v2}, Ljava/lang/ClassLoader;->getResources(Ljava/lang/String;)Ljava/util/Enumeration;
move-result-object v2
:goto_34
invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z
move-result v0
if-eqz v0, :cond_63
invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/net/URL;
new-instance v3, Ljava/io/BufferedInputStream;
invoke-virtual {v0}, Ljava/net/URL;->openStream()Ljava/io/InputStream;
move-result-object v0
invoke-direct {v3, v0}, Ljava/io/BufferedInputStream;-><init>(Ljava/io/InputStream;)V
:try_end_49
.catchall {:try_start_21 .. :try_end_49} :catchall_59
.catch Ljava/io/IOException; {:try_start_21 .. :try_end_49} :catch_52
:try_start_49
iget-object v0, p0, Lcom/coremedia/iso/i;->b:Ljava/util/Properties;
invoke-virtual {v0, v3}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
:try_start_4e
:try_end_4e
.catchall {:try_start_49 .. :try_end_4e} :catchall_5e
invoke-virtual {v3}, Ljava/io/InputStream;->close()V
:try_end_51
.catchall {:try_start_4e .. :try_end_51} :catchall_59
.catch Ljava/io/IOException; {:try_start_4e .. :try_end_51} :catch_52
goto :goto_34
:catch_52
move-exception v0
:try_start_53
new-instance v2, Ljava/lang/RuntimeException;
invoke-direct {v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v2
:catchall_59
:try_end_59
.catchall {:try_start_53 .. :try_end_59} :catchall_59
move-exception v0
:try_start_5a
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:goto_5d
:try_end_5d
.catch Ljava/io/IOException; {:try_start_5a .. :try_end_5d} :catch_6c
throw v0
:catchall_5e
move-exception v0
:try_start_5f
invoke-virtual {v3}, Ljava/io/InputStream;->close()V
throw v0
:try_end_63
.catchall {:try_start_5f .. :try_end_63} :catchall_59
.catch Ljava/io/IOException; {:try_start_5f .. :try_end_63} :catch_52
:cond_63
:try_start_63
invoke-virtual {v1}, Ljava/io/InputStream;->close()V
:try_end_66
.catch Ljava/io/IOException; {:try_start_63 .. :try_end_66} :catch_67
:goto_66
return-void
:catch_67
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
goto :goto_66
:catch_6c
move-exception v1
invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V
goto :goto_5d
.end method
.method public final a(Ljava/lang/String;[BLjava/lang/String;)Lcom/coremedia/iso/boxes/a;
.registers 11
const/4 v0, 0x0
new-instance v1, Lcom/coremedia/iso/j;
invoke-direct {v1, p0, p1, p2, p3}, Lcom/coremedia/iso/j;-><init>(Lcom/coremedia/iso/i;Ljava/lang/String;[BLjava/lang/String;)V
invoke-virtual {v1}, Lcom/coremedia/iso/j;->c()Lcom/coremedia/iso/j;
move-result-object v2
invoke-virtual {v2}, Lcom/coremedia/iso/j;->b()[Ljava/lang/String;
move-result-object v1
invoke-virtual {v2}, Lcom/coremedia/iso/j;->a()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
:try_start_13
aget-object v3, v1, v3
invoke-virtual {v3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/String;->length()I
move-result v3
if-nez v3, :cond_22
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/String;
:cond_22
invoke-static {v2}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v2
array-length v3, v1
new-array v3, v3, [Ljava/lang/Class;
array-length v4, v1
new-array v4, v4, [Ljava/lang/Object;
:goto_2c
array-length v5, v1
if-ge v0, v5, :cond_82
const-string v5, "userType"
aget-object v6, v1, v0
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_42
aput-object p2, v4, v0
const-class v5, [B
aput-object v5, v3, v0
:goto_3f
add-int/lit8 v0, v0, 0x1
goto :goto_2c
:cond_42
const-string v5, "type"
aget-object v6, v1, v0
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_5a
aput-object p1, v4, v0
const-class v5, Ljava/lang/String;
aput-object v5, v3, v0
:try_end_52
.catch Ljava/lang/ClassNotFoundException; {:try_start_13 .. :try_end_52} :catch_53
goto :goto_3f
:catch_53
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:cond_5a
:try_start_5a
const-string v5, "parent"
aget-object v6, v1, v0
invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_6b
aput-object p3, v4, v0
const-class v5, Ljava/lang/String;
aput-object v5, v3, v0
goto :goto_3f
:cond_6b
new-instance v2, Ljava/lang/InternalError;
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "No such param: "
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
aget-object v0, v1, v0
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v2, v0}, Ljava/lang/InternalError;-><init>(Ljava/lang/String;)V
throw v2
:try_end_82
.catch Ljava/lang/ClassNotFoundException; {:try_start_5a .. :try_end_82} :catch_53
:cond_82
:try_start_82
array-length v0, v1
if-lez v0, :cond_90
invoke-virtual {v2, v3}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
move-result-object v0
:goto_89
invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/coremedia/iso/boxes/a;
return-object v0
:cond_90
const/4 v0, 0x0
new-array v0, v0, [Ljava/lang/Class;
invoke-virtual {v2, v0}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
:try_end_96
.catch Ljava/lang/NoSuchMethodException; {:try_start_82 .. :try_end_96} :catch_98
.catch Ljava/lang/reflect/InvocationTargetException; {:try_start_82 .. :try_end_96} :catch_9f
.catch Ljava/lang/InstantiationException; {:try_start_82 .. :try_end_96} :catch_a6
.catch Ljava/lang/IllegalAccessException; {:try_start_82 .. :try_end_96} :catch_ad
.catch Ljava/lang/ClassNotFoundException; {:try_start_82 .. :try_end_96} :catch_53
move-result-object v0
goto :goto_89
:catch_98
move-exception v0
:try_start_99
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_9f
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_a6
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:catch_ad
move-exception v0
new-instance v1, Ljava/lang/RuntimeException;
invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v1
:try_end_b4
.catch Ljava/lang/ClassNotFoundException; {:try_start_99 .. :try_end_b4} :catch_53
.end method