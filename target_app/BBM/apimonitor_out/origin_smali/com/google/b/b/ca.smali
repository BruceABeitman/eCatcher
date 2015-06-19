.class abstract Lcom/google/b/b/ca;
.super Ljava/lang/Number;
.source "Striped64.java"


# static fields
.field static final a:Lcom/google/b/b/ce;

.field static final b:I

.field private static final f:Lsun/misc/Unsafe;

.field private static final g:J

.field private static final h:J


# instance fields
.field volatile transient c:[Lcom/google/b/b/cc;

.field volatile transient d:J

.field volatile transient e:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    new-instance v0, Lcom/google/b/b/ce;

    invoke-direct {v0}, Lcom/google/b/b/ce;-><init>()V

    sput-object v0, Lcom/google/b/b/ca;->a:Lcom/google/b/b/ce;

    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Runtime;->availableProcessors()I

    move-result v0

    sput v0, Lcom/google/b/b/ca;->b:I

    :try_start_11
    invoke-static {}, Lcom/google/b/b/ca;->a()Lsun/misc/Unsafe;

    move-result-object v0

    sput-object v0, Lcom/google/b/b/ca;->f:Lsun/misc/Unsafe;

    const-class v0, Lcom/google/b/b/ca;

    sget-object v1, Lcom/google/b/b/ca;->f:Lsun/misc/Unsafe;

    const-string v2, "base"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v2

    invoke-virtual {v1, v2}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v1

    sput-wide v1, Lcom/google/b/b/ca;->g:J

    sget-object v1, Lcom/google/b/b/ca;->f:Lsun/misc/Unsafe;

    const-string v2, "busy"

    invoke-virtual {v0, v2}, Ljava/lang/Class;->getDeclaredField(Ljava/lang/String;)Ljava/lang/reflect/Field;

    move-result-object v0

    invoke-virtual {v1, v0}, Lsun/misc/Unsafe;->objectFieldOffset(Ljava/lang/reflect/Field;)J

    move-result-wide v0

    sput-wide v0, Lcom/google/b/b/ca;->h:J
    :try_end_35
    .catch Ljava/lang/Exception; {:try_start_11 .. :try_end_35} :catch_36

    return-void

    :catch_36
    move-exception v0

    new-instance v1, Ljava/lang/Error;

    invoke-direct {v1, v0}, Ljava/lang/Error;-><init>(Ljava/lang/Throwable;)V

    throw v1
.end method

.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Number;-><init>()V

    return-void
.end method

.method private static a()Lsun/misc/Unsafe;
    .registers 3

    :try_start_0
    invoke-static {}, Lsun/misc/Unsafe;->getUnsafe()Lsun/misc/Unsafe;
    :try_end_3
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_3} :catch_5

    move-result-object v0

    :goto_4
    return-object v0

    :catch_5
    move-exception v0

    :try_start_6
    new-instance v0, Lcom/google/b/b/cb;

    invoke-direct {v0}, Lcom/google/b/b/cb;-><init>()V

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedExceptionAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lsun/misc/Unsafe;
    :try_end_11
    .catch Ljava/security/PrivilegedActionException; {:try_start_6 .. :try_end_11} :catch_12

    goto :goto_4

    :catch_12
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "Could not initialize intrinsics"

    invoke-virtual {v0}, Ljava/security/PrivilegedActionException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {v1, v2, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
.end method

.method static synthetic c()Lsun/misc/Unsafe;
    .registers 1

    invoke-static {}, Lcom/google/b/b/ca;->a()Lsun/misc/Unsafe;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method abstract a(JJ)J
.end method

.method final b()Z
    .registers 7

    sget-object v0, Lcom/google/b/b/ca;->f:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/b/b/ca;->h:J

    const/4 v4, 0x0

    const/4 v5, 0x1

    move-object v1, p0

    invoke-virtual/range {v0 .. v5}, Lsun/misc/Unsafe;->compareAndSwapInt(Ljava/lang/Object;JII)Z

    move-result v0

    return v0
.end method

.method final b(JJ)Z
    .registers 13

    sget-object v0, Lcom/google/b/b/ca;->f:Lsun/misc/Unsafe;

    sget-wide v2, Lcom/google/b/b/ca;->g:J

    move-object v1, p0

    move-wide v4, p1

    move-wide v6, p3

    invoke-virtual/range {v0 .. v7}, Lsun/misc/Unsafe;->compareAndSwapLong(Ljava/lang/Object;JJJ)Z

    move-result v0

    return v0
.end method
