.class public final Lcom/instagram/android/l/a/l;
.super Lcom/instagram/android/a/a/b;
.source "UsernameSearchFilter.java"


# instance fields
.field private final a:Lcom/instagram/android/l/a/a;

.field private b:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/instagram/android/l/a/a;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/a/a/b;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/l/a/l;->a:Lcom/instagram/android/l/a/a;

    return-void
.end method

.method private a(Z)Ljava/util/Collection;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)",
            "Ljava/util/Collection",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Lcom/instagram/android/l/a/l;->b:Ljava/util/Collection;

    if-eqz v0, :cond_6

    if-eqz p1, :cond_c

    :cond_6
    invoke-static {}, Lcom/instagram/android/k/d;->a()Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/l/a/l;->b:Ljava/util/Collection;

    :cond_c
    iget-object v0, p0, Lcom/instagram/android/l/a/l;->b:Ljava/util/Collection;

    return-object v0
.end method


# virtual methods
.method protected final a(Ljava/lang/CharSequence;Lcom/android/internal/util/Predicate;)Ljava/util/Set;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "Lcom/android/internal/util/Predicate",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)",
            "Ljava/util/Set",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;"
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/instagram/android/a/a/b;->a(Ljava/lang/CharSequence;Lcom/android/internal/util/Predicate;)Ljava/util/Set;

    move-result-object v0

    const/4 v1, 0x0

    invoke-direct {p0, v1}, Lcom/instagram/android/l/a/l;->a(Z)Ljava/util/Collection;

    move-result-object v1

    if-eqz v1, :cond_15

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_15

    const/4 v2, 0x0

    invoke-static {p1, v0, v1, v2}, Lcom/instagram/user/userservice/a/i;->a(Ljava/lang/CharSequence;Ljava/util/Set;Ljava/util/Collection;Lcom/android/internal/util/Predicate;)V

    :cond_15
    return-object v0
.end method

.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 5

    invoke-static {p1}, Lcom/instagram/common/u/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_25

    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/instagram/android/l/a/l;->a(Z)Ljava/util/Collection;

    move-result-object v0

    if-nez v0, :cond_16

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :cond_16
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v2

    iput v2, v1, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    move-object v0, v1

    :goto_24
    return-object v0

    :cond_25
    invoke-super {p0, p1}, Lcom/instagram/android/a/a/b;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v0

    goto :goto_24
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/instagram/android/l/a/l;->a:Lcom/instagram/android/l/a/a;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/instagram/android/l/a/a;->d(Ljava/util/List;)V

    goto :goto_2
.end method
