.class public final Lcom/instagram/android/directshare/widget/h;
.super Lcom/instagram/android/a/a/b;
.source "DirectShareSearchFilter.java"


# instance fields
.field private final a:Lcom/instagram/android/directshare/widget/i;


# direct methods
.method public constructor <init>(Lcom/instagram/android/directshare/widget/i;)V
    .registers 2

    invoke-direct {p0}, Lcom/instagram/android/a/a/b;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/directshare/widget/h;->a:Lcom/instagram/android/directshare/widget/i;

    return-void
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 5

    invoke-static {p1}, Lcom/instagram/common/u/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    iget-object v1, p0, Lcom/instagram/android/directshare/widget/h;->a:Lcom/instagram/android/directshare/widget/i;

    invoke-virtual {v1}, Lcom/instagram/android/directshare/widget/i;->c()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    iput v2, v0, Landroid/widget/Filter$FilterResults;->count:I

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    :goto_1d
    return-object v0

    :cond_1e
    invoke-super {p0, p1}, Lcom/instagram/android/a/a/b;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v0

    goto :goto_1d
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5

    invoke-static {p1}, Lcom/instagram/common/u/e;->a(Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/instagram/android/directshare/widget/h;->a:Lcom/instagram/android/directshare/widget/i;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/i;->a(Z)V

    :goto_10
    if-eqz p2, :cond_1b

    iget-object v1, p0, Lcom/instagram/android/directshare/widget/h;->a:Lcom/instagram/android/directshare/widget/i;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/List;

    invoke-virtual {v1, v0}, Lcom/instagram/android/directshare/widget/i;->d(Ljava/util/List;)V

    :cond_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lcom/instagram/android/directshare/widget/h;->a:Lcom/instagram/android/directshare/widget/i;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/instagram/android/directshare/widget/i;->a(Z)V

    goto :goto_10
.end method
