.class final Lcom/bbm/ui/activities/abh;
.super Ljava/lang/Object;
.source "PreviewChannelActivity.java"

# interfaces
.implements Lcom/bbm/ui/fs;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/PreviewChannelActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/PreviewChannelActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/abh;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 6

    const v3, 0x7f0a00fd

    const/4 v2, 0x1

    iget-object v0, p0, Lcom/bbm/ui/activities/abh;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->a(Lcom/bbm/ui/activities/PreviewChannelActivity;)I

    move-result v0

    if-ne v0, p1, :cond_16

    iget-object v0, p0, Lcom/bbm/ui/activities/abh;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    :goto_15
    return-void

    :cond_16
    iget-object v0, p0, Lcom/bbm/ui/activities/abh;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/abh;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;

    iget-object v1, v1, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1, v2}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    packed-switch p1, :pswitch_data_5c

    :goto_2c
    iget-object v1, p0, Lcom/bbm/ui/activities/abh;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;

    invoke-static {v1}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/abh;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;

    invoke-static {v1, p1}, Lcom/bbm/ui/activities/PreviewChannelActivity;->a(Lcom/bbm/ui/activities/PreviewChannelActivity;I)I

    iget-object v1, p0, Lcom/bbm/ui/activities/abh;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;

    iget-object v1, v1, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1, v2}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v0, p0, Lcom/bbm/ui/activities/abh;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/PreviewChannelActivity;->invalidateOptionsMenu()V

    goto :goto_15

    :pswitch_48
    iget-object v1, p0, Lcom/bbm/ui/activities/abh;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/PreviewChannelActivity;->b(Lcom/bbm/ui/activities/PreviewChannelActivity;)Lcom/bbm/ui/c/l;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_2c

    :pswitch_52
    iget-object v1, p0, Lcom/bbm/ui/activities/abh;->a:Lcom/bbm/ui/activities/PreviewChannelActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/PreviewChannelActivity;->c(Lcom/bbm/ui/activities/PreviewChannelActivity;)Lcom/bbm/ui/c/aj;

    move-result-object v1

    invoke-virtual {v0, v3, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_2c

    :pswitch_data_5c
    .packed-switch 0x0
        :pswitch_48
        :pswitch_52
    .end packed-switch
.end method
