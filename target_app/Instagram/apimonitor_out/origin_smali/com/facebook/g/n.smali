.class public final Lcom/facebook/g/n;
.super Ljava/lang/Object;
.source "Logger.java"


# static fields
.field private static final a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final b:Lcom/facebook/ak;

.field private final c:Ljava/lang/String;

.field private d:Ljava/lang/StringBuilder;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/g/n;->a:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>(Lcom/facebook/ak;Ljava/lang/String;)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x3

    iput v0, p0, Lcom/facebook/g/n;->e:I

    const-string v0, "tag"

    invoke-static {p2, v0}, Lcom/facebook/g/u;->a(Ljava/lang/String;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/facebook/g/n;->b:Lcom/facebook/ak;

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "FacebookSDK."

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/g/n;->c:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/g/n;->d:Ljava/lang/StringBuilder;

    return-void
.end method

.method public static a(Lcom/facebook/ak;ILjava/lang/String;Ljava/lang/String;)V
    .registers 7

    invoke-static {p0}, Lcom/facebook/cj;->a(Lcom/facebook/ak;)Z

    move-result v0

    if-eqz v0, :cond_30

    invoke-static {p3}, Lcom/facebook/g/n;->c(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "FacebookSDK."

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_21

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "FacebookSDK."

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_21
    invoke-static {p1, p2, v0}, Landroid/util/Log;->println(ILjava/lang/String;Ljava/lang/String;)I

    sget-object v0, Lcom/facebook/ak;->e:Lcom/facebook/ak;

    if-ne p0, v0, :cond_30

    new-instance v0, Ljava/lang/Exception;

    invoke-direct {v0}, Ljava/lang/Exception;-><init>()V

    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    :cond_30
    return-void
.end method

.method public static a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x3

    invoke-static {p0, v0, p1, p2}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static varargs a(Lcom/facebook/ak;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 6

    invoke-static {p0}, Lcom/facebook/cj;->a(Lcom/facebook/ak;)Z

    move-result v0

    if-eqz v0, :cond_e

    invoke-static {p2, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x3

    invoke-static {p0, v1, p1, v0}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;ILjava/lang/String;Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public static declared-synchronized a(Ljava/lang/String;)V
    .registers 3

    const-class v1, Lcom/facebook/g/n;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/ak;->b:Lcom/facebook/ak;

    invoke-static {v0}, Lcom/facebook/cj;->a(Lcom/facebook/ak;)Z

    move-result v0

    if-nez v0, :cond_10

    const-string v0, "ACCESS_TOKEN_REMOVED"

    invoke-static {p0, v0}, Lcom/facebook/g/n;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_10
    .catchall {:try_start_3 .. :try_end_10} :catchall_12

    :cond_10
    monitor-exit v1

    return-void

    :catchall_12
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private static declared-synchronized a(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const-class v1, Lcom/facebook/g/n;

    monitor-enter v1

    :try_start_3
    sget-object v0, Lcom/facebook/g/n;->a:Ljava/util/HashMap;

    invoke-virtual {v0, p0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_8
    .catchall {:try_start_3 .. :try_end_8} :catchall_a

    monitor-exit v1

    return-void

    :catchall_a
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private varargs a(Ljava/lang/String;[Ljava/lang/Object;)V
    .registers 5

    invoke-direct {p0}, Lcom/facebook/g/n;->b()Z

    move-result v0

    if-eqz v0, :cond_f

    iget-object v0, p0, Lcom/facebook/g/n;->d:Ljava/lang/StringBuilder;

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_f
    return-void
.end method

.method private b()Z
    .registers 2

    iget-object v0, p0, Lcom/facebook/g/n;->b:Lcom/facebook/ak;

    invoke-static {v0}, Lcom/facebook/cj;->a(Lcom/facebook/ak;)Z

    move-result v0

    return v0
.end method

.method private static declared-synchronized c(Ljava/lang/String;)Ljava/lang/String;
    .registers 5

    const-class v2, Lcom/facebook/g/n;

    monitor-enter v2

    :try_start_3
    sget-object v0, Lcom/facebook/g/n;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_d
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2a

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/CharSequence;

    invoke-virtual {p0, v1, v0}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
    :try_end_28
    .catchall {:try_start_3 .. :try_end_28} :catchall_2c

    move-result-object p0

    goto :goto_d

    :cond_2a
    monitor-exit v2

    return-object p0

    :catchall_2c
    move-exception v0

    monitor-exit v2

    throw v0
.end method

.method private d(Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/g/n;->b:Lcom/facebook/ak;

    iget v1, p0, Lcom/facebook/g/n;->e:I

    iget-object v2, p0, Lcom/facebook/g/n;->c:Ljava/lang/String;

    invoke-static {v0, v1, v2, p1}, Lcom/facebook/g/n;->a(Lcom/facebook/ak;ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/g/n;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/facebook/g/n;->d(Ljava/lang/String;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iput-object v0, p0, Lcom/facebook/g/n;->d:Ljava/lang/StringBuilder;

    return-void
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 6

    const-string v0, "  %s:\t%s\n"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    aput-object p2, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/facebook/g/n;->a(Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0}, Lcom/facebook/g/n;->b()Z

    move-result v0

    if-eqz v0, :cond_b

    iget-object v0, p0, Lcom/facebook/g/n;->d:Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_b
    return-void
.end method
