.class final Lcom/bbm/ui/dp;
.super Ljava/lang/Object;
.source "ListItemTouchHandler.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/widget/AbsListView;

.field final synthetic b:Lcom/bbm/ui/dn;


# direct methods
.method constructor <init>(Lcom/bbm/ui/dn;Landroid/widget/AbsListView;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/dp;->b:Lcom/bbm/ui/dn;

    iput-object p2, p0, Lcom/bbm/ui/dp;->a:Landroid/widget/AbsListView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/dp;->b:Lcom/bbm/ui/dn;

    invoke-static {v0}, Lcom/bbm/ui/dn;->a(Lcom/bbm/ui/dn;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/bbm/ui/dp;->b:Lcom/bbm/ui/dn;

    invoke-static {v0}, Lcom/bbm/ui/dn;->b(Lcom/bbm/ui/dn;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_2c

    iget-object v0, p0, Lcom/bbm/ui/dp;->b:Lcom/bbm/ui/dn;

    invoke-static {v0}, Lcom/bbm/ui/dn;->b(Lcom/bbm/ui/dn;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/ActionMode;

    invoke-virtual {v0}, Landroid/view/ActionMode;->finish()V

    iget-object v0, p0, Lcom/bbm/ui/dp;->b:Lcom/bbm/ui/dn;

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/dn;->a(Lcom/bbm/ui/dn;Lcom/google/b/a/l;)Lcom/google/b/a/l;

    :cond_2c
    iget-object v0, p0, Lcom/bbm/ui/dp;->a:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setChoiceMode(I)V

    iget-object v0, p0, Lcom/bbm/ui/dp;->a:Landroid/widget/AbsListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/AbsListView;->setMultiChoiceModeListener(Landroid/widget/AbsListView$MultiChoiceModeListener;)V

    return-void
.end method
