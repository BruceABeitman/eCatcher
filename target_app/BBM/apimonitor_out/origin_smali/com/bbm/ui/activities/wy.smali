.class final Lcom/bbm/ui/activities/wy;
.super Ljava/lang/Object;
.source "MainActivity.java"

# interfaces
.implements Lcom/bbm/ui/c/fq;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/MainActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/MainActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/wy;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
    .registers 7

    const v2, 0x7f0a0396

    const/4 v1, 0x1

    iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I

    packed-switch v0, :pswitch_data_a0

    :pswitch_9
    iget-object v1, p0, Lcom/bbm/ui/activities/wy;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v1, v0}, Lcom/bbm/ui/activities/MainActivity;->g(Lcom/bbm/ui/activities/MainActivity;I)Z

    :goto_e
    return-void

    :pswitch_f
    iget-object v0, p0, Lcom/bbm/ui/activities/wy;->a:Lcom/bbm/ui/activities/MainActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/wy;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/MainActivity;->z(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/bbm/ui/activities/wy;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/MainActivity;->A(Lcom/bbm/ui/activities/MainActivity;)I

    move-result v1

    if-lt v0, v1, :cond_4c

    iget-object v1, p0, Lcom/bbm/ui/activities/wy;->a:Lcom/bbm/ui/activities/MainActivity;

    iget-object v0, p0, Lcom/bbm/ui/activities/wy;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/bbm/ui/activities/wy;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/MainActivity;->z(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/bbm/ui/activities/kp;->a(Landroid/app/Activity;Landroid/view/View;I)V

    goto :goto_e

    :cond_4c
    iget-object v0, p0, Lcom/bbm/ui/activities/wy;->a:Lcom/bbm/ui/activities/MainActivity;

    new-instance v1, Landroid/content/Intent;

    iget-object v2, p0, Lcom/bbm/ui/activities/wy;->a:Lcom/bbm/ui/activities/MainActivity;

    const-class v3, Lcom/bbm/ui/activities/NewGroupActivity;

    invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V

    goto :goto_e

    :pswitch_5b
    iget-object v0, p0, Lcom/bbm/ui/activities/wy;->a:Lcom/bbm/ui/activities/MainActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/wy;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/MainActivity;->z(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    iget-object v1, p0, Lcom/bbm/ui/activities/wy;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/MainActivity;->A(Lcom/bbm/ui/activities/MainActivity;)I

    move-result v1

    if-lt v0, v1, :cond_99

    iget-object v1, p0, Lcom/bbm/ui/activities/wy;->a:Lcom/bbm/ui/activities/MainActivity;

    iget-object v0, p0, Lcom/bbm/ui/activities/wy;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-virtual {v0, v2}, Lcom/bbm/ui/activities/MainActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iget-object v0, p0, Lcom/bbm/ui/activities/wy;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/MainActivity;->z(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-static {v1, v2, v0}, Lcom/bbm/ui/activities/kp;->a(Landroid/app/Activity;Landroid/view/View;I)V

    goto/16 :goto_e

    :cond_99
    iget-object v0, p0, Lcom/bbm/ui/activities/wy;->a:Lcom/bbm/ui/activities/MainActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/MainActivity;->B(Lcom/bbm/ui/activities/MainActivity;)V

    goto/16 :goto_e

    :pswitch_data_a0
    .packed-switch 0x7f0a0064
        :pswitch_f
        :pswitch_9
        :pswitch_5b
    .end packed-switch
.end method
