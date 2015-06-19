.class public final Lcom/bbm/ui/dn;
.super Ljava/lang/Object;
.source "ListItemTouchHandler.java"

# interfaces
.implements Landroid/widget/AbsListView$MultiChoiceModeListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Landroid/widget/AbsListView$MultiChoiceModeListener;"
    }
.end annotation


# instance fields
.field a:Lcom/bbm/ui/ds;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/ui/ds",
            "<TT;>;"
        }
    .end annotation
.end field

.field private final b:I

.field private c:Lcom/google/b/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/a/l",
            "<",
            "Landroid/view/ActionMode;",
            ">;"
        }
    .end annotation
.end field

.field private final d:Lcom/bbm/ui/CustomActionModeLayout;

.field private final e:Lcom/bbm/ui/dt;

.field private final f:Lcom/bbm/ui/au;

.field private g:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Landroid/widget/AbsListView;",
            ">;"
        }
    .end annotation
.end field

.field private h:Z


# direct methods
.method public constructor <init>(Lcom/bbm/ui/ds;ILandroid/widget/AbsListView;Lcom/bbm/ui/dt;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/ui/ds",
            "<TT;>;I",
            "Landroid/widget/AbsListView;",
            "Lcom/bbm/ui/dt;",
            ")V"
        }
    .end annotation

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/dn;->c:Lcom/google/b/a/l;

    new-instance v0, Lcom/bbm/ui/do;

    invoke-direct {v0, p0}, Lcom/bbm/ui/do;-><init>(Lcom/bbm/ui/dn;)V

    iput-object v0, p0, Lcom/bbm/ui/dn;->f:Lcom/bbm/ui/au;

    new-instance v0, Ljava/lang/ref/WeakReference;

    const/4 v3, 0x0

    invoke-direct {v0, v3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/ui/dn;->g:Ljava/lang/ref/WeakReference;

    iput-boolean v2, p0, Lcom/bbm/ui/dn;->h:Z

    const-string v0, "ListItemTouchHandler created"

    new-array v3, v2, [Ljava/lang/Object;

    invoke-static {v0, v3}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iput p2, p0, Lcom/bbm/ui/dn;->b:I

    iput-object p1, p0, Lcom/bbm/ui/dn;->a:Lcom/bbm/ui/ds;

    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p3}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/bbm/ui/dn;->g:Ljava/lang/ref/WeakReference;

    check-cast p1, Landroid/app/Fragment;

    invoke-virtual {p1}, Landroid/app/Fragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    new-instance v3, Lcom/bbm/ui/CustomActionModeLayout;

    invoke-direct {v3, v0}, Lcom/bbm/ui/CustomActionModeLayout;-><init>(Landroid/content/Context;)V

    iput-object v3, p0, Lcom/bbm/ui/dn;->d:Lcom/bbm/ui/CustomActionModeLayout;

    iget-object v0, p0, Lcom/bbm/ui/dn;->d:Lcom/bbm/ui/CustomActionModeLayout;

    iget-object v3, p0, Lcom/bbm/ui/dn;->f:Lcom/bbm/ui/au;

    invoke-virtual {v0, v3}, Lcom/bbm/ui/CustomActionModeLayout;->setListener(Lcom/bbm/ui/au;)V

    iput-object p4, p0, Lcom/bbm/ui/dn;->e:Lcom/bbm/ui/dt;

    invoke-virtual {p3}, Landroid/widget/AbsListView;->getOnItemClickListener()Landroid/widget/AdapterView$OnItemClickListener;

    move-result-object v0

    if-nez v0, :cond_6c

    move v0, v1

    :goto_4b
    const-string v3, "don\'t use the list\'s click handler, use ListItemTouchHandler.Delegate instead"

    invoke-static {v0, v3}, Lcom/google/b/a/o;->b(ZLjava/lang/Object;)V

    new-instance v0, Lcom/bbm/ui/dq;

    invoke-direct {v0, p0, v2}, Lcom/bbm/ui/dq;-><init>(Lcom/bbm/ui/dn;B)V

    invoke-virtual {p3, v0}, Landroid/widget/AbsListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    invoke-virtual {p3}, Landroid/widget/AbsListView;->getOnItemLongClickListener()Landroid/widget/AdapterView$OnItemLongClickListener;

    move-result-object v0

    if-nez v0, :cond_6e

    :goto_5e
    const-string v0, "don\'t use the list\'s long-click handler, use ListItemTouchHandler.Delegate instead"

    invoke-static {v1, v0}, Lcom/google/b/a/o;->b(ZLjava/lang/Object;)V

    new-instance v0, Lcom/bbm/ui/dr;

    invoke-direct {v0, p0, v2}, Lcom/bbm/ui/dr;-><init>(Lcom/bbm/ui/dn;B)V

    invoke-virtual {p3, v0}, Landroid/widget/AbsListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    return-void

    :cond_6c
    move v0, v2

    goto :goto_4b

    :cond_6e
    move v1, v2

    goto :goto_5e
.end method

.method static synthetic a(Lcom/bbm/ui/dn;Lcom/google/b/a/l;)Lcom/google/b/a/l;
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/dn;->c:Lcom/google/b/a/l;

    return-object p1
.end method

.method static synthetic a(Lcom/bbm/ui/dn;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/dn;->h:Z

    return v0
.end method

.method static synthetic b(Lcom/bbm/ui/dn;)Lcom/google/b/a/l;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/dn;->c:Lcom/google/b/a/l;

    return-object v0
.end method

.method static synthetic c(Lcom/bbm/ui/dn;)Z
    .registers 2

    iget-boolean v0, p0, Lcom/bbm/ui/dn;->h:Z

    return v0
.end method

.method static synthetic d(Lcom/bbm/ui/dn;)Ljava/lang/ref/WeakReference;
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/dn;->g:Ljava/lang/ref/WeakReference;

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/util/List;
    .registers 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<TT;>;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iget-object v0, p0, Lcom/bbm/ui/dn;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_53

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getCheckedItemIds()[J

    move-result-object v6

    array-length v7, v6

    move v4, v3

    :goto_16
    if-ge v4, v7, :cond_53

    aget-wide v8, v6, v4

    move v2, v3

    :goto_1b
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v1

    if-ge v2, v1, :cond_42

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItemId(I)J

    move-result-wide v10

    cmp-long v1, v8, v10

    if-nez v1, :cond_4f

    :try_start_35
    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-interface {v1, v2}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    invoke-interface {v5, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_42
    .catch Ljava/lang/ClassCastException; {:try_start_35 .. :try_end_42} :catch_46

    :cond_42
    :goto_42
    add-int/lit8 v1, v4, 0x1

    move v4, v1

    goto :goto_16

    :catch_46
    move-exception v1

    const-string v2, "ListItemTouchHandler could not cast for getSelection"

    new-array v8, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v8}, Lcom/bbm/x;->b(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_42

    :cond_4f
    add-int/lit8 v1, v2, 0x1

    move v2, v1

    goto :goto_1b

    :cond_53
    return-object v5
.end method

.method public final a(Landroid/widget/AbsListView;)V
    .registers 7

    const/4 v4, 0x0

    const/4 v3, 0x1

    invoke-virtual {p1}, Landroid/widget/AbsListView;->getCheckedItemPosition()I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_11

    const-string v0, "could not activateSelectionMode no item checked."

    new-array v1, v4, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    :cond_10
    :goto_10
    return-void

    :cond_11
    const-string v1, "activateSelectionMode with listview %s"

    new-array v2, v3, [Ljava/lang/Object;

    aput-object p1, v2, v4

    invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iput-boolean v3, p0, Lcom/bbm/ui/dn;->h:Z

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    invoke-virtual {p1, v0, v3}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    invoke-virtual {p1, p0}, Landroid/widget/AbsListView;->startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;

    iget-object v0, p0, Lcom/bbm/ui/dn;->e:Lcom/bbm/ui/dt;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bbm/ui/dn;->e:Lcom/bbm/ui/dt;

    invoke-interface {v0, v3}, Lcom/bbm/ui/dt;->a(Z)V

    goto :goto_10
.end method

.method public final b()V
    .registers 4

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/bbm/ui/dn;->h:Z

    if-eqz v0, :cond_1a

    const-string v0, "exit selection mode."

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iput-boolean v2, p0, Lcom/bbm/ui/dn;->h:Z

    invoke-virtual {p0}, Lcom/bbm/ui/dn;->c()V

    iget-object v0, p0, Lcom/bbm/ui/dn;->e:Lcom/bbm/ui/dt;

    if-eqz v0, :cond_1a

    iget-object v0, p0, Lcom/bbm/ui/dn;->e:Lcom/bbm/ui/dt;

    invoke-interface {v0, v2}, Lcom/bbm/ui/dt;->a(Z)V

    :cond_1a
    return-void
.end method

.method public final c()V
    .registers 5

    const/4 v2, 0x0

    iget-boolean v0, p0, Lcom/bbm/ui/dn;->h:Z

    if-eqz v0, :cond_6

    :cond_5
    :goto_5
    return-void

    :cond_6
    const-string v0, "ListItemTouchHandler clearCheckedItems"

    new-array v1, v2, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/dn;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    if-eqz v0, :cond_5

    invoke-virtual {v0}, Landroid/widget/AbsListView;->clearChoices()V

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v1

    check-cast v1, Landroid/widget/ListAdapter;

    invoke-interface {v1}, Landroid/widget/ListAdapter;->getCount()I

    move-result v3

    move v1, v2

    :goto_25
    if-ge v1, v3, :cond_2d

    invoke-virtual {v0, v1, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_25

    :cond_2d
    new-instance v1, Lcom/bbm/ui/dp;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/dp;-><init>(Lcom/bbm/ui/dn;Landroid/widget/AbsListView;)V

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->post(Ljava/lang/Runnable;)Z

    goto :goto_5
.end method

.method public final onActionItemClicked(Landroid/view/ActionMode;Landroid/view/MenuItem;)Z
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/dn;->a:Lcom/bbm/ui/ds;

    invoke-interface {v0, p2}, Lcom/bbm/ui/ds;->a(Landroid/view/MenuItem;)Z

    move-result v0

    return v0
.end method

.method public final onCreateActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 7

    const/4 v3, 0x1

    const-string v0, "onCreateActionMode %s"

    new-array v1, v3, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p1}, Landroid/view/ActionMode;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    iget v1, p0, Lcom/bbm/ui/dn;->b:I

    invoke-virtual {v0, v1, p2}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    invoke-static {p1}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/dn;->c:Lcom/google/b/a/l;

    iget-object v0, p0, Lcom/bbm/ui/dn;->c:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ActionMode;

    iget-object v1, p0, Lcom/bbm/ui/dn;->d:Lcom/bbm/ui/CustomActionModeLayout;

    invoke-virtual {v0, v1}, Landroid/view/ActionMode;->setCustomView(Landroid/view/View;)V

    return v3
.end method

.method public final onDestroyActionMode(Landroid/view/ActionMode;)V
    .registers 5

    const-string v0, "Action mode %s destroyed"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-virtual {p0}, Lcom/bbm/ui/dn;->b()V

    return-void
.end method

.method public final onItemCheckedStateChanged(Landroid/view/ActionMode;IJZ)V
    .registers 10

    const-string v0, "onItemCheckedStateChanged %s, %d, %d, %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 v2, 0x1

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-static {p5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    iget-object v0, p0, Lcom/bbm/ui/dn;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p2, p5}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    return-void
.end method

.method public final onPrepareActionMode(Landroid/view/ActionMode;Landroid/view/Menu;)Z
    .registers 4

    const/4 v0, 0x0

    return v0
.end method
