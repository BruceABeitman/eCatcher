.class final Lcom/bbm/ui/activities/re;
.super Lcom/bbm/ui/cj;
.source "GroupPictureActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupPictureActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupPictureActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/re;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 2

    iget-object v0, p0, Lcom/bbm/ui/activities/re;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->finish()V

    return-void
.end method

.method public final a(I)V
    .registers 6

    const/4 v1, 0x1

    packed-switch p1, :pswitch_data_46

    :goto_4
    return-void

    :pswitch_5
    iget-object v0, p0, Lcom/bbm/ui/activities/re;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/re;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->h(Lcom/bbm/ui/activities/GroupPictureActivity;)V

    goto :goto_4

    :pswitch_14
    iget-object v0, p0, Lcom/bbm/ui/activities/re;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->i(Lcom/bbm/ui/activities/GroupPictureActivity;)Z

    move-result v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/bbm/ui/activities/re;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    iget-object v0, p0, Lcom/bbm/ui/activities/re;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->j(Lcom/bbm/ui/activities/GroupPictureActivity;)V

    goto :goto_4

    :cond_2b
    iget-object v0, p0, Lcom/bbm/ui/activities/re;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/GroupPictureActivity;->k(Lcom/bbm/ui/activities/GroupPictureActivity;)Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/re;->a:Lcom/bbm/ui/activities/GroupPictureActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/GroupPictureActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0507

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x7d0

    const/16 v3, 0x11

    invoke-static {v0, v1, v2, v3}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Ljava/lang/String;II)V

    goto :goto_4

    :pswitch_data_46
    .packed-switch 0x0
        :pswitch_5
        :pswitch_14
    .end packed-switch
.end method
