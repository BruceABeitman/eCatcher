.class public Lorg/apache/b/a/c/n;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lorg/apache/b/a/c/l;
.field private static a:Lorg/apache/commons/logging/Log;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lorg/apache/b/a/c/m;->a:Ljava/lang/Class;
if-nez v0, :cond_13
const-string v0, "org.apache.b.a.c.n"
invoke-static {v0}, Lorg/apache/b/a/c/m;->a(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/b/a/c/m;->a:Ljava/lang/Class;
:goto_c
invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
move-result-object v0
sput-object v0, Lorg/apache/b/a/c/n;->a:Lorg/apache/commons/logging/Log;
return-void
:cond_13
sget-object v0, Lorg/apache/b/a/c/m;->a:Ljava/lang/Class;
goto :goto_c
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/apache/b/a/c/k;
.registers 10
const/4 v1, 0x0
:try_start_1
invoke-static {p2}, Lorg/apache/b/a/c/a/b;->a(Ljava/lang/String;)Lorg/apache/b/a/c/a/b;
move-result-object v0
invoke-virtual {v0}, Lorg/apache/b/a/c/a/b;->b()Lorg/apache/b/a/c/a/h;
move-result-object v0
invoke-virtual {v0}, Lorg/apache/b/a/c/a/h;->a()I
move-result v2
if-lez v2, :cond_50
const/4 v2, 0x0
invoke-virtual {v0, v2}, Lorg/apache/b/a/c/a/h;->a(I)Lorg/apache/b/a/c/a/g;
:try_end_13
.catch Lorg/apache/b/a/c/a/a/w; {:try_start_1 .. :try_end_13} :catch_1f
move-result-object v0
:goto_14
move-object v5, v1
move-object v4, v0
:goto_16
new-instance v0, Lorg/apache/b/a/c/m;
move-object v1, p1
move-object v2, p2
move-object v3, p3
invoke-direct/range {v0 .. v5}, Lorg/apache/b/a/c/m;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lorg/apache/b/a/c/a/g;Lorg/apache/b/a/c/a/a/w;)V
return-object v0
:catch_1f
move-exception v5
sget-object v0, Lorg/apache/b/a/c/n;->a:Lorg/apache/commons/logging/Log;
invoke-interface {v0}, Lorg/apache/commons/logging/Log;->isDebugEnabled()Z
move-result v0
if-eqz v0, :cond_4e
sget-object v0, Lorg/apache/b/a/c/n;->a:Lorg/apache/commons/logging/Log;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Parsing value \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "\': "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v5}, Lorg/apache/b/a/c/a/a/w;->getMessage()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2}, Lorg/apache/commons/logging/Log;->debug(Ljava/lang/Object;)V
:cond_4e
move-object v4, v1
goto :goto_16
:cond_50
move-object v0, v1
goto :goto_14
.end method