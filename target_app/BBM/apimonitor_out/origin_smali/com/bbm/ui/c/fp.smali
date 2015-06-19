.class final Lcom/bbm/ui/c/fp;
.super Ljava/lang/Object;
.source "SlideMenuFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/fm;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/fm;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/fp;->a:Lcom/bbm/ui/c/fm;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "Root Clicked"

    const-class v1, Lcom/bbm/ui/c/fm;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/ui/c/fp;->a:Lcom/bbm/ui/c/fm;

    invoke-virtual {v0}, Lcom/bbm/ui/c/fm;->getActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Lcom/bbm/ui/activities/ev;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    return-void
.end method
