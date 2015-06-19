.class public Lcom/instagram/android/a/a/b;
.super Landroid/widget/Filter;
.source "UsernameAutoCompleteFilter.java"


# instance fields
.field private final a:Lcom/instagram/user/userservice/d;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    new-instance v0, Lcom/instagram/user/userservice/d;

    invoke-direct {v0}, Lcom/instagram/user/userservice/d;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/a/a/b;->a:Lcom/instagram/user/userservice/d;

    return-void
.end method

.method public constructor <init>(Ljava/util/Iterator;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Iterator",
            "<",
            "Lcom/instagram/user/c/a;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    new-instance v0, Lcom/instagram/user/userservice/d;

    invoke-direct {v0}, Lcom/instagram/user/userservice/d;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/a/a/b;->a:Lcom/instagram/user/userservice/d;

    :goto_a
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v1, p0, Lcom/instagram/android/a/a/b;->a:Lcom/instagram/user/userservice/d;

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/user/c/a;

    invoke-virtual {v1, v0}, Lcom/instagram/user/userservice/d;->a(Lcom/instagram/user/c/a;)V

    goto :goto_a

    :cond_1c
    return-void
.end method


# virtual methods
.method protected a(Ljava/lang/CharSequence;Lcom/android/internal/util/Predicate;)Ljava/util/Set;
    .registers 5
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

    if-eqz p1, :cond_1a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_1a

    const/4 v0, 0x1

    :goto_9
    invoke-static {v0}, Lcom/instagram/common/i/a/f;->a(Z)V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    invoke-static {p1, v0, p2}, Lcom/instagram/user/userservice/a/h;->a(Ljava/lang/CharSequence;Ljava/util/Set;Lcom/android/internal/util/Predicate;)V

    iget-object v1, p0, Lcom/instagram/android/a/a/b;->a:Lcom/instagram/user/userservice/d;

    invoke-virtual {v1, p1, v0, p2}, Lcom/instagram/user/userservice/d;->a(Ljava/lang/CharSequence;Ljava/util/Set;Lcom/android/internal/util/Predicate;)V

    return-object v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method protected performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 5

    invoke-static {p1}, Lcom/instagram/common/u/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_c

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1f

    :cond_c
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    :goto_11
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    return-object v1

    :cond_1f
    new-instance v0, Ljava/util/ArrayList;

    const/4 v2, 0x0

    invoke-virtual {p0, v1, v2}, Lcom/instagram/android/a/a/b;->a(Ljava/lang/CharSequence;Lcom/android/internal/util/Predicate;)Ljava/util/Set;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    goto :goto_11
.end method

.method protected publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 3

    return-void
.end method
