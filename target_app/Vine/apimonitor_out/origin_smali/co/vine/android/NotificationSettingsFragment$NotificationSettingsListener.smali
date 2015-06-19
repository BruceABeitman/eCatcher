.class public Lco/vine/android/NotificationSettingsFragment$NotificationSettingsListener;
.super Lco/vine/android/client/AppSessionListener;
.source "NotificationSettingsFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/NotificationSettingsFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "NotificationSettingsListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/NotificationSettingsFragment;


# direct methods
.method public constructor <init>(Lco/vine/android/NotificationSettingsFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsListener;->this$0:Lco/vine/android/NotificationSettingsFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onGetNotificationSettingsComplete(Ljava/lang/String;Ljava/util/ArrayList;)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineNotificationSetting;",
            ">;)V"
        }
    .end annotation

    const/4 v5, 0x1

    iget-object v1, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsListener;->this$0:Lco/vine/android/NotificationSettingsFragment;

    #setter for: Lco/vine/android/NotificationSettingsFragment;->mFetched:Z
    invoke-static {v1, v5}, Lco/vine/android/NotificationSettingsFragment;->access$002(Lco/vine/android/NotificationSettingsFragment;Z)Z

    iget-object v1, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsListener;->this$0:Lco/vine/android/NotificationSettingsFragment;

    invoke-virtual {v1, p1}, Lco/vine/android/NotificationSettingsFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    if-eqz v0, :cond_3a

    if-eqz p2, :cond_3b

    iget-object v1, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsListener;->this$0:Lco/vine/android/NotificationSettingsFragment;

    new-instance v2, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;

    iget-object v3, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsListener;->this$0:Lco/vine/android/NotificationSettingsFragment;

    iget-object v4, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsListener;->this$0:Lco/vine/android/NotificationSettingsFragment;

    invoke-virtual {v4}, Lco/vine/android/NotificationSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-direct {v2, v3, v4, p2}, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsAdapter;-><init>(Lco/vine/android/NotificationSettingsFragment;Landroid/content/Context;Ljava/util/ArrayList;)V

    iput-object v2, v1, Lco/vine/android/NotificationSettingsFragment;->mAdapter:Landroid/widget/BaseAdapter;

    iget-object v1, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsListener;->this$0:Lco/vine/android/NotificationSettingsFragment;

    iget-object v1, v1, Lco/vine/android/NotificationSettingsFragment;->mListView:Landroid/widget/ListView;

    iget-object v2, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsListener;->this$0:Lco/vine/android/NotificationSettingsFragment;

    iget-object v2, v2, Lco/vine/android/NotificationSettingsFragment;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v1, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsListener;->this$0:Lco/vine/android/NotificationSettingsFragment;

    #setter for: Lco/vine/android/NotificationSettingsFragment;->mSucceeded:Z
    invoke-static {v1, v5}, Lco/vine/android/NotificationSettingsFragment;->access$102(Lco/vine/android/NotificationSettingsFragment;Z)Z

    iget-object v1, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsListener;->this$0:Lco/vine/android/NotificationSettingsFragment;

    invoke-virtual {v1}, Lco/vine/android/NotificationSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->invalidateOptionsMenu()V

    :cond_3a
    :goto_3a
    return-void

    :cond_3b
    iget-object v1, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsListener;->this$0:Lco/vine/android/NotificationSettingsFragment;

    invoke-virtual {v1, v5}, Lco/vine/android/NotificationSettingsFragment;->showSadface(Z)V

    iget-object v1, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsListener;->this$0:Lco/vine/android/NotificationSettingsFragment;

    const/4 v2, 0x0

    #setter for: Lco/vine/android/NotificationSettingsFragment;->mSucceeded:Z
    invoke-static {v1, v2}, Lco/vine/android/NotificationSettingsFragment;->access$102(Lco/vine/android/NotificationSettingsFragment;Z)Z

    goto :goto_3a
.end method

.method public onSaveNotificationSettingsComplete(Ljava/lang/String;ILjava/lang/String;)V
    .registers 7

    const/4 v2, 0x1

    const/16 v0, 0xc8

    if-eq p2, v0, :cond_2a

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsListener;->this$0:Lco/vine/android/NotificationSettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/NotificationSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const v1, 0x7f0e00cb

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    :goto_1b
    return-void

    :cond_1c
    iget-object v0, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsListener;->this$0:Lco/vine/android/NotificationSettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/NotificationSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0, p3, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_1b

    :cond_2a
    iget-object v0, p0, Lco/vine/android/NotificationSettingsFragment$NotificationSettingsListener;->this$0:Lco/vine/android/NotificationSettingsFragment;

    invoke-virtual {v0}, Lco/vine/android/NotificationSettingsFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V

    goto :goto_1b
.end method
