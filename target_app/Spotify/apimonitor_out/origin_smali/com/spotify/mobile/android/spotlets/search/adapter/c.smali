.class public final Lcom/spotify/mobile/android/spotlets/search/adapter/c;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:I

.field private c:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Lcom/google/common/base/j;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/common/base/j",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private f:Lcom/spotify/android/paste/widget/ListItemView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .registers 3

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->d:Ljava/util/Set;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/c$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/c$1;-><init>(Lcom/spotify/mobile/android/spotlets/search/adapter/c;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->e:Lcom/google/common/base/j;

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->a:Landroid/content/Context;

    const/16 v0, 0xa

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->b:I

    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->c:Ljava/util/LinkedList;

    return-void
.end method

.method static synthetic a(Lcom/spotify/mobile/android/spotlets/search/adapter/c;)Ljava/util/Set;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->d:Ljava/util/Set;

    return-object v0
.end method

.method private c()V
    .registers 3

    :goto_0
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    iget v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->b:I

    if-le v0, v1, :cond_10

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_10
    return-void
.end method

.method private d()V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->c:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->e:Lcom/google/common/base/j;

    invoke-static {v0, v1}, Lcom/google/common/collect/h;->a(Ljava/lang/Iterable;Lcom/google/common/base/j;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->d:Ljava/util/Set;

    invoke-interface {v0}, Ljava/util/Set;->clear()V

    return-void
.end method


# virtual methods
.method public final a(I)Ljava/lang/CharSequence;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ge p1, v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    :goto_10
    return-object v0

    :cond_11
    const-string v0, ""

    goto :goto_10
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->c:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->push(Ljava/lang/Object;)V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->d()V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->c()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->notifyDataSetChanged()V

    return-void
.end method

.method public final a([Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->c:Ljava/util/LinkedList;

    invoke-static {v0, p1}, Ljava/util/Collections;->addAll(Ljava/util/Collection;[Ljava/lang/Object;)Z

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->d()V

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->c()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->notifyDataSetChanged()V

    return-void
.end method

.method public final a()[Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->c:Ljava/util/LinkedList;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->c:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->size()I

    move-result v1

    new-array v1, v1, [Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    return-object v0
.end method

.method public final b()V
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->notifyDataSetChanged()V

    return-void
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    :goto_9
    return v0

    :cond_a
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_9
.end method

.method public final synthetic getItem(I)Ljava/lang/Object;
    .registers 3

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    int-to-long v0, v0

    return-wide v0
.end method

.method public final getItemViewType(I)I
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->getCount()I

    move-result v0

    add-int/lit8 v0, v0, -0x1

    if-ne p1, v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 7

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->c:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-ne p1, v0, :cond_37

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->f:Lcom/spotify/android/paste/widget/ListItemView;

    if-nez v0, :cond_34

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->a:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/spotify/android/paste/widget/h;->k(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->f:Lcom/spotify/android/paste/widget/ListItemView;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->f:Lcom/spotify/android/paste/widget/ListItemView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->a:Landroid/content/Context;

    const v2, 0x7f0f01a3

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->f:Lcom/spotify/android/paste/widget/ListItemView;

    invoke-virtual {v0}, Lcom/spotify/android/paste/widget/ListItemView;->b()Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->a:Landroid/content/Context;

    const v2, 0x7f010190

    invoke-static {v1, v2}, Lcom/spotify/android/paste/widget/g;->a(Landroid/content/Context;I)I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V

    :cond_34
    iget-object p2, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->f:Lcom/spotify/android/paste/widget/ListItemView;

    :goto_36
    return-object p2

    :cond_37
    if-nez p2, :cond_57

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->a:Landroid/content/Context;

    invoke-static {v0, p3}, Lcom/spotify/android/paste/widget/h;->k(Landroid/content/Context;Landroid/view/ViewGroup;)Lcom/spotify/android/paste/widget/ListItemView;

    move-result-object p2

    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    const v1, 0x7f020185

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Landroid/view/View;)V

    :goto_4f
    invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->a(I)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->a(Ljava/lang/CharSequence;)V

    goto :goto_36

    :cond_57
    check-cast p2, Lcom/spotify/android/paste/widget/ListItemView;

    const/4 v0, 0x1

    invoke-virtual {p2, v0}, Lcom/spotify/android/paste/widget/ListItemView;->b(Z)V

    goto :goto_4f
.end method

.method public final getViewTypeCount()I
    .registers 2

    const/4 v0, 0x2

    return v0
.end method

.method public final hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
