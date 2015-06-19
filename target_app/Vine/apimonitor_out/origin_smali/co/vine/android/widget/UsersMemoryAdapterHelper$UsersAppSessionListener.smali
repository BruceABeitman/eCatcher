.class Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;
.super Lco/vine/android/client/AppSessionListener;
.source "UsersMemoryAdapterHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/widget/UsersMemoryAdapterHelper;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "UsersAppSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;


# direct methods
.method constructor <init>(Lco/vine/android/widget/UsersMemoryAdapterHelper;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;->this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;

    invoke-direct {p0}, Lco/vine/android/client/AppSessionListener;-><init>()V

    return-void
.end method


# virtual methods
.method public onCaptchaRequired(Ljava/lang/String;Ljava/lang/String;Lco/vine/android/service/PendingAction;)V
    .registers 11

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;->this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;

    #getter for: Lco/vine/android/widget/UsersMemoryAdapterHelper;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
    invoke-static {v0}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->access$000(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/PendingRequestHelper;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/vine/android/PendingRequestHelper;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v6

    if-eqz v6, :cond_25

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;->this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;

    #getter for: Lco/vine/android/widget/UsersMemoryAdapterHelper;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
    invoke-static {v0}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->access$000(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/PendingRequestHelper;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;->this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;

    #getter for: Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFragment:Lco/vine/android/BaseFragment;
    invoke-static {v1}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->access$500(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/BaseFragment;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/BaseFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget v3, p3, Lco/vine/android/service/PendingAction;->actionCode:I

    iget-object v4, p3, Lco/vine/android/service/PendingAction;->bundle:Landroid/os/Bundle;

    move-object v2, p1

    move-object v5, p2

    invoke-virtual/range {v0 .. v5}, Lco/vine/android/PendingRequestHelper;->onCaptchaRequired(Landroid/support/v4/app/FragmentActivity;Ljava/lang/String;ILandroid/os/Bundle;Ljava/lang/String;)V

    :cond_25
    return-void
.end method

.method public onFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 8

    iget-object v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;->this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;

    #getter for: Lco/vine/android/widget/UsersMemoryAdapterHelper;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
    invoke-static {v1}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->access$000(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/PendingRequestHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lco/vine/android/PendingRequestHelper;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    if-eqz v0, :cond_22

    const/16 v1, 0xc8

    if-eq p2, v1, :cond_22

    iget-object v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;->this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;

    #getter for: Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFriendships:Lco/vine/android/Friendships;
    invoke-static {v1}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->access$400(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/Friendships;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lco/vine/android/Friendships;->removeFollowing(J)V

    iget-object v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;->this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;

    #getter for: Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAdapter:Lco/vine/android/UsersMemoryAdapter;
    invoke-static {v1}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->access$100(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/UsersMemoryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/UsersMemoryAdapter;->notifyDataSetChanged()V

    :cond_22
    return-void
.end method

.method public onGetUsersComplete(Lco/vine/android/client/Session;Ljava/lang/String;ILjava/lang/String;ILjava/util/ArrayList;IIJ)V
    .registers 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lco/vine/android/client/Session;",
            "Ljava/lang/String;",
            "I",
            "Ljava/lang/String;",
            "I",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;IIJ)V"
        }
    .end annotation

    const/4 v1, 0x1

    packed-switch p3, :pswitch_data_48

    iget-object v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;->this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;

    #getter for: Lco/vine/android/widget/UsersMemoryAdapterHelper;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
    invoke-static {v1}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->access$000(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/PendingRequestHelper;

    move-result-object v1

    const/4 v2, 0x3

    invoke-virtual {v1, v2}, Lco/vine/android/PendingRequestHelper;->hideProgress(I)V

    :cond_e
    :goto_e
    return-void

    :pswitch_f
    iget-object v2, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;->this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;

    #getter for: Lco/vine/android/widget/UsersMemoryAdapterHelper;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
    invoke-static {v2}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->access$000(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/PendingRequestHelper;

    move-result-object v2

    invoke-virtual {v2, p2}, Lco/vine/android/PendingRequestHelper;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    if-eqz v0, :cond_e

    iget-object v2, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;->this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;

    #getter for: Lco/vine/android/widget/UsersMemoryAdapterHelper;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
    invoke-static {v2}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->access$000(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/PendingRequestHelper;

    move-result-object v2

    iget v3, v0, Lco/vine/android/PendingRequest;->fetchType:I

    invoke-virtual {v2, v3}, Lco/vine/android/PendingRequestHelper;->hideProgress(I)V

    iget-object v2, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;->this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;

    #getter for: Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAdapter:Lco/vine/android/UsersMemoryAdapter;
    invoke-static {v2}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->access$100(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/UsersMemoryAdapter;

    move-result-object v2

    if-eqz v2, :cond_3b

    iget-object v2, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;->this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;

    #getter for: Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAdapter:Lco/vine/android/UsersMemoryAdapter;
    invoke-static {v2}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->access$100(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/UsersMemoryAdapter;

    move-result-object v2

    iget v3, v0, Lco/vine/android/PendingRequest;->fetchType:I

    if-ne v3, v1, :cond_46

    :goto_38
    invoke-virtual {v2, p6, v1}, Lco/vine/android/UsersMemoryAdapter;->mergeData(Ljava/util/ArrayList;Z)V

    :cond_3b
    iget-object v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;->this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;

    #setter for: Lco/vine/android/widget/UsersMemoryAdapterHelper;->mNextPage:I
    invoke-static {v1, p7}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->access$202(Lco/vine/android/widget/UsersMemoryAdapterHelper;I)I

    iget-object v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;->this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;

    #setter for: Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAnchor:J
    invoke-static {v1, p9, p10}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->access$302(Lco/vine/android/widget/UsersMemoryAdapterHelper;J)J

    goto :goto_e

    :cond_46
    const/4 v1, 0x0

    goto :goto_38

    :pswitch_data_48
    .packed-switch 0xc8
        :pswitch_f
    .end packed-switch
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

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;->this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;

    #getter for: Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAdapter:Lco/vine/android/UsersMemoryAdapter;
    invoke-static {v0}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->access$100(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/UsersMemoryAdapter;

    move-result-object v0

    if-eqz v0, :cond_11

    iget-object v0, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;->this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;

    #getter for: Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAdapter:Lco/vine/android/UsersMemoryAdapter;
    invoke-static {v0}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->access$100(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/UsersMemoryAdapter;

    move-result-object v0

    invoke-virtual {v0, p1}, Lco/vine/android/UsersMemoryAdapter;->setUserImages(Ljava/util/HashMap;)V

    :cond_11
    return-void
.end method

.method public onUnFollowComplete(Ljava/lang/String;ILjava/lang/String;J)V
    .registers 8

    iget-object v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;->this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;

    #getter for: Lco/vine/android/widget/UsersMemoryAdapterHelper;->mPendingRequestHelper:Lco/vine/android/PendingRequestHelper;
    invoke-static {v1}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->access$000(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/PendingRequestHelper;

    move-result-object v1

    invoke-virtual {v1, p1}, Lco/vine/android/PendingRequestHelper;->removeRequest(Ljava/lang/String;)Lco/vine/android/PendingRequest;

    move-result-object v0

    if-eqz v0, :cond_22

    const/16 v1, 0xc8

    if-eq p2, v1, :cond_22

    iget-object v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;->this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;

    #getter for: Lco/vine/android/widget/UsersMemoryAdapterHelper;->mFriendships:Lco/vine/android/Friendships;
    invoke-static {v1}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->access$400(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/Friendships;

    move-result-object v1

    invoke-virtual {v1, p4, p5}, Lco/vine/android/Friendships;->addFollowing(J)V

    iget-object v1, p0, Lco/vine/android/widget/UsersMemoryAdapterHelper$UsersAppSessionListener;->this$0:Lco/vine/android/widget/UsersMemoryAdapterHelper;

    #getter for: Lco/vine/android/widget/UsersMemoryAdapterHelper;->mAdapter:Lco/vine/android/UsersMemoryAdapter;
    invoke-static {v1}, Lco/vine/android/widget/UsersMemoryAdapterHelper;->access$100(Lco/vine/android/widget/UsersMemoryAdapterHelper;)Lco/vine/android/UsersMemoryAdapter;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/UsersMemoryAdapter;->notifyDataSetChanged()V

    :cond_22
    return-void
.end method
