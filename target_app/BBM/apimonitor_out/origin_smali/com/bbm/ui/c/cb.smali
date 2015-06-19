.class final Lcom/bbm/ui/c/cb;
.super Ljava/lang/Object;
.source "ContactsFragment.java"

# interfaces
.implements Lcom/tonicartos/widget/stickygridheaders/j;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/bm;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/bm;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/cb;->a:Lcom/bbm/ui/c/bm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(J)Z
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(J)Z"
        }
    .end annotation

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/bbm/ui/c/cb;->a:Lcom/bbm/ui/c/bm;

    invoke-virtual {v0}, Lcom/bbm/ui/c/bm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/MainActivity;

    if-eqz v0, :cond_16

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    iget-object v0, v0, Lcom/slidingmenu/lib/SlidingMenu;->a:Lcom/slidingmenu/lib/CustomViewAbove;

    iget-boolean v0, v0, Lcom/slidingmenu/lib/CustomViewAbove;->b:Z

    if-eqz v0, :cond_16

    :goto_15
    return v2

    :cond_16
    const-string v0, "onHeaderLongClick"

    const-class v1, Lcom/bbm/ui/c/bm;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/cb;->a:Lcom/bbm/ui/c/bm;

    invoke-static {v0, p1, p2}, Lcom/bbm/ui/c/bm;->a(Lcom/bbm/ui/c/bm;J)J

    iget-object v0, p0, Lcom/bbm/ui/c/cb;->a:Lcom/bbm/ui/c/bm;

    iget-object v0, v0, Lcom/bbm/ui/c/bm;->e:Lcom/bbm/j/u;

    invoke-virtual {v0}, Lcom/bbm/j/u;->c()V

    goto :goto_15
.end method
