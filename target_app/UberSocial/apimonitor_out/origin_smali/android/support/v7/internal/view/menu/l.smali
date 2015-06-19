.class public Landroid/support/v7/internal/view/menu/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/support/v7/internal/view/menu/ab;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# static fields
.field public static final h:Ljava/lang/String; = "android:menu:list"

.field private static final i:Ljava/lang/String; = "ListMenuPresenter"


# instance fields
.field a:Landroid/content/Context;

.field b:Landroid/view/LayoutInflater;

.field c:Landroid/support/v7/internal/view/menu/n;

.field d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

.field e:I

.field f:I

.field g:Landroid/support/v7/internal/view/menu/m;

.field private j:I

.field private k:Landroid/support/v7/internal/view/menu/ac;

.field private l:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroid/support/v7/internal/view/menu/l;->f:I

    iput p2, p0, Landroid/support/v7/internal/view/menu/l;->e:I

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p2, v0}, Landroid/support/v7/internal/view/menu/l;-><init>(II)V

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/view/LayoutInflater;

    return-void
.end method

.method static synthetic a(Landroid/support/v7/internal/view/menu/l;)I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/l;->j:I

    return v0
.end method


# virtual methods
.method public a(Landroid/view/ViewGroup;)Landroid/support/v7/internal/view/menu/ad;
    .registers 5

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v7/internal/view/menu/m;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/m;-><init>(Landroid/support/v7/internal/view/menu/l;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    :cond_b
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_33

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_30

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/view/LayoutInflater;

    sget v1, Landroid/support/v7/a/k;->abc_expanded_menu_layout:I

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v0, p0}, Landroid/support/v7/internal/view/menu/ExpandedMenuView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    :cond_30
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    :goto_32
    return-object v0

    :cond_33
    const/4 v0, 0x0

    goto :goto_32
.end method

.method public a()Landroid/widget/ListAdapter;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    if-nez v0, :cond_b

    new-instance v0, Landroid/support/v7/internal/view/menu/m;

    invoke-direct {v0, p0}, Landroid/support/v7/internal/view/menu/m;-><init>(Landroid/support/v7/internal/view/menu/l;)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    :cond_b
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    return-object v0
.end method

.method public a(I)V
    .registers 3

    iput p1, p0, Landroid/support/v7/internal/view/menu/l;->j:I

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    if-eqz v0, :cond_a

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/l;->c(Z)V

    :cond_a
    return-void
.end method

.method public a(Landroid/content/Context;Landroid/support/v7/internal/view/menu/n;)V
    .registers 5

    iget v0, p0, Landroid/support/v7/internal/view/menu/l;->e:I

    if-eqz v0, :cond_21

    new-instance v0, Landroid/view/ContextThemeWrapper;

    iget v1, p0, Landroid/support/v7/internal/view/menu/l;->e:I

    invoke-direct {v0, p1, v1}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/view/LayoutInflater;

    :cond_15
    :goto_15
    iput-object p2, p0, Landroid/support/v7/internal/view/menu/l;->c:Landroid/support/v7/internal/view/menu/n;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    if-eqz v0, :cond_20

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->notifyDataSetChanged()V

    :cond_20
    return-void

    :cond_21
    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/content/Context;

    if-eqz v0, :cond_15

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/content/Context;

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/view/LayoutInflater;

    if-nez v0, :cond_15

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->a:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/support/v7/internal/view/menu/l;->b:Landroid/view/LayoutInflater;

    goto :goto_15
.end method

.method public a(Landroid/os/Bundle;)V
    .registers 4

    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/l;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    if-eqz v1, :cond_e

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/l;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->saveHierarchyState(Landroid/util/SparseArray;)V

    :cond_e
    const-string v1, "android:menu:list"

    invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putSparseParcelableArray(Ljava/lang/String;Landroid/util/SparseArray;)V

    return-void
.end method

.method public a(Landroid/os/Parcelable;)V
    .registers 2

    check-cast p1, Landroid/os/Bundle;

    invoke-virtual {p0, p1}, Landroid/support/v7/internal/view/menu/l;->b(Landroid/os/Bundle;)V

    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/ac;)V
    .registers 2

    iput-object p1, p0, Landroid/support/v7/internal/view/menu/l;->k:Landroid/support/v7/internal/view/menu/ac;

    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;Z)V
    .registers 4

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->k:Landroid/support/v7/internal/view/menu/ac;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->k:Landroid/support/v7/internal/view/menu/ac;

    invoke-interface {v0, p1, p2}, Landroid/support/v7/internal/view/menu/ac;->a(Landroid/support/v7/internal/view/menu/n;Z)V

    :cond_9
    return-void
.end method

.method public a(Landroid/support/v7/internal/view/menu/ah;)Z
    .registers 4

    invoke-virtual {p1}, Landroid/support/v7/internal/view/menu/ah;->hasVisibleItems()Z

    move-result v0

    if-nez v0, :cond_8

    const/4 v0, 0x0

    :goto_7
    return v0

    :cond_8
    new-instance v0, Landroid/support/v7/internal/view/menu/q;

    invoke-direct {v0, p1}, Landroid/support/v7/internal/view/menu/q;-><init>(Landroid/support/v7/internal/view/menu/n;)V

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/support/v7/internal/view/menu/q;->a(Landroid/os/IBinder;)V

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->k:Landroid/support/v7/internal/view/menu/ac;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->k:Landroid/support/v7/internal/view/menu/ac;

    invoke-interface {v0, p1}, Landroid/support/v7/internal/view/menu/ac;->b(Landroid/support/v7/internal/view/menu/n;)Z

    :cond_1a
    const/4 v0, 0x1

    goto :goto_7
.end method

.method public a(Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/r;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method b()I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/l;->j:I

    return v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Landroid/support/v7/internal/view/menu/l;->l:I

    return-void
.end method

.method public b(Landroid/os/Bundle;)V
    .registers 4

    const-string v0, "android:menu:list"

    invoke-virtual {p1, v0}, Landroid/os/Bundle;->getSparseParcelableArray(Ljava/lang/String;)Landroid/util/SparseArray;

    move-result-object v0

    if-eqz v0, :cond_d

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/l;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    invoke-virtual {v1, v0}, Landroid/view/View;->restoreHierarchyState(Landroid/util/SparseArray;)V

    :cond_d
    return-void
.end method

.method public b(Landroid/support/v7/internal/view/menu/n;Landroid/support/v7/internal/view/menu/r;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method

.method public c(Z)V
    .registers 3

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    if-eqz v0, :cond_9

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v0}, Landroid/support/v7/internal/view/menu/m;->notifyDataSetChanged()V

    :cond_9
    return-void
.end method

.method public g()Z
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public h()Landroid/os/Parcelable;
    .registers 2

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->d:Landroid/support/v7/internal/view/menu/ExpandedMenuView;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    new-instance v0, Landroid/os/Bundle;

    invoke-direct {v0}, Landroid/os/Bundle;-><init>()V

    invoke-virtual {p0, v0}, Landroid/support/v7/internal/view/menu/l;->a(Landroid/os/Bundle;)V

    goto :goto_5
.end method

.method public i()I
    .registers 2

    iget v0, p0, Landroid/support/v7/internal/view/menu/l;->l:I

    return v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9

    iget-object v0, p0, Landroid/support/v7/internal/view/menu/l;->c:Landroid/support/v7/internal/view/menu/n;

    iget-object v1, p0, Landroid/support/v7/internal/view/menu/l;->g:Landroid/support/v7/internal/view/menu/m;

    invoke-virtual {v1, p3}, Landroid/support/v7/internal/view/menu/m;->a(I)Landroid/support/v7/internal/view/menu/r;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/support/v7/internal/view/menu/n;->a(Landroid/view/MenuItem;I)Z

    return-void
.end method
