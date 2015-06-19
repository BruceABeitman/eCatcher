.class public final Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final x:Lcom/spotify/mobile/android/util/ui/ScrollPosition;


# instance fields
.field private final A:Landroid/os/Handler;

.field private final B:Lcom/spotify/mobile/android/spotlets/search/adapter/a;

.field private C:Ljava/lang/Runnable;

.field private D:Ljava/lang/Runnable;

.field private E:Landroid/widget/AdapterView$OnItemClickListener;

.field private F:Landroid/widget/AdapterView$OnItemLongClickListener;

.field final a:I

.field final b:Lcom/spotify/mobile/android/spotlets/search/a;

.field final c:Lcom/spotify/mobile/android/spotlets/search/view/f;

.field final d:Lcom/spotify/mobile/android/spotlets/search/adapter/c;

.field final e:Lcom/spotify/mobile/android/spotlets/search/adapter/d;

.field final f:Lcom/spotify/mobile/android/spotlets/search/b/e;

.field final g:Lcom/spotify/mobile/android/spotlets/common/adapter/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/common/adapter/e",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Artist;",
            ">;"
        }
    .end annotation
.end field

.field final h:Lcom/spotify/mobile/android/spotlets/common/adapter/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/common/adapter/e",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Album;",
            ">;"
        }
    .end annotation
.end field

.field final i:Lcom/spotify/mobile/android/spotlets/common/adapter/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/common/adapter/e",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;",
            ">;"
        }
    .end annotation
.end field

.field final j:Lcom/spotify/mobile/android/spotlets/common/adapter/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/common/adapter/e",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;",
            ">;"
        }
    .end annotation
.end field

.field final k:Lcom/spotify/mobile/android/spotlets/common/adapter/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/common/adapter/e",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Track;",
            ">;"
        }
    .end annotation
.end field

.field final l:Lcom/spotify/mobile/android/spotlets/common/adapter/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/common/adapter/e",
            "<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field final m:Lcom/spotify/mobile/android/spotlets/common/adapter/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/common/adapter/e",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Profile;",
            ">;"
        }
    .end annotation
.end field

.field final n:Lcom/spotify/mobile/android/spotlets/common/adapter/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/common/adapter/e",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Genre;",
            ">;"
        }
    .end annotation
.end field

.field final o:Lcom/spotify/mobile/android/spotlets/common/adapter/e;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/spotlets/common/adapter/e",
            "<",
            "Lcom/spotify/mobile/android/spotlets/search/model/entity/Suggestion;",
            ">;"
        }
    .end annotation
.end field

.field p:Lcom/spotify/mobile/android/ui/adapter/o;

.field q:Lcom/spotify/android/paste/widget/EmptyView;

.field r:Lcom/spotify/mobile/android/ui/view/LoadingView;

.field s:Landroid/widget/ListView;

.field t:Landroid/view/ViewGroup;

.field u:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

.field v:Ljava/lang/String;

.field w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

.field private final y:I

.field private final z:I


# direct methods
.method static constructor <clinit>()V
    .registers 2

    const/4 v1, 0x0

    new-instance v0, Lcom/spotify/mobile/android/util/ui/ScrollPosition;

    invoke-direct {v0, v1, v1}, Lcom/spotify/mobile/android/util/ui/ScrollPosition;-><init>(II)V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->x:Lcom/spotify/mobile/android/util/ui/ScrollPosition;

    return-void
.end method

.method public constructor <init>(Lcom/spotify/mobile/android/spotlets/search/a;Lcom/spotify/mobile/android/spotlets/search/view/f;)V
    .registers 9

    const/4 v5, 0x1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$1;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$1;-><init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->C:Ljava/lang/Runnable;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$2;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$2;-><init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->D:Ljava/lang/Runnable;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$3;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$3;-><init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->E:Landroid/widget/AdapterView$OnItemClickListener;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$4;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$4;-><init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->F:Landroid/widget/AdapterView$OnItemLongClickListener;

    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->A:Landroid/os/Handler;

    const-string v0, "Null searchContext"

    invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/a;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->b:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {p1}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v1

    const-string v0, "Null callbacks!"

    invoke-static {p2, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/view/f;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->c:Lcom/spotify/mobile/android/spotlets/search/view/f;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v2, 0x7f0d0008

    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->a:I

    const/high16 v0, 0x4270

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v2

    invoke-static {v5, v0, v2}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v0

    float-to-int v0, v0

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->y:I

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->widthPixels:I

    iget v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->a:I

    div-int/2addr v0, v2

    iput v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->z:I

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->b:Lcom/spotify/mobile/android/spotlets/search/a;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$5;

    invoke-direct {v3, p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$5;-><init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V

    new-instance v4, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$6;

    invoke-direct {v4, p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$6;-><init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V

    invoke-direct {v0, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;-><init>(Lcom/spotify/mobile/android/spotlets/search/a;Lcom/spotify/mobile/android/spotlets/search/adapter/a/i;Lcom/spotify/mobile/android/spotlets/search/adapter/b;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->B:Lcom/spotify/mobile/android/spotlets/search/adapter/a;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->B:Lcom/spotify/mobile/android/spotlets/search/adapter/a;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->a()Lcom/spotify/mobile/android/spotlets/search/adapter/d;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->e:Lcom/spotify/mobile/android/spotlets/search/adapter/d;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/adapter/c;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->d:Lcom/spotify/mobile/android/spotlets/search/adapter/c;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/b/e;

    new-instance v1, Landroid/text/style/StyleSpan;

    invoke-direct {v1, v5}, Landroid/text/style/StyleSpan;-><init>(I)V

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/b/e;-><init>(Landroid/text/style/StyleSpan;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->f:Lcom/spotify/mobile/android/spotlets/search/b/e;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->g:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->h:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->n:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->o:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$7;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$7;-><init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->l:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;-><init>()V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->m:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$a;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$a;-><init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->i:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$a;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$a;-><init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->j:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$a;

    invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$a;-><init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->k:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->u:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    return-void
.end method

.method private w()V
    .registers 3

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->m()Z

    move-result v0

    if-nez v0, :cond_e

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Root view not inflated"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_e
    return-void
.end method


# virtual methods
.method public final a(Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;)I
    .registers 3

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->d:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    if-ne p1, v0, :cond_7

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->z:I

    :goto_6
    return v0

    :cond_7
    iget v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->y:I

    goto :goto_6
.end method

.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 11

    const/4 v4, 0x0

    const/4 v7, 0x0

    const v0, 0x7f0300c5

    invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->t:Landroid/view/ViewGroup;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->t:Landroid/view/ViewGroup;

    const v1, 0x102000a

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    new-instance v0, Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->b:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->B:Lcom/spotify/mobile/android/spotlets/search/adapter/a;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->e:Lcom/spotify/mobile/android/spotlets/search/adapter/d;

    const v3, 0x7f0f01ab

    sget-object v5, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->a(Landroid/widget/ListView;Landroid/widget/ListAdapter;IILcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;)Lcom/spotify/mobile/android/spotlets/common/adapter/SimpleHeaderViewListAdapter;

    move-result-object v0

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->a:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v1

    invoke-virtual {v6, v0, v7, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->B:Lcom/spotify/mobile/android/spotlets/search/adapter/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->d:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->i:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-virtual {v1, v2, v3, v5}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->c(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Landroid/widget/ListAdapter;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->d:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v7, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->B:Lcom/spotify/mobile/android/spotlets/search/adapter/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->e:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->j:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-virtual {v1, v2, v3, v5}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->d(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Landroid/widget/ListAdapter;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->e:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v7, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->B:Lcom/spotify/mobile/android/spotlets/search/adapter/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->f:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->k:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-virtual {v1, v2, v3, v5}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->e(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Landroid/widget/ListAdapter;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->f:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v7, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->B:Lcom/spotify/mobile/android/spotlets/search/adapter/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->b:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->g:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-virtual {v1, v2, v3, v5}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->a(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Landroid/widget/ListAdapter;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->b:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v7, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->B:Lcom/spotify/mobile/android/spotlets/search/adapter/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->c:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->h:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-virtual {v1, v2, v3, v5}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->b(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Landroid/widget/ListAdapter;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->c:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v7, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->B:Lcom/spotify/mobile/android/spotlets/search/adapter/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->g:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->l:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-virtual {v1, v2, v3, v5}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->f(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Landroid/widget/ListAdapter;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->g:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v7, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->B:Lcom/spotify/mobile/android/spotlets/search/adapter/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->h:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->m:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-virtual {v1, v2, v3, v5}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->g(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Landroid/widget/ListAdapter;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->h:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v7, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->B:Lcom/spotify/mobile/android/spotlets/search/adapter/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->i:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->n:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-virtual {v1, v2, v3, v5}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->h(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Landroid/widget/ListAdapter;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->i:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v7, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->B:Lcom/spotify/mobile/android/spotlets/search/adapter/a;

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->j:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->o:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-virtual {v1, v2, v3, v5}, Lcom/spotify/mobile/android/spotlets/search/adapter/a;->i(Landroid/widget/ListView;Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;Lcom/spotify/mobile/android/spotlets/common/adapter/d;)Landroid/widget/ListAdapter;

    move-result-object v1

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->j:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v7, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    new-instance v0, Lcom/spotify/mobile/android/spotlets/search/view/b;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->b:Lcom/spotify/mobile/android/spotlets/search/a;

    invoke-interface {v1}, Lcom/spotify/mobile/android/spotlets/search/a;->d()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/search/view/b;-><init>(Landroid/content/Context;)V

    new-instance v1, Lcom/spotify/mobile/android/spotlets/search/view/c;

    invoke-direct {v1, v0}, Lcom/spotify/mobile/android/spotlets/search/view/c;-><init>(Lcom/spotify/mobile/android/spotlets/search/view/b;)V

    sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->D:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/search/view/c;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/spotlets/search/view/c;

    move-result-object v1

    const v2, 0x7f0f01a7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/spotlets/search/view/c;->b(Ljava/lang/Integer;)Lcom/spotify/mobile/android/spotlets/search/view/c;

    move-result-object v1

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/view/c;->a()Lcom/spotify/android/paste/widget/EmptyView;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->q:Lcom/spotify/android/paste/widget/EmptyView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    new-instance v2, Lcom/spotify/mobile/android/ui/adapter/t;

    const v3, 0x7f03005a

    iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    invoke-virtual {p1, v3, v5, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/spotify/mobile/android/ui/adapter/t;-><init>(Landroid/view/View;B)V

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->p:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v7, v3}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    new-instance v2, Lcom/spotify/mobile/android/ui/adapter/t;

    iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->q:Lcom/spotify/android/paste/widget/EmptyView;

    invoke-direct {v2, v3, v4}, Lcom/spotify/mobile/android/ui/adapter/t;-><init>(Landroid/view/View;B)V

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->k:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v7, v3}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    new-instance v2, Lcom/spotify/mobile/android/ui/adapter/t;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$8;

    invoke-direct {v3, p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$8;-><init>(Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;)V

    new-instance v5, Lcom/spotify/mobile/android/spotlets/search/view/c;

    invoke-direct {v5, v0}, Lcom/spotify/mobile/android/spotlets/search/view/c;-><init>(Lcom/spotify/mobile/android/spotlets/search/view/b;)V

    sget-object v6, Lcom/spotify/android/paste/graphics/SpotifyIcon;->cm:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-virtual {v5, v6}, Lcom/spotify/mobile/android/spotlets/search/view/c;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/spotlets/search/view/c;

    move-result-object v5

    const v6, 0x7f0f01a4

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/spotify/mobile/android/spotlets/search/view/c;->a(Ljava/lang/Integer;)Lcom/spotify/mobile/android/spotlets/search/view/c;

    move-result-object v5

    invoke-virtual {v5, v3}, Lcom/spotify/mobile/android/spotlets/search/view/c;->a(Landroid/view/View$OnClickListener;)Lcom/spotify/mobile/android/spotlets/search/view/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/c;->a()Lcom/spotify/android/paste/widget/EmptyView;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/spotify/mobile/android/ui/adapter/t;-><init>(Landroid/view/View;B)V

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->o:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v7, v3}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    new-instance v2, Lcom/spotify/mobile/android/ui/adapter/t;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/search/view/c;

    invoke-direct {v3, v0}, Lcom/spotify/mobile/android/spotlets/search/view/c;-><init>(Lcom/spotify/mobile/android/spotlets/search/view/b;)V

    sget-object v5, Lcom/spotify/android/paste/graphics/SpotifyIcon;->al:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-virtual {v3, v5}, Lcom/spotify/mobile/android/spotlets/search/view/c;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/spotlets/search/view/c;

    move-result-object v3

    const v5, 0x7f0f01b8

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/spotify/mobile/android/spotlets/search/view/c;->a(Ljava/lang/Integer;)Lcom/spotify/mobile/android/spotlets/search/view/c;

    move-result-object v3

    const v5, 0x7f0f01b9

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v3, v5}, Lcom/spotify/mobile/android/spotlets/search/view/c;->b(Ljava/lang/Integer;)Lcom/spotify/mobile/android/spotlets/search/view/c;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/c;->a()Lcom/spotify/android/paste/widget/EmptyView;

    move-result-object v3

    invoke-direct {v2, v3, v4}, Lcom/spotify/mobile/android/ui/adapter/t;-><init>(Landroid/view/View;B)V

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->m:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    invoke-virtual {v1, v2, v7, v3}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    new-instance v2, Lcom/spotify/mobile/android/ui/adapter/t;

    new-instance v3, Lcom/spotify/mobile/android/spotlets/search/view/c;

    invoke-direct {v3, v0}, Lcom/spotify/mobile/android/spotlets/search/view/c;-><init>(Lcom/spotify/mobile/android/spotlets/search/view/b;)V

    sget-object v0, Lcom/spotify/android/paste/graphics/SpotifyIcon;->cO:Lcom/spotify/android/paste/graphics/SpotifyIcon;

    invoke-virtual {v3, v0}, Lcom/spotify/mobile/android/spotlets/search/view/c;->a(Lcom/spotify/android/paste/graphics/SpotifyIcon;)Lcom/spotify/mobile/android/spotlets/search/view/c;

    move-result-object v0

    const v3, 0x7f0f020b

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/spotlets/search/view/c;->a(Ljava/lang/Integer;)Lcom/spotify/mobile/android/spotlets/search/view/c;

    move-result-object v0

    const v3, 0x7f0f01a8

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/spotlets/search/view/c;->b(Ljava/lang/Integer;)Lcom/spotify/mobile/android/spotlets/search/view/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/c;->a()Lcom/spotify/android/paste/widget/EmptyView;

    move-result-object v0

    invoke-direct {v2, v0, v4}, Lcom/spotify/mobile/android/ui/adapter/t;-><init>(Landroid/view/View;B)V

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->n:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v0

    invoke-virtual {v1, v2, v7, v0}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->d:Lcom/spotify/mobile/android/spotlets/search/adapter/c;

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->l:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v2

    invoke-virtual {v0, v1, v7, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    const/4 v1, 0x2

    new-array v1, v1, [I

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->e:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v2

    aput v2, v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->f:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->a([I)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->E:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->F:Landroid/widget/AdapterView$OnItemLongClickListener;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->u()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->t:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public final a()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/adapter/o;->notifyDataSetChanged()V

    return-void
.end method

.method public final a(Landroid/widget/AbsListView$OnScrollListener;)V
    .registers 3

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    invoke-virtual {v0, p1}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;Ljava/lang/String;)V
    .registers 10

    const/4 v5, 0x0

    const/4 v1, 0x0

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w()V

    const-string v0, "Don\'t call setResults with null results"

    invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->f:Lcom/spotify/mobile/android/spotlets/search/b/e;

    invoke-virtual {v0, p3}, Lcom/spotify/mobile/android/spotlets/search/b/e;->a(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->u:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->v:Ljava/lang/String;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->e:Lcom/spotify/mobile/android/spotlets/search/adapter/d;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/search/adapter/d;->a(Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->g:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->artists:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->h:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->albums:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;->a(Ljava/util/List;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->l:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->u:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->d:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    if-ne v0, v3, :cond_79

    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->playlists:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    iget v3, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->a:I

    invoke-static {v0, v3}, Lcom/spotify/mobile/android/spotlets/search/adapter/util/a;->a(Ljava/util/List;I)Ljava/util/List;

    move-result-object v0

    :goto_41
    invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->m:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->profiles:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->n:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->genres:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->o:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    iget-object v2, p1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->suggestions:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v2, v2, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;->a(Ljava/util/List;)V

    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->sortedCategory:[Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    array-length v0, v0

    new-array v2, v0, [I

    move v0, v1

    :goto_65
    array-length v3, v2

    if-ge v0, v3, :cond_7e

    iget-object v3, p1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->sortedCategory:[Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;

    aget-object v3, v3, v0

    invoke-static {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->a(Lcom/spotify/mobile/android/spotlets/search/model/ResultCategory;)Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    move-result-object v3

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    aput v3, v2, v0

    add-int/lit8 v0, v0, 0x1

    goto :goto_65

    :cond_79
    iget-object v0, p1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->playlists:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    goto :goto_41

    :cond_7e
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    const-string v3, "Can\'t split null results!"

    invoke-static {v0, v3}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v3, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->tracks:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v3, v3, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->f()Z

    move-result v4

    if-eqz v4, :cond_f6

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->tracks:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->relevanceCutoff:Ljava/lang/Integer;

    const-string v4, "Don\'t split without a cutoff!"

    invoke-static {v0, v4}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->i:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-virtual {v4, v5}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;->a(Ljava/util/List;)V

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->j:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-interface {v3, v1, v0}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;->a(Ljava/util/List;)V

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->k:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v5

    invoke-interface {v3, v0, v5}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v0

    invoke-virtual {v4, v0}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;->a(Ljava/util/List;)V

    :goto_bd
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->d:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->e:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->f:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/adapter/o;->a([I)V

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->q:[Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    array-length v2, v0

    :goto_e6
    if-ge v1, v2, :cond_106

    aget-object v3, v0, v1

    iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    invoke-virtual {v4, v3}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z

    add-int/lit8 v1, v1, 0x1

    goto :goto_e6

    :cond_f6
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->i:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->j:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;->a(Ljava/util/List;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->k:Lcom/spotify/mobile/android/spotlets/common/adapter/e;

    invoke-virtual {v0, v5}, Lcom/spotify/mobile/android/spotlets/common/adapter/e;->a(Ljava/util/List;)V

    goto :goto_bd

    :cond_106
    return-void
.end method

.method public final a(Lcom/spotify/mobile/android/util/ui/ScrollPosition;)V
    .registers 6

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w()V

    iget v0, p1, Lcom/spotify/mobile/android/util/ui/ScrollPosition;->a:I

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/adapter/o;->getCount()I

    move-result v1

    if-ge v0, v1, :cond_23

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    instance-of v1, v0, Landroid/widget/ListView;

    if-eqz v1, :cond_1d

    check-cast v0, Landroid/widget/ListView;

    iget v1, p1, Lcom/spotify/mobile/android/util/ui/ScrollPosition;->a:I

    iget v2, p1, Lcom/spotify/mobile/android/util/ui/ScrollPosition;->b:I

    invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V

    :goto_1c
    return-void

    :cond_1d
    iget v1, p1, Lcom/spotify/mobile/android/util/ui/ScrollPosition;->a:I

    invoke-virtual {v0, v1}, Landroid/widget/AdapterView;->setSelection(I)V

    goto :goto_1c

    :cond_23
    const-string v0, "Invalid scroll position %d"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    iget v3, p1, Lcom/spotify/mobile/android/util/ui/ScrollPosition;->a:I

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    goto :goto_1c
.end method

.method public final a(Ljava/lang/String;)V
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->d:Lcom/spotify/mobile/android/spotlets/search/adapter/c;

    invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->a(Ljava/lang/String;)V

    return-void
.end method

.method public final a(Z)V
    .registers 6

    const/4 v1, 0x1

    const/4 v3, 0x0

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w()V

    if-eqz p1, :cond_17

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    new-array v1, v1, [I

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->p:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v2

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->d([I)V

    :goto_16
    return-void

    :cond_17
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    new-array v1, v1, [I

    sget-object v2, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->p:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v2

    aput v2, v1, v3

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V

    goto :goto_16
.end method

.method public final a(ZZ)V
    .registers 7

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w()V

    if-eqz p1, :cond_17

    if-eqz p2, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->D:Ljava/lang/Runnable;

    const-wide/16 v2, 0x320

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_10
    :goto_10
    return-void

    :cond_11
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->D:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_10

    :cond_17
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->D:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->r:Lcom/spotify/mobile/android/ui/view/LoadingView;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->r:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->b()V

    goto :goto_10
.end method

.method public final a([Ljava/lang/String;)V
    .registers 4

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->d:Lcom/spotify/mobile/android/spotlets/search/adapter/c;

    const-string v0, "null search queries!"

    invoke-static {p1, v0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->a([Ljava/lang/String;)V

    return-void
.end method

.method public final b(Z)V
    .registers 3

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->a(ZZ)V

    return-void
.end method

.method public final b()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->hasResults()Z

    move-result v0

    if-eqz v0, :cond_e

    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public final c()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->d:Lcom/spotify/mobile/android/spotlets/search/adapter/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public final d()[Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->d:Lcom/spotify/mobile/android/spotlets/search/adapter/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->a()[Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public final e()Lcom/spotify/mobile/android/spotlets/search/model/ResultList;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/spotify/mobile/android/spotlets/search/model/ResultList",
            "<*>;"
        }
    .end annotation

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    if-nez v0, :cond_f

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call with no results!"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_f
    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->l()Z

    move-result v0

    if-nez v0, :cond_1d

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Cannot call if not in drill down"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1d
    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$9;->b:[I

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->u:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_60

    new-instance v0, Ljava/lang/AssertionError;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Cannot call getCurrentResultList with type "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->u:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v0

    :pswitch_41
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->artists:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    :goto_45
    return-object v0

    :pswitch_46
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->albums:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    goto :goto_45

    :pswitch_4b
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->tracks:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    goto :goto_45

    :pswitch_50
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->profiles:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    goto :goto_45

    :pswitch_55
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->playlists:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    goto :goto_45

    :pswitch_5a
    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->genres:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    goto :goto_45

    nop

    :pswitch_data_60
    .packed-switch 0x1
        :pswitch_41
        :pswitch_46
        :pswitch_4b
        :pswitch_50
        :pswitch_55
        :pswitch_5a
    .end packed-switch
.end method

.method final f()Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->u:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->g:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    if-ne v0, v1, :cond_2a

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->tracks:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->relevanceCutoff:Ljava/lang/Integer;

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->tracks:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v0, v0, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->results:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w:Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/model/SearchResults;->tracks:Lcom/spotify/mobile/android/spotlets/search/model/ResultList;

    iget-object v1, v1, Lcom/spotify/mobile/android/spotlets/search/model/ResultList;->relevanceCutoff:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-le v0, v1, :cond_2a

    const/4 v0, 0x1

    :goto_29
    return v0

    :cond_2a
    const/4 v0, 0x0

    goto :goto_29
.end method

.method public final g()V
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->x:Lcom/spotify/mobile/android/util/ui/ScrollPosition;

    invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->a(Lcom/spotify/mobile/android/util/ui/ScrollPosition;)V

    return-void
.end method

.method public final h()Lcom/spotify/mobile/android/spotlets/search/b/e;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->f:Lcom/spotify/mobile/android/spotlets/search/b/e;

    return-object v0
.end method

.method public final i()Lcom/spotify/mobile/android/util/ui/ScrollPosition;
    .registers 3

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w()V

    new-instance v0, Lcom/spotify/mobile/android/util/ui/ScrollPosition;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    invoke-direct {v0, v1}, Lcom/spotify/mobile/android/util/ui/ScrollPosition;-><init>(Landroid/widget/AdapterView;)V

    return-object v0
.end method

.method public final j()I
    .registers 3

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    invoke-virtual {v0}, Landroid/widget/ListView;->getLastVisiblePosition()I

    move-result v0

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    invoke-virtual {v1}, Landroid/widget/ListView;->getFirstVisiblePosition()I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public final k()Z
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->u:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    sget-object v1, Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;->a:Lcom/spotify/mobile/android/spotlets/search/loader/SearchLoader$SearchType;

    if-ne v0, v1, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final l()Z
    .registers 2

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->k()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public final m()Z
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->t:Landroid/view/ViewGroup;

    if-eqz v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public final n()Z
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->r:Lcom/spotify/mobile/android/ui/view/LoadingView;

    if-eqz v0, :cond_11

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->r:Lcom/spotify/mobile/android/ui/view/LoadingView;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->d()Z

    move-result v0

    if-eqz v0, :cond_11

    const/4 v0, 0x1

    :goto_10
    return v0

    :cond_11
    const/4 v0, 0x0

    goto :goto_10
.end method

.method public final o()V
    .registers 2

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->d:Lcom/spotify/mobile/android/spotlets/search/adapter/c;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/search/adapter/c;->b()V

    return-void
.end method

.method public final p()V
    .registers 5

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->o:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->c([I)V

    return-void
.end method

.method public final q()V
    .registers 5

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->n:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->c([I)V

    return-void
.end method

.method public final r()V
    .registers 5

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    const/4 v1, 0x5

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->k:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->m:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->l:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->n:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    aput v3, v1, v2

    const/4 v2, 0x4

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->o:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V

    return-void
.end method

.method public final s()V
    .registers 5

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->A:Landroid/os/Handler;

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->C:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->k:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->c([I)V

    return-void
.end method

.method public final t()V
    .registers 5

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->l:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->c([I)V

    return-void
.end method

.method public final u()V
    .registers 5

    invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->w()V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    const/4 v1, 0x1

    new-array v1, v1, [I

    const/4 v2, 0x0

    sget-object v3, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->m:Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;

    invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager$Section;->ordinal()I

    move-result v3

    aput v3, v1, v2

    invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->c([I)V

    return-void
.end method

.method public final v()V
    .registers 3

    const/4 v1, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->A:Landroid/os/Handler;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->t:Landroid/view/ViewGroup;

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->s:Landroid/widget/ListView;

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->q:Lcom/spotify/android/paste/widget/EmptyView;

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->r:Lcom/spotify/mobile/android/ui/view/LoadingView;

    iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/search/view/SearchViewsManager;->p:Lcom/spotify/mobile/android/ui/adapter/o;

    return-void
.end method
