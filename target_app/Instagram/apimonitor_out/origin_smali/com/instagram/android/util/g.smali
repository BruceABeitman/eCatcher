.class public final Lcom/instagram/android/util/g;
.super Ljava/lang/Object;
.source "SearchSession.java"


# instance fields
.field private final a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private b:Z

.field private c:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/util/g;->a:Ljava/util/List;

    return-void
.end method

.method private a(Lcom/instagram/common/analytics/b;)V
    .registers 8

    const/4 v2, 0x0

    move v1, v2

    :goto_2
    iget-object v0, p0, Lcom/instagram/android/util/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v1, v0, :cond_3a

    iget-object v0, p0, Lcom/instagram/android/util/g;->a:Ljava/util/List;

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v3, p0, Lcom/instagram/android/util/g;->a:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    if-ne v1, v3, :cond_25

    const-string v3, "q"

    invoke-virtual {p1, v3, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    :goto_21
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_2

    :cond_25
    const-string v3, "pq_%d"

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    add-int/lit8 v5, v1, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v2

    invoke-static {v3, v4}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    goto :goto_21

    :cond_3a
    const-string v0, "npq"

    iget-object v1, p0, Lcom/instagram/android/util/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    return-void
.end method

.method private c()Ljava/lang/String;
    .registers 3

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/android/util/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_19

    iget-object v0, p0, Lcom/instagram/android/util/g;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/android/util/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x1

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_19
    return-object v0
.end method

.method private d()Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    iget-object v1, p0, Lcom/instagram/android/util/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    if-le v1, v2, :cond_1a

    iget-object v0, p0, Lcom/instagram/android/util/g;->a:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/android/util/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v1, v1, -0x2

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :cond_1a
    return-object v0
.end method

.method private e()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/instagram/android/util/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-boolean v1, p0, Lcom/instagram/android/util/g;->b:Z

    iput-boolean v1, p0, Lcom/instagram/android/util/g;->c:Z

    return-void
.end method


# virtual methods
.method public final a(Lcom/instagram/common/a/c/b;)Lcom/instagram/common/a/c/b;
    .registers 5

    invoke-direct {p0}, Lcom/instagram/android/util/g;->c()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0}, Lcom/instagram/android/util/g;->d()Ljava/lang/String;

    move-result-object v1

    if-eqz v0, :cond_f

    const-string v2, "q"

    invoke-virtual {p1, v2, v0}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_f
    if-eqz v1, :cond_16

    const-string v0, "pq"

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_16
    const-string v0, "npq"

    iget-object v1, p0, Lcom/instagram/android/util/g;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-object p1
.end method

.method public final a()V
    .registers 2

    iget-boolean v0, p0, Lcom/instagram/android/util/g;->b:Z

    if-eqz v0, :cond_7

    invoke-direct {p0}, Lcom/instagram/android/util/g;->e()V

    :cond_7
    return-void
.end method

.method public final a(Lcom/instagram/common/analytics/e;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/util/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "search_user_not_found"

    invoke-direct {v0, v1, p1}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    invoke-direct {p0, v0}, Lcom/instagram/android/util/g;->a(Lcom/instagram/common/analytics/b;)V

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    goto :goto_8
.end method

.method public final a(Lcom/instagram/user/c/a;Lcom/instagram/common/analytics/e;)V
    .registers 6

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/instagram/android/util/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iput-boolean v1, p0, Lcom/instagram/android/util/g;->b:Z

    iput-boolean v1, p0, Lcom/instagram/android/util/g;->c:Z

    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "search_user_followed"

    invoke-direct {v0, v1, p2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v1, "user"

    invoke-virtual {p1}, Lcom/instagram/user/c/a;->g()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/util/g;->a(Lcom/instagram/common/analytics/b;)V

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    goto :goto_9
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/instagram/android/util/g;->a:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public final a(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V
    .registers 5

    const/4 v1, 0x1

    iget-object v0, p0, Lcom/instagram/android/util/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_a

    :goto_9
    return-void

    :cond_a
    iput-boolean v1, p0, Lcom/instagram/android/util/g;->b:Z

    iput-boolean v1, p0, Lcom/instagram/android/util/g;->c:Z

    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "search_tag_tap_through"

    invoke-direct {v0, v1, p2}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    const-string v1, "tag"

    invoke-virtual {v0, v1, p1}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/instagram/android/util/g;->a(Lcom/instagram/common/analytics/b;)V

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    goto :goto_9
.end method

.method public final b(Lcom/instagram/common/analytics/e;)V
    .registers 4

    iget-object v0, p0, Lcom/instagram/android/util/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_9

    :goto_8
    return-void

    :cond_9
    new-instance v0, Lcom/instagram/common/analytics/b;

    const-string v1, "search_tag_not_found"

    invoke-direct {v0, v1, p1}, Lcom/instagram/common/analytics/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    invoke-direct {p0, v0}, Lcom/instagram/android/util/g;->a(Lcom/instagram/common/analytics/b;)V

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    goto :goto_8
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/instagram/android/util/g;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    iget-boolean v0, p0, Lcom/instagram/android/util/g;->c:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
