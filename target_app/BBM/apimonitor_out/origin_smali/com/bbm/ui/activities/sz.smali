.class final Lcom/bbm/ui/activities/sz;
.super Ljava/lang/Object;
.source "GroupProfileActivity.java"

# interfaces
.implements Lcom/bbm/ui/gy;


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/GroupProfileActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/GroupProfileActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/sz;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(I)V
    .registers 7

    const v4, 0x7f0a01ed

    iget-object v0, p0, Lcom/bbm/ui/activities/sz;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupProfileActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/sz;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-static {v1, v0}, Lcom/bbm/ui/activities/GroupProfileActivity;->a(Lcom/bbm/ui/activities/GroupProfileActivity;Landroid/app/FragmentTransaction;)V

    packed-switch p1, :pswitch_data_b0

    :goto_15
    iget-object v1, p0, Lcom/bbm/ui/activities/sz;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-static {v1, p1}, Lcom/bbm/ui/activities/GroupProfileActivity;->b(Lcom/bbm/ui/activities/GroupProfileActivity;I)I

    iget-object v1, p0, Lcom/bbm/ui/activities/sz;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    iget-object v1, v1, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;

    iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    iget-object v0, p0, Lcom/bbm/ui/activities/sz;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-virtual {v0}, Lcom/bbm/ui/activities/GroupProfileActivity;->invalidateOptionsMenu()V

    return-void

    :pswitch_2d
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "groupUri"

    iget-object v3, p0, Lcom/bbm/ui/activities/sz;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    iget-object v3, v3, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbm/ui/activities/sz;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    new-instance v3, Lcom/bbm/ui/c/ch;

    invoke-direct {v3}, Lcom/bbm/ui/c/ch;-><init>()V

    invoke-static {v2, v3}, Lcom/bbm/ui/activities/GroupProfileActivity;->a(Lcom/bbm/ui/activities/GroupProfileActivity;Lcom/bbm/ui/c/ch;)Lcom/bbm/ui/c/ch;

    iget-object v2, p0, Lcom/bbm/ui/activities/sz;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/GroupProfileActivity;->b(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/ui/c/ch;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bbm/ui/c/ch;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/sz;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupProfileActivity;->b(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/ui/c/ch;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_15

    :pswitch_58
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "groupUri"

    iget-object v3, p0, Lcom/bbm/ui/activities/sz;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    iget-object v3, v3, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbm/ui/activities/sz;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    new-instance v3, Lcom/bbm/ui/c/cz;

    invoke-direct {v3}, Lcom/bbm/ui/c/cz;-><init>()V

    invoke-static {v2, v3}, Lcom/bbm/ui/activities/GroupProfileActivity;->a(Lcom/bbm/ui/activities/GroupProfileActivity;Lcom/bbm/ui/c/cz;)Lcom/bbm/ui/c/cz;

    iget-object v2, p0, Lcom/bbm/ui/activities/sz;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/GroupProfileActivity;->c(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/ui/c/cz;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bbm/ui/c/cz;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/sz;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupProfileActivity;->c(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/ui/c/cz;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto :goto_15

    :pswitch_83
    new-instance v1, Landroid/os/Bundle;

    invoke-direct {v1}, Landroid/os/Bundle;-><init>()V

    const-string v2, "groupUri"

    iget-object v3, p0, Lcom/bbm/ui/activities/sz;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    iget-object v3, v3, Lcom/bbm/ui/activities/md;->c:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbm/ui/activities/sz;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    new-instance v3, Lcom/bbm/ui/c/ck;

    invoke-direct {v3}, Lcom/bbm/ui/c/ck;-><init>()V

    invoke-static {v2, v3}, Lcom/bbm/ui/activities/GroupProfileActivity;->a(Lcom/bbm/ui/activities/GroupProfileActivity;Lcom/bbm/ui/c/ck;)Lcom/bbm/ui/c/ck;

    iget-object v2, p0, Lcom/bbm/ui/activities/sz;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/GroupProfileActivity;->d(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/ui/c/ck;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bbm/ui/c/ck;->setArguments(Landroid/os/Bundle;)V

    iget-object v1, p0, Lcom/bbm/ui/activities/sz;->a:Lcom/bbm/ui/activities/GroupProfileActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/GroupProfileActivity;->d(Lcom/bbm/ui/activities/GroupProfileActivity;)Lcom/bbm/ui/c/ck;

    move-result-object v1

    invoke-virtual {v0, v4, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    goto/16 :goto_15

    nop

    :pswitch_data_b0
    .packed-switch 0x0
        :pswitch_2d
        :pswitch_58
        :pswitch_83
    .end packed-switch
.end method
