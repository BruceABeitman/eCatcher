.class public Lorg/apache/log4j/m/h;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/xml/sax/EntityResolver;
.field private static final a:Ljava/lang/String; = "-//APACHE//DTD LOG4J 1.2//EN"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public resolveEntity(Ljava/lang/String;Ljava/lang/String;)Lorg/xml/sax/InputSource;
.registers 6
const-string v0, "log4j.dtd"
invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_10
const-string v0, "-//APACHE//DTD LOG4J 1.2//EN"
invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4b
:cond_10
invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v1
const-string v0, "/org/apache/log4j/xml/log4j.dtd"
invoke-virtual {v1, v0}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;
move-result-object v0
if-nez v0, :cond_44
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Could not find [log4j.dtd] using ["
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "] class loader, parsed without DTD."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V
new-instance v0, Ljava/io/ByteArrayInputStream;
const/4 v1, 0x0
new-array v1, v1, [B
invoke-direct {v0, v1}, Ljava/io/ByteArrayInputStream;-><init>([B)V
:cond_44
new-instance v1, Lorg/xml/sax/InputSource;
invoke-direct {v1, v0}, Lorg/xml/sax/InputSource;-><init>(Ljava/io/InputStream;)V
move-object v0, v1
:goto_4a
return-object v0
:cond_4b
const/4 v0, 0x0
goto :goto_4a
.end method