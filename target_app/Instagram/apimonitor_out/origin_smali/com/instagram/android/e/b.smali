.class public final Lcom/instagram/android/e/b;
.super Landroid/widget/ArrayAdapter;
.source "CountryCodeListAdapter.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/widget/ArrayAdapter",
        "<",
        "Lcom/instagram/android/e/c;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/e/c;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/instagram/android/e/c;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/List;)V
    .registers 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/android/e/c;",
            ">;)V"
        }
    .end annotation

    sget v0, Lcom/facebook/aw;->row_menu_item:I

    invoke-direct {p0, p1, v0, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V

    iput-object p1, p0, Lcom/instagram/android/e/b;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/instagram/android/e/b;->b:Ljava/util/List;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/instagram/android/e/b;->c:Ljava/util/ArrayList;

    iget-object v0, p0, Lcom/instagram/android/e/b;->c:Ljava/util/ArrayList;

    iget-object v1, p0, Lcom/instagram/android/e/b;->b:Ljava/util/List;

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)V
    .registers 8

    const/4 v5, 0x0

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p1, v0}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/android/e/b;->b:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    invoke-static {v1}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1f

    iget-object v0, p0, Lcom/instagram/android/e/b;->b:Ljava/util/List;

    iget-object v1, p0, Lcom/instagram/android/e/b;->c:Ljava/util/ArrayList;

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_1b
    invoke-virtual {p0}, Lcom/instagram/android/e/b;->notifyDataSetChanged()V

    return-void

    :cond_1f
    iget-object v0, p0, Lcom/instagram/android/e/b;->c:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_25
    :goto_25
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1b

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/e/c;

    invoke-virtual {v0}, Lcom/instagram/android/e/c;->b()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v5}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_5e

    invoke-virtual {v0}, Lcom/instagram/android/e/c;->a()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v5}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-nez v3, :cond_5e

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "+"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/instagram/android/e/c;->a()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v1, v5}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v3

    if-eqz v3, :cond_25

    :cond_5e
    iget-object v3, p0, Lcom/instagram/android/e/b;->b:Ljava/util/List;

    invoke-interface {v3, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_25
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 8

    const/4 v3, 0x0

    if-nez p2, :cond_13

    iget-object v0, p0, Lcom/instagram/android/e/b;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    sget v1, Lcom/facebook/aw;->row_menu_item:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object p2

    invoke-virtual {p2, v3, v3, v3, v3}, Landroid/view/View;->setPadding(IIII)V

    :cond_13
    sget v0, Lcom/facebook/av;->row_simple_text_textview:I

    invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    invoke-virtual {p0, p1}, Lcom/instagram/android/e/b;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/instagram/android/e/c;

    invoke-virtual {v1}, Lcom/instagram/android/e/c;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-object p2
.end method
