.class public final Lcom/bbm/ui/activities/wg;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/bbm/ui/c/fq;


# instance fields
.field final synthetic a:Lcom/bbm/d/ea;

.field final synthetic b:Lcom/bbm/j/w;

.field final synthetic c:Lcom/bbm/ui/activities/MainActivity;


# direct methods
.method public constructor <init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/d/ea;Lcom/bbm/j/w;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/ui/activities/wg;->c:Lcom/bbm/ui/activities/MainActivity;

    iput-object p2, p0, Lcom/bbm/ui/activities/wg;->a:Lcom/bbm/d/ea;

    iput-object p3, p0, Lcom/bbm/ui/activities/wg;->b:Lcom/bbm/j/w;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
    .registers 6

    if-eqz p1, :cond_7

    iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I

    packed-switch v0, :pswitch_data_30

    :cond_7
    :goto_7
    :pswitch_7
    iget-object v0, p0, Lcom/bbm/ui/activities/wg;->c:Lcom/bbm/ui/activities/MainActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    return-void

    :pswitch_12
    iget-object v0, p0, Lcom/bbm/ui/activities/wg;->c:Lcom/bbm/ui/activities/MainActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/wg;->a:Lcom/bbm/d/ea;

    new-instance v2, Lcom/bbm/ui/activities/wh;

    invoke-direct {v2, p0}, Lcom/bbm/ui/activities/wh;-><init>(Lcom/bbm/ui/activities/wg;)V

    invoke-static {v0, v1, v2}, Lcom/bbm/ui/activities/SelectCategoryActivity;->a(Landroid/content/Context;Lcom/bbm/d/ea;Landroid/content/DialogInterface$OnDismissListener;)V

    goto :goto_7

    :pswitch_1f
    iget-object v1, p0, Lcom/bbm/ui/activities/wg;->c:Lcom/bbm/ui/activities/MainActivity;

    iget-object v2, p0, Lcom/bbm/ui/activities/wg;->a:Lcom/bbm/d/ea;

    iget-object v0, p0, Lcom/bbm/ui/activities/wg;->b:Lcom/bbm/j/w;

    invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    invoke-static {v1, v2, v0}, Lcom/bbm/ui/c/bm;->a(Landroid/app/Activity;Lcom/bbm/d/ea;Ljava/util/List;)V

    goto :goto_7

    nop

    :pswitch_data_30
    .packed-switch 0x7f0a005f
        :pswitch_1f
        :pswitch_7
        :pswitch_12
    .end packed-switch
.end method
