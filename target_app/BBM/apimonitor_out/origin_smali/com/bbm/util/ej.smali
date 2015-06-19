.class final Lcom/bbm/util/ej;
.super Ljava/lang/Object;
.source "UpdatesFragmentUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/bbm/d/gp;

.field final synthetic c:Lcom/bbm/d/ga;

.field final synthetic d:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/bbm/d/gp;Lcom/bbm/d/ga;Landroid/view/View;)V
    .registers 5

    iput-object p1, p0, Lcom/bbm/util/ej;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bbm/util/ej;->b:Lcom/bbm/d/gp;

    iput-object p3, p0, Lcom/bbm/util/ej;->c:Lcom/bbm/d/ga;

    iput-object p4, p0, Lcom/bbm/util/ej;->d:Landroid/view/View;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    const-string v0, "ContactContextMenu bottom item clicked"

    const-class v1, Lcom/bbm/util/dy;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/util/ej;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bbm/ui/activities/MainActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    new-instance v1, Lcom/bbm/util/ek;

    invoke-direct {v1, p0}, Lcom/bbm/util/ek;-><init>(Lcom/bbm/util/ej;)V

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
