.class public final Lcom/bbm/util/c/h;
.super Ljava/lang/Object;
.source "StringMatcher.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field a:Z

.field private final b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/bbm/util/c/h;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/util/c/h",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 3

    const/4 v0, 0x5

    const/4 v1, 0x0

    invoke-direct {p0, v0, v1}, Lcom/bbm/util/c/h;-><init>(ILcom/bbm/util/c/h;)V

    return-void
.end method

.method public constructor <init>(ILcom/bbm/util/c/h;)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I",
            "Lcom/bbm/util/c/h",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/util/c/h;->a:Z

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, p1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/bbm/util/c/h;->b:Landroid/util/SparseArray;

    iput-object p2, p0, Lcom/bbm/util/c/h;->c:Lcom/bbm/util/c/h;

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/CharSequence;II)Lcom/google/b/a/l;
    .registers 14
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/CharSequence;",
            "II)",
            "Lcom/google/b/a/l",
            "<",
            "Lcom/bbm/util/c/i",
            "<TT;>;>;"
        }
    .end annotation

    const/4 v2, 0x0

    const/4 v9, 0x0

    iget-object v4, p0, Lcom/bbm/util/c/h;->b:Landroid/util/SparseArray;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v8

    move v1, p2

    move-object v3, v2

    move-object v7, v4

    move v6, p2

    move v4, p2

    :goto_d
    if-ge v6, v8, :cond_bf

    iget-object v0, p0, Lcom/bbm/util/c/h;->c:Lcom/bbm/util/c/h;

    if-nez v0, :cond_2f

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    :goto_17
    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v5

    if-eqz v5, :cond_62

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/c/i;

    if-eqz v3, :cond_38

    new-instance v0, Lcom/bbm/util/c/i;

    invoke-direct {v0, v4, v1, v3}, Lcom/bbm/util/c/i;-><init>(IILjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v0

    :goto_2e
    return-object v0

    :cond_2f
    iget-object v0, p0, Lcom/bbm/util/c/h;->c:Lcom/bbm/util/c/h;

    add-int/lit8 v5, v6, 0x1

    invoke-virtual {v0, p1, v6, v5}, Lcom/bbm/util/c/h;->a(Ljava/lang/CharSequence;II)Lcom/google/b/a/l;

    move-result-object v0

    goto :goto_17

    :cond_38
    iget v0, v0, Lcom/bbm/util/c/i;->b:I

    iget-boolean v1, p0, Lcom/bbm/util/c/h;->a:Z

    if-eqz v1, :cond_53

    if-ge v0, v8, :cond_53

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    :goto_44
    if-ge v0, v8, :cond_53

    invoke-static {v1}, Ljava/lang/Character;->isWhitespace(C)Z

    move-result v1

    if-nez v1, :cond_53

    invoke-interface {p1, v0}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v1

    add-int/lit8 v0, v0, 0x1

    goto :goto_44

    :cond_53
    add-int/lit8 v4, v0, -0x1

    iget-object v1, p0, Lcom/bbm/util/c/h;->b:Landroid/util/SparseArray;

    move v3, v0

    move v5, v4

    move-object v4, v1

    move-object v1, v2

    :goto_5b
    add-int/lit8 v6, v5, 0x1

    move-object v7, v4

    move v4, v3

    move-object v3, v1

    move v1, v0

    goto :goto_d

    :cond_62
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    if-nez v0, :cond_7b

    move-object v5, v2

    :goto_69
    if-nez v5, :cond_a9

    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_8b

    new-instance v1, Lcom/bbm/util/c/i;

    invoke-direct {v1, v4, v6, v0}, Lcom/bbm/util/c/i;-><init>(IILjava/lang/Object;)V

    invoke-static {v1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v0

    goto :goto_2e

    :cond_7b
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v7, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    move-object v5, v0

    goto :goto_69

    :cond_8b
    if-eqz v3, :cond_97

    new-instance v0, Lcom/bbm/util/c/i;

    invoke-direct {v0, v4, v1, v3}, Lcom/bbm/util/c/i;-><init>(IILjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v0

    goto :goto_2e

    :cond_97
    add-int/lit8 v0, p3, -0x1

    if-ge v6, v0, :cond_a4

    add-int/lit8 v0, v4, 0x1

    iget-object v1, p0, Lcom/bbm/util/c/h;->b:Landroid/util/SparseArray;

    move v3, v0

    move v5, v4

    move-object v4, v1

    move-object v1, v2

    goto :goto_5b

    :cond_a4
    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    goto :goto_2e

    :cond_a9
    invoke-virtual {v5}, Landroid/util/SparseArray;->size()I

    move-result v0

    if-lez v0, :cond_e3

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_e3

    invoke-virtual {v5, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    add-int/lit8 v0, v6, 0x1

    move v3, v4

    move-object v4, v5

    move v5, v6

    goto :goto_5b

    :cond_bf
    invoke-virtual {v7, v9}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_d0

    new-instance v1, Lcom/bbm/util/c/i;

    invoke-direct {v1, v4, v8, v0}, Lcom/bbm/util/c/i;-><init>(IILjava/lang/Object;)V

    invoke-static {v1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v0

    goto/16 :goto_2e

    :cond_d0
    if-eqz v3, :cond_dd

    new-instance v0, Lcom/bbm/util/c/i;

    invoke-direct {v0, v4, v1, v3}, Lcom/bbm/util/c/i;-><init>(IILjava/lang/Object;)V

    invoke-static {v0}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v0

    goto/16 :goto_2e

    :cond_dd
    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    goto/16 :goto_2e

    :cond_e3
    move v0, v1

    move-object v1, v3

    move v3, v4

    move-object v4, v5

    move v5, v6

    goto/16 :goto_5b
.end method

.method public final a(Ljava/lang/String;Ljava/lang/Object;)V
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "TT;)V"
        }
    .end annotation

    const/4 v2, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    iget-object v0, p0, Lcom/bbm/util/c/h;->b:Landroid/util/SparseArray;

    move v1, v2

    move-object v3, v0

    :goto_9
    if-ge v1, v4, :cond_3e

    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v5

    const/16 v0, 0x20

    if-ne v5, v0, :cond_1c

    invoke-virtual {v3, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/util/c/h;->b:Landroid/util/SparseArray;

    :cond_18
    :goto_18
    add-int/lit8 v1, v1, 0x1

    move-object v3, v0

    goto :goto_9

    :cond_1c
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/util/SparseArray;

    if-nez v0, :cond_18

    new-instance v0, Landroid/util/SparseArray;

    const/4 v6, 0x5

    invoke-direct {v0, v6}, Landroid/util/SparseArray;-><init>(I)V

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {v3, v5, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_18

    :cond_3e
    invoke-virtual {v3, v2, p2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-void
.end method
