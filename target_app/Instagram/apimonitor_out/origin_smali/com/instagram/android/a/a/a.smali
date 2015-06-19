.class public final Lcom/instagram/android/a/a/a;
.super Landroid/widget/Filter;
.source "HashtagAndUsernameCompositeFilter.java"


# instance fields
.field private a:Lcom/instagram/android/a/a/b;

.field private b:Lcom/instagram/android/a/a;


# direct methods
.method public constructor <init>(Lcom/instagram/android/a/a;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/a/a/a;->b:Lcom/instagram/android/a/a;

    new-instance v0, Lcom/instagram/android/a/a/b;

    invoke-direct {v0}, Lcom/instagram/android/a/a/b;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/a/a/a;->a:Lcom/instagram/android/a/a/b;

    return-void
.end method

.method public constructor <init>(Lcom/instagram/android/a/a;Lcom/instagram/feed/d/l;)V
    .registers 5

    invoke-direct {p0}, Landroid/widget/Filter;-><init>()V

    iput-object p1, p0, Lcom/instagram/android/a/a/a;->b:Lcom/instagram/android/a/a;

    invoke-static {}, Lcom/instagram/android/h/a/a;->a()Lcom/instagram/android/h/a/a;

    move-result-object v0

    invoke-virtual {p2}, Lcom/instagram/feed/d/l;->ai()Z

    move-result v1

    if-eqz v1, :cond_1b

    invoke-virtual {v0, p2}, Lcom/instagram/android/h/a/a;->b(Lcom/instagram/feed/d/l;)Ljava/util/Iterator;

    move-result-object v0

    :goto_13
    new-instance v1, Lcom/instagram/android/a/a/b;

    invoke-direct {v1, v0}, Lcom/instagram/android/a/a/b;-><init>(Ljava/util/Iterator;)V

    iput-object v1, p0, Lcom/instagram/android/a/a/a;->a:Lcom/instagram/android/a/a/b;

    return-void

    :cond_1b
    invoke-virtual {v0, p2}, Lcom/instagram/android/h/a/a;->a(Lcom/instagram/feed/d/l;)Ljava/util/Iterator;

    move-result-object v0

    goto :goto_13
.end method


# virtual methods
.method protected final performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;
    .registers 6

    const/4 v3, 0x1

    const/4 v2, 0x0

    if-eqz p1, :cond_43

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-lez v0, :cond_43

    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x23

    if-ne v0, v1, :cond_2c

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    invoke-interface {p1, v3, v0}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/h/a/a;->a(Ljava/lang/CharSequence;)Ljava/util/List;

    move-result-object v1

    new-instance v0, Landroid/widget/Filter$FilterResults;

    invoke-direct {v0}, Landroid/widget/Filter$FilterResults;-><init>()V

    iput-object v1, v0, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    iput v1, v0, Landroid/widget/Filter$FilterResults;->count:I

    :goto_2b
    return-object v0

    :cond_2c
    invoke-interface {p1, v2}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v0

    const/16 v1, 0x40

    if-ne v0, v1, :cond_43

    iget-object v0, p0, Lcom/instagram/android/a/a/a;->a:Lcom/instagram/android/a/a/b;

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    invoke-interface {p1, v3, v1}, Ljava/lang/CharSequence;->subSequence(II)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/instagram/android/a/a/b;->performFiltering(Ljava/lang/CharSequence;)Landroid/widget/Filter$FilterResults;

    move-result-object v0

    goto :goto_2b

    :cond_43
    const/4 v0, 0x0

    goto :goto_2b
.end method

.method protected final publishResults(Ljava/lang/CharSequence;Landroid/widget/Filter$FilterResults;)V
    .registers 5

    if-nez p2, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v1, p0, Lcom/instagram/android/a/a/a;->b:Lcom/instagram/android/a/a;

    iget-object v0, p2, Landroid/widget/Filter$FilterResults;->values:Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Lcom/instagram/android/a/a;->a(Ljava/util/ArrayList;)V

    iget v0, p2, Landroid/widget/Filter$FilterResults;->count:I

    if-lez v0, :cond_16

    iget-object v0, p0, Lcom/instagram/android/a/a/a;->b:Lcom/instagram/android/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/a/a;->notifyDataSetChanged()V

    goto :goto_2

    :cond_16
    iget-object v0, p0, Lcom/instagram/android/a/a/a;->b:Lcom/instagram/android/a/a;

    invoke-virtual {v0}, Lcom/instagram/android/a/a;->notifyDataSetInvalidated()V

    goto :goto_2
.end method
