.class final Lcom/bbm/ui/c/cq;
.super Ljava/lang/Object;
.source "GroupMembersFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:I

.field final synthetic b:Lcom/bbm/g/o;

.field final synthetic c:Lcom/bbm/ui/c/ck;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/ck;ILcom/bbm/g/o;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/c/cq;->c:Lcom/bbm/ui/c/ck;

    iput p2, p0, Lcom/bbm/ui/c/cq;->a:I

    iput-object p3, p0, Lcom/bbm/ui/c/cq;->b:Lcom/bbm/g/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "menu onClick"

    const-class v1, Lcom/bbm/ui/c/ck;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/cq;->c:Lcom/bbm/ui/c/ck;

    invoke-virtual {v0}, Lcom/bbm/ui/c/ck;->getActivity()Landroid/app/Activity;

    move-result-object v0

    if-eqz v0, :cond_23

    invoke-virtual {v0}, Landroid/app/Activity;->isFinishing()Z

    move-result v1

    if-nez v1, :cond_23

    instance-of v1, v0, Lcom/bbm/ui/activities/ev;

    if-eqz v1, :cond_23

    check-cast v0, Lcom/bbm/ui/activities/ev;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    :cond_23
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bbm/ui/c/cr;

    invoke-direct {v1, p0}, Lcom/bbm/ui/c/cr;-><init>(Lcom/bbm/ui/c/cq;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
