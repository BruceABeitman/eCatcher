.class final Lcom/instagram/android/activity/l;
.super Landroid/content/BroadcastReceiver;
.source "MainTabActivity.java"


# instance fields
.field final synthetic a:Lcom/instagram/android/activity/MainTabActivity;


# direct methods
.method constructor <init>(Lcom/instagram/android/activity/MainTabActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 9

    const/4 v3, 0x0

    const/16 v2, 0x8

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "MainTabActivity.BROADCAST_BACK_PUSHED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_55

    iget-object v0, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/MainTabActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_4f

    invoke-static {}, Lcom/instagram/b/c/a;->a()Lcom/instagram/b/c/a;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v1}, Lcom/instagram/android/activity/MainTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "back"

    invoke-virtual {v0, v1, v2}, Lcom/instagram/b/c/a;->a(Landroid/app/Activity;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/MainTabActivity;)Ljava/util/LinkedList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/android/activity/t;

    iget-object v1, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/MainTabActivity;Z)Z

    iget-object v1, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v1}, Lcom/instagram/android/activity/MainTabActivity;->d()Lcom/instagram/base/activity/tabactivity/IgTabHost;

    move-result-object v1

    invoke-virtual {v0}, Lcom/instagram/android/activity/t;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/base/activity/tabactivity/IgTabHost;->setCurrentTabByTag(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v0, v3}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/MainTabActivity;Z)Z

    :cond_4e
    :goto_4e
    return-void

    :cond_4f
    iget-object v0, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/MainTabActivity;->finish()V

    goto :goto_4e

    :cond_55
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "LogoutManager.BROADCAST_POST_LOGOUT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7a

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    const-class v2, Lcom/instagram/android/nux/SignedOutFragmentActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    iget-object v1, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v1, v0}, Lcom/instagram/android/activity/MainTabActivity;->startActivity(Landroid/content/Intent;)V

    iget-object v0, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/MainTabActivity;->finish()V

    goto :goto_4e

    :cond_7a
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewsfeedStore.BROADCAST_TOAST"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_f5

    iget-object v0, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v0}, Lcom/instagram/android/activity/MainTabActivity;->getCurrentActivity()Landroid/app/Activity;

    move-result-object v0

    check-cast v0, Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->d()Landroid/support/v4/app/s;

    move-result-object v0

    sget v1, Lcom/facebook/av;->layout_container_main:I

    invoke-virtual {v0, v1}, Landroid/support/v4/app/s;->a(I)Landroid/support/v4/app/Fragment;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-virtual {v1}, Lcom/instagram/android/activity/MainTabActivity;->e()Lcom/instagram/base/activity/tabactivity/IgTabWidget;

    move-result-object v1

    invoke-virtual {v1}, Lcom/instagram/base/activity/tabactivity/IgTabWidget;->getVisibility()I

    move-result v1

    if-nez v1, :cond_4e

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v1

    const-string v2, "NewsfeedStore.EXTRA_BROADCAST_TOAST_COMMENTS"

    invoke-virtual {v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "NewsfeedStore.EXTRA_BROADCAST_TOAST_LIKES"

    invoke-virtual {v2, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "NewsfeedStore.EXTRA_BROADCAST_TOAST_RELATIONSHIPS"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    invoke-virtual {p2}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;

    move-result-object v4

    const-string v5, "NewsfeedStore.EXTRA_BROADCAST_TOAST_USERTAGS"

    invoke-virtual {v4, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    iget-object v5, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v5, v1, v2, v3, v4}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/MainTabActivity;IIII)V

    instance-of v1, v0, Lcom/instagram/i/c/g;

    if-eqz v1, :cond_e3

    check-cast v0, Lcom/instagram/i/c/g;

    invoke-virtual {v0}, Lcom/instagram/i/c/g;->c()I

    move-result v0

    sget-object v1, Lcom/instagram/i/c/g;->b:Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eq v0, v1, :cond_f0

    :cond_e3
    iget-object v0, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    iget-object v1, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v1}, Lcom/instagram/android/activity/MainTabActivity;->b(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/activity/t;->b:Lcom/instagram/android/activity/t;

    invoke-static {v0, v1, v2}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/MainTabActivity;Landroid/view/View;Lcom/instagram/android/activity/t;)V

    :cond_f0
    invoke-static {}, Lcom/instagram/i/c/g;->d()V

    goto/16 :goto_4e

    :cond_f5
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "com.instagram.android.fragment.NewsFeedYouFragment.BROADCAST_YOU_MODE_SEEN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_11d

    iget-object v0, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->c(Lcom/instagram/android/activity/MainTabActivity;)Lcom/instagram/ui/widget/c/a;

    move-result-object v0

    if-eqz v0, :cond_112

    iget-object v0, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->c(Lcom/instagram/android/activity/MainTabActivity;)Lcom/instagram/ui/widget/c/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/ui/widget/c/a;->a()V

    :cond_112
    iget-object v0, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->b(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4e

    :cond_11d
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "NewsfeedStore.BROADCAST_NEW_PHOTOS_OF_YOU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_156

    iget-object v0, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    const-string v1, "NewsfeedStore.EXTRA_BROADCAST_NEW_PHOTOS_OF_YOU_COUNT"

    invoke-virtual {p2, v1, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    invoke-static {v0, v1}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/MainTabActivity;I)I

    iget-object v0, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->d(Lcom/instagram/android/activity/MainTabActivity;)I

    move-result v0

    if-lez v0, :cond_14b

    iget-object v0, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    iget-object v1, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v1}, Lcom/instagram/android/activity/MainTabActivity;->e(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;

    move-result-object v1

    sget-object v2, Lcom/instagram/android/activity/t;->e:Lcom/instagram/android/activity/t;

    invoke-static {v0, v1, v2}, Lcom/instagram/android/activity/MainTabActivity;->a(Lcom/instagram/android/activity/MainTabActivity;Landroid/view/View;Lcom/instagram/android/activity/t;)V

    goto/16 :goto_4e

    :cond_14b
    iget-object v0, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->e(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4e

    :cond_156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    const-string v1, "SelfFragment.BROADCAST_SELF_PROFILE_SHOWN"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_4e

    iget-object v0, p0, Lcom/instagram/android/activity/l;->a:Lcom/instagram/android/activity/MainTabActivity;

    invoke-static {v0}, Lcom/instagram/android/activity/MainTabActivity;->e(Lcom/instagram/android/activity/MainTabActivity;)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V

    goto/16 :goto_4e
.end method
