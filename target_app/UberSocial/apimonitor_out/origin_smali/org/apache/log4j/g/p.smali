.class public Lorg/apache/log4j/g/p;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field static b:Ljava/lang/Class;

.field static c:Ljava/lang/Class;

.field static d:Ljava/lang/Class;

.field private static e:Ljava/lang/Object;

.field private static f:Ljava/lang/Class;

.field private static g:Ljava/lang/Class;


# instance fields
.field a:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    invoke-static {}, Lorg/apache/log4j/g/p;->f()Ljava/lang/Object;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/g/p;->e:Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;)V
    .registers 5

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/log4j/g/p;-><init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)V
    .registers 9

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    :try_start_4
    sget-object v1, Lorg/apache/log4j/g/p;->f:Ljava/lang/Class;

    const-string v2, "create"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_c
    .catch Ljava/lang/NoSuchMethodException; {:try_start_4 .. :try_end_c} :catch_27

    const/4 v0, 0x1

    :goto_d
    if-eqz v0, :cond_1b

    const-string v0, "using JmDNS version 3 to construct serviceInfo instance"

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/log4j/g/p;->b(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/g/p;->a:Ljava/lang/Object;

    :goto_1a
    return-void

    :cond_1b
    const-string v0, "using JmDNS version 1.0 to construct serviceInfo instance"

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    invoke-direct {p0, p1, p2, p3, p4}, Lorg/apache/log4j/g/p;->a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/g/p;->a:Ljava/lang/Object;

    goto :goto_1a

    :catch_27
    move-exception v1

    goto :goto_d
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

.method private a(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .registers 11

    new-instance v1, Ljava/util/Hashtable;

    invoke-direct {v1, p4}, Ljava/util/Hashtable;-><init>(Ljava/util/Map;)V

    const/4 v0, 0x6

    :try_start_6
    new-array v2, v0, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v0, Lorg/apache/log4j/g/p;->b:Ljava/lang/Class;

    if-nez v0, :cond_8b

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/apache/log4j/g/p;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/g/p;->b:Ljava/lang/Class;

    :goto_15
    aput-object v0, v2, v3

    const/4 v3, 0x1

    sget-object v0, Lorg/apache/log4j/g/p;->b:Ljava/lang/Class;

    if-nez v0, :cond_8e

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/apache/log4j/g/p;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/g/p;->b:Ljava/lang/Class;

    :goto_24
    aput-object v0, v2, v3

    const/4 v0, 0x2

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    const/4 v0, 0x3

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    const/4 v0, 0x4

    sget-object v3, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v3, v2, v0

    const/4 v3, 0x5

    sget-object v0, Lorg/apache/log4j/g/p;->c:Ljava/lang/Class;

    if-nez v0, :cond_91

    const-string v0, "java.util.Hashtable"

    invoke-static {v0}, Lorg/apache/log4j/g/p;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/g/p;->c:Ljava/lang/Class;

    :goto_42
    aput-object v0, v2, v3

    sget-object v0, Lorg/apache/log4j/g/p;->g:Ljava/lang/Class;

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    const/4 v2, 0x6

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    aput-object p1, v2, v3

    const/4 v3, 0x1

    aput-object p3, v2, v3

    const/4 v3, 0x2

    new-instance v4, Ljava/lang/Integer;

    invoke-direct {v4, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x3

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x4

    new-instance v4, Ljava/lang/Integer;

    const/4 v5, 0x0

    invoke-direct {v4, v5}, Ljava/lang/Integer;-><init>(I)V

    aput-object v4, v2, v3

    const/4 v3, 0x5

    aput-object v1, v2, v3

    invoke-virtual {v0, v2}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "created serviceinfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :goto_8a
    return-object v0

    :cond_8b
    sget-object v0, Lorg/apache/log4j/g/p;->b:Ljava/lang/Class;

    goto :goto_15

    :cond_8e
    sget-object v0, Lorg/apache/log4j/g/p;->b:Ljava/lang/Class;

    goto :goto_24

    :cond_91
    sget-object v0, Lorg/apache/log4j/g/p;->c:Ljava/lang/Class;
    :try_end_93
    .catch Ljava/lang/IllegalAccessException; {:try_start_6 .. :try_end_93} :catch_94
    .catch Ljava/lang/NoSuchMethodException; {:try_start_6 .. :try_end_93} :catch_9c
    .catch Ljava/lang/InstantiationException; {:try_start_6 .. :try_end_93} :catch_a3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_6 .. :try_end_93} :catch_aa

    goto :goto_42

    :catch_94
    move-exception v0

    const-string v1, "Unable to construct ServiceInfo instance"

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_9a
    const/4 v0, 0x0

    goto :goto_8a

    :catch_9c
    move-exception v0

    const-string v1, "Unable to get ServiceInfo constructor"

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9a

    :catch_a3
    move-exception v0

    const-string v1, "Unable to construct ServiceInfo instance"

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9a

    :catch_aa
    move-exception v0

    const-string v1, "Unable to construct ServiceInfo instance"

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_9a
.end method

.method private b(Ljava/lang/String;ILjava/lang/String;Ljava/util/Map;)Ljava/lang/Object;
    .registers 10

    const/4 v0, 0x6

    :try_start_1
    new-array v1, v0, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v0, Lorg/apache/log4j/g/p;->b:Ljava/lang/Class;

    if-nez v0, :cond_89

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/apache/log4j/g/p;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/g/p;->b:Ljava/lang/Class;

    :goto_10
    aput-object v0, v1, v2

    const/4 v2, 0x1

    sget-object v0, Lorg/apache/log4j/g/p;->b:Ljava/lang/Class;

    if-nez v0, :cond_8c

    const-string v0, "java.lang.String"

    invoke-static {v0}, Lorg/apache/log4j/g/p;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/g/p;->b:Ljava/lang/Class;

    :goto_1f
    aput-object v0, v1, v2

    const/4 v0, 0x2

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v0, 0x3

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v0, 0x4

    sget-object v2, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v2, v1, v0

    const/4 v2, 0x5

    sget-object v0, Lorg/apache/log4j/g/p;->d:Ljava/lang/Class;

    if-nez v0, :cond_8f

    const-string v0, "java.util.Map"

    invoke-static {v0}, Lorg/apache/log4j/g/p;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/g/p;->d:Ljava/lang/Class;

    :goto_3d
    aput-object v0, v1, v2

    sget-object v0, Lorg/apache/log4j/g/p;->g:Ljava/lang/Class;

    const-string v2, "create"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    const/4 v1, 0x6

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p3, v1, v2

    const/4 v2, 0x2

    new-instance v3, Ljava/lang/Integer;

    invoke-direct {v3, p2}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x3

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x4

    new-instance v3, Ljava/lang/Integer;

    const/4 v4, 0x0

    invoke-direct {v3, v4}, Ljava/lang/Integer;-><init>(I)V

    aput-object v3, v1, v2

    const/4 v2, 0x5

    aput-object p4, v1, v2

    const/4 v2, 0x0

    invoke-virtual {v0, v2, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuffer;

    invoke-direct {v1}, Ljava/lang/StringBuffer;-><init>()V

    const-string v2, "created serviceinfo: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    :goto_88
    return-object v0

    :cond_89
    sget-object v0, Lorg/apache/log4j/g/p;->b:Ljava/lang/Class;

    goto :goto_10

    :cond_8c
    sget-object v0, Lorg/apache/log4j/g/p;->b:Ljava/lang/Class;

    goto :goto_1f

    :cond_8f
    sget-object v0, Lorg/apache/log4j/g/p;->d:Ljava/lang/Class;
    :try_end_91
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_91} :catch_92
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_91} :catch_9a
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_91} :catch_a1

    goto :goto_3d

    :catch_92
    move-exception v0

    const-string v1, "Unable to invoke create method"

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_98
    const/4 v0, 0x0

    goto :goto_88

    :catch_9a
    move-exception v0

    const-string v1, "Unable to find create method"

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_98

    :catch_a1
    move-exception v0

    const-string v1, "Unable to invoke create method"

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_98
.end method

.method public static c()Ljava/lang/Object;
    .registers 1

    sget-object v0, Lorg/apache/log4j/g/p;->e:Ljava/lang/Object;

    return-object v0
.end method

.method private static d()Ljava/lang/Object;
    .registers 2

    :try_start_0
    sget-object v0, Lorg/apache/log4j/g/p;->f:Ljava/lang/Class;

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;
    :try_end_5
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_5} :catch_7
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_5} :catch_f

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const-string v1, "Unable to instantiate JMDNS"

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_d
    const/4 v0, 0x0

    goto :goto_6

    :catch_f
    move-exception v0

    const-string v1, "Unable to instantiate JMDNS"

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d
.end method

.method private static e()Ljava/lang/Object;
    .registers 4

    const/4 v0, 0x0

    :try_start_1
    sget-object v1, Lorg/apache/log4j/g/p;->f:Ljava/lang/Class;

    const-string v2, "create"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v1

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_f
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_f} :catch_11
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_f} :catch_18
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_f} :catch_1f

    move-result-object v0

    :goto_10
    return-object v0

    :catch_11
    move-exception v1

    const-string v2, "Unable to instantiate jmdns class"

    invoke-static {v2, v1}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :catch_18
    move-exception v1

    const-string v2, "Unable to access constructor"

    invoke-static {v2, v1}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :catch_1f
    move-exception v1

    const-string v2, "Unable to call constructor"

    invoke-static {v2, v1}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10
.end method

.method private static f()Ljava/lang/Object;
    .registers 4

    :try_start_0
    const-string v0, "javax.jmdns.JmDNS"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/g/p;->f:Ljava/lang/Class;

    const-string v0, "javax.jmdns.ServiceInfo"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/g/p;->g:Ljava/lang/Class;
    :try_end_10
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_10} :catch_21

    :goto_10
    const/4 v0, 0x0

    :try_start_11
    sget-object v1, Lorg/apache/log4j/g/p;->f:Ljava/lang/Class;

    const-string v2, "create"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
    :try_end_19
    .catch Ljava/lang/NoSuchMethodException; {:try_start_11 .. :try_end_19} :catch_2d

    const/4 v0, 0x1

    :goto_1a
    if-eqz v0, :cond_28

    invoke-static {}, Lorg/apache/log4j/g/p;->e()Ljava/lang/Object;

    move-result-object v0

    :goto_20
    return-object v0

    :catch_21
    move-exception v0

    const-string v1, "JmDNS or serviceInfo class not found"

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_10

    :cond_28
    invoke-static {}, Lorg/apache/log4j/g/p;->d()Ljava/lang/Object;

    move-result-object v0

    goto :goto_20

    :catch_2d
    move-exception v1

    goto :goto_1a
.end method


# virtual methods
.method public a()V
    .registers 6

    :try_start_0
    sget-object v0, Lorg/apache/log4j/g/p;->f:Ljava/lang/Class;

    const-string v1, "registerService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Lorg/apache/log4j/g/p;->g:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lorg/apache/log4j/g/p;->e:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/log4j/g/p;->a:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "registered serviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/g/p;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_35} :catch_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_35} :catch_3d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_35} :catch_44

    :goto_35
    return-void

    :catch_36
    move-exception v0

    const-string v1, "Unable to invoke registerService method"

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35

    :catch_3d
    move-exception v0

    const-string v1, "No registerService method"

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35

    :catch_44
    move-exception v0

    const-string v1, "Unable to invoke registerService method"

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35
.end method

.method public b()V
    .registers 6

    :try_start_0
    sget-object v0, Lorg/apache/log4j/g/p;->f:Ljava/lang/Class;

    const-string v1, "unregisterService"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Lorg/apache/log4j/g/p;->g:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sget-object v1, Lorg/apache/log4j/g/p;->e:Ljava/lang/Object;

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lorg/apache/log4j/g/p;->a:Ljava/lang/Object;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    const-string v1, "unregistered serviceInfo: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    iget-object v1, p0, Lorg/apache/log4j/g/p;->a:Ljava/lang/Object;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
    :try_end_35
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_35} :catch_36
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_35} :catch_3d
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_35} :catch_44

    :goto_35
    return-void

    :catch_36
    move-exception v0

    const-string v1, "Unable to invoke unregisterService method"

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35

    :catch_3d
    move-exception v0

    const-string v1, "No unregisterService method"

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35

    :catch_44
    move-exception v0

    const-string v1, "Unable to invoke unregisterService method"

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->c(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_35
.end method
