.class final Lcom/bbm/ui/cv;
.super Landroid/database/DataSetObserver;
.source "IncrementalListAdapter.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/ct;


# direct methods
.method constructor <init>(Lcom/bbm/ui/ct;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/cv;->a:Lcom/bbm/ui/ct;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onChanged()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/cv;->a:Lcom/bbm/ui/ct;

    invoke-static {v0}, Lcom/bbm/ui/ct;->k(Lcom/bbm/ui/ct;)V

    iget-object v0, p0, Lcom/bbm/ui/cv;->a:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->d()V

    invoke-super {p0}, Landroid/database/DataSetObserver;->onChanged()V

    iget-object v0, p0, Lcom/bbm/ui/cv;->a:Lcom/bbm/ui/ct;

    invoke-static {v0}, Lcom/bbm/ui/ct;->l(Lcom/bbm/ui/ct;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyChanged()V

    return-void
.end method

.method public final onInvalidated()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/cv;->a:Lcom/bbm/ui/ct;

    invoke-static {v0}, Lcom/bbm/ui/ct;->k(Lcom/bbm/ui/ct;)V

    iget-object v0, p0, Lcom/bbm/ui/cv;->a:Lcom/bbm/ui/ct;

    invoke-virtual {v0}, Lcom/bbm/ui/ct;->d()V

    invoke-super {p0}, Landroid/database/DataSetObserver;->onInvalidated()V

    iget-object v0, p0, Lcom/bbm/ui/cv;->a:Lcom/bbm/ui/ct;

    invoke-static {v0}, Lcom/bbm/ui/ct;->l(Lcom/bbm/ui/ct;)Landroid/database/DataSetObservable;

    move-result-object v0

    invoke-virtual {v0}, Landroid/database/DataSetObservable;->notifyInvalidated()V

    return-void
.end method
