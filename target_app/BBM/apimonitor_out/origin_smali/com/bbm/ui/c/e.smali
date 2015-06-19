.class final Lcom/bbm/ui/c/e;
.super Ljava/lang/Object;
.source "BlockedContactsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/a;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/a;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/e;->a:Lcom/bbm/ui/c/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "ContactContextSlideMenu BottomItem Clicked"

    const-class v1, Lcom/bbm/ui/c/a;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/e;->a:Lcom/bbm/ui/c/a;

    invoke-virtual {v0}, Lcom/bbm/ui/c/a;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/BlockedContactsActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    iget-object v0, p0, Lcom/bbm/ui/c/e;->a:Lcom/bbm/ui/c/a;

    iget-object v0, v0, Lcom/bbm/ui/c/a;->c:Lcom/bbm/ui/dn;

    invoke-virtual {v0}, Lcom/bbm/ui/dn;->a()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_31

    iget-object v1, p0, Lcom/bbm/ui/c/e;->a:Lcom/bbm/ui/c/a;

    iget-object v1, v1, Lcom/bbm/ui/c/a;->c:Lcom/bbm/ui/dn;

    invoke-virtual {v1}, Lcom/bbm/ui/dn;->c()V

    iget-object v1, p0, Lcom/bbm/ui/c/e;->a:Lcom/bbm/ui/c/a;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/c/a;->a(Ljava/util/List;)V

    :cond_31
    return-void
.end method
