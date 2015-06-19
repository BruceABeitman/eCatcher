.class final Lcom/bbm/b/l;
.super Ljava/lang/Object;
.source "AdUtils.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/b/o;

.field final synthetic b:Lcom/bbm/b/k;


# direct methods
.method constructor <init>(Lcom/bbm/b/k;Lcom/bbm/ui/b/o;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/b/l;->b:Lcom/bbm/b/k;

    iput-object p2, p0, Lcom/bbm/b/l;->a:Lcom/bbm/ui/b/o;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 6

    iget-object v0, p0, Lcom/bbm/b/l;->a:Lcom/bbm/ui/b/o;

    invoke-virtual {v0}, Lcom/bbm/ui/b/o;->dismiss()V

    iget-object v0, p0, Lcom/bbm/b/l;->b:Lcom/bbm/b/k;

    iget-object v0, v0, Lcom/bbm/b/k;->a:Lcom/bbm/ui/activities/MainActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;

    move-result-object v0

    sget-object v1, Lcom/bbm/b/z;->a:Lcom/bbm/b/z;

    iget-object v2, p0, Lcom/bbm/b/l;->b:Lcom/bbm/b/k;

    iget-object v2, v2, Lcom/bbm/b/k;->b:Lcom/bbm/b/a;

    iget-object v2, v2, Lcom/bbm/b/a;->h:Ljava/lang/String;

    new-instance v3, Lcom/bbm/b/y;

    invoke-direct {v3, v1, v2}, Lcom/bbm/b/y;-><init>(Lcom/bbm/b/z;Ljava/lang/String;)V

    invoke-virtual {v0, v3}, Lcom/bbm/b/q;->a(Lcom/bbm/b/ak;)V

    return-void
.end method
