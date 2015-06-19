.class final Lcom/bbm/ui/dq;
.super Ljava/lang/Object;
.source "ListItemTouchHandler.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/dn;


# direct methods
.method private constructor <init>(Lcom/bbm/ui/dn;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/dq;->a:Lcom/bbm/ui/dn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/bbm/ui/dn;B)V
    .registers 3

    invoke-direct {p0, p1}, Lcom/bbm/ui/dq;-><init>(Lcom/bbm/ui/dn;)V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/dq;->a:Lcom/bbm/ui/dn;

    invoke-static {v0}, Lcom/bbm/ui/dn;->c(Lcom/bbm/ui/dn;)Z

    move-result v0

    if-nez v0, :cond_25

    :try_start_8
    iget-object v0, p0, Lcom/bbm/ui/dq;->a:Lcom/bbm/ui/dn;

    iget-object v1, v0, Lcom/bbm/ui/dn;->a:Lcom/bbm/ui/ds;

    iget-object v0, p0, Lcom/bbm/ui/dq;->a:Lcom/bbm/ui/dn;

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

    invoke-interface {v1, v0}, Lcom/bbm/ui/ds;->a(Ljava/lang/Object;)V
    :try_end_25
    .catch Ljava/lang/ClassCastException; {:try_start_8 .. :try_end_25} :catch_26

    :cond_25
    :goto_25
    return-void

    :catch_26
    move-exception v0

    const-string v1, "Wrong item type expeceted in the list adapter."

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/bbm/x;->b(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V

    goto :goto_25
.end method
