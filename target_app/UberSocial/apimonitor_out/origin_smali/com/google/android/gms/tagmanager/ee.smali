.class Lcom/google/android/gms/tagmanager/ee;
.super Lcom/google/android/gms/tagmanager/du;


# static fields
.field static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/util/Set;


# instance fields
.field private final g:Lcom/google/android/gms/tagmanager/ef;

.field private final h:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lcom/google/android/gms/internal/a;->V:Lcom/google/android/gms/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ee;->b:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ak;->ct:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ee;->c:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ak;->c:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ee;->d:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ak;->cs:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ee;->e:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "gtm_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/tagmanager/ee;->b:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_unrepeatable"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/ee;->a:Ljava/lang/String;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Lcom/google/android/gms/tagmanager/ee;->f:Ljava/util/Set;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    new-instance v0, Lcom/google/android/gms/tagmanager/ee$1;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/ee$1;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/tagmanager/ee;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/ef;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/ef;)V
    .registers 7

    sget-object v0, Lcom/google/android/gms/tagmanager/ee;->b:Ljava/lang/String;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    sget-object v3, Lcom/google/android/gms/tagmanager/ee;->c:Ljava/lang/String;

    aput-object v3, v1, v2

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/du;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/ee;->g:Lcom/google/android/gms/tagmanager/ef;

    iput-object p1, p0, Lcom/google/android/gms/tagmanager/ee;->h:Landroid/content/Context;

    return-void
.end method

.method private declared-synchronized c(Ljava/lang/String;)Z
    .registers 4

    const/4 v0, 0x1

    monitor-enter p0

    :try_start_2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/ee;->b(Ljava/lang/String;)Z
    :try_end_5
    .catchall {:try_start_2 .. :try_end_5} :catchall_16

    move-result v1

    if-eqz v1, :cond_a

    :goto_8
    monitor-exit p0

    return v0

    :cond_a
    :try_start_a
    invoke-virtual {p0, p1}, Lcom/google/android/gms/tagmanager/ee;->a(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_19

    sget-object v1, Lcom/google/android/gms/tagmanager/ee;->f:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_15
    .catchall {:try_start_a .. :try_end_15} :catchall_16

    goto :goto_8

    :catchall_16
    move-exception v0

    monitor-exit p0

    throw v0

    :cond_19
    const/4 v0, 0x0

    goto :goto_8
.end method


# virtual methods
.method a(Ljava/lang/String;)Z
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ee;->h:Landroid/content/Context;

    sget-object v1, Lcom/google/android/gms/tagmanager/ee;->a:Ljava/lang/String;

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0, p1}, Landroid/content/SharedPreferences;->contains(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public b(Ljava/util/Map;)V
    .registers 8

    sget-object v0, Lcom/google/android/gms/tagmanager/ee;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1e

    sget-object v0, Lcom/google/android/gms/tagmanager/ee;->e:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->a(Lcom/google/android/gms/internal/dz;)Ljava/lang/String;

    move-result-object v0

    move-object v1, v0

    :goto_15
    if-eqz v1, :cond_21

    invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/ee;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_21

    :cond_1d
    :goto_1d
    return-void

    :cond_1e
    const/4 v0, 0x0

    move-object v1, v0

    goto :goto_15

    :cond_21
    sget-object v0, Lcom/google/android/gms/tagmanager/ee;->c:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->a(Lcom/google/android/gms/internal/dz;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v2

    sget-object v0, Lcom/google/android/gms/tagmanager/ee;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    if-eqz v0, :cond_c3

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->f(Lcom/google/android/gms/internal/dz;)Ljava/lang/Object;

    move-result-object v0

    instance-of v3, v0, Ljava/util/List;

    if-nez v3, :cond_66

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArbitraryPixel: additional params not a list: not sending partial hit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    goto :goto_1d

    :cond_66
    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_6c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c3

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    instance-of v4, v0, Ljava/util/Map;

    if-nez v4, :cond_99

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "ArbitraryPixel: additional params contains non-map: not sending partial hit: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    goto :goto_1d

    :cond_99
    check-cast v0, Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_a3
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6c

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v5, v0}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_a3

    :cond_c3
    invoke-virtual {v2}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/ee;->g:Lcom/google/android/gms/tagmanager/ef;

    invoke-interface {v2}, Lcom/google/android/gms/tagmanager/ef;->a()Lcom/google/android/gms/tagmanager/ag;

    move-result-object v2

    invoke-interface {v2, v0}, Lcom/google/android/gms/tagmanager/ag;->a(Ljava/lang/String;)Z

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ArbitraryPixel: url = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->e(Ljava/lang/String;)V

    if-eqz v1, :cond_1d

    const-class v2, Lcom/google/android/gms/tagmanager/ee;

    monitor-enter v2

    :try_start_ef
    sget-object v0, Lcom/google/android/gms/tagmanager/ee;->f:Ljava/util/Set;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/ee;->h:Landroid/content/Context;

    sget-object v3, Lcom/google/android/gms/tagmanager/ee;->a:Ljava/lang/String;

    const-string v4, "true"

    invoke-static {v0, v3, v1, v4}, Lcom/google/android/gms/tagmanager/dk;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2

    goto/16 :goto_1d

    :catchall_100
    move-exception v0

    monitor-exit v2
    :try_end_102
    .catchall {:try_start_ef .. :try_end_102} :catchall_100

    throw v0
.end method

.method b(Ljava/lang/String;)Z
    .registers 3

    sget-object v0, Lcom/google/android/gms/tagmanager/ee;->f:Ljava/util/Set;

    invoke-interface {v0, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method
