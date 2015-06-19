.class public Lorg/apache/log4j/k/h;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field public static final f:Ljava/lang/String; = "?"

.field static final g:J = -0x1266441eb56e5a84L

.field public static final h:Lorg/apache/log4j/k/h;

.field static i:Z

.field static j:Ljava/lang/Class;

.field private static k:Ljava/io/StringWriter;

.field private static l:Ljava/io/PrintWriter;

.field private static m:Ljava/lang/reflect/Method;

.field private static n:Ljava/lang/reflect/Method;

.field private static o:Ljava/lang/reflect/Method;

.field private static p:Ljava/lang/reflect/Method;

.field private static q:Ljava/lang/reflect/Method;


# instance fields
.field transient a:Ljava/lang/String;

.field transient b:Ljava/lang/String;

.field transient c:Ljava/lang/String;

.field transient d:Ljava/lang/String;

.field public e:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 6

    const/4 v0, 0x0

    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    sput-object v1, Lorg/apache/log4j/k/h;->k:Ljava/io/StringWriter;

    new-instance v1, Ljava/io/PrintWriter;

    sget-object v2, Lorg/apache/log4j/k/h;->k:Ljava/io/StringWriter;

    invoke-direct {v1, v2}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V

    sput-object v1, Lorg/apache/log4j/k/h;->l:Ljava/io/PrintWriter;

    new-instance v1, Lorg/apache/log4j/k/h;

    const-string v2, "?"

    const-string v3, "?"

    const-string v4, "?"

    const-string v5, "?"

    invoke-direct {v1, v2, v3, v4, v5}, Lorg/apache/log4j/k/h;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v1, Lorg/apache/log4j/k/h;->h:Lorg/apache/log4j/k/h;

    sput-boolean v0, Lorg/apache/log4j/k/h;->i:Z

    :try_start_22
    const-string v1, "com.ibm.uvm.tools.DebugSupport"

    invoke-static {v1}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    if-eqz v1, :cond_2b

    const/4 v0, 0x1

    :cond_2b
    sput-boolean v0, Lorg/apache/log4j/k/h;->i:Z

    const-string v0, "Detected IBM VisualAge environment."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_32} :catch_7f

    :goto_32
    const/4 v1, 0x0

    :try_start_33
    sget-object v0, Lorg/apache/log4j/k/h;->j:Ljava/lang/Class;

    if-nez v0, :cond_6e

    const-string v0, "java.lang.Throwable"

    invoke-static {v0}, Lorg/apache/log4j/k/h;->a(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/k/h;->j:Ljava/lang/Class;

    :goto_3f
    const-string v2, "getStackTrace"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/k/h;->m:Ljava/lang/reflect/Method;

    const-string v0, "java.lang.StackTraceElement"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    const-string v2, "getClassName"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/k/h;->n:Ljava/lang/reflect/Method;

    const-string v2, "getMethodName"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/k/h;->o:Ljava/lang/reflect/Method;

    const-string v2, "getFileName"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    sput-object v2, Lorg/apache/log4j/k/h;->p:Ljava/lang/reflect/Method;

    const-string v2, "getLineNumber"

    invoke-virtual {v0, v2, v1}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    sput-object v0, Lorg/apache/log4j/k/h;->q:Ljava/lang/reflect/Method;

    :goto_6d
    return-void

    :cond_6e
    sget-object v0, Lorg/apache/log4j/k/h;->j:Ljava/lang/Class;
    :try_end_70
    .catch Ljava/lang/ClassNotFoundException; {:try_start_33 .. :try_end_70} :catch_71
    .catch Ljava/lang/NoSuchMethodException; {:try_start_33 .. :try_end_70} :catch_78

    goto :goto_3f

    :catch_71
    move-exception v0

    const-string v0, "LocationInfo will use pre-JDK 1.4 methods to determine location."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    goto :goto_6d

    :catch_78
    move-exception v0

    const-string v0, "LocationInfo will use pre-JDK 1.4 methods to determine location."

    invoke-static {v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;)V

    goto :goto_6d

    :catch_7f
    move-exception v0

    goto :goto_32
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lorg/apache/log4j/k/h;->b:Ljava/lang/String;

    iput-object p2, p0, Lorg/apache/log4j/k/h;->c:Ljava/lang/String;

    iput-object p3, p0, Lorg/apache/log4j/k/h;->d:Ljava/lang/String;

    iput-object p4, p0, Lorg/apache/log4j/k/h;->a:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-static {v0, p2}, Lorg/apache/log4j/k/h;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0, p3}, Lorg/apache/log4j/k/h;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0, p1}, Lorg/apache/log4j/k/h;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-static {v0, p4}, Lorg/apache/log4j/k/h;->a(Ljava/lang/StringBuffer;Ljava/lang/String;)V

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;Ljava/lang/String;)V
    .registers 10

    const/4 v6, -0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-eqz p1, :cond_8

    if-nez p2, :cond_9

    :cond_8
    :goto_8
    return-void

    :cond_9
    sget-object v0, Lorg/apache/log4j/k/h;->q:Ljava/lang/reflect/Method;

    if-eqz v0, :cond_a7

    const/4 v4, 0x0

    :try_start_e
    sget-object v0, Lorg/apache/log4j/k/h;->m:Ljava/lang/reflect/Method;

    invoke-virtual {v0, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/Object;

    check-cast v0, [Ljava/lang/Object;

    const-string v2, "?"

    array-length v1, v0

    add-int/lit8 v1, v1, -0x1

    move-object v3, v2

    move v2, v1

    :goto_1f
    if-ltz v2, :cond_8

    sget-object v1, Lorg/apache/log4j/k/h;->n:Ljava/lang/reflect/Method;

    aget-object v5, v0, v2

    invoke-virtual {v1, v5, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-virtual {p2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_147

    add-int/lit8 v2, v2, 0x1

    array-length v1, v0

    if-ge v2, v1, :cond_8

    iput-object v3, p0, Lorg/apache/log4j/k/h;->c:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/k/h;->o:Ljava/lang/reflect/Method;

    aget-object v3, v0, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/log4j/k/h;->d:Ljava/lang/String;

    sget-object v1, Lorg/apache/log4j/k/h;->p:Ljava/lang/reflect/Method;

    aget-object v3, v0, v2

    invoke-virtual {v1, v3, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    iput-object v1, p0, Lorg/apache/log4j/k/h;->b:Ljava/lang/String;

    iget-object v1, p0, Lorg/apache/log4j/k/h;->b:Ljava/lang/String;

    if-nez v1, :cond_58

    const-string v1, "?"

    iput-object v1, p0, Lorg/apache/log4j/k/h;->b:Ljava/lang/String;

    :cond_58
    sget-object v1, Lorg/apache/log4j/k/h;->q:Ljava/lang/reflect/Method;

    aget-object v0, v0, v2

    invoke-virtual {v1, v0, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-gez v0, :cond_120

    const-string v0, "?"

    iput-object v0, p0, Lorg/apache/log4j/k/h;->a:Ljava/lang/String;

    :goto_6c
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lorg/apache/log4j/k/h;->c:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/log4j/k/h;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/log4j/k/h;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ":"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v1, p0, Lorg/apache/log4j/k/h;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;
    :try_end_9f
    .catch Ljava/lang/IllegalAccessException; {:try_start_e .. :try_end_9f} :catch_a1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_e .. :try_end_9f} :catch_128
    .catch Ljava/lang/RuntimeException; {:try_start_e .. :try_end_9f} :catch_14c

    goto/16 :goto_8

    :catch_a1
    move-exception v0

    const-string v1, "LocationInfo failed using JDK 1.4 methods"

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_a7
    :goto_a7
    sget-object v1, Lorg/apache/log4j/k/h;->k:Ljava/io/StringWriter;

    monitor-enter v1

    :try_start_aa
    sget-object v0, Lorg/apache/log4j/k/h;->l:Ljava/io/PrintWriter;

    invoke-virtual {p1, v0}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintWriter;)V

    sget-object v0, Lorg/apache/log4j/k/h;->k:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v2

    sget-object v0, Lorg/apache/log4j/k/h;->k:Ljava/io/StringWriter;

    invoke-virtual {v0}, Ljava/io/StringWriter;->getBuffer()Ljava/lang/StringBuffer;

    move-result-object v0

    const/4 v3, 0x0

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->setLength(I)V

    monitor-exit v1
    :try_end_c0
    .catchall {:try_start_aa .. :try_end_c0} :catchall_154

    invoke-virtual {v2, p2}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v1

    if-eq v1, v6, :cond_8

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ge v0, v3, :cond_157

    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v0

    add-int/2addr v0, v1

    invoke-virtual {v2, v0}, Ljava/lang/String;->charAt(I)C

    move-result v0

    const/16 v3, 0x2e

    if-eq v0, v3, :cond_157

    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    const-string v3, "."

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v0

    if-eq v0, v6, :cond_157

    :goto_f7
    sget-object v1, Lorg/apache/log4j/u;->h:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v6, :cond_8

    sget v1, Lorg/apache/log4j/u;->i:I

    add-int/2addr v0, v1

    sget-object v1, Lorg/apache/log4j/u;->h:Ljava/lang/String;

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;I)I

    move-result v1

    if-eq v1, v6, :cond_8

    sget-boolean v3, Lorg/apache/log4j/k/h;->i:Z

    if-nez v3, :cond_118

    const-string v0, "at "

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;I)I

    move-result v0

    if-eq v0, v6, :cond_8

    add-int/lit8 v0, v0, 0x3

    :cond_118
    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    goto/16 :goto_8

    :cond_120
    :try_start_120
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/k/h;->a:Ljava/lang/String;
    :try_end_126
    .catch Ljava/lang/IllegalAccessException; {:try_start_120 .. :try_end_126} :catch_a1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_120 .. :try_end_126} :catch_128
    .catch Ljava/lang/RuntimeException; {:try_start_120 .. :try_end_126} :catch_14c

    goto/16 :goto_6c

    :catch_128
    move-exception v0

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/lang/InterruptedException;

    if-nez v1, :cond_139

    invoke-virtual {v0}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v1

    instance-of v1, v1, Ljava/io/InterruptedIOException;

    if-eqz v1, :cond_140

    :cond_139
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Thread;->interrupt()V

    :cond_140
    const-string v1, "LocationInfo failed using JDK 1.4 methods"

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a7

    :cond_147
    add-int/lit8 v2, v2, -0x1

    move-object v3, v1

    goto/16 :goto_1f

    :catch_14c
    move-exception v0

    const-string v1, "LocationInfo failed using JDK 1.4 methods"

    invoke-static {v1, v0}, Lorg/apache/log4j/c/l;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_a7

    :catchall_154
    move-exception v0

    :try_start_155
    monitor-exit v1
    :try_end_156
    .catchall {:try_start_155 .. :try_end_156} :catchall_154

    throw v0

    :cond_157
    move v0, v1

    goto :goto_f7
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

.method private static final a(Ljava/lang/StringBuffer;Ljava/lang/String;)V
    .registers 3

    if-nez p1, :cond_8

    const-string v0, "?"

    invoke-virtual {p0, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_7
    return-void

    :cond_8
    invoke-virtual {p0, p1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_7
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 5

    const/4 v3, -0x1

    iget-object v0, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    if-nez v0, :cond_8

    const-string v0, "?"

    :goto_7
    return-object v0

    :cond_8
    iget-object v0, p0, Lorg/apache/log4j/k/h;->c:Ljava/lang/String;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    if-ne v0, v3, :cond_1d

    const-string v0, "?"

    iput-object v0, p0, Lorg/apache/log4j/k/h;->c:Ljava/lang/String;

    :cond_1a
    :goto_1a
    iget-object v0, p0, Lorg/apache/log4j/k/h;->c:Ljava/lang/String;

    goto :goto_7

    :cond_1d
    iget-object v1, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    const/4 v0, 0x0

    sget-boolean v2, Lorg/apache/log4j/k/h;->i:Z

    if-eqz v2, :cond_34

    iget-object v0, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    const/16 v2, 0x20

    invoke-virtual {v0, v2, v1}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    :cond_34
    if-ne v1, v3, :cond_3b

    const-string v0, "?"

    iput-object v0, p0, Lorg/apache/log4j/k/h;->c:Ljava/lang/String;

    goto :goto_1a

    :cond_3b
    iget-object v2, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    invoke-virtual {v2, v0, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/k/h;->c:Ljava/lang/String;

    goto :goto_1a
.end method

.method public b()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "?"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/apache/log4j/k/h;->b:Ljava/lang/String;

    if-nez v0, :cond_1a

    iget-object v0, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    const/16 v1, 0x3a

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1d

    const-string v0, "?"

    iput-object v0, p0, Lorg/apache/log4j/k/h;->b:Ljava/lang/String;

    :cond_1a
    :goto_1a
    iget-object v0, p0, Lorg/apache/log4j/k/h;->b:Ljava/lang/String;

    goto :goto_6

    :cond_1d
    iget-object v1, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    const/16 v2, 0x28

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    iget-object v2, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/k/h;->b:Ljava/lang/String;

    goto :goto_1a
.end method

.method public c()Ljava/lang/String;
    .registers 5

    iget-object v0, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "?"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/apache/log4j/k/h;->a:Ljava/lang/String;

    if-nez v0, :cond_24

    iget-object v0, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    const/16 v1, 0x29

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    const/16 v2, 0x3a

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {v1, v2, v3}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_27

    const-string v0, "?"

    iput-object v0, p0, Lorg/apache/log4j/k/h;->a:Ljava/lang/String;

    :cond_24
    :goto_24
    iget-object v0, p0, Lorg/apache/log4j/k/h;->a:Ljava/lang/String;

    goto :goto_6

    :cond_27
    iget-object v2, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/k/h;->a:Ljava/lang/String;

    goto :goto_24
.end method

.method public d()Ljava/lang/String;
    .registers 4

    iget-object v0, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    if-nez v0, :cond_7

    const-string v0, "?"

    :goto_6
    return-object v0

    :cond_7
    iget-object v0, p0, Lorg/apache/log4j/k/h;->d:Ljava/lang/String;

    if-nez v0, :cond_22

    iget-object v0, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    const/16 v1, 0x28

    invoke-virtual {v0, v1}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v0

    iget-object v1, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    const/16 v2, 0x2e

    invoke-virtual {v1, v2, v0}, Ljava/lang/String;->lastIndexOf(II)I

    move-result v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_25

    const-string v0, "?"

    iput-object v0, p0, Lorg/apache/log4j/k/h;->d:Ljava/lang/String;

    :cond_22
    :goto_22
    iget-object v0, p0, Lorg/apache/log4j/k/h;->d:Ljava/lang/String;

    goto :goto_6

    :cond_25
    iget-object v2, p0, Lorg/apache/log4j/k/h;->e:Ljava/lang/String;

    add-int/lit8 v1, v1, 0x1

    invoke-virtual {v2, v1, v0}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lorg/apache/log4j/k/h;->d:Ljava/lang/String;

    goto :goto_22
.end method
