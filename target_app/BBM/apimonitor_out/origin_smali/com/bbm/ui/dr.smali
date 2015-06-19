.class final Lcom/bbm/ui/dr;
.super Ljava/lang/Object;
.source "ListItemTouchHandler.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/dn;


# direct methods
.method private constructor <init>(Lcom/bbm/ui/dn;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/dr;->a:Lcom/bbm/ui/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbm/ui/dn;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/ui/dr;-><init>(Lcom/bbm/ui/dn;)V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/bbm/ui/dr;->a:Lcom/bbm/ui/dn;

    invoke-static {v0}, Lcom/bbm/ui/dn;->c(Lcom/bbm/ui/dn;)Z

    move-result v0

    if-eqz v0, :cond_b

    const/4 v0, 0x0

    :goto_a
    return v0

    :cond_b
    iget-object v0, p0, Lcom/bbm/ui/dr;->a:Lcom/bbm/ui/dn;

    iget-object v1, v0, Lcom/bbm/ui/dn;->a:Lcom/bbm/ui/ds;

    iget-object v0, p0, Lcom/bbm/ui/dr;->a:Lcom/bbm/ui/dn;

    invoke-static {v0}, Lcom/bbm/ui/dn;->d(Lcom/bbm/ui/dn;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0}, Landroid/widget/AbsListView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    check-cast v0, Landroid/widget/ListAdapter;

    invoke-interface {v0, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v1, v0}, Lcom/bbm/ui/ds;->b(Ljava/lang/Object;)Z

    move-result v1

    iget-object v0, p0, Lcom/bbm/ui/dr;->a:Lcom/bbm/ui/dn;

    invoke-static {v0}, Lcom/bbm/ui/dn;->d(Lcom/bbm/ui/dn;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, v2}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/bbm/ui/dr;->a:Lcom/bbm/ui/dn;

    invoke-static {v0}, Lcom/bbm/ui/dn;->d(Lcom/bbm/ui/dn;)Ljava/lang/ref/WeakReference;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/AbsListView;

    invoke-virtual {v0, p3, v2}, Landroid/widget/AbsListView;->setItemChecked(IZ)V

    move v0, v1

    goto :goto_a
.end method
