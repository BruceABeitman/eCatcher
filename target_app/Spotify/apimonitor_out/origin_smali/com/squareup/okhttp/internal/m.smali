.class final Lcom/squareup/okhttp/internal/m;
.super Lcom/squareup/okhttp/internal/k;
.source "SourceFile"


# instance fields
.field private final a:Ljava/lang/reflect/Method;

.field private final b:Ljava/lang/reflect/Method;

.field private final c:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/Class",
            "<*>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/lang/reflect/Method;Ljava/lang/reflect/Method;Ljava/lang/Class;Ljava/lang/Class;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/reflect/Method;",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/lang/Class",
            "<*>;)V"
        }
    .end annotation

    invoke-direct {p0}, Lcom/squareup/okhttp/internal/k;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/m;->b:Ljava/lang/reflect/Method;

    iput-object p2, p0, Lcom/squareup/okhttp/internal/m;->a:Ljava/lang/reflect/Method;

    iput-object p3, p0, Lcom/squareup/okhttp/internal/m;->c:Ljava/lang/Class;

    iput-object p4, p0, Lcom/squareup/okhttp/internal/m;->d:Ljava/lang/Class;

    return-void
.end method


# virtual methods
.method public final a(Ljavax/net/ssl/SSLSocket;Ljava/util/List;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavax/net/ssl/SSLSocket;",
            "Ljava/util/List",
            "<",
            "Lcom/squareup/okhttp/Protocol;",
            ">;)V"
        }
    .end annotation

    const/4 v0, 0x0

    :try_start_1
    new-instance v2, Ljava/util/ArrayList;

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v1

    invoke-direct {v2, v1}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {p2}, Ljava/util/List;->size()I

    move-result v3

    move v1, v0

    :goto_f
    if-ge v1, v3, :cond_24

    invoke-interface {p2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/Protocol;

    iget-object v0, v0, Lcom/squareup/okhttp/Protocol;->name:Lcom/squareup/okhttp/internal/a/d;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/a/d;->a()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_f

    :cond_24
    const-class v0, Lcom/squareup/okhttp/internal/k;

    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/squareup/okhttp/internal/m;->c:Ljava/lang/Class;

    aput-object v4, v1, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/squareup/okhttp/internal/m;->d:Ljava/lang/Class;

    aput-object v4, v1, v3

    new-instance v3, Lcom/squareup/okhttp/internal/n;

    invoke-direct {v3, v2}, Lcom/squareup/okhttp/internal/n;-><init>(Ljava/util/List;)V

    invoke-static {v0, v1, v3}, Ljava/lang/reflect/Proxy;->newProxyInstance(Ljava/lang/ClassLoader;[Ljava/lang/Class;Ljava/lang/reflect/InvocationHandler;)Ljava/lang/Object;

    move-result-object v0

    iget-object v1, p0, Lcom/squareup/okhttp/internal/m;->b:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    const/4 v4, 0x1

    aput-object v0, v3, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_4f
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_4f} :catch_50
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_4f} :catch_57

    return-void

    :catch_50
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    :catch_57
    move-exception v0

    new-instance v1, Ljava/lang/AssertionError;

    invoke-direct {v1, v0}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1
.end method

.method public final b(Ljavax/net/ssl/SSLSocket;)Lcom/squareup/okhttp/internal/a/d;
    .registers 7

    const/4 v1, 0x0

    :try_start_1
    iget-object v0, p0, Lcom/squareup/okhttp/internal/m;->a:Ljava/lang/reflect/Method;

    const/4 v2, 0x0

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object p1, v3, v4

    invoke-virtual {v0, v2, v3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/reflect/Proxy;->getInvocationHandler(Ljava/lang/Object;)Ljava/lang/reflect/InvocationHandler;

    move-result-object v0

    check-cast v0, Lcom/squareup/okhttp/internal/n;

    invoke-static {v0}, Lcom/squareup/okhttp/internal/n;->a(Lcom/squareup/okhttp/internal/n;)Z

    move-result v2

    if-nez v2, :cond_2f

    invoke-static {v0}, Lcom/squareup/okhttp/internal/n;->b(Lcom/squareup/okhttp/internal/n;)Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_2f

    const-string v0, "com.squareup.okhttp.OkHttpClient"

    invoke-static {v0}, Ljava/util/logging/Logger;->getLogger(Ljava/lang/String;)Ljava/util/logging/Logger;

    move-result-object v0

    sget-object v2, Ljava/util/logging/Level;->INFO:Ljava/util/logging/Level;

    const-string v3, "NPN callback dropped so SPDY is disabled. Is npn-boot on the boot class path?"

    invoke-virtual {v0, v2, v3}, Ljava/util/logging/Logger;->log(Ljava/util/logging/Level;Ljava/lang/String;)V

    move-object v0, v1

    :goto_2e
    return-object v0

    :cond_2f
    invoke-static {v0}, Lcom/squareup/okhttp/internal/n;->a(Lcom/squareup/okhttp/internal/n;)Z

    move-result v2

    if-eqz v2, :cond_37

    move-object v0, v1

    goto :goto_2e

    :cond_37
    invoke-static {v0}, Lcom/squareup/okhttp/internal/n;->b(Lcom/squareup/okhttp/internal/n;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/squareup/okhttp/internal/a/d;->a(Ljava/lang/String;)Lcom/squareup/okhttp/internal/a/d;
    :try_end_3e
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_3e} :catch_40
    .catch Ljava/lang/IllegalAccessException; {:try_start_1 .. :try_end_3e} :catch_47

    move-result-object v0

    goto :goto_2e

    :catch_40
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    :catch_47
    move-exception v0

    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0
.end method
