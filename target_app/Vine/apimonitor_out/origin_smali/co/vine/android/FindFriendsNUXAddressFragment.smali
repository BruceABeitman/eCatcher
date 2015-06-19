.class public Lco/vine/android/FindFriendsNUXAddressFragment;
.super Lco/vine/android/FindFriendsBaseFragment;
.source "FindFriendsNUXAddressFragment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;
    }
.end annotation


# instance fields
.field private mActivity:Lco/vine/android/FindFriendsNUXActivity;

.field private mAddressFriends:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;"
        }
    .end annotation
.end field

.field private mContactsCountContainer:Landroid/widget/RelativeLayout;

.field private mContactsText:Landroid/widget/TextView;

.field private mFilterLoaderIsReady:Z

.field private mFilterRunnable:Ljava/lang/Runnable;

.field private mHandler:Landroid/os/Handler;

.field private mSelectAllToggle:Landroid/widget/TextView;

.field private mSelected:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lco/vine/android/FindFriendsBaseFragment;-><init>()V

    new-instance v0, Lco/vine/android/FindFriendsNUXAddressFragment$1;

    invoke-direct {v0, p0}, Lco/vine/android/FindFriendsNUXAddressFragment$1;-><init>(Lco/vine/android/FindFriendsNUXAddressFragment;)V

    iput-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mFilterRunnable:Ljava/lang/Runnable;

    return-void
.end method

.method static synthetic access$100(Lco/vine/android/FindFriendsNUXAddressFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mFilterLoaderIsReady:Z

    return v0
.end method

.method static synthetic access$102(Lco/vine/android/FindFriendsNUXAddressFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mFilterLoaderIsReady:Z

    return p1
.end method

.method static synthetic access$200(Lco/vine/android/FindFriendsNUXAddressFragment;)Landroid/widget/RelativeLayout;
    .registers 2

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mContactsCountContainer:Landroid/widget/RelativeLayout;

    return-object v0
.end method

.method static synthetic access$300(Lco/vine/android/FindFriendsNUXAddressFragment;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mContactsText:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$400(Lco/vine/android/FindFriendsNUXAddressFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mSelected:Z

    return v0
.end method

.method static synthetic access$500(Lco/vine/android/FindFriendsNUXAddressFragment;)Landroid/widget/TextView;
    .registers 2

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mSelectAllToggle:Landroid/widget/TextView;

    return-object v0
.end method

.method static synthetic access$600(Lco/vine/android/FindFriendsNUXAddressFragment;)Lco/vine/android/FindFriendsNUXActivity;
    .registers 2

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mActivity:Lco/vine/android/FindFriendsNUXActivity;

    return-object v0
.end method

.method static synthetic access$700(Lco/vine/android/FindFriendsNUXAddressFragment;)Ljava/util/ArrayList;
    .registers 2

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mAddressFriends:Ljava/util/ArrayList;

    return-object v0
.end method


# virtual methods
.method public getFirstItemPosition()Lcom/twitter/android/widget/ItemPosition;
    .registers 2

    const/4 v0, 0x0

    return-object v0
.end method

.method public onAttach(Landroid/app/Activity;)V
    .registers 2

    invoke-super {p0, p1}, Lco/vine/android/FindFriendsBaseFragment;->onAttach(Landroid/app/Activity;)V

    check-cast p1, Lco/vine/android/FindFriendsNUXActivity;

    iput-object p1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mActivity:Lco/vine/android/FindFriendsNUXActivity;

    return-void
.end method

.method public onClick(Landroid/view/View;)V
    .registers 7

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v1

    sparse-switch v1, :sswitch_data_66

    :cond_7
    :goto_7
    return-void

    :sswitch_8
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lco/vine/android/FollowButtonViewHolder;

    if-eqz v0, :cond_7

    iget-boolean v1, v0, Lco/vine/android/FollowButtonViewHolder;->following:Z

    if-nez v1, :cond_28

    iget-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mActivity:Lco/vine/android/FindFriendsNUXActivity;

    iget-wide v2, v0, Lco/vine/android/FollowButtonViewHolder;->userId:J

    invoke-virtual {v1, v2, v3}, Lco/vine/android/FindFriendsNUXActivity;->addUserToFollow(J)V

    iget-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mFriendships:Lco/vine/android/Friendships;

    iget-wide v2, v0, Lco/vine/android/FollowButtonViewHolder;->userId:J

    invoke-virtual {v1, v2, v3}, Lco/vine/android/Friendships;->addFollowing(J)V

    iget-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_7

    :cond_28
    iget-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mActivity:Lco/vine/android/FindFriendsNUXActivity;

    iget-wide v2, v0, Lco/vine/android/FollowButtonViewHolder;->userId:J

    invoke-virtual {v1, v2, v3}, Lco/vine/android/FindFriendsNUXActivity;->removeUserToFollow(J)V

    iget-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mFriendships:Lco/vine/android/Friendships;

    iget-wide v2, v0, Lco/vine/android/FollowButtonViewHolder;->userId:J

    invoke-virtual {v1, v2, v3}, Lco/vine/android/Friendships;->removeFollowing(J)V

    iget-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_7

    :sswitch_3c
    iget-boolean v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mSelected:Z

    if-nez v1, :cond_60

    const/4 v1, 0x1

    :goto_41
    iput-boolean v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mSelected:Z

    iget-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mActivity:Lco/vine/android/FindFriendsNUXActivity;

    iget-boolean v2, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mSelected:Z

    iget-object v3, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mAddressFriends:Ljava/util/ArrayList;

    iget-object v4, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mFriendships:Lco/vine/android/Friendships;

    invoke-virtual {v1, v2, v3, v4}, Lco/vine/android/FindFriendsNUXActivity;->toggleFollowAll(ZLjava/util/ArrayList;Lco/vine/android/Friendships;)V

    iget-object v2, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mSelectAllToggle:Landroid/widget/TextView;

    iget-boolean v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mSelected:Z

    if-eqz v1, :cond_62

    const v1, 0x7f0e00b8

    :goto_57
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(I)V

    iget-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mCursorAdapter:Landroid/support/v4/widget/CursorAdapter;

    invoke-virtual {v1}, Landroid/support/v4/widget/CursorAdapter;->notifyDataSetChanged()V

    goto :goto_7

    :cond_60
    const/4 v1, 0x0

    goto :goto_41

    :cond_62
    const v1, 0x7f0e01bc

    goto :goto_57

    :sswitch_data_66
    .sparse-switch
        0x7f0a00f0 -> :sswitch_3c
        0x7f0a022d -> :sswitch_8
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 6

    const/4 v3, 0x1

    invoke-super {p0, p1}, Lco/vine/android/FindFriendsBaseFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lco/vine/android/FindFriendsNUXAddressFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    if-eqz v0, :cond_13

    const-string v1, "take_focus"

    invoke-virtual {v0, v1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    invoke-virtual {p0, v1}, Lco/vine/android/FindFriendsNUXAddressFragment;->setFocused(Z)V

    :cond_13
    new-instance v1, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lco/vine/android/FindFriendsNUXAddressFragment$FriendsNUXListener;-><init>(Lco/vine/android/FindFriendsNUXAddressFragment;Lco/vine/android/FindFriendsNUXAddressFragment$1;)V

    iput-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    iput-boolean v3, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mSelected:Z

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mAddressFriends:Ljava/util/ArrayList;

    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mHandler:Landroid/os/Handler;

    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 6

    invoke-super {p0, p1, p2, p3}, Lco/vine/android/FindFriendsBaseFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a00ee

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/RelativeLayout;

    iput-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mContactsCountContainer:Landroid/widget/RelativeLayout;

    const v1, 0x7f0a00ef

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mContactsText:Landroid/widget/TextView;

    const v1, 0x7f0a00f0

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    iput-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mSelectAllToggle:Landroid/widget/TextView;

    iget-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mSelectAllToggle:Landroid/widget/TextView;

    invoke-virtual {v1, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    return-object v0
.end method

.method public onMoveTo(I)V
    .registers 4

    iget-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mActivity:Lco/vine/android/FindFriendsNUXActivity;

    invoke-virtual {v1}, Lco/vine/android/FindFriendsNUXActivity;->clearSearch()V

    iget-boolean v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mFetched:Z

    if-nez v1, :cond_34

    const/4 v1, 0x1

    invoke-static {v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->newInstance(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    move-result-object v0

    invoke-virtual {v0, p0}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setListener(Lco/vine/android/widgets/PromptDialogSupportFragment$OnDialogDoneListener;)V

    const v1, 0x7f0e0234

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setMessage(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v1, 0x7f0e0233

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setTitle(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v1, 0x7f0e014d

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setNegativeButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const v1, 0x7f0e0163

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setPositiveButton(I)Lco/vine/android/widgets/PromptDialogSupportFragment;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->setCancelable(Z)V

    invoke-virtual {p0}, Lco/vine/android/FindFriendsNUXAddressFragment;->getFragmentManager()Landroid/support/v4/app/FragmentManager;

    move-result-object v1

    invoke-virtual {v0, v1}, Lco/vine/android/widgets/PromptDialogSupportFragment;->show(Landroid/support/v4/app/FragmentManager;)V

    :cond_34
    return-void
.end method

.method public onResume()V
    .registers 2

    invoke-super {p0}, Lco/vine/android/FindFriendsBaseFragment;->onResume()V

    invoke-virtual {p0}, Lco/vine/android/FindFriendsNUXAddressFragment;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_d

    const/4 v0, -0x1

    invoke-virtual {p0, v0}, Lco/vine/android/FindFriendsNUXAddressFragment;->onMoveTo(I)V

    :cond_d
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .registers 9

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mFilterRunnable:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    invoke-interface {p1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mSearchQuery:Ljava/lang/String;

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mSearchQuery:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1f

    iget-object v0, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Lco/vine/android/FindFriendsNUXAddressFragment;->mFilterRunnable:Ljava/lang/Runnable;

    const-wide/16 v2, 0x12c

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :goto_1e
    return-void

    :cond_1f
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lco/vine/android/FindFriendsNUXAddressFragment;->restartLoader(I)Z

    goto :goto_1e
.end method

.method protected startProfileActivity(J)V
    .registers 6

    invoke-virtual {p0}, Lco/vine/android/FindFriendsNUXAddressFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    const-string v1, "Find Friends: Address"

    const/4 v2, 0x0

    invoke-static {v0, p1, p2, v1, v2}, Lco/vine/android/ProfileActivity;->start(Landroid/content/Context;JLjava/lang/String;Z)V

    return-void
.end method
