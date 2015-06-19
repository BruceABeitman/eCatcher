.class final Lcom/bbm/util/ei;
.super Ljava/lang/Object;
.source "UpdatesFragmentUtil.java"

# interfaces
.implements Lcom/bbm/ui/c/fq;


# instance fields
.field final synthetic a:Landroid/app/Activity;

.field final synthetic b:Lcom/bbm/d/gp;


# direct methods
.method constructor <init>(Landroid/app/Activity;Lcom/bbm/d/gp;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/util/ei;->a:Landroid/app/Activity;

    iput-object p2, p0, Lcom/bbm/util/ei;->b:Lcom/bbm/d/gp;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/ui/slidingmenu/a;I)V
    .registers 6

    iget-object v0, p0, Lcom/bbm/util/ei;->a:Landroid/app/Activity;

    check-cast v0, Lcom/bbm/ui/activities/MainActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    iget v0, p1, Lcom/bbm/ui/slidingmenu/a;->a:I

    packed-switch v0, :pswitch_data_34

    :goto_11
    :pswitch_11
    return-void

    :pswitch_12
    iget-object v0, p0, Lcom/bbm/util/ei;->a:Landroid/app/Activity;

    iget-object v1, p0, Lcom/bbm/util/ei;->b:Lcom/bbm/d/gp;

    iget-object v1, v1, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)V

    goto :goto_11

    :pswitch_1c
    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/util/ei;->a:Landroid/app/Activity;

    const-class v2, Lcom/bbm/ui/activities/ProfileActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v1, "user_uri"

    iget-object v2, p0, Lcom/bbm/util/ei;->b:Lcom/bbm/d/gp;

    iget-object v2, v2, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v1, p0, Lcom/bbm/util/ei;->a:Landroid/app/Activity;

    invoke-virtual {v1, v0}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V

    goto :goto_11

    :pswitch_data_34
    .packed-switch 0x7f0a0060
        :pswitch_12
        :pswitch_11
        :pswitch_11
        :pswitch_1c
    .end packed-switch
.end method
