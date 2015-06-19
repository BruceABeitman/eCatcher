.class final Lcom/instagram/android/a/c;
.super Landroid/widget/Filter;
.source "HashtagListAdapter.java"


# instance fields
.field private final a:Lcom/instagram/android/a/b;


# direct methods
.method public constructor <init>(Lcom/instagram/android/a/b;)V
    .registers 2

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/a/c;->a:Lcom/instagram/android/a/b;

    return-void
.end method

.method private static a(Landroid/widget/Filter$FilterResults;)Ljava/util/List;
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/Filter$FilterResults;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/h/c;",
            ">;"
        }
    .end annotation

    iget-object v0, p0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    new-instance v1, Ljava/util/ArrayList;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_11
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_26

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    new-instance v3, Lcom/instagram/android/h/c;

    invoke-direct {v3, v0}, Lcom/instagram/android/h/c;-><init>(Ljava/lang/String;)V

    invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_11

    :cond_26
    return-object v1
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 4

    invoke-static {p1}, Lcom/instagram/common/u/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1c

    invoke-static {}, Lcom/instagram/android/k/c;->a()Ljava/util/List;

    move-result-object v0

    :goto_e
    new-instance v1, Landroid/widget/Filter$FilterResults;

    invoke-direct {v1}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object v0, v1, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iput v0, v1, Landroid/widget/Filter$FilterResults;->count:I

    return-object v1

    :cond_1c
    invoke-static {v0}, Lcom/instagram/h/a/a;->a(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v0

    goto :goto_e
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lcom/instagram/android/a/c;->a:Lcom/instagram/android/a/b;

    invoke-static {p2}, Lcom/instagram/android/a/c;->a(Landroid/widget/Filter$FilterResults;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/b;->d(Ljava/util/List;)V

    goto :goto_2
.end method
