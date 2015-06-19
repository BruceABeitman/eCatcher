.class final Lcom/bbm/ui/c/ht;
.super Ljava/lang/Object;
.source "UpdatesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/hk;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/hk;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/ht;->a:Lcom/bbm/ui/c/hk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/c/ht;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->p(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/a/z;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bbm/ui/a/z;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/ew;

    iget-object v1, v0, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;

    sget-object v2, Lcom/bbm/util/ex;->d:Lcom/bbm/util/ex;

    if-ne v1, v2, :cond_21

    iget-object v0, v0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;

    check-cast v0, Lcom/bbm/b/a;

    iget-object v1, p0, Lcom/bbm/ui/c/ht;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v1}, Lcom/bbm/ui/c/hk;->c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/b/e;->a(Lcom/bbm/b/a;Lcom/bbm/ui/activities/MainActivity;)V

    :cond_1f
    :goto_1f
    const/4 v0, 0x1

    :goto_20
    return v0

    :cond_21
    iget-object v1, v0, Lcom/bbm/util/ew;->a:Lcom/bbm/util/ex;

    sget-object v2, Lcom/bbm/util/ex;->e:Lcom/bbm/util/ex;

    if-ne v1, v2, :cond_29

    const/4 v0, 0x0

    goto :goto_20

    :cond_29
    iget-object v1, p0, Lcom/bbm/ui/c/ht;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v1}, Lcom/bbm/ui/c/hk;->m(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/er;

    move-result-object v1

    if-eqz v1, :cond_3b

    iget-object v1, p0, Lcom/bbm/ui/c/ht;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v1}, Lcom/bbm/ui/c/hk;->m(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/er;

    move-result-object v1

    iget-boolean v1, v1, Lcom/bbm/j/k;->k:Z

    if-nez v1, :cond_1f

    :cond_3b
    iget-object v1, p0, Lcom/bbm/ui/c/ht;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v1, v0}, Lcom/bbm/ui/c/hk;->b(Lcom/bbm/ui/c/hk;Lcom/bbm/util/ew;)Lcom/bbm/util/ew;

    iget-object v0, p0, Lcom/bbm/ui/c/ht;->a:Lcom/bbm/ui/c/hk;

    new-instance v1, Lcom/bbm/util/er;

    iget-object v2, p0, Lcom/bbm/ui/c/ht;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v2}, Lcom/bbm/ui/c/hk;->i(Lcom/bbm/ui/c/hk;)Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/c/ht;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v3}, Lcom/bbm/ui/c/hk;->c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;

    move-result-object v3

    iget-object v4, p0, Lcom/bbm/ui/c/ht;->a:Lcom/bbm/ui/c/hk;

    iget-object v5, p0, Lcom/bbm/ui/c/ht;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v5}, Lcom/bbm/ui/c/hk;->n(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/ew;

    move-result-object v5

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/util/er;-><init>(Landroid/content/Context;Lcom/bbm/ui/activities/MainActivity;Landroid/app/Fragment;Lcom/bbm/util/ew;)V

    invoke-static {v0, v1}, Lcom/bbm/ui/c/hk;->a(Lcom/bbm/ui/c/hk;Lcom/bbm/util/er;)Lcom/bbm/util/er;

    iget-object v0, p0, Lcom/bbm/ui/c/ht;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->m(Lcom/bbm/ui/c/hk;)Lcom/bbm/util/er;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/er;->c()V

    goto :goto_1f
.end method
