.class public Lorg/apache/log4j/ah;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lorg/apache/log4j/k/b;


# static fields
.field private static final A:Ljava/lang/String; = "root"

.field static final c:Ljava/lang/String; = "log4j.category."

.field static final d:Ljava/lang/String; = "log4j.logger."

.field static final e:Ljava/lang/String; = "log4j.factory"

.field static final f:Ljava/lang/String; = "log4j.additivity."

.field static final g:Ljava/lang/String; = "log4j.rootCategory"

.field static final h:Ljava/lang/String; = "log4j.rootLogger"

.field static final i:Ljava/lang/String; = "log4j.appender."

.field static final j:Ljava/lang/String; = "log4j.renderer."

.field static final k:Ljava/lang/String; = "log4j.threshold"

.field public static final l:Ljava/lang/String; = "log4j.loggerFactory"

.field static m:Ljava/lang/Class; = null

.field static n:Ljava/lang/Class; = null

.field static o:Ljava/lang/Class; = null

.field static p:Ljava/lang/Class; = null

.field static q:Ljava/lang/Class; = null

.field static r:Ljava/lang/Class; = null

.field private static final v:Ljava/lang/String; = "log4j.throwableRenderer"

.field private static final w:Ljava/lang/String; = "logger-ref"

.field private static final x:Ljava/lang/String; = "root-ref"

.field private static final y:Ljava/lang/String; = "appender-ref"

.field private static final z:Ljava/lang/String; = "log4j.reset"


# instance fields
.field protected a:Ljava/util/Hashtable;

.field protected b:Lorg/apache/log4j/k/i;

.field private u:Lorg/apache/log4j/k/j;


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0xb

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    iput-object v0, p0, Lorg/apache/log4j/ah;->a:Ljava/util/Hashtable;

    new-instance v0, Lorg/apache/log4j/m;

    invoke-direct {v0}, Lorg/apache/log4j/m;-><init>()V

    iput-object v0, p0, Lorg/apache/log4j/ah;->b:Lorg/apache/log4j/k/i;

    return-void
.end method

.method public static a(Ljava/io/InputStream;)V
    .registers 3

    new-instance v0, Lorg/apache/log4j/ah;

    invoke-direct {v0}, Lorg/apache/log4j/ah;-><init>()V

    invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/ah;->a(Ljava/io/InputStream;Lorg/apache/log4j/k/j;)V

    return-void
.end method

.method public static a(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Lorg/apache/log4j/ah;

    invoke-direct {v0}, Lorg/apache/log4j/ah;-><init>()V

    invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/ah;->a(Ljava/lang/String;Lorg/apache/log4j/k/j;)V

    return-void
.end method

.method public static a(Ljava/lang/String;J)V
    .registers 4

    new-instance v0, Lorg/apache/log4j/ai;

    invoke-direct {v0, p0}, Lorg/apache/log4j/ai;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p1, p2}, Lorg/apache/log4j/ai;->a(J)V

    invoke-virtual {v0}, Lorg/apache/log4j/ai;->start()V

    return-void
.end method

.method public static a(Ljava/net/URL;)V
    .registers 3

    new-instance v0, Lorg/apache/log4j/ah;

    invoke-direct {v0}, Lorg/apache/log4j/ah;-><init>()V

    invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/ah;->a(Ljava/net/URL;Lorg/apache/log4j/k/j;)V

    return-void
.end method

.method public static a(Ljava/util/Properties;)V
    .registers 3

    new-instance v0, Lorg/apache/log4j/ah;

    invoke-direct {v0}, Lorg/apache/log4j/ah;-><init>()V

    invoke-static {}, Lorg/apache/log4j/x;->a()Lorg/apache/log4j/k/j;

    move-result-object v1

    invoke-virtual {v0, p0, v1}, Lorg/apache/log4j/ah;->a(Ljava/util/Properties;Lorg/apache/log4j/k/j;)V

    return-void
.end method

.method private a(Lorg/apache/log4j/k/e;Ljava/lang/String;Ljava/util/Properties;Lorg/apache/log4j/k/j;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "root-ref"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_25

    invoke-interface {p4}, Lorg/apache/log4j/k/j;->f()Lorg/apache/log4j/aa;

    move-result-object v0

    invoke-interface {p1, v0}, Lorg/apache/log4j/k/e;->a(Lorg/apache/log4j/aa;)V

    :cond_25
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "logger-ref"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_49

    iget-object v1, p0, Lorg/apache/log4j/ah;->b:Lorg/apache/log4j/k/i;

    if-nez v1, :cond_6c

    invoke-interface {p4, v0}, Lorg/apache/log4j/k/j;->c(Ljava/lang/String;)Lorg/apache/log4j/aa;

    move-result-object v0

    :goto_46
    invoke-interface {p1, v0}, Lorg/apache/log4j/k/e;->a(Lorg/apache/log4j/aa;)V

    :cond_49
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "appender-ref"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p3}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-virtual {p0, p3, v0}, Lorg/apache/log4j/ah;->a(Ljava/util/Properties;Ljava/lang/String;)Lorg/apache/log4j/a;

    move-result-object v0

    if-eqz v0, :cond_6b

    invoke-interface {p1, v0}, Lorg/apache/log4j/k/e;->b(Lorg/apache/log4j/a;)V

    :cond_6b
    return-void

    :cond_6c
    iget-object v1, p0, Lorg/apache/log4j/ah;->b:Lorg/apache/log4j/k/i;

    invoke-interface {p4, v0, v1}, Lorg/apache/log4j/k/j;->a(Ljava/lang/String;Lorg/apache/log4j/k/i;)Lorg/apache/log4j/aa;

    move-result-object v0

    goto :goto_46
.end method

.method public static b(Ljava/lang/String;)V
    .registers 3

    const-wide/32 v0, 0xea60

    invoke-static {p0, v0, v1}, Lorg/apache/log4j/ah;->a(Ljava/lang/String;J)V

    return-void
.end method

.method static d(Ljava/lang/String;)Ljava/lang/Class;
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


# virtual methods
.method a(Ljava/util/Properties;Ljava/lang/String;)Lorg/apache/log4j/a;
    .registers 15

    const/4 v4, 0x0

    const/4 v2, 0x0

    invoke-virtual {p0, p2}, Lorg/apache/log4j/ah;->c(Ljava/lang/String;)Lorg/apache/log4j/a;

    move-result-object v0

    if-eqz v0, :cond_25

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Appender \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" was already parsed."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :goto_24
    return-object v0

    :cond_25
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "log4j.appender."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v5

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".layout"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    sget-object v0, Lorg/apache/log4j/ah;->o:Ljava/lang/Class;

    if-nez v0, :cond_7d

    const-string v0, "org.apache.log4j.a"

    invoke-static {v0}, Lorg/apache/log4j/ah;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/ah;->o:Ljava/lang/Class;

    :goto_57
    invoke-static {p1, v5, v0, v2}, Lorg/apache/log4j/c/p;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/a;

    if-nez v0, :cond_80

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Could not instantiate appender named \""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "\"."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    move-object v0, v2

    goto :goto_24

    :cond_7d
    sget-object v0, Lorg/apache/log4j/ah;->o:Ljava/lang/Class;

    goto :goto_57

    :cond_80
    invoke-interface {v0, p2}, Lorg/apache/log4j/a;->a(Ljava/lang/String;)V

    instance-of v1, v0, Lorg/apache/log4j/k/o;

    if-eqz v1, :cond_240

    invoke-interface {v0}, Lorg/apache/log4j/a;->b()Z

    move-result v1

    if-eqz v1, :cond_f2

    sget-object v1, Lorg/apache/log4j/ah;->p:Ljava/lang/Class;

    if-nez v1, :cond_1d1

    const-string v1, "org.apache.log4j.u"

    invoke-static {v1}, Lorg/apache/log4j/ah;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/ah;->p:Ljava/lang/Class;

    :goto_99
    invoke-static {p1, v3, v1, v2}, Lorg/apache/log4j/c/p;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/u;

    if-eqz v1, :cond_f2

    invoke-interface {v0, v1}, Lorg/apache/log4j/a;->b(Lorg/apache/log4j/u;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    const-string v7, "Parsing layout options for \""

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    const-string v7, "\"."

    invoke-virtual {v6, v7}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    new-instance v6, Ljava/lang/StringBuffer;

    invoke-direct {v6}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v6, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v6, "."

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, p1, v3}, Lorg/apache/log4j/b/d;->a(Ljava/lang/Object;Ljava/util/Properties;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "End of parsing for \""

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, "\"."

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :cond_f2
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v3, ".errorhandler"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6, p1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_20e

    sget-object v1, Lorg/apache/log4j/ah;->q:Ljava/lang/Class;

    if-nez v1, :cond_1d5

    const-string v1, "org.apache.log4j.k.e"

    invoke-static {v1}, Lorg/apache/log4j/ah;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/ah;->q:Ljava/lang/Class;

    :goto_117
    invoke-static {p1, v6, v1, v2}, Lorg/apache/log4j/c/p;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/k/e;

    if-eqz v1, :cond_20e

    invoke-interface {v0, v1}, Lorg/apache/log4j/a;->a(Lorg/apache/log4j/k/e;)V

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Parsing errorhandler options for \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    iget-object v2, p0, Lorg/apache/log4j/ah;->u:Lorg/apache/log4j/k/j;

    invoke-direct {p0, v1, v6, p1, v2}, Lorg/apache/log4j/ah;->a(Lorg/apache/log4j/k/e;Ljava/lang/String;Ljava/util/Properties;Lorg/apache/log4j/k/j;)V

    new-instance v7, Ljava/util/Properties;

    invoke-direct {v7}, Ljava/util/Properties;-><init>()V

    const/4 v2, 0x3

    new-array v8, v2, [Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "root-ref"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v8, v4

    const/4 v2, 0x1

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v9, "."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v9, "logger-ref"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v3, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v9, "."

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    const-string v9, "appender-ref"

    invoke-virtual {v3, v9}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v8, v2

    invoke-virtual {p1}, Ljava/util/Properties;->entrySet()Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v9

    :cond_1a6
    :goto_1a6
    invoke-interface {v9}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1dc

    invoke-interface {v9}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map$Entry;

    move v3, v4

    :goto_1b3
    array-length v10, v8

    if-ge v3, v10, :cond_1c2

    aget-object v10, v8, v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_1d9

    :cond_1c2
    array-length v10, v8

    if-ne v3, v10, :cond_1a6

    invoke-interface {v2}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v7, v3, v2}, Ljava/util/Properties;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1a6

    :cond_1d1
    sget-object v1, Lorg/apache/log4j/ah;->p:Ljava/lang/Class;

    goto/16 :goto_99

    :cond_1d5
    sget-object v1, Lorg/apache/log4j/ah;->q:Ljava/lang/Class;

    goto/16 :goto_117

    :cond_1d9
    add-int/lit8 v3, v3, 0x1

    goto :goto_1b3

    :cond_1dc
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v7, v2}, Lorg/apache/log4j/b/d;->a(Ljava/lang/Object;Ljava/util/Properties;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "End of errorhandler parsing for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\"."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :cond_20e
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v1, v5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, p1, v1}, Lorg/apache/log4j/b/d;->a(Ljava/lang/Object;Ljava/util/Properties;Ljava/lang/String;)V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Parsed \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" options."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :cond_240
    invoke-virtual {p0, p1, p2, v0}, Lorg/apache/log4j/ah;->a(Ljava/util/Properties;Ljava/lang/String;Lorg/apache/log4j/a;)V

    invoke-virtual {p0, v0}, Lorg/apache/log4j/ah;->a(Lorg/apache/log4j/a;)V

    goto/16 :goto_24
.end method

.method public a(Ljava/io/InputStream;Lorg/apache/log4j/k/j;)V
    .registers 6

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    :try_start_5
    invoke-virtual {v0, p1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_8
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_8} :catch_c

    invoke-virtual {p0, v0, p2}, Lorg/apache/log4j/ah;->a(Ljava/util/Properties;Lorg/apache/log4j/k/j;)V

    :goto_b
    return-void

    :catch_c
    move-exception v0

    instance-of v1, v0, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_18

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_18
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Could not read configuration file from InputStream ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Ignoring configuration InputStream ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    goto :goto_b
.end method

.method public a(Ljava/lang/String;Lorg/apache/log4j/k/j;)V
    .registers 7

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    const/4 v2, 0x0

    :try_start_6
    new-instance v1, Ljava/io/FileInputStream;

    invoke-direct {v1, p1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_b
    .catchall {:try_start_6 .. :try_end_b} :catchall_7b
    .catch Ljava/lang/Exception; {:try_start_6 .. :try_end_b} :catch_23

    :try_start_b
    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V

    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_11
    .catchall {:try_start_b .. :try_end_11} :catchall_92
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_11} :catch_94

    if-eqz v1, :cond_16

    :try_start_13
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_16
    .catch Ljava/io/InterruptedIOException; {:try_start_13 .. :try_end_16} :catch_1a
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_16} :catch_8c

    :cond_16
    :goto_16
    invoke-virtual {p0, v0, p2}, Lorg/apache/log4j/ah;->a(Ljava/util/Properties;Lorg/apache/log4j/k/j;)V

    :cond_19
    :goto_19
    return-void

    :catch_1a
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_16

    :catch_23
    move-exception v0

    move-object v1, v2

    :goto_25
    :try_start_25
    instance-of v2, v0, Ljava/io/InterruptedIOException;

    if-nez v2, :cond_2d

    instance-of v2, v0, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_34

    :cond_2d
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_34
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not read configuration file ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Ignoring configuration file ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V
    :try_end_6c
    .catchall {:try_start_25 .. :try_end_6c} :catchall_92

    if-eqz v1, :cond_19

    :try_start_6e
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_71
    .catch Ljava/io/InterruptedIOException; {:try_start_6e .. :try_end_71} :catch_72
    .catch Ljava/lang/Throwable; {:try_start_6e .. :try_end_71} :catch_8e

    goto :goto_19

    :catch_72
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_19

    :catchall_7b
    move-exception v0

    move-object v1, v2

    :goto_7d
    if-eqz v1, :cond_82

    :try_start_7f
    invoke-virtual {v1}, Ljava/io/FileInputStream;->close()V
    :try_end_82
    .catch Ljava/io/InterruptedIOException; {:try_start_7f .. :try_end_82} :catch_83
    .catch Ljava/lang/Throwable; {:try_start_7f .. :try_end_82} :catch_90

    :cond_82
    :goto_82
    throw v0

    :catch_83
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_82

    :catch_8c
    move-exception v1

    goto :goto_16

    :catch_8e
    move-exception v0

    goto :goto_19

    :catch_90
    move-exception v1

    goto :goto_82

    :catchall_92
    move-exception v0

    goto :goto_7d

    :catch_94
    move-exception v0

    goto :goto_25
.end method

.method public a(Ljava/net/URL;Lorg/apache/log4j/k/j;)V
    .registers 7

    new-instance v0, Ljava/util/Properties;

    invoke-direct {v0}, Ljava/util/Properties;-><init>()V

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Reading configuration from URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    const/4 v1, 0x0

    :try_start_1c
    invoke-virtual {p1}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljava/net/URLConnection;->setUseCaches(Z)V

    invoke-virtual {v2}, Ljava/net/URLConnection;->getInputStream()Ljava/io/InputStream;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/Properties;->load(Ljava/io/InputStream;)V
    :try_end_2b
    .catchall {:try_start_1c .. :try_end_2b} :catchall_94
    .catch Ljava/lang/Exception; {:try_start_1c .. :try_end_2b} :catch_3d

    if-eqz v1, :cond_30

    :try_start_2d
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_30
    .catch Ljava/io/InterruptedIOException; {:try_start_2d .. :try_end_30} :catch_34
    .catch Ljava/io/IOException; {:try_start_2d .. :try_end_30} :catch_a4
    .catch Ljava/lang/RuntimeException; {:try_start_2d .. :try_end_30} :catch_a6

    :cond_30
    :goto_30
    invoke-virtual {p0, v0, p2}, Lorg/apache/log4j/ah;->a(Ljava/util/Properties;Lorg/apache/log4j/k/j;)V

    :cond_33
    :goto_33
    return-void

    :catch_34
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_30

    :catch_3d
    move-exception v0

    :try_start_3e
    instance-of v2, v0, Ljava/io/InterruptedIOException;

    if-nez v2, :cond_46

    instance-of v2, v0, Ljava/lang/InterruptedException;

    if-eqz v2, :cond_4d

    :cond_46
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->interrupt()V

    :cond_4d
    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Could not read configuration file from URL ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Ignoring configuration file ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V
    :try_end_85
    .catchall {:try_start_3e .. :try_end_85} :catchall_94

    if-eqz v1, :cond_33

    :try_start_87
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_8a
    .catch Ljava/io/InterruptedIOException; {:try_start_87 .. :try_end_8a} :catch_8b
    .catch Ljava/io/IOException; {:try_start_87 .. :try_end_8a} :catch_a8
    .catch Ljava/lang/RuntimeException; {:try_start_87 .. :try_end_8a} :catch_aa

    goto :goto_33

    :catch_8b
    move-exception v0

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    goto :goto_33

    :catchall_94
    move-exception v0

    if-eqz v1, :cond_9a

    :try_start_97
    invoke-virtual {v1}, Ljava/io/InputStream;->close()V
    :try_end_9a
    .catch Ljava/io/InterruptedIOException; {:try_start_97 .. :try_end_9a} :catch_9b
    .catch Ljava/io/IOException; {:try_start_97 .. :try_end_9a} :catch_ac
    .catch Ljava/lang/RuntimeException; {:try_start_97 .. :try_end_9a} :catch_ae

    :cond_9a
    :goto_9a
    throw v0

    :catch_9b
    move-exception v1

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    goto :goto_9a

    :catch_a4
    move-exception v1

    goto :goto_30

    :catch_a6
    move-exception v1

    goto :goto_30

    :catch_a8
    move-exception v0

    goto :goto_33

    :catch_aa
    move-exception v0

    goto :goto_33

    :catch_ac
    move-exception v1

    goto :goto_9a

    :catch_ae
    move-exception v1

    goto :goto_9a
.end method

.method a(Ljava/util/Properties;Ljava/lang/String;Lorg/apache/log4j/a;)V
    .registers 14

    const/4 v9, -0x1

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "log4j.appender."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, ".filter."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v5

    new-instance v6, Ljava/util/Hashtable;

    invoke-direct {v6}, Ljava/util/Hashtable;-><init>()V

    invoke-virtual {p1}, Ljava/util/Properties;->keys()Ljava/util/Enumeration;

    move-result-object v7

    const-string v2, ""

    :goto_29
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_71

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_14e

    const/16 v0, 0x2e

    invoke-virtual {v1, v0, v5}, Ljava/lang/String;->indexOf(II)I

    move-result v8

    if-eq v8, v9, :cond_14a

    const/4 v0, 0x0

    invoke-virtual {v1, v0, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    add-int/lit8 v2, v8, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v2

    move-object v3, v2

    move-object v2, v0

    :goto_51
    invoke-virtual {v6, v2}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    if-nez v0, :cond_61

    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    invoke-virtual {v6, v2, v0}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_61
    if-eq v8, v9, :cond_6f

    invoke-static {v1, p1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    new-instance v2, Lorg/apache/log4j/ae;

    invoke-direct {v2, v3, v1}, Lorg/apache/log4j/ae;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    :cond_6f
    :goto_6f
    move-object v2, v3

    goto :goto_29

    :cond_71
    new-instance v2, Lorg/apache/log4j/an;

    invoke-direct {v2, v6}, Lorg/apache/log4j/an;-><init>(Ljava/util/Hashtable;)V

    :cond_76
    :goto_76
    invoke-interface {v2}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_149

    invoke-interface {v2}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12b

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v4, "Filter key: ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "] class: ["

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v4, "] props: "

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v6, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    sget-object v1, Lorg/apache/log4j/ah;->r:Ljava/lang/Class;

    if-nez v1, :cond_f2

    const-string v1, "org.apache.log4j.k.f"

    invoke-static {v1}, Lorg/apache/log4j/ah;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    sput-object v1, Lorg/apache/log4j/ah;->r:Ljava/lang/Class;

    :goto_c6
    const/4 v4, 0x0

    invoke-static {v3, v1, v4}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/log4j/k/f;

    if-eqz v1, :cond_76

    new-instance v3, Lorg/apache/log4j/b/d;

    invoke-direct {v3, v1}, Lorg/apache/log4j/b/d;-><init>(Ljava/lang/Object;)V

    invoke-virtual {v6, v0}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Vector;

    invoke-virtual {v0}, Ljava/util/Vector;->elements()Ljava/util/Enumeration;

    move-result-object v4

    :goto_de
    invoke-interface {v4}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_f5

    invoke-interface {v4}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/ae;

    iget-object v5, v0, Lorg/apache/log4j/ae;->a:Ljava/lang/String;

    iget-object v0, v0, Lorg/apache/log4j/ae;->b:Ljava/lang/String;

    invoke-virtual {v3, v5, v0}, Lorg/apache/log4j/b/d;->a(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_de

    :cond_f2
    sget-object v1, Lorg/apache/log4j/ah;->r:Ljava/lang/Class;

    goto :goto_c6

    :cond_f5
    invoke-virtual {v3}, Lorg/apache/log4j/b/d;->b()V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Adding filter of type ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "] to appender named ["

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p3}, Lorg/apache/log4j/a;->f()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "]."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    invoke-interface {p3, v1}, Lorg/apache/log4j/a;->a(Lorg/apache/log4j/k/f;)V

    goto/16 :goto_76

    :cond_12b
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Missing class definition for filter: ["

    invoke-virtual {v1, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V

    goto/16 :goto_76

    :cond_149
    return-void

    :cond_14a
    move-object v3, v2

    move-object v2, v1

    goto/16 :goto_51

    :cond_14e
    move-object v3, v2

    goto/16 :goto_6f
.end method

.method a(Ljava/util/Properties;Lorg/apache/log4j/aa;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "log4j.additivity."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Handling log4j.additivity."

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "=["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    if-eqz v0, :cond_6f

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_6f

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Z)Z

    move-result v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Setting additivity for \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, "\" to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Z)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    invoke-virtual {p2, v0}, Lorg/apache/log4j/aa;->a(Z)V

    :cond_6f
    return-void
.end method

.method a(Ljava/util/Properties;Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 10

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Parsing for ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "] with value=["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    new-instance v0, Ljava/util/StringTokenizer;

    const-string v1, ","

    invoke-direct {v0, p5, v1}, Ljava/util/StringTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, ","

    invoke-virtual {p5, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_a5

    const-string v1, ""

    invoke-virtual {p5, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_a5

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-nez v1, :cond_44

    :cond_43
    return-void

    :cond_44
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Level token is ["

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "]."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    const-string v2, "inherited"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_74

    const-string v2, "null"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_eb

    :cond_74
    const-string v1, "root"

    invoke-virtual {p4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_e6

    const-string v1, "The root logger cannot be set to null."

    invoke-static {v1}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V

    :goto_81
    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Category "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const-string v2, " set to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {p2}, Lorg/apache/log4j/aa;->l()Lorg/apache/log4j/v;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :cond_a5
    invoke-virtual {p2}, Lorg/apache/log4j/aa;->m()V

    :cond_a8
    :goto_a8
    invoke-virtual {v0}, Ljava/util/StringTokenizer;->hasMoreTokens()Z

    move-result v1

    if-eqz v1, :cond_43

    invoke-virtual {v0}, Ljava/util/StringTokenizer;->nextToken()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_a8

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_a8

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const-string v3, "Parsing appender named \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    const-string v3, "\"."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    invoke-virtual {p0, p1, v1}, Lorg/apache/log4j/ah;->a(Ljava/util/Properties;Ljava/lang/String;)Lorg/apache/log4j/a;

    move-result-object v1

    if-eqz v1, :cond_a8

    invoke-virtual {p2, v1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/a;)V

    goto :goto_a8

    :cond_e6
    const/4 v1, 0x0

    invoke-virtual {p2, v1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/v;)V

    goto :goto_81

    :cond_eb
    sget-object v2, Lorg/apache/log4j/v;->g:Lorg/apache/log4j/v;

    invoke-static {v1, v2}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Lorg/apache/log4j/v;)Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {p2, v1}, Lorg/apache/log4j/aa;->a(Lorg/apache/log4j/v;)V

    goto :goto_81
.end method

.method public a(Ljava/util/Properties;Lorg/apache/log4j/k/j;)V
    .registers 5

    iput-object p2, p0, Lorg/apache/log4j/ah;->u:Lorg/apache/log4j/k/j;

    const-string v0, "log4j.debug"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_17

    const-string v0, "log4j.configDebug"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_17

    const-string v1, "[log4j.configDebug] is deprecated. Use [log4j.debug] instead."

    invoke-static {v1}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;)V

    :cond_17
    if-eqz v0, :cond_21

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Z)Z

    move-result v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Z)V

    :cond_21
    const-string v0, "log4j.reset"

    invoke-virtual {p1, v0}, Ljava/util/Properties;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_33

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Z)Z

    move-result v0

    if-eqz v0, :cond_33

    invoke-interface {p2}, Lorg/apache/log4j/k/j;->g()V

    :cond_33
    const-string v0, "log4j.threshold"

    invoke-static {v0, p1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_64

    sget-object v1, Lorg/apache/log4j/v;->i:Lorg/apache/log4j/v;

    invoke-static {v0, v1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Lorg/apache/log4j/v;)Lorg/apache/log4j/v;

    move-result-object v0

    invoke-interface {p2, v0}, Lorg/apache/log4j/k/j;->a(Lorg/apache/log4j/v;)V

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "Hierarchy threshold set to ["

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-interface {p2}, Lorg/apache/log4j/k/j;->b()Lorg/apache/log4j/v;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v1, "]."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :cond_64
    invoke-virtual {p0, p1, p2}, Lorg/apache/log4j/ah;->b(Ljava/util/Properties;Lorg/apache/log4j/k/j;)V

    invoke-virtual {p0, p1}, Lorg/apache/log4j/ah;->b(Ljava/util/Properties;)V

    invoke-virtual {p0, p1, p2}, Lorg/apache/log4j/ah;->c(Ljava/util/Properties;Lorg/apache/log4j/k/j;)V

    const-string v0, "Finished configuring."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    iget-object v0, p0, Lorg/apache/log4j/ah;->a:Ljava/util/Hashtable;

    invoke-virtual {v0}, Ljava/util/Hashtable;->clear()V

    return-void
.end method

.method a(Lorg/apache/log4j/a;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/ah;->a:Ljava/util/Hashtable;

    invoke-interface {p1}, Lorg/apache/log4j/a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/Hashtable;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method protected b(Ljava/util/Properties;)V
    .registers 5

    const-string v0, "log4j.loggerFactory"

    invoke-static {v0, p1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_41

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "Setting category factory to ["

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v2, "]."

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    sget-object v0, Lorg/apache/log4j/ah;->m:Ljava/lang/Class;

    if-nez v0, :cond_42

    const-string v0, "org.apache.log4j.k.i"

    invoke-static {v0}, Lorg/apache/log4j/ah;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/ah;->m:Ljava/lang/Class;

    :goto_30
    iget-object v2, p0, Lorg/apache/log4j/ah;->b:Lorg/apache/log4j/k/i;

    invoke-static {v1, v0, v2}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/k/i;

    iput-object v0, p0, Lorg/apache/log4j/ah;->b:Lorg/apache/log4j/k/i;

    iget-object v0, p0, Lorg/apache/log4j/ah;->b:Lorg/apache/log4j/k/i;

    const-string v1, "log4j.factory."

    invoke-static {v0, p1, v1}, Lorg/apache/log4j/b/d;->a(Ljava/lang/Object;Ljava/util/Properties;Ljava/lang/String;)V

    :cond_41
    return-void

    :cond_42
    sget-object v0, Lorg/apache/log4j/ah;->m:Ljava/lang/Class;

    goto :goto_30
.end method

.method b(Ljava/util/Properties;Lorg/apache/log4j/k/j;)V
    .registers 9

    const-string v3, "log4j.rootLogger"

    const-string v0, "log4j.rootLogger"

    invoke-static {v0, p1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v5

    if-nez v5, :cond_12

    const-string v0, "log4j.rootCategory"

    invoke-static {v0, p1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v5

    const-string v3, "log4j.rootCategory"

    :cond_12
    if-nez v5, :cond_1a

    const-string v0, "Could not find root logger information. Is this OK?"

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :goto_19
    return-void

    :cond_1a
    invoke-interface {p2}, Lorg/apache/log4j/k/j;->f()Lorg/apache/log4j/aa;

    move-result-object v2

    monitor-enter v2

    :try_start_1f
    const-string v4, "root"

    move-object v0, p0

    move-object v1, p1

    invoke-virtual/range {v0 .. v5}, Lorg/apache/log4j/ah;->a(Ljava/util/Properties;Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_19

    :catchall_28
    move-exception v0

    monitor-exit v2
    :try_end_2a
    .catchall {:try_start_1f .. :try_end_2a} :catchall_28

    throw v0
.end method

.method c(Ljava/lang/String;)Lorg/apache/log4j/a;
    .registers 3

    iget-object v0, p0, Lorg/apache/log4j/ah;->a:Ljava/util/Hashtable;

    invoke-virtual {v0, p1}, Ljava/util/Hashtable;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/a;

    return-object v0
.end method

.method protected c(Ljava/util/Properties;Lorg/apache/log4j/k/j;)V
    .registers 11

    const/4 v6, 0x0

    invoke-virtual {p1}, Ljava/util/Properties;->propertyNames()Ljava/util/Enumeration;

    move-result-object v7

    :cond_5
    :goto_5
    invoke-interface {v7}, Ljava/util/Enumeration;->hasMoreElements()Z

    move-result v0

    if-eqz v0, :cond_bd

    invoke-interface {v7}, Ljava/util/Enumeration;->nextElement()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    const-string v0, "log4j.category."

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_21

    const-string v0, "log4j.logger."

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_5e

    :cond_21
    const-string v0, "log4j.category."

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4b

    const-string v0, "log4j.category."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    :goto_33
    invoke-static {v3, p1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v5

    iget-object v0, p0, Lorg/apache/log4j/ah;->b:Lorg/apache/log4j/k/i;

    invoke-interface {p2, v4, v0}, Lorg/apache/log4j/k/j;->a(Ljava/lang/String;Lorg/apache/log4j/k/i;)Lorg/apache/log4j/aa;

    move-result-object v2

    monitor-enter v2

    move-object v0, p0

    move-object v1, p1

    :try_start_40
    invoke-virtual/range {v0 .. v5}, Lorg/apache/log4j/ah;->a(Ljava/util/Properties;Lorg/apache/log4j/aa;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {p0, p1, v2, v4}, Lorg/apache/log4j/ah;->a(Ljava/util/Properties;Lorg/apache/log4j/aa;Ljava/lang/String;)V

    monitor-exit v2

    goto :goto_5

    :catchall_48
    move-exception v0

    monitor-exit v2
    :try_end_4a
    .catchall {:try_start_40 .. :try_end_4a} :catchall_48

    throw v0

    :cond_4b
    const-string v0, "log4j.logger."

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_be

    const-string v0, "log4j.logger."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v4

    goto :goto_33

    :cond_5e
    const-string v0, "log4j.renderer."

    invoke-virtual {v3, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const-string v0, "log4j.renderer."

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-virtual {v3, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v3, p1}, Lorg/apache/log4j/c/p;->a(Ljava/lang/String;Ljava/util/Properties;)Ljava/lang/String;

    move-result-object v2

    instance-of v0, p2, Lorg/apache/log4j/k/p;

    if-eqz v0, :cond_5

    move-object v0, p2

    check-cast v0, Lorg/apache/log4j/k/p;

    invoke-static {v0, v1, v2}, Lorg/apache/log4j/h/c;->a(Lorg/apache/log4j/k/p;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_5

    :cond_7f
    const-string v0, "log4j.throwableRenderer"

    invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_5

    instance-of v0, p2, Lorg/apache/log4j/k/v;

    if-eqz v0, :cond_5

    const-string v1, "log4j.throwableRenderer"

    sget-object v0, Lorg/apache/log4j/ah;->n:Ljava/lang/Class;

    if-nez v0, :cond_a8

    const-string v0, "org.apache.log4j.k.u"

    invoke-static {v0}, Lorg/apache/log4j/ah;->d(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/ah;->n:Ljava/lang/Class;

    :goto_99
    invoke-static {p1, v1, v0, v6}, Lorg/apache/log4j/c/p;->a(Ljava/util/Properties;Ljava/lang/String;Ljava/lang/Class;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/log4j/k/u;

    if-nez v0, :cond_ab

    const-string v0, "Could not instantiate throwableRenderer."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->b(Ljava/lang/String;)V

    goto/16 :goto_5

    :cond_a8
    sget-object v0, Lorg/apache/log4j/ah;->n:Ljava/lang/Class;

    goto :goto_99

    :cond_ab
    new-instance v1, Lorg/apache/log4j/b/d;

    invoke-direct {v1, v0}, Lorg/apache/log4j/b/d;-><init>(Ljava/lang/Object;)V

    const-string v2, "log4j.throwableRenderer."

    invoke-virtual {v1, p1, v2}, Lorg/apache/log4j/b/d;->a(Ljava/util/Properties;Ljava/lang/String;)V

    move-object v1, p2

    check-cast v1, Lorg/apache/log4j/k/v;

    invoke-interface {v1, v0}, Lorg/apache/log4j/k/v;->a(Lorg/apache/log4j/k/u;)V

    goto/16 :goto_5

    :cond_bd
    return-void

    :cond_be
    move-object v4, v6

    goto/16 :goto_33
.end method
