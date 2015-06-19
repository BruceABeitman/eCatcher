.class Lco/vine/android/HomeTimelineFragment$HomeTimeLineSessionListener;
.super Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;
.source "HomeTimelineFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/HomeTimelineFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HomeTimeLineSessionListener"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/HomeTimelineFragment;


# direct methods
.method private constructor <init>(Lco/vine/android/HomeTimelineFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/HomeTimelineFragment$HomeTimeLineSessionListener;->this$0:Lco/vine/android/HomeTimelineFragment;

    invoke-direct {p0, p1}, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;-><init>(Lco/vine/android/BaseTimelineFragment;)V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/HomeTimelineFragment;Lco/vine/android/HomeTimelineFragment$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/HomeTimelineFragment$HomeTimeLineSessionListener;-><init>(Lco/vine/android/HomeTimelineFragment;)V

    return-void
.end method


# virtual methods
.method public onFetchClientFlagsComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineClientFlags;Z)V
    .registers 8

    invoke-super/range {p0 .. p5}, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->onFetchClientFlagsComplete(Ljava/lang/String;ILjava/lang/String;Lco/vine/android/api/VineClientFlags;Z)V

    const/16 v0, 0xc8

    if-ne p2, v0, :cond_24

    iget-object v0, p0, Lco/vine/android/HomeTimelineFragment$HomeTimeLineSessionListener;->this$0:Lco/vine/android/HomeTimelineFragment;

    invoke-virtual {v0}, Lco/vine/android/HomeTimelineFragment;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lco/vine/android/HomeTimelineFragment$HomeTimeLineSessionListener;->this$0:Lco/vine/android/HomeTimelineFragment;

    #getter for: Lco/vine/android/HomeTimelineFragment;->mInviteBottomBanner:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lco/vine/android/HomeTimelineFragment;->access$100(Lco/vine/android/HomeTimelineFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_24

    if-eqz p5, :cond_24

    iget-object v0, p0, Lco/vine/android/HomeTimelineFragment$HomeTimeLineSessionListener;->this$0:Lco/vine/android/HomeTimelineFragment;

    #getter for: Lco/vine/android/HomeTimelineFragment;->mInviteBottomBanner:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lco/vine/android/HomeTimelineFragment;->access$100(Lco/vine/android/HomeTimelineFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_24
    return-void
.end method

.method public onMobileDataNetworkActivated()V
    .registers 3

    invoke-super {p0}, Lco/vine/android/BaseTimelineFragment$TimeLineSessionListener;->onMobileDataNetworkActivated()V

    iget-object v0, p0, Lco/vine/android/HomeTimelineFragment$HomeTimeLineSessionListener;->this$0:Lco/vine/android/HomeTimelineFragment;

    invoke-virtual {v0}, Lco/vine/android/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/util/ClientFlagsHelper;->shouldShowClientFlagsBanner(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lco/vine/android/HomeTimelineFragment$HomeTimeLineSessionListener;->this$0:Lco/vine/android/HomeTimelineFragment;

    invoke-virtual {v0}, Lco/vine/android/HomeTimelineFragment;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lco/vine/android/HomeTimelineFragment$HomeTimeLineSessionListener;->this$0:Lco/vine/android/HomeTimelineFragment;

    #getter for: Lco/vine/android/HomeTimelineFragment;->mInviteBottomBanner:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lco/vine/android/HomeTimelineFragment;->access$100(Lco/vine/android/HomeTimelineFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    if-eqz v0, :cond_2a

    iget-object v0, p0, Lco/vine/android/HomeTimelineFragment$HomeTimeLineSessionListener;->this$0:Lco/vine/android/HomeTimelineFragment;

    #getter for: Lco/vine/android/HomeTimelineFragment;->mInviteBottomBanner:Landroid/widget/FrameLayout;
    invoke-static {v0}, Lco/vine/android/HomeTimelineFragment;->access$100(Lco/vine/android/HomeTimelineFragment;)Landroid/widget/FrameLayout;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/FrameLayout;->setVisibility(I)V

    :cond_2a
    return-void
.end method
