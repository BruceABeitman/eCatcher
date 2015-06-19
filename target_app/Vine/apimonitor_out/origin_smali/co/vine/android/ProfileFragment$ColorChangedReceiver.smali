.class Lco/vine/android/ProfileFragment$ColorChangedReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ProfileFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/ProfileFragment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorChangedReceiver"
.end annotation


# instance fields
.field final synthetic this$0:Lco/vine/android/ProfileFragment;


# direct methods
.method private constructor <init>(Lco/vine/android/ProfileFragment;)V
    .registers 2

    iput-object p1, p0, Lco/vine/android/ProfileFragment$ColorChangedReceiver;->this$0:Lco/vine/android/ProfileFragment;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lco/vine/android/ProfileFragment;Lco/vine/android/ProfileFragment$1;)V
    .registers 3

    invoke-direct {p0, p1}, Lco/vine/android/ProfileFragment$ColorChangedReceiver;-><init>(Lco/vine/android/ProfileFragment;)V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .registers 8

    if-eqz p2, :cond_5b

    const-string v1, "co.vine.android.profileColor"

    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ColorChangedReceiver;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$400(Lco/vine/android/ProfileFragment;)Lco/vine/android/api/VineUser;

    move-result-object v1

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ColorChangedReceiver;->this$0:Lco/vine/android/ProfileFragment;

    iget-boolean v1, v1, Lco/vine/android/ProfileFragment;->mFocused:Z

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ColorChangedReceiver;->this$0:Lco/vine/android/ProfileFragment;

    invoke-virtual {v1}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    check-cast v0, Lco/vine/android/BaseControllerActionBarActivity;

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ColorChangedReceiver;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$400(Lco/vine/android/ProfileFragment;)Lco/vine/android/api/VineUser;

    move-result-object v1

    invoke-static {v0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "profile_background"

    sget v4, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lco/vine/android/api/VineUser;->profileBackground:I

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ColorChangedReceiver;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$400(Lco/vine/android/ProfileFragment;)Lco/vine/android/api/VineUser;

    move-result-object v1

    iget v1, v1, Lco/vine/android/api/VineUser;->profileBackground:I

    invoke-virtual {v0, v1}, Lco/vine/android/BaseControllerActionBarActivity;->setActionBarColor(I)V

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ColorChangedReceiver;->this$0:Lco/vine/android/ProfileFragment;

    #getter for: Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;
    invoke-static {v1}, Lco/vine/android/ProfileFragment;->access$400(Lco/vine/android/ProfileFragment;)Lco/vine/android/api/VineUser;

    move-result-object v1

    iget v1, v1, Lco/vine/android/api/VineUser;->profileBackground:I

    invoke-virtual {v0, v1}, Lco/vine/android/BaseControllerActionBarActivity;->notifyColorChange(I)V

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ColorChangedReceiver;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    if-eqz v1, :cond_5b

    iget-object v1, p0, Lco/vine/android/ProfileFragment$ColorChangedReceiver;->this$0:Lco/vine/android/ProfileFragment;

    iget-object v1, v1, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    invoke-virtual {v1}, Lco/vine/android/widget/GenericTimelineAdapter;->notifyDataSetChanged()V

    :cond_5b
    return-void
.end method
