.class public Lcom/crashlytics/android/internal/b;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String; = "default"


# instance fields
.field private final b:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Lcom/crashlytics/android/internal/g;",
            ">;>;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/concurrent/ConcurrentMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ConcurrentMap",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Lcom/crashlytics/android/internal/h;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/lang/String;

.field private final e:Lcom/crashlytics/android/internal/m;

.field private final f:Lcom/crashlytics/android/internal/i;

.field private final g:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/util/concurrent/ConcurrentLinkedQueue",
            "<",
            "Lcom/crashlytics/android/internal/e;",
            ">;>;"
        }
    .end annotation
.end field

.field private final h:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private final i:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Class",
            "<*>;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/Class",
            "<*>;>;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "default"

    invoke-direct {p0, v0}, Lcom/crashlytics/android/internal/b;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/crashlytics/android/internal/m;)V
    .registers 3

    const-string v0, "default"

    invoke-direct {p0, p1, v0}, Lcom/crashlytics/android/internal/b;-><init>(Lcom/crashlytics/android/internal/m;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Lcom/crashlytics/android/internal/m;Ljava/lang/String;)V
    .registers 4

    sget-object v0, Lcom/crashlytics/android/internal/i;->a:Lcom/crashlytics/android/internal/i;

    invoke-direct {p0, p1, p2, v0}, Lcom/crashlytics/android/internal/b;-><init>(Lcom/crashlytics/android/internal/m;Ljava/lang/String;Lcom/crashlytics/android/internal/i;)V

    return-void
.end method

.method private constructor <init>(Lcom/crashlytics/android/internal/m;Ljava/lang/String;Lcom/crashlytics/android/internal/i;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/internal/b;->b:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/internal/b;->c:Ljava/util/concurrent/ConcurrentMap;

    new-instance v0, Lcom/crashlytics/android/internal/c;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/internal/c;-><init>(Lcom/crashlytics/android/internal/b;)V

    iput-object v0, p0, Lcom/crashlytics/android/internal/b;->g:Ljava/lang/ThreadLocal;

    new-instance v0, Lcom/crashlytics/android/internal/d;

    invoke-direct {v0, p0}, Lcom/crashlytics/android/internal/d;-><init>(Lcom/crashlytics/android/internal/b;)V

    iput-object v0, p0, Lcom/crashlytics/android/internal/b;->h:Ljava/lang/ThreadLocal;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/crashlytics/android/internal/b;->i:Ljava/util/Map;

    iput-object p1, p0, Lcom/crashlytics/android/internal/b;->e:Lcom/crashlytics/android/internal/m;

    iput-object p2, p0, Lcom/crashlytics/android/internal/b;->d:Ljava/lang/String;

    iput-object p3, p0, Lcom/crashlytics/android/internal/b;->f:Lcom/crashlytics/android/internal/i;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    sget-object v0, Lcom/crashlytics/android/internal/m;->b:Lcom/crashlytics/android/internal/m;

    invoke-direct {p0, v0, p1}, Lcom/crashlytics/android/internal/b;-><init>(Lcom/crashlytics/android/internal/m;Ljava/lang/String;)V

    return-void
.end method

.method private a(Ljava/lang/Class;)Ljava/util/Set;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class",
            "<*>;)",
            "Ljava/util/Set",
            "<",
            "Lcom/crashlytics/android/internal/g;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, p1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method

.method private a()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->h:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_f
    return-void

    :cond_10
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->h:Ljava/lang/ThreadLocal;

    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    :cond_1a
    :goto_1a
    :try_start_1a
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    invoke-virtual {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;->poll()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/e;

    if-eqz v0, :cond_45

    iget-object v1, v0, Lcom/crashlytics/android/internal/e;->b:Lcom/crashlytics/android/internal/g;

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/g;->a()Z

    move-result v1

    if-eqz v1, :cond_1a

    iget-object v1, v0, Lcom/crashlytics/android/internal/e;->a:Ljava/lang/Object;

    iget-object v0, v0, Lcom/crashlytics/android/internal/e;->b:Lcom/crashlytics/android/internal/g;

    invoke-static {v1, v0}, Lcom/crashlytics/android/internal/b;->a(Ljava/lang/Object;Lcom/crashlytics/android/internal/g;)V
    :try_end_39
    .catchall {:try_start_1a .. :try_end_39} :catchall_3a

    goto :goto_1a

    :catchall_3a
    move-exception v0

    iget-object v1, p0, Lcom/crashlytics/android/internal/b;->h:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    throw v0

    :cond_45
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->h:Ljava/lang/ThreadLocal;

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    goto :goto_f
.end method

.method private a(Lcom/crashlytics/android/internal/g;Lcom/crashlytics/android/internal/h;)V
    .registers 7

    const/4 v0, 0x0

    :try_start_1
    invoke-virtual {p2}, Lcom/crashlytics/android/internal/h;->c()Ljava/lang/Object;
    :try_end_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_1 .. :try_end_4} :catch_8

    move-result-object v0

    :goto_5
    if-nez v0, :cond_22

    :goto_7
    return-void

    :catch_8
    move-exception v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Producer "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " threw an exception."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2, v1}, Lcom/crashlytics/android/internal/b;->a(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_5

    :cond_22
    invoke-static {v0, p1}, Lcom/crashlytics/android/internal/b;->a(Ljava/lang/Object;Lcom/crashlytics/android/internal/g;)V

    goto :goto_7
.end method

.method private static a(Ljava/lang/Object;Lcom/crashlytics/android/internal/g;)V
    .registers 5

    :try_start_0
    invoke-virtual {p1, p0}, Lcom/crashlytics/android/internal/g;->a(Ljava/lang/Object;)V
    :try_end_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Could not dispatch event: "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " to handler "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/crashlytics/android/internal/b;->a(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V

    goto :goto_3
.end method

.method private static a(Ljava/lang/String;Ljava/lang/reflect/InvocationTargetException;)V
    .registers 4

    invoke-virtual {p1}, Ljava/lang/reflect/InvocationTargetException;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-eqz v0, :cond_c

    new-instance v1, Ljava/lang/RuntimeException;

    invoke-direct {v1, p0, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    :cond_c
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public a(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->e:Lcom/crashlytics/android/internal/m;

    invoke-interface {v0, p0}, Lcom/crashlytics/android/internal/m;->a(Lcom/crashlytics/android/internal/b;)V

    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->f:Lcom/crashlytics/android/internal/i;

    invoke-interface {v0, p1}, Lcom/crashlytics/android/internal/i;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_13
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8e

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/internal/h;

    iget-object v2, p0, Lcom/crashlytics/android/internal/b;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0, v1}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/crashlytics/android/internal/h;

    if-eqz v2, :cond_6a

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Producer method for type "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " found on type "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v1, Lcom/crashlytics/android/internal/h;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", but already registered by type "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, v2, Lcom/crashlytics/android/internal/h;->a:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v3, v0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :cond_6a
    iget-object v2, p0, Lcom/crashlytics/android/internal/b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-eqz v0, :cond_13

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_13

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_7e
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_13

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/g;

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/internal/b;->a(Lcom/crashlytics/android/internal/g;Lcom/crashlytics/android/internal/h;)V

    goto :goto_7e

    :cond_8e
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->f:Lcom/crashlytics/android/internal/i;

    invoke-interface {v0, p1}, Lcom/crashlytics/android/internal/i;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_9c
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_cc

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    iget-object v1, p0, Lcom/crashlytics/android/internal/b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_c2

    new-instance v2, Ljava/util/concurrent/CopyOnWriteArraySet;

    invoke-direct {v2}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    iget-object v1, p0, Lcom/crashlytics/android/internal/b;->b:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v1, v0, v2}, Ljava/util/concurrent/ConcurrentMap;->putIfAbsent(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Set;

    if-nez v1, :cond_c2

    move-object v1, v2

    :cond_c2
    invoke-interface {v3, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v1, v0}, Ljava/util/Set;->addAll(Ljava/util/Collection;)Z

    goto :goto_9c

    :cond_cc
    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_d4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_11c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iget-object v3, p0, Lcom/crashlytics/android/internal/b;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v3, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/crashlytics/android/internal/h;

    if-eqz v1, :cond_d4

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/h;->a()Z

    move-result v3

    if-eqz v3, :cond_d4

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_100
    :goto_100
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d4

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/g;

    invoke-virtual {v1}, Lcom/crashlytics/android/internal/h;->a()Z

    move-result v4

    if-eqz v4, :cond_d4

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/g;->a()Z

    move-result v4

    if-eqz v4, :cond_100

    invoke-direct {p0, v0, v1}, Lcom/crashlytics/android/internal/b;->a(Lcom/crashlytics/android/internal/g;Lcom/crashlytics/android/internal/h;)V

    goto :goto_100

    :cond_11c
    return-void
.end method

.method public b(Ljava/lang/Object;)V
    .registers 8

    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->e:Lcom/crashlytics/android/internal/m;

    invoke-interface {v0, p0}, Lcom/crashlytics/android/internal/m;->a(Lcom/crashlytics/android/internal/b;)V

    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->f:Lcom/crashlytics/android/internal/i;

    invoke-interface {v0, p1}, Lcom/crashlytics/android/internal/i;->a(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_13
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_66

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    iget-object v2, p0, Lcom/crashlytics/android/internal/b;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v2, v1}, Ljava/util/concurrent/ConcurrentMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/crashlytics/android/internal/h;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/h;

    if-eqz v0, :cond_3b

    invoke-virtual {v0, v2}, Lcom/crashlytics/android/internal/h;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_5a

    :cond_3b
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing event producer for an annotated method. Is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5a
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->c:Ljava/util/concurrent/ConcurrentMap;

    invoke-interface {v0, v1}, Ljava/util/concurrent/ConcurrentMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/h;

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/h;->b()V

    goto :goto_13

    :cond_66
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->f:Lcom/crashlytics/android/internal/i;

    invoke-interface {v0, p1}, Lcom/crashlytics/android/internal/i;->b(Ljava/lang/Object;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_74
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d6

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Class;

    invoke-direct {p0, v1}, Lcom/crashlytics/android/internal/b;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Ljava/util/Collection;

    if-eqz v3, :cond_99

    invoke-interface {v3, v1}, Ljava/util/Set;->containsAll(Ljava/util/Collection;)Z

    move-result v0

    if-nez v0, :cond_b8

    :cond_99
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Missing event handler for an annotated method. Is "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " registered?"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_b8
    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_bc
    :goto_bc
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/crashlytics/android/internal/g;

    invoke-interface {v1, v0}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_bc

    invoke-virtual {v0}, Lcom/crashlytics/android/internal/g;->b()V

    goto :goto_bc

    :cond_d2
    invoke-interface {v3, v1}, Ljava/util/Set;->removeAll(Ljava/util/Collection;)Z

    goto :goto_74

    :cond_d6
    return-void
.end method

.method public c(Ljava/lang/Object;)V
    .registers 8

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->e:Lcom/crashlytics/android/internal/m;

    invoke-interface {v0, p0}, Lcom/crashlytics/android/internal/m;->a(Lcom/crashlytics/android/internal/b;)V

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->i:Ljava/util/Map;

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Set;

    if-nez v0, :cond_40

    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_21
    :goto_21
    invoke-interface {v4}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_3a

    invoke-interface {v4, v2}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-interface {v1, v0}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    invoke-virtual {v0}, Ljava/lang/Class;->getSuperclass()Ljava/lang/Class;

    move-result-object v0

    if-eqz v0, :cond_21

    invoke-interface {v4, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_21

    :cond_3a
    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->i:Ljava/util/Map;

    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v1

    :cond_40
    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_45
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_83

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Class;

    invoke-direct {p0, v0}, Lcom/crashlytics/android/internal/b;->a(Ljava/lang/Class;)Ljava/util/Set;

    move-result-object v0

    if-eqz v0, :cond_80

    invoke-interface {v0}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_80

    const/4 v2, 0x1

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_62
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_95

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/crashlytics/android/internal/g;

    iget-object v0, p0, Lcom/crashlytics/android/internal/b;->g:Ljava/lang/ThreadLocal;

    invoke-virtual {v0}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/concurrent/ConcurrentLinkedQueue;

    new-instance v5, Lcom/crashlytics/android/internal/e;

    invoke-direct {v5, p1, v1}, Lcom/crashlytics/android/internal/e;-><init>(Ljava/lang/Object;Lcom/crashlytics/android/internal/g;)V

    invoke-virtual {v0, v5}, Ljava/util/concurrent/ConcurrentLinkedQueue;->offer(Ljava/lang/Object;)Z

    goto :goto_62

    :cond_80
    move v0, v1

    :goto_81
    move v1, v0

    goto :goto_45

    :cond_83
    if-nez v1, :cond_91

    instance-of v0, p1, Lcom/crashlytics/android/internal/f;

    if-nez v0, :cond_91

    new-instance v0, Lcom/crashlytics/android/internal/f;

    invoke-direct {v0, p0, p1}, Lcom/crashlytics/android/internal/f;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    invoke-virtual {p0, v0}, Lcom/crashlytics/android/internal/b;->c(Ljava/lang/Object;)V

    :cond_91
    invoke-direct {p0}, Lcom/crashlytics/android/internal/b;->a()V

    return-void

    :cond_95
    move v0, v2

    goto :goto_81
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "[Bus \""

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/crashlytics/android/internal/b;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "\"]"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
