.class final Lcom/bbm/ui/c/hq;
.super Ljava/lang/Object;
.source "UpdatesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/hk;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/hk;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/hq;->a:Lcom/bbm/ui/c/hk;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

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

    iget-object v0, p0, Lcom/bbm/ui/c/hq;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v0}, Lcom/bbm/ui/c/hk;->o(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/a/z;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bbm/ui/a/z;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/util/ew;

    iget-object v0, v0, Lcom/bbm/util/ew;->c:Lcom/bbm/d/a/a;

    check-cast v0, Lcom/bbm/d/fz;

    iget-object v1, p0, Lcom/bbm/ui/c/hq;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v1}, Lcom/bbm/ui/c/hk;->c(Lcom/bbm/ui/c/hk;)Lcom/bbm/ui/activities/MainActivity;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/c/hq;->a:Lcom/bbm/ui/c/hk;

    invoke-static {v2}, Lcom/bbm/ui/c/hk;->i(Lcom/bbm/ui/c/hk;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lcom/bbm/util/dy;->a(Lcom/bbm/d/fz;Landroid/app/Activity;Landroid/content/Context;)V

    return-void
.end method
