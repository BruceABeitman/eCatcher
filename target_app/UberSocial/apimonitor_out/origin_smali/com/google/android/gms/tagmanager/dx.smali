.class Lcom/google/android/gms/tagmanager/dx;
.super Lcom/google/android/gms/tagmanager/du;


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:Ljava/lang/String;

.field private static final f:Ljava/lang/String;

.field private static final g:Ljava/lang/String;

.field private static h:Ljava/util/Map;

.field private static i:Ljava/util/Map;


# instance fields
.field private final j:Ljava/util/Set;

.field private final k:Lcom/google/android/gms/tagmanager/ds;

.field private final l:Lcom/google/android/gms/tagmanager/h;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/google/android/gms/internal/a;->al:Lcom/google/android/gms/internal/a;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/a;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/dx;->a:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ak;->a:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/dx;->b:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ak;->j:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/dx;->c:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ak;->i:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/dx;->d:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ak;->cl:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/dx;->e:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ak;->cn:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/dx;->f:Ljava/lang/String;

    sget-object v0, Lcom/google/android/gms/internal/ak;->cp:Lcom/google/android/gms/internal/ak;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ak;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/google/android/gms/tagmanager/dx;->g:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/h;)V
    .registers 4

    new-instance v0, Lcom/google/android/gms/tagmanager/ds;

    invoke-direct {v0, p1}, Lcom/google/android/gms/tagmanager/ds;-><init>(Landroid/content/Context;)V

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/tagmanager/dx;-><init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/h;Lcom/google/android/gms/tagmanager/ds;)V

    return-void
.end method

.method constructor <init>(Landroid/content/Context;Lcom/google/android/gms/tagmanager/h;Lcom/google/android/gms/tagmanager/ds;)V
    .registers 6

    sget-object v0, Lcom/google/android/gms/tagmanager/dx;->a:Ljava/lang/String;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-direct {p0, v0, v1}, Lcom/google/android/gms/tagmanager/du;-><init>(Ljava/lang/String;[Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/tagmanager/dx;->l:Lcom/google/android/gms/tagmanager/h;

    iput-object p3, p0, Lcom/google/android/gms/tagmanager/dx;->k:Lcom/google/android/gms/tagmanager/ds;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/tagmanager/dx;->j:Ljava/util/Set;

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dx;->j:Ljava/util/Set;

    const-string v1, ""

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dx;->j:Ljava/util/Set;

    const-string v1, "0"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dx;->j:Ljava/util/Set;

    const-string v1, "false"

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method private a(Ljava/lang/String;)Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dx;->l:Lcom/google/android/gms/tagmanager/h;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/tagmanager/h;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9
.end method

.method private a(Lcom/google/android/gms/internal/dz;)Ljava/util/Map;
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/tagmanager/dw;->f(Lcom/google/android/gms/internal/dz;)Ljava/lang/Object;

    move-result-object v0

    instance-of v1, v0, Ljava/util/Map;

    if-nez v1, :cond_a

    const/4 v0, 0x0

    :goto_9
    return-object v0

    :cond_a
    check-cast v0, Ljava/util/Map;

    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_19
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_39

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_19

    :cond_39
    move-object v0, v1

    goto :goto_9
.end method

.method private a(Lcom/google/android/gms/analytics/r;Ljava/util/Map;)V
    .registers 11

    const-string v0, "transactionId"

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/dx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_e

    const-string v0, "Cannot find transactionId in data layer."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    :cond_d
    :goto_d
    return-void

    :cond_e
    new-instance v4, Ljava/util/LinkedList;

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    :try_start_13
    sget-object v0, Lcom/google/android/gms/tagmanager/dx;->d:Ljava/lang/String;

    invoke-interface {p2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/dx;->b(Lcom/google/android/gms/internal/dz;)Ljava/util/Map;

    move-result-object v2

    const-string v0, "&t"

    const-string v1, "transaction"

    invoke-interface {v2, v0, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/dx;->c(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_32
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/dx;->a(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v2, v1, v0}, Lcom/google/android/gms/tagmanager/dx;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_51
    .catch Ljava/lang/IllegalArgumentException; {:try_start_13 .. :try_end_51} :catch_52

    goto :goto_32

    :catch_52
    move-exception v0

    const-string v1, "Unable to send transaction"

    invoke-static {v1, v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto :goto_d

    :cond_59
    :try_start_59
    invoke-interface {v4, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/google/android/gms/tagmanager/dx;->d()Ljava/util/List;

    move-result-object v0

    if-eqz v0, :cond_c8

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_66
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_c8

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    const-string v1, "name"

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_80

    const-string v0, "Unable to send transaction item hit due to missing \'name\' field."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->a(Ljava/lang/String;)V

    goto :goto_d

    :cond_80
    sget-object v1, Lcom/google/android/gms/tagmanager/dx;->d:Ljava/lang/String;

    invoke-interface {p2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/internal/dz;

    invoke-direct {p0, v1}, Lcom/google/android/gms/tagmanager/dx;->b(Lcom/google/android/gms/internal/dz;)Ljava/util/Map;

    move-result-object v6

    const-string v1, "&t"

    const-string v2, "item"

    invoke-interface {v6, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "&ti"

    invoke-interface {v6, v1, v3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-direct {p0, p2}, Lcom/google/android/gms/tagmanager/dx;->d(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_a4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_c4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map$Entry;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {p0, v6, v2, v1}, Lcom/google/android/gms/tagmanager/dx;->a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_a4

    :cond_c4
    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_66

    :cond_c8
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_cc
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_d

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    invoke-virtual {p1, v0}, Lcom/google/android/gms/analytics/r;->a(Ljava/util/Map;)V
    :try_end_db
    .catch Ljava/lang/IllegalArgumentException; {:try_start_59 .. :try_end_db} :catch_52

    goto :goto_cc
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    if-eqz p3, :cond_5

    invoke-interface {p1, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_5
    return-void
.end method

.method private a(Ljava/util/Map;Ljava/lang/String;)Z
    .registers 4

    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    if-nez v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    invoke-static {v0}, Lcom/google/android/gms/tagmanager/dw;->e(Lcom/google/android/gms/internal/dz;)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    goto :goto_9
.end method

.method private b(Lcom/google/android/gms/internal/dz;)Ljava/util/Map;
    .registers 5

    if-nez p1, :cond_8

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    :goto_7
    return-object v0

    :cond_8
    invoke-direct {p0, p1}, Lcom/google/android/gms/tagmanager/dx;->a(Lcom/google/android/gms/internal/dz;)Ljava/util/Map;

    move-result-object v1

    if-nez v1, :cond_14

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    goto :goto_7

    :cond_14
    const-string v0, "&aip"

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    if-eqz v0, :cond_2f

    iget-object v2, p0, Lcom/google/android/gms/tagmanager/dx;->j:Ljava/util/Set;

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v2, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2f

    const-string v0, "&aip"

    invoke-interface {v1, v0}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2f
    move-object v0, v1

    goto :goto_7
.end method

.method private c(Ljava/util/Map;)Ljava/util/Map;
    .registers 5

    sget-object v0, Lcom/google/android/gms/tagmanager/dx;->f:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    if-eqz v0, :cond_f

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/dx;->a(Lcom/google/android/gms/internal/dz;)Ljava/util/Map;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    sget-object v0, Lcom/google/android/gms/tagmanager/dx;->h:Ljava/util/Map;

    if-nez v0, :cond_44

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "transactionId"

    const-string v2, "&ti"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "transactionAffiliation"

    const-string v2, "&ta"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "transactionTax"

    const-string v2, "&tt"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "transactionShipping"

    const-string v2, "&ts"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "transactionTotal"

    const-string v2, "&tr"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "transactionCurrency"

    const-string v2, "&cu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/google/android/gms/tagmanager/dx;->h:Ljava/util/Map;

    :cond_44
    sget-object v0, Lcom/google/android/gms/tagmanager/dx;->h:Ljava/util/Map;

    goto :goto_e
.end method

.method private d()Ljava/util/List;
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dx;->l:Lcom/google/android/gms/tagmanager/h;

    const-string v1, "transactionProducts"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/h;->c(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_c

    const/4 v1, 0x0

    :goto_b
    return-object v1

    :cond_c
    instance-of v0, v1, Ljava/util/List;

    if-nez v0, :cond_18

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "transactionProducts should be of type List."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_18
    move-object v0, v1

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_1f
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_35

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    instance-of v2, v2, Ljava/util/Map;

    if-nez v2, :cond_1f

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Each element of transactionProducts should be of type Map."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_35
    check-cast v1, Ljava/util/List;

    goto :goto_b
.end method

.method private d(Ljava/util/Map;)Ljava/util/Map;
    .registers 5

    sget-object v0, Lcom/google/android/gms/tagmanager/dx;->g:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    if-eqz v0, :cond_f

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/dx;->a(Lcom/google/android/gms/internal/dz;)Ljava/util/Map;

    move-result-object v0

    :goto_e
    return-object v0

    :cond_f
    sget-object v0, Lcom/google/android/gms/tagmanager/dx;->i:Ljava/util/Map;

    if-nez v0, :cond_44

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    const-string v1, "name"

    const-string v2, "&in"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "sku"

    const-string v2, "&ic"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "category"

    const-string v2, "&iv"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "price"

    const-string v2, "&ip"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "quantity"

    const-string v2, "&iq"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "currency"

    const-string v2, "&cu"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sput-object v0, Lcom/google/android/gms/tagmanager/dx;->i:Ljava/util/Map;

    :cond_44
    sget-object v0, Lcom/google/android/gms/tagmanager/dx;->i:Ljava/util/Map;

    goto :goto_e
.end method


# virtual methods
.method public b(Ljava/util/Map;)V
    .registers 4

    iget-object v0, p0, Lcom/google/android/gms/tagmanager/dx;->k:Lcom/google/android/gms/tagmanager/ds;

    const-string v1, "_GTM_DEFAULT_TRACKER_"

    invoke-virtual {v0, v1}, Lcom/google/android/gms/tagmanager/ds;->a(Ljava/lang/String;)Lcom/google/android/gms/analytics/r;

    move-result-object v1

    sget-object v0, Lcom/google/android/gms/tagmanager/dx;->c:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/tagmanager/dx;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_20

    sget-object v0, Lcom/google/android/gms/tagmanager/dx;->d:Ljava/lang/String;

    invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/dz;

    invoke-direct {p0, v0}, Lcom/google/android/gms/tagmanager/dx;->b(Lcom/google/android/gms/internal/dz;)Ljava/util/Map;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/google/android/gms/analytics/r;->a(Ljava/util/Map;)V

    :goto_1f
    return-void

    :cond_20
    sget-object v0, Lcom/google/android/gms/tagmanager/dx;->e:Ljava/lang/String;

    invoke-direct {p0, p1, v0}, Lcom/google/android/gms/tagmanager/dx;->a(Ljava/util/Map;Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-direct {p0, v1, p1}, Lcom/google/android/gms/tagmanager/dx;->a(Lcom/google/android/gms/analytics/r;Ljava/util/Map;)V

    goto :goto_1f

    :cond_2c
    const-string v0, "Ignoring unknown tag."

    invoke-static {v0}, Lcom/google/android/gms/tagmanager/ba;->b(Ljava/lang/String;)V

    goto :goto_1f
.end method
