.class Lco/vine/android/UserSearchFragment$UserSearchSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "UserSearchFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/UserSearchFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "UserSearchSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/UserSearchFragment;


# direct methods
.method private constructor <init>(Lco/vine/android/UserSearchFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;->this$0:Lco/vine/android/UserSearchFragment;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/UserSearchFragment;Lco/vine/android/UserSearchFragment$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;-><init>(Lco/vine/android/UserSearchFragment;)V

    return-void
.end method


# virtual methods
.method public onCaptchaRequired(Ljava/lang/String;Ljava/lang/String;Lco/vine/android/service/PendingAction;)V
    .registers 11

    iget-object v0, p0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;->this$0:Lco/vine/android/UserSearchFragment;

    invoke-virtual {v0, p1}, Lco/vine/android/UserSearchFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v6

    if-eqz v6, :cond_1b

    iget-object v0, p0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;->this$0:Lco/vine/android/UserSearchFragment;

    iget-object v0, v0, Lco/vine/android/UserSearchFragment;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;

    iget-object v1, p0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;->this$0:Lco/vine/android/UserSearchFragment;

    invoke-virtual {v1}, Lco/vine/android/UserSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v3, p3, Lco/vine/android/service/PendingAction;->actionCode:I

    iget-object v4, p3, Lco/vine/android/service/PendingAction;->bundle:Landroid/os/Bundle;

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/PendingRequestHelper;->onCaptchaRequired(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V

    :cond_1b
    return-void
.end method

.method public onPhotoImageLoaded(Ljava/util/HashMap;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/HashMap",
            "<",
            "Lco/vine/android/util/image/ImageKey;",
            "Lco/vine/android/util/image/UrlImage;",
            ">;)V"
        }
    .end annotation

    iget-object v0, p0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;->this$0:Lco/vine/android/UserSearchFragment;

    iget-object v0, v0, Lco/vine/android/UserSearchFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    check-cast v0, Lco/vine/android/UsersAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/UsersAdapter;->setUserImages(Ljava/util/HashMap;)V

    return-void
.end method

.method public onUserSearchComplete(Ljava/lang/String;ILjava/lang/String;III)V
    .registers 11

    const/4 v3, 0x1

    iget-object v1, p0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;->this$0:Lco/vine/android/UserSearchFragment;

    invoke-virtual {v1, p1}, Lco/vine/android/UserSearchFragment;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v1, p0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;->this$0:Lco/vine/android/UserSearchFragment;

    iget v2, v0, Lco/vine/android/PendingRequest;->fetchType:I

    invoke-virtual {v1, v2}, Lco/vine/android/UserSearchFragment;->hideProgress(I)V

    packed-switch p2, :pswitch_data_3a

    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_22

    iget-object v1, p0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;->this$0:Lco/vine/android/UserSearchFragment;

    const v2, 0x7f0e00cf

    invoke-virtual {v1, v2}, Lco/vine/android/UserSearchFragment;->getString(I)Ljava/lang/String;

    move-result-object p3

    :cond_22
    iget-object v1, p0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;->this$0:Lco/vine/android/UserSearchFragment;

    invoke-virtual {v1}, Lco/vine/android/UserSearchFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1, p3}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;Ljava/lang/String;)Landroid/widget/Toast;

    :cond_2b
    :goto_2b
    return-void

    :pswitch_2c
    if-ge p4, v3, :cond_2b

    iget-object v1, p0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;->this$0:Lco/vine/android/UserSearchFragment;

    invoke-virtual {v1}, Lco/vine/android/UserSearchFragment;->cleanSearchResults()V

    iget-object v1, p0, Lco/vine/android/UserSearchFragment$UserSearchSessionListener;->this$0:Lco/vine/android/UserSearchFragment;

    const/4 v2, 0x0

    invoke-virtual {v1, v3, v2}, Lco/vine/android/UserSearchFragment;->showSadface(ZZ)V

    goto :goto_2b

    :pswitch_data_3a
    .packed-switch 0xc8
        :pswitch_2c
    .end packed-switch
.end method
