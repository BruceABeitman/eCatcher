.class  Lorg/apache/b/a/e/n;
.super Lorg/apache/b/a/e/a;
.source "SourceFile"
.implements Lorg/apache/b/a/e/o;
.field static a:Ljava/lang/Class;
.field private static b:Lorg/apache/commons/logging/Log;
.field private c:Ljava/lang/String;
.field private d:Lorg/apache/b/a/e/a/e;
.method static constructor <clinit>()V
.registers 1
sget-object v0, Lorg/apache/b/a/e/n;->a:Ljava/lang/Class;
if-nez v0, :cond_13
const-string v0, "org.apache.b.a.e.n"
invoke-static {v0}, Lorg/apache/b/a/e/n;->a(Ljava/lang/String;)Ljava/lang/Class;
move-result-object v0
sput-object v0, Lorg/apache/b/a/e/n;->a:Ljava/lang/Class;
:goto_c
invoke-static {v0}, Lorg/apache/commons/logging/LogFactory;->getLog(Ljava/lang/Class;)Lorg/apache/commons/logging/Log;
move-result-object v0
sput-object v0, Lorg/apache/b/a/e/n;->b:Lorg/apache/commons/logging/Log;
return-void
:cond_13
sget-object v0, Lorg/apache/b/a/e/n;->a:Ljava/lang/Class;
goto :goto_c
.end method
.method public constructor <init>(Ljava/io/InputStream;Ljava/lang/String;)V
.registers 6
const/4 v0, 0x0
invoke-direct {p0}, Lorg/apache/b/a/e/a;-><init>()V
iput-object v0, p0, Lorg/apache/b/a/e/n;->c:Ljava/lang/String;
iput-object v0, p0, Lorg/apache/b/a/e/n;->d:Lorg/apache/b/a/e/a/e;
iput-object p2, p0, Lorg/apache/b/a/e/n;->c:Ljava/lang/String;
invoke-static {}, Lorg/apache/b/a/e/a/g;->b()Lorg/apache/b/a/e/a/g;
move-result-object v0
invoke-virtual {v0}, Lorg/apache/b/a/e/a/g;->a()Lorg/apache/b/a/e/a/f;
move-result-object v0
const-string v1, "attachment"
const-string v2, ".txt"
invoke-interface {v0, v1, v2}, Lorg/apache/b/a/e/a/f;->a(Ljava/lang/String;Ljava/lang/String;)Lorg/apache/b/a/e/a/e;
move-result-object v0
iput-object v0, p0, Lorg/apache/b/a/e/n;->d:Lorg/apache/b/a/e/a/e;
iget-object v0, p0, Lorg/apache/b/a/e/n;->d:Lorg/apache/b/a/e/a/e;
invoke-interface {v0}, Lorg/apache/b/a/e/a/e;->b()Ljava/io/OutputStream;
move-result-object v0
invoke-static {p1, v0}, Lorg/apache/b/a/a/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
invoke-virtual {v0}, Ljava/io/OutputStream;->close()V
return-void
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
.method public a(Ljava/io/OutputStream;I)V
.registers 4
iget-object v0, p0, Lorg/apache/b/a/e/n;->d:Lorg/apache/b/a/e/a/e;
invoke-interface {v0}, Lorg/apache/b/a/e/a/e;->a()Ljava/io/InputStream;
move-result-object v0
invoke-static {v0, p1}, Lorg/apache/b/a/a/e;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)V
return-void
.end method
.method public b()V
.registers 2
iget-object v0, p0, Lorg/apache/b/a/e/n;->d:Lorg/apache/b/a/e/a/e;
if-eqz v0, :cond_c
iget-object v0, p0, Lorg/apache/b/a/e/n;->d:Lorg/apache/b/a/e/a/e;
invoke-interface {v0}, Lorg/apache/b/a/e/a/e;->d()V
const/4 v0, 0x0
iput-object v0, p0, Lorg/apache/b/a/e/n;->d:Lorg/apache/b/a/e/a/e;
:cond_c
return-void
.end method
.method public c()Ljava/io/Reader;
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lorg/apache/b/a/e/n;->c:Ljava/lang/String;
if-eqz v1, :cond_b
iget-object v0, p0, Lorg/apache/b/a/e/n;->c:Ljava/lang/String;
invoke-static {v0}, Lorg/apache/b/a/g/c;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:cond_b
if-nez v0, :cond_39
const-string v0, "ISO-8859-1"
sget-object v1, Lorg/apache/b/a/e/n;->b:Lorg/apache/commons/logging/Log;
invoke-interface {v1}, Lorg/apache/commons/logging/Log;->isWarnEnabled()Z
move-result v1
if-eqz v1, :cond_39
iget-object v1, p0, Lorg/apache/b/a/e/n;->c:Ljava/lang/String;
if-nez v1, :cond_45
sget-object v1, Lorg/apache/b/a/e/n;->b:Lorg/apache/commons/logging/Log;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "No MIME charset specified. Using "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, " instead."
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
:goto_39
:cond_39
new-instance v1, Ljava/io/InputStreamReader;
iget-object v2, p0, Lorg/apache/b/a/e/n;->d:Lorg/apache/b/a/e/a/e;
invoke-interface {v2}, Lorg/apache/b/a/e/a/e;->a()Ljava/io/InputStream;
move-result-object v2
invoke-direct {v1, v2, v0}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;Ljava/lang/String;)V
return-object v1
:cond_45
sget-object v1, Lorg/apache/b/a/e/n;->b:Lorg/apache/commons/logging/Log;
new-instance v2, Ljava/lang/StringBuffer;
invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "MIME charset \'"
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
iget-object v3, p0, Lorg/apache/b/a/e/n;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "\' has no "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, "corresponding Java charset. Using "
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
const-string v3, " instead."
invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Lorg/apache/commons/logging/Log;->warn(Ljava/lang/Object;)V
goto :goto_39
.end method