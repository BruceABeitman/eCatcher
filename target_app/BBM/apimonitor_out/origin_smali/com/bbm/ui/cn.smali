.class final Lcom/bbm/ui/cn;
.super Ljava/lang/Object;
.source "GlympseUserSelector.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/GlympseUserSelector;


# direct methods
.method constructor <init>(Lcom/bbm/ui/GlympseUserSelector;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/cn;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/bbm/ui/cn;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v0}, Lcom/bbm/ui/GlympseUserSelector;->f(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/cp;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bbm/ui/cp;->a(I)Lcom/glympse/android/api/GUser;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/cn;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v1}, Lcom/bbm/ui/GlympseUserSelector;->c(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/GlympseUserSelectorItem;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/cn;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v2}, Lcom/bbm/ui/GlympseUserSelector;->g(Lcom/bbm/ui/GlympseUserSelector;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/cn;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v3}, Lcom/bbm/ui/GlympseUserSelector;->h(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/activities/xo;

    move-result-object v3

    iget-object v4, p0, Lcom/bbm/ui/cn;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v4}, Lcom/bbm/ui/GlympseUserSelector;->i(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/d/es;

    move-result-object v4

    invoke-static {v0, v2, v3, v4}, Lcom/bbm/util/a/k;->a(Lcom/glympse/android/api/GUser;Ljava/util/List;Lcom/bbm/ui/activities/xo;Lcom/bbm/d/es;)I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/bbm/ui/GlympseUserSelectorItem;->setColor(I)V

    iget-object v1, p0, Lcom/bbm/ui/cn;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v1}, Lcom/bbm/ui/GlympseUserSelector;->c(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/GlympseUserSelectorItem;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/ui/GlympseUserSelectorItem;->a(Lcom/glympse/android/api/GUser;)V

    iget-object v0, p0, Lcom/bbm/ui/cn;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v0}, Lcom/bbm/ui/GlympseUserSelector;->c(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/GlympseUserSelectorItem;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bbm/ui/GlympseUserSelectorItem;->setExpanded(Z)V

    iget-object v0, p0, Lcom/bbm/ui/cn;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v0}, Lcom/bbm/ui/GlympseUserSelector;->f(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/cp;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/cp;->notifyDataSetChanged()V

    iget-object v0, p0, Lcom/bbm/ui/cn;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v0}, Lcom/bbm/ui/GlympseUserSelector;->a(Lcom/bbm/ui/GlympseUserSelector;)Landroid/widget/LinearLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/cn;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v0}, Lcom/bbm/ui/GlympseUserSelector;->b(Lcom/bbm/ui/GlympseUserSelector;)Landroid/widget/ImageButton;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setActivated(Z)V

    iget-object v0, p0, Lcom/bbm/ui/cn;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v0}, Lcom/bbm/ui/GlympseUserSelector;->e(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/co;

    move-result-object v0

    if-eqz v0, :cond_74

    iget-object v0, p0, Lcom/bbm/ui/cn;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v0}, Lcom/bbm/ui/GlympseUserSelector;->e(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/co;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/cn;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v1}, Lcom/bbm/ui/GlympseUserSelector;->c(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/GlympseUserSelectorItem;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/ui/GlympseUserSelectorItem;->getUser()Lcom/glympse/android/api/GUser;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/bbm/ui/co;->a(Lcom/glympse/android/api/GUser;)V

    :cond_74
    iget-object v0, p0, Lcom/bbm/ui/cn;->a:Lcom/bbm/ui/GlympseUserSelector;

    invoke-static {v0}, Lcom/bbm/ui/GlympseUserSelector;->d(Lcom/bbm/ui/GlympseUserSelector;)Lcom/bbm/ui/GlympseUserSelectorItem;

    move-result-object v0

    invoke-virtual {v0, v5}, Lcom/bbm/ui/GlympseUserSelectorItem;->setVisibility(I)V

    return-void
.end method
