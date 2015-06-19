.class final Lcom/bbm/ui/c/fe;
.super Ljava/lang/Object;
.source "PeopleYouKnowFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/ey;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/ey;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/fe;->a:Lcom/bbm/ui/c/ey;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/c/c;->c()V

    invoke-virtual {p1}, Landroid/widget/AdapterView;->getAdapter()Landroid/widget/Adapter;

    move-result-object v0

    invoke-interface {v0, p3}, Landroid/widget/Adapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/iceberg/j;

    iget-object v1, p0, Lcom/bbm/ui/c/fe;->a:Lcom/bbm/ui/c/ey;

    invoke-static {v1}, Lcom/bbm/ui/c/ey;->j(Lcom/bbm/ui/c/ey;)Z

    iget-object v1, p0, Lcom/bbm/ui/c/fe;->a:Lcom/bbm/ui/c/ey;

    invoke-static {v1}, Lcom/bbm/ui/c/ey;->f(Lcom/bbm/ui/c/ey;)Lcom/bbm/h/aq;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/h/aq;->a(Lcom/bbm/iceberg/j;)V

    return-void
.end method
