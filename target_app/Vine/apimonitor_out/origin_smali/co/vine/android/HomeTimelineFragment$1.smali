.class Lco/vine/android/HomeTimelineFragment$1;
.super Ljava/lang/Object;
.source "HomeTimelineFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lco/vine/android/HomeTimelineFragment;->onActivityCreated(Landroid/os/Bundle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/HomeTimelineFragment;


# direct methods
.method constructor <init>(Lco/vine/android/HomeTimelineFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/HomeTimelineFragment$1;->this$0:Lco/vine/android/HomeTimelineFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .registers 5

    const-string v1, "InviteBanner"

    invoke-static {v1}, Lco/vine/android/util/FlurryUtils;->trackVisitFindFriends(Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    iget-object v1, p0, Lco/vine/android/HomeTimelineFragment$1;->this$0:Lco/vine/android/HomeTimelineFragment;

    invoke-virtual {v1}, Lco/vine/android/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const-class v2, Lco/vine/android/FindFriendsActivity;

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    iget-object v1, p0, Lco/vine/android/HomeTimelineFragment$1;->this$0:Lco/vine/android/HomeTimelineFragment;

    invoke-virtual {v1}, Lco/vine/android/HomeTimelineFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Landroid/support/v4/app/FragmentActivity;->startActivityForResult(Landroid/content/Intent;I)V

    return-void
.end method
