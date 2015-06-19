.class public Lorg/apache/log4j/x;
.super Ljava/lang/Object;
.source "SourceFile"
.field public static final a:Ljava/lang/String; = "log4j.properties"
.field static final b:Ljava/lang/String; = "log4j.xml"
.field public static final c:Ljava/lang/String; = "log4j.configuration"
.field public static final d:Ljava/lang/String; = "log4j.configuratorClass"
.field public static final e:Ljava/lang/String; = "log4j.defaultInitOverride"
.field private static f:Ljava/lang/Object;
.field private static g:Lorg/apache/log4j/k/q;
.method static constructor <clinit>()V
.registers 4
const/4 v3, 0x0
sput-object v3, Lorg/apache/log4j/x;->f:Ljava/lang/Object;
new-instance v0, Lorg/apache/log4j/t;
new-instance v1, Lorg/apache/log4j/k/s;
sget-object v2, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;
invoke-direct {v1, v2}, Lorg/apache/log4j/k/s;-><init>(Lorg/apache/log4j/v;)V
invoke-direct {v0, v1}, Lorg/apache/log4j/t;-><init>(Lorg/apache/log4j/aa;)V
new-instance v1, Lorg/apache/log4j/k/c;
invoke-direct {v1, v0}, Lorg/apache/log4j/k/c;-><init>(Lorg/apache/log4j/k/j;)V
sput-object v1, Lorg/apache/log4j/x;->g:Lorg/apache/log4j/k/q;
const-string v0, "log4j.defaultInitOverride"
invoke-static {v0, v3}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_26
const-string v1, "false"
invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_98
:cond_26
const-string v0, "log4j.configuration"
invoke-static {v0, v3}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v0, "log4j.configuratorClass"
invoke-static {v0, v3}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
if-nez v1, :cond_68
const-string v0, "log4j.xml"
invoke-static {v0}, Lorg/apache/log4j/c/k;->a(Ljava/lang/String;)Ljava/net/URL;
move-result-object v0
if-nez v0, :cond_42
const-string v0, "log4j.properties"
invoke-static {v0}, Lorg/apache/log4j/c/k;->a(Ljava/lang/String;)Ljava/net/URL;
move-result-object v0
:goto_42
:cond_42
if-eqz v0, :cond_7b
new-instance v1, Ljava/lang/StringBuffer;
invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V
const-string v3, "Using URL ["
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;
move-result-object v1
const-string v3, "] for automatic log4j configuration."
invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
:try_start_60
invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;
move-result-object v1
invoke-static {v0, v2, v1}, Lorg/apache/log4j/c/p;->a(Ljava/net/URL;Ljava/lang/String;Lorg/apache/log4j/k/j;)V
:try_end_67
.catch Ljava/lang/NoClassDefFoundError; {:try_start_60 .. :try_end_67} :catch_74
:goto_67
return-void
:cond_68
:try_start_68
new-instance v0, Ljava/net/URL;
invoke-direct {v0, v1}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
:try_end_6d
.catch Ljava/net/MalformedURLException; {:try_start_68 .. :try_end_6d} :catch_6e
goto :goto_42
:catch_6e
move-exception v0
invoke-static {v1}, Lorg/apache/log4j/c/k;->a(Ljava/lang/String;)Ljava/net/URL;
move-result-object v0
goto :goto_42
:catch_74
move-exception v0
const-string v1, "Error during default initialization"
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_67
:cond_7b
new-instance v0, Ljava/lang/StringBuffer;
invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V
const-string v2, "Could not find resource: ["
invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
const-string v1, "]."
invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
goto :goto_67
:cond_98
const-string v0, "Default initialization of overridden by log4j.defaultInitOverrideproperty."
invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
goto :goto_67
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public static a(Ljava/lang/Class;)Lorg/apache/log4j/aa;
.registers 3
invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;
move-result-object v0
invoke-virtual {p0}, Ljava/lang/Class;->getName()Ljava/lang/String;
move-result-object v1
invoke-interface {v0, v1}, Lorg/apache/log4j/k/j;->c(Ljava/lang/String;)Lorg/apache/log4j/aa;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;)Lorg/apache/log4j/aa;
.registers 2
invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;
move-result-object v0
invoke-interface {v0, p0}, Lorg/apache/log4j/k/j;->c(Ljava/lang/String;)Lorg/apache/log4j/aa;
move-result-object v0
return-object v0
.end method
.method public static a(Ljava/lang/String;Lorg/apache/log4j/k/i;)Lorg/apache/log4j/aa;
.registers 3
invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;
move-result-object v0
invoke-interface {v0, p0, p1}, Lorg/apache/log4j/k/j;->a(Ljava/lang/String;Lorg/apache/log4j/k/i;)Lorg/apache/log4j/aa;
move-result-object v0
return-object v0
.end method
.method public static a()Lorg/apache/log4j/k/j;
.registers 3
sget-object v0, Lorg/apache/log4j/x;->g:Lorg/apache/log4j/k/q;
if-nez v0, :cond_25
new-instance v0, Lorg/apache/log4j/k/c;
new-instance v1, Lorg/apache/log4j/k/m;
invoke-direct {v1}, Lorg/apache/log4j/k/m;-><init>()V
invoke-direct {v0, v1}, Lorg/apache/log4j/k/c;-><init>(Lorg/apache/log4j/k/j;)V
sput-object v0, Lorg/apache/log4j/x;->g:Lorg/apache/log4j/k/q;
const/4 v0, 0x0
sput-object v0, Lorg/apache/log4j/x;->f:Ljava/lang/Object;
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Class invariant violation"
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
const-string v1, "log4j called after unloading, see http://logging.apache.org/log4j/1.2/faq.html#unload."
invoke-static {v0}, Lorg/apache/log4j/x;->a(Ljava/lang/Exception;)Z
move-result v2
if-eqz v2, :cond_2c
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V
:goto_25
:cond_25
sget-object v0, Lorg/apache/log4j/x;->g:Lorg/apache/log4j/k/q;
invoke-interface {v0}, Lorg/apache/log4j/k/q;->a()Lorg/apache/log4j/k/j;
move-result-object v0
return-object v0
:cond_2c
invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_25
.end method
.method public static a(Lorg/apache/log4j/k/q;Ljava/lang/Object;)V
.registers 4
sget-object v0, Lorg/apache/log4j/x;->f:Ljava/lang/Object;
if-eqz v0, :cond_10
sget-object v0, Lorg/apache/log4j/x;->f:Ljava/lang/Object;
if-eq v0, p1, :cond_10
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Attempted to reset the LoggerFactory without possessing the guard."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_10
if-nez p0, :cond_1a
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "RepositorySelector must be non-null."
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_1a
sput-object p1, Lorg/apache/log4j/x;->f:Ljava/lang/Object;
sput-object p0, Lorg/apache/log4j/x;->g:Lorg/apache/log4j/k/q;
return-void
.end method
.method private static a(Ljava/lang/Exception;)Z
.registers 3
new-instance v0, Ljava/io/StringWriter;
invoke-direct {v0}, Ljava/io/StringWriter;-><init>()V
new-instance v1, Ljava/io/PrintWriter;
invoke-direct {v1, v0}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
invoke-virtual {p0, v1}, Ljava/lang/Exception;->printStackTrace(Ljava/io/PrintWriter;)V
invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;
move-result-object v0
const-string v1, "org.apache.catalina.loader.WebappClassLoader.stop"
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I
move-result v0
const/4 v1, -0x1
if-eq v0, v1, :cond_1c
const/4 v0, 0x1
:goto_1b
return v0
:cond_1c
const/4 v0, 0x0
goto :goto_1b
.end method
.method public static b()Lorg/apache/log4j/aa;
.registers 1
invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;
move-result-object v0
invoke-interface {v0}, Lorg/apache/log4j/k/j;->f()Lorg/apache/log4j/aa;
move-result-object v0
return-object v0
.end method
.method public static b(Ljava/lang/String;)Lorg/apache/log4j/aa;
.registers 2
invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;
move-result-object v0
invoke-interface {v0, p0}, Lorg/apache/log4j/k/j;->a(Ljava/lang/String;)Lorg/apache/log4j/aa;
move-result-object v0
return-object v0
.end method
.method public static c()Ljava/util/Enumeration;
.registers 1
invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;
move-result-object v0
invoke-interface {v0}, Lorg/apache/log4j/k/j;->c()Ljava/util/Enumeration;
move-result-object v0
return-object v0
.end method
.method public static d()V
.registers 1
invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;
move-result-object v0
invoke-interface {v0}, Lorg/apache/log4j/k/j;->i()V
return-void
.end method
.method public static e()V
.registers 1
invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;
move-result-object v0
invoke-interface {v0}, Lorg/apache/log4j/k/j;->g()V
return-void
.end method