.class public abstract Lcom/bbm/ui/gk;
.super Landroid/widget/BaseAdapter;
.source "StickyHeaderHelper.java"

# interfaces
.implements Lcom/tonicartos/widget/stickygridheaders/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        "K:",
        "Ljava/lang/Object;",
        "Sk:",
        "Ljava/lang/Object;",
        ">",
        "Landroid/widget/BaseAdapter;",
        "Lcom/tonicartos/widget/stickygridheaders/a;"
    }
.end annotation


# instance fields
.field public a:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/gp",
            "<TT;TSk;>;>;"
        }
    .end annotation
.end field

.field final b:Lcom/bbm/ui/gb;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/ui/gb",
            "<TK;>;"
        }
    .end annotation
.end field

.field c:[Ljava/lang/Object;

.field public d:Lcom/bbm/ui/ct;

.field public e:[I

.field private final f:Lcom/bbm/j/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/gp",
            "<TT;TSk;>;>;>;"
        }
    .end annotation
.end field

.field private g:Z

.field private final h:Lcom/bbm/j/h;

.field private final i:Ljava/lang/Runnable;

.field private j:Lcom/bbm/ui/dy;

.field private k:Lcom/bbm/ui/dy;

.field private final l:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TSk;",
            "Lcom/bbm/ui/gp",
            "<TT;TSk;>;>;"
        }
    .end annotation
.end field

.field private m:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<TSk;",
            "Lcom/bbm/util/cr",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private final n:Lcom/bbm/util/dc;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Lcom/bbm/j/r",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/bbm/ui/gp",
            "<TT;TSk;>;>;>;",
            "Lcom/bbm/util/dc;",
            ")V"
        }
    .end annotation

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/bbm/ui/gk;->g:Z

    new-instance v0, Lcom/bbm/ui/gb;

    invoke-direct {v0}, Lcom/bbm/ui/gb;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/gk;->b:Lcom/bbm/ui/gb;

    new-instance v0, Lcom/bbm/ui/gl;

    invoke-direct {v0, p0}, Lcom/bbm/ui/gl;-><init>(Lcom/bbm/ui/gk;)V

    iput-object v0, p0, Lcom/bbm/ui/gk;->h:Lcom/bbm/j/h;

    new-instance v0, Lcom/bbm/ui/gm;

    invoke-direct {v0, p0}, Lcom/bbm/ui/gm;-><init>(Lcom/bbm/ui/gk;)V

    iput-object v0, p0, Lcom/bbm/ui/gk;->i:Ljava/lang/Runnable;

    new-instance v0, Lcom/bbm/ui/gn;

    invoke-direct {v0, p0}, Lcom/bbm/ui/gn;-><init>(Lcom/bbm/ui/gk;)V

    iput-object v0, p0, Lcom/bbm/ui/gk;->j:Lcom/bbm/ui/dy;

    new-instance v0, Lcom/bbm/ui/go;

    invoke-direct {v0, p0}, Lcom/bbm/ui/go;-><init>(Lcom/bbm/ui/gk;)V

    iput-object v0, p0, Lcom/bbm/ui/gk;->k:Lcom/bbm/ui/dy;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/gk;->l:Ljava/util/Map;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/bbm/ui/gk;->m:Ljava/util/Map;

    iput-object p2, p0, Lcom/bbm/ui/gk;->f:Lcom/bbm/j/r;

    iget-object v0, p0, Lcom/bbm/ui/gk;->f:Lcom/bbm/j/r;

    iget-object v1, p0, Lcom/bbm/ui/gk;->h:Lcom/bbm/j/h;

    invoke-interface {v0, v1}, Lcom/bbm/j/r;->a(Lcom/bbm/j/h;)V

    new-instance v0, Lcom/bbm/ui/ct;

    iget-object v1, p0, Lcom/bbm/ui/gk;->j:Lcom/bbm/ui/dy;

    invoke-direct {v0, p1, v1}, Lcom/bbm/ui/ct;-><init>(Landroid/content/Context;Landroid/widget/ListAdapter;)V

    iput-object v0, p0, Lcom/bbm/ui/gk;->d:Lcom/bbm/ui/ct;

    iput-object p3, p0, Lcom/bbm/ui/gk;->n:Lcom/bbm/util/dc;

    invoke-direct {p0}, Lcom/bbm/ui/gk;->g()V

    return-void
.end method

.method static synthetic a(Lcom/bbm/ui/gk;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/gk;->g:Z

    return v0
.end method

.method static synthetic a(Lcom/bbm/ui/gk;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/bbm/ui/gk;->g:Z

    return p1
.end method

.method static synthetic b(Lcom/bbm/ui/gk;)Ljava/lang/Runnable;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/gk;->i:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/gk;)Lcom/bbm/util/dc;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/gk;->n:Lcom/bbm/util/dc;

    return-object v0
.end method

.method static synthetic d(Lcom/bbm/ui/gk;)Ljava/util/List;
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/bbm/ui/gk;->a:Ljava/util/List;

    return-object v0
.end method

.method static synthetic e(Lcom/bbm/ui/gk;)V
    .registers 1

    invoke-direct {p0}, Lcom/bbm/ui/gk;->g()V

    return-void
.end method

.method static synthetic f(Lcom/bbm/ui/gk;)Lcom/bbm/ui/dy;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/gk;->k:Lcom/bbm/ui/dy;

    return-object v0
.end method

.method private g()V
    .registers 10

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/ui/gk;->a:Ljava/util/List;

    if-nez v0, :cond_e5

    :try_start_5
    iget-object v0, p0, Lcom/bbm/ui/gk;->f:Lcom/bbm/j/r;

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    iput-object v0, p0, Lcom/bbm/ui/gk;->a:Ljava/util/List;
    :try_end_f
    .catch Lcom/bbm/j/z; {:try_start_5 .. :try_end_f} :catch_e6

    :goto_f
    iget-object v0, p0, Lcom/bbm/ui/gk;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_16
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2b

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/gp;

    iget-object v0, v0, Lcom/bbm/ui/gp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    add-int/2addr v0, v1

    move v1, v0

    goto :goto_16

    :cond_2b
    new-array v4, v1, [Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/ui/gk;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move v1, v2

    :goto_34
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_59

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/gp;

    iget-object v0, v0, Lcom/bbm/ui/gp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move v0, v1

    :goto_47
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_57

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v1, v0, 0x1

    aput-object v6, v4, v0

    move v0, v1

    goto :goto_47

    :cond_57
    move v1, v0

    goto :goto_34

    :cond_59
    new-instance v5, Ljava/util/ArrayList;

    array-length v0, v4

    invoke-direct {v5, v0}, Ljava/util/ArrayList;-><init>(I)V

    array-length v1, v4

    move v0, v2

    :goto_61
    if-ge v0, v1, :cond_6f

    aget-object v3, v4, v0

    invoke-virtual {p0, v3}, Lcom/bbm/ui/gk;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v0, 0x1

    goto :goto_61

    :cond_6f
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    iget-object v0, p0, Lcom/bbm/ui/gk;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    move v3, v2

    :goto_7a
    iget-object v0, p0, Lcom/bbm/ui/gk;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v3, v0, :cond_b7

    iget-object v0, p0, Lcom/bbm/ui/gk;->a:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcom/bbm/ui/gp;

    iget-object v7, v1, Lcom/bbm/ui/gp;->b:Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/ui/gk;->l:Ljava/util/Map;

    invoke-interface {v0, v7, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    invoke-interface {v6, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/cr;

    if-nez v0, :cond_a3

    new-instance v0, Lcom/bbm/util/cr;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-direct {v0, v8}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    :cond_a3
    iget-object v1, v1, Lcom/bbm/ui/gp;->a:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    invoke-interface {v6, v7, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    add-int/lit8 v0, v3, 0x1

    move v3, v0

    goto :goto_7a

    :cond_b7
    iget-object v0, p0, Lcom/bbm/ui/gk;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    new-array v1, v0, [I

    :goto_bf
    iget-object v0, p0, Lcom/bbm/ui/gk;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_da

    iget-object v0, p0, Lcom/bbm/ui/gk;->a:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/gp;

    iget-object v0, v0, Lcom/bbm/ui/gp;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    aput v0, v1, v2

    add-int/lit8 v2, v2, 0x1

    goto :goto_bf

    :cond_da
    iput-object v1, p0, Lcom/bbm/ui/gk;->e:[I

    iput-object v6, p0, Lcom/bbm/ui/gk;->m:Ljava/util/Map;

    iget-object v0, p0, Lcom/bbm/ui/gk;->b:Lcom/bbm/ui/gb;

    invoke-virtual {v0, v5}, Lcom/bbm/ui/gb;->a(Ljava/util/List;)V

    iput-object v4, p0, Lcom/bbm/ui/gk;->c:[Ljava/lang/Object;

    :cond_e5
    return-void

    :catch_e6
    move-exception v0

    goto/16 :goto_f
.end method


# virtual methods
.method public final a(I)I
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/gk;->e:[I

    aget v0, v0, p1

    return v0
.end method

.method public abstract a()Landroid/view/View;
.end method

.method public final a(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/gk;->k:Lcom/bbm/ui/dy;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bbm/ui/dy;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public abstract a(Landroid/view/ViewGroup;I)Landroid/view/View;
.end method

.method public abstract a(Ljava/lang/Object;)Ljava/lang/Object;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)TK;"
        }
    .end annotation
.end method

.method public abstract a(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TSk;)V"
        }
    .end annotation
.end method

.method public final a(Lcom/bbm/ui/cx;)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/gk;->d:Lcom/bbm/ui/ct;

    invoke-static {p1}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v1

    iput-object v1, v0, Lcom/bbm/ui/ct;->e:Lcom/google/b/a/l;

    return-void
.end method

.method public final b()I
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/gk;->e:[I

    array-length v0, v0

    return v0
.end method

.method public final b(Ljava/lang/Object;)I
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TSk;)I"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/gk;->m:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/cr;

    if-nez v0, :cond_19

    new-instance v0, Lcom/bbm/util/cr;

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    iget-object v1, p0, Lcom/bbm/ui/gk;->m:Ljava/util/Map;

    invoke-interface {v1, p1, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_19
    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public final b(I)V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/gk;->d:Lcom/bbm/ui/ct;

    iput p1, v0, Lcom/bbm/ui/ct;->h:I

    return-void
.end method

.method public abstract b(Landroid/view/View;Ljava/lang/Object;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/View;",
            "TT;)V"
        }
    .end annotation
.end method

.method public final c()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/gk;->d:Lcom/bbm/ui/ct;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bbm/ui/ct;->d:Z

    return-void
.end method

.method public final d()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/gk;->d:Lcom/bbm/ui/ct;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcom/bbm/ui/ct;->g:Z

    return-void
.end method

.method public final e()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/gk;->d:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->b()V

    iget-object v0, p0, Lcom/bbm/ui/gk;->j:Lcom/bbm/ui/dy;

    invoke-virtual {v0}, Lcom/bbm/ui/dy;->b()V

    iget-object v0, p0, Lcom/bbm/ui/gk;->k:Lcom/bbm/ui/dy;

    invoke-virtual {v0}, Lcom/bbm/ui/dy;->b()V

    return-void
.end method

.method public final f()V
    .registers 4

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/bbm/ui/gk;->d:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->e()V

    iget-object v0, p0, Lcom/bbm/ui/gk;->f:Lcom/bbm/j/r;

    iget-object v1, p0, Lcom/bbm/ui/gk;->h:Lcom/bbm/j/h;

    invoke-interface {v0, v1}, Lcom/bbm/j/r;->b(Lcom/bbm/j/h;)V

    iget-object v0, p0, Lcom/bbm/ui/gk;->f:Lcom/bbm/j/r;

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iget-object v0, p0, Lcom/bbm/ui/gk;->a:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    iput-object v2, p0, Lcom/bbm/ui/gk;->c:[Ljava/lang/Object;

    iput-object v2, p0, Lcom/bbm/ui/gk;->j:Lcom/bbm/ui/dy;

    iput-object v2, p0, Lcom/bbm/ui/gk;->k:Lcom/bbm/ui/dy;

    iput-object v2, p0, Lcom/bbm/ui/gk;->d:Lcom/bbm/ui/ct;

    iget-object v0, p0, Lcom/bbm/ui/gk;->m:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    iget-object v0, p0, Lcom/bbm/ui/gk;->l:Ljava/util/Map;

    invoke-interface {v0}, Ljava/util/Map;->clear()V

    return-void
.end method

.method public final getCount()I
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/gk;->c:[Ljava/lang/Object;

    array-length v0, v0

    return v0
.end method

.method public final getItem(I)Ljava/lang/Object;
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)TT;"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/gk;->c:[Ljava/lang/Object;

    aget-object v0, v0, p1

    return-object v0
.end method

.method public final getItemId(I)J
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/gk;->b:Lcom/bbm/ui/gb;

    iget-object v0, v0, Lcom/bbm/ui/gb;->a:[J

    aget-wide v0, v0, p1

    return-wide v0
.end method

.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/gk;->d:Lcom/bbm/ui/ct;

    invoke-virtual {v0, p1, p2, p3}, Lcom/bbm/ui/ct;->getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public final hasStableIds()Z
    .registers 2

    const/4 v0, 0x1

    return v0
.end method
