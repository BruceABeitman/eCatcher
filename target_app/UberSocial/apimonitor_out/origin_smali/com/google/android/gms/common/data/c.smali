.class public Lcom/google/android/gms/common/data/c;
.super Ljava/lang/Object;


# instance fields
.field private final a:[Ljava/lang/String;

.field private final b:Ljava/util/ArrayList;

.field private final c:Ljava/lang/String;

.field private final d:Ljava/util/HashMap;

.field private e:Z

.field private f:Ljava/lang/String;


# direct methods
.method private constructor <init>([Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {p1}, Lcom/google/android/gms/internal/hv;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/common/data/c;->a:[Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/c;->b:Ljava/util/ArrayList;

    iput-object p2, p0, Lcom/google/android/gms/common/data/c;->c:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/google/android/gms/common/data/c;->d:Ljava/util/HashMap;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/c;->e:Z

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/google/android/gms/common/data/c;->f:Ljava/lang/String;

    return-void
.end method

.method synthetic constructor <init>([Ljava/lang/String;Ljava/lang/String;Lcom/google/android/gms/common/data/DataHolder$1;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/common/data/c;-><init>([Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/common/data/c;)[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->a:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Lcom/google/android/gms/common/data/c;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->b:Ljava/util/ArrayList;

    return-object v0
.end method

.method private b()V
    .registers 6

    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->clear()V

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/google/android/gms/common/data/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    move v1, v0

    :goto_11
    if-ge v1, v2, :cond_30

    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    iget-object v3, p0, Lcom/google/android/gms/common/data/c;->c:Ljava/lang/String;

    invoke-virtual {v0, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_2c

    iget-object v3, p0, Lcom/google/android/gms/common/data/c;->d:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_2c
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_11

    :cond_30
    return-void
.end method

.method private b(Ljava/util/HashMap;)V
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->d:Ljava/util/HashMap;

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-eqz v0, :cond_1c

    iget-object v2, p0, Lcom/google/android/gms/common/data/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_1c
    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->d:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/google/android/gms/common/data/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_8
.end method


# virtual methods
.method public a()I
    .registers 2

    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public a(I)Lcom/google/android/gms/common/data/DataHolder;
    .registers 4

    const/4 v1, 0x0

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    invoke-direct {v0, p0, p1, v1, v1}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/c;ILandroid/os/Bundle;Lcom/google/android/gms/common/data/DataHolder$1;)V

    return-object v0
.end method

.method public a(ILandroid/os/Bundle;)Lcom/google/android/gms/common/data/DataHolder;
    .registers 9

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    const/4 v4, -0x1

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/c;ILandroid/os/Bundle;ILcom/google/android/gms/common/data/DataHolder$1;)V

    return-object v0
.end method

.method public a(ILandroid/os/Bundle;I)Lcom/google/android/gms/common/data/DataHolder;
    .registers 10

    new-instance v0, Lcom/google/android/gms/common/data/DataHolder;

    const/4 v5, 0x0

    move-object v1, p0

    move v2, p1

    move-object v3, p2

    move v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/common/data/DataHolder;-><init>(Lcom/google/android/gms/common/data/c;ILandroid/os/Bundle;ILcom/google/android/gms/common/data/DataHolder$1;)V

    return-object v0
.end method

.method public a(Landroid/content/ContentValues;)Lcom/google/android/gms/common/data/c;
    .registers 6

    invoke-static {p1}, Lcom/google/android/gms/internal/gj;->a(Ljava/lang/Object;)V

    new-instance v1, Ljava/util/HashMap;

    invoke-virtual {p1}, Landroid/content/ContentValues;->size()I

    move-result v0

    invoke-direct {v1, v0}, Ljava/util/HashMap;-><init>(I)V

    invoke-virtual {p1}, Landroid/content/ContentValues;->valueSet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2c

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map$Entry;

    invoke-interface {v0}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v0

    invoke-virtual {v1, v3, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_14

    :cond_2c
    invoke-virtual {p0, v1}, Lcom/google/android/gms/common/data/c;->a(Ljava/util/HashMap;)Lcom/google/android/gms/common/data/c;

    move-result-object v0

    return-object v0
.end method

.method public a(Ljava/lang/String;)Lcom/google/android/gms/common/data/c;
    .registers 4

    invoke-static {p1}, Lcom/google/android/gms/internal/gj;->a(Ljava/lang/Object;)V

    iget-boolean v0, p0, Lcom/google/android/gms/common/data/c;->e:Z

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->f:Ljava/lang/String;

    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_10

    :goto_f
    return-object p0

    :cond_10
    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->b:Ljava/util/ArrayList;

    new-instance v1, Lcom/google/android/gms/common/data/d;

    invoke-direct {v1, p1}, Lcom/google/android/gms/common/data/d;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    invoke-direct {p0}, Lcom/google/android/gms/common/data/c;->b()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/c;->e:Z

    iput-object p1, p0, Lcom/google/android/gms/common/data/c;->f:Ljava/lang/String;

    goto :goto_f
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/android/gms/common/data/c;
    .registers 5

    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    move v1, v0

    :goto_9
    if-ltz v1, :cond_26

    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/HashMap;

    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-static {v0, p2}, Lcom/google/android/gms/internal/hq;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_22

    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    :cond_22
    add-int/lit8 v0, v1, -0x1

    move v1, v0

    goto :goto_9

    :cond_26
    return-object p0
.end method

.method public a(Ljava/util/HashMap;)Lcom/google/android/gms/common/data/c;
    .registers 3

    invoke-static {p1}, Lcom/google/android/gms/internal/gj;->a(Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->c:Ljava/lang/String;

    if-eqz v0, :cond_a

    invoke-direct {p0, p1}, Lcom/google/android/gms/common/data/c;->b(Ljava/util/HashMap;)V

    :cond_a
    iget-object v0, p0, Lcom/google/android/gms/common/data/c;->b:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/common/data/c;->e:Z

    return-object p0
.end method
