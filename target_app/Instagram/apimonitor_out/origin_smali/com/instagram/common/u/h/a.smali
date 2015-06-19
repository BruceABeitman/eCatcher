.class public final Lcom/instagram/common/u/h/a;
.super Ljava/lang/Object;
.source "OpenSSLSocketHelper.java"


# static fields
.field private static a:Lcom/instagram/common/u/h/a;


# instance fields
.field private b:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private c:Ljava/lang/reflect/Method;

.field private d:Ljava/lang/reflect/Method;

.field private e:Z


# direct methods
.method public constructor <init>()V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    :try_start_3
    const-string v0, "com.android.org.conscrypt.OpenSSLSocketImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/u/h/a;->b:Ljava/lang/Class;
    :try_end_b
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3 .. :try_end_b} :catch_33
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3 .. :try_end_b} :catch_3f

    :goto_b
    :try_start_b
    iget-object v0, p0, Lcom/instagram/common/u/h/a;->b:Ljava/lang/Class;

    const-string v1, "setUseSessionTickets"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    sget-object v4, Ljava/lang/Boolean;->TYPE:Ljava/lang/Class;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/u/h/a;->c:Ljava/lang/reflect/Method;

    iget-object v0, p0, Lcom/instagram/common/u/h/a;->b:Ljava/lang/Class;

    const-string v1, "setHostname"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Class;

    const/4 v3, 0x0

    const-class v4, Ljava/lang/String;

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/u/h/a;->d:Ljava/lang/reflect/Method;

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/common/u/h/a;->e:Z

    :goto_32
    return-void

    :catch_33
    move-exception v0

    const-string v0, "org.apache.harmony.xnet.provider.jsse.OpenSSLSocketImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/common/u/h/a;->b:Ljava/lang/Class;
    :try_end_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_b .. :try_end_3c} :catch_3d
    .catch Ljava/lang/NoSuchMethodException; {:try_start_b .. :try_end_3c} :catch_3f

    goto :goto_b

    :catch_3d
    move-exception v0

    goto :goto_32

    :catch_3f
    move-exception v0

    goto :goto_32
.end method

.method public static declared-synchronized a()Lcom/instagram/common/u/h/a;
    .registers 2

    const-class v1, Lcom/instagram/common/u/h/a;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/instagram/common/u/h/a;->a:Lcom/instagram/common/u/h/a;

    if-nez v0, :cond_e

    new-instance v0, Lcom/instagram/common/u/h/a;

    invoke-direct {v0}, Lcom/instagram/common/u/h/a;-><init>()V

    sput-object v0, Lcom/instagram/common/u/h/a;->a:Lcom/instagram/common/u/h/a;

    :cond_e
    sget-object v0, Lcom/instagram/common/u/h/a;->a:Lcom/instagram/common/u/h/a;
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    monitor-exit v1

    return-object v0

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method


# virtual methods
.method public final a(Ljava/net/Socket;Ljava/lang/String;)V
    .registers 7

    iget-boolean v0, p0, Lcom/instagram/common/u/h/a;->e:Z

    if-eqz v0, :cond_27

    iget-object v0, p0, Lcom/instagram/common/u/h/a;->b:Ljava/lang/Class;

    invoke-virtual {v0, p1}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_27

    :try_start_c
    iget-object v0, p0, Lcom/instagram/common/u/h/a;->c:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x1

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/instagram/common/u/h/a;->d:Ljava/lang/reflect/Method;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p2, v1, v2

    invoke-virtual {v0, p1, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_27
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_c .. :try_end_27} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_c .. :try_end_27} :catch_2f

    :cond_27
    return-void

    :catch_28
    move-exception v0

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v1

    :catch_2f
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method
