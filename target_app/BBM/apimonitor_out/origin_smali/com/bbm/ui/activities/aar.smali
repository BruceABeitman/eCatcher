.class final Lcom/bbm/ui/activities/aar;
.super Ljava/lang/Object;
.source "OwnProfileActivity.java"

# interfaces
.implements Lcom/bbm/ui/fs;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/OwnProfileActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/OwnProfileActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 10

    const/4 v7, 0x0

    const v6, 0x7f0a0242

    const/16 v5, 0x8

    const/4 v4, 0x1

    iget-object v0, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->c(Lcom/bbm/ui/activities/OwnProfileActivity;)I

    move-result v0

    if-ne v0, p1, :cond_19

    iget-object v0, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v0, v4}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    packed-switch p1, :pswitch_data_126

    :goto_26
    iget-object v1, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v1}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-virtual {v1}, Lcom/bbm/ui/activities/OwnProfileActivity;->b()V

    iget-object v1, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v1, p1}, Lcom/bbm/ui/activities/OwnProfileActivity;->a(Lcom/bbm/ui/activities/OwnProfileActivity;I)I

    iget-object v1, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    iget-object v1, v1, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1, v4}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v0, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/OwnProfileActivity;->invalidateOptionsMenu()V

    goto :goto_18

    :pswitch_47
    iget-object v1, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/OwnProfileActivity;->d(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/ui/c/ew;

    move-result-object v1

    if-eqz v1, :cond_76

    iget-object v1, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/OwnProfileActivity;->d(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/ui/c/ew;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v1, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/OwnProfileActivity;->d(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/ui/c/ew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/ui/c/ew;->getView()Landroid/view/View;

    move-result-object v1

    if-eqz v1, :cond_71

    iget-object v1, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/OwnProfileActivity;->d(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/ui/c/ew;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/ui/c/ew;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_71
    iget-object v1, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v1, v7}, Lcom/bbm/ui/activities/OwnProfileActivity;->a(Lcom/bbm/ui/activities/OwnProfileActivity;Lcom/bbm/ui/c/ew;)Lcom/bbm/ui/c/ew;

    :cond_76
    iget-object v1, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/OwnProfileActivity;->e(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/ui/c/ej;

    move-result-object v1

    if-nez v1, :cond_96

    iget-object v1, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    new-instance v2, Lcom/bbm/ui/c/ej;

    invoke-direct {v2}, Lcom/bbm/ui/c/ej;-><init>()V

    invoke-static {v1, v2}, Lcom/bbm/ui/activities/OwnProfileActivity;->a(Lcom/bbm/ui/activities/OwnProfileActivity;Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/c/ej;

    iget-object v1, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/OwnProfileActivity;->e(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/ui/c/ej;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/OwnProfileActivity;->f(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/ui/c/ev;

    move-result-object v2

    iput-object v2, v1, Lcom/bbm/ui/c/ej;->b:Lcom/bbm/ui/c/ev;

    :cond_96
    const-string v1, "profile details selected"

    const-class v2, Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/OwnProfileActivity;->e(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/ui/c/ej;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_26

    :pswitch_a7
    iget-object v1, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/OwnProfileActivity;->g(Lcom/bbm/ui/activities/OwnProfileActivity;)V

    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "user_uri"

    iget-object v3, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v3}, Lcom/bbm/ui/activities/OwnProfileActivity;->h(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/d/a;

    move-result-object v3

    invoke-virtual {v3}, Lcom/bbm/d/a;->h()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/OwnProfileActivity;->e(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/ui/c/ej;

    move-result-object v2

    if-eqz v2, :cond_ef

    iget-object v2, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/OwnProfileActivity;->e(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/ui/c/ej;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/app/FragmentTransaction;->remove(Landroid/app/Fragment;)Landroid/app/FragmentTransaction;

    iget-object v2, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/OwnProfileActivity;->e(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/ui/c/ej;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bbm/ui/c/ej;->getView()Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_ea

    iget-object v2, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/OwnProfileActivity;->e(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/ui/c/ej;

    move-result-object v2

    invoke-virtual {v2}, Lcom/bbm/ui/c/ej;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v5}, Landroid/view/View;->setVisibility(I)V

    :cond_ea
    iget-object v2, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v2, v7}, Lcom/bbm/ui/activities/OwnProfileActivity;->a(Lcom/bbm/ui/activities/OwnProfileActivity;Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/c/ej;

    :cond_ef
    iget-object v2, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/OwnProfileActivity;->d(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/ui/c/ew;

    move-result-object v2

    if-nez v2, :cond_101

    iget-object v2, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    new-instance v3, Lcom/bbm/ui/c/ew;

    invoke-direct {v3}, Lcom/bbm/ui/c/ew;-><init>()V

    invoke-static {v2, v3}, Lcom/bbm/ui/activities/OwnProfileActivity;->a(Lcom/bbm/ui/activities/OwnProfileActivity;Lcom/bbm/ui/c/ew;)Lcom/bbm/ui/c/ew;

    :cond_101
    iget-object v2, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/OwnProfileActivity;->d(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/ui/c/ew;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bbm/ui/c/ew;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    iget-object v1, v1, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    invoke-virtual {v1, v4}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    const-string v1, "profile updates selected"

    const-class v2, Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/aar;->a:Lcom/bbm/ui/activities/OwnProfileActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/OwnProfileActivity;->d(Lcom/bbm/ui/activities/OwnProfileActivity;)Lcom/bbm/ui/c/ew;

    move-result-object v1

    invoke-virtual {v0, v6, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_26

    nop

    :pswitch_data_126
    .packed-switch 0x0
        :pswitch_47
        :pswitch_a7
    .end packed-switch
.end method
