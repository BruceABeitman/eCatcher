.class public Lco/vine/android/ProfileFragment;
.super Lco/vine/android/BaseTimelineFragment;
.source "ProfileFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;
.implements Lco/vine/android/ViewOffsetResolver;
.implements Lco/vine/android/widget/SpanClickListener;
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lco/vine/android/ProfileFragment$ColorChangedReceiver;,
        Lco/vine/android/ProfileFragment$PrivateAccountAdapter;,
        Lco/vine/android/ProfileFragment$ProfileListener;
    }
.end annotation


# static fields
.field public static final ARG_FOLLOW_EVENT_SOURCE:Ljava/lang/String; = "event_source"

.field public static final ARG_SHOW_PROFILE_ACTIONS:Ljava/lang/String; = "show_profile_actions"

.field public static final ARG_USER_ID:Ljava/lang/String; = "user_id"

.field public static final ARG_VANITY_URL:Ljava/lang/String; = "vanity_url"

.field private static final EVENT_SOURCE_TITLE:Ljava/lang/String; = "Profile: Tab "

.field public static final FRAGMENT_TAG:Ljava/lang/String; = "profile"

.field public static final MODE_LIKES:I = 0x2

.field public static final MODE_POSTS:I = 0x1

.field private static final STATE_HEADER_ADDED:Ljava/lang/String; = "stated_header_added"

.field private static final STATE_MODE:Ljava/lang/String; = "state_mode"

.field private static final TAG:Ljava/lang/String; = "ProfileFragment"


# instance fields
.field private mBold:Lco/vine/android/widget/TypefacesSpan;

.field private final mColorChangedReceiver:Lco/vine/android/ProfileFragment$ColorChangedReceiver;

.field private mColorChangedReceiverIsRegistered:Z

.field private mCurrentMode:I

.field private mCurrentTab:I

.field private mDrawerListener:Landroid/view/animation/Animation$AnimationListener;

.field protected mFlurryFollowEventSource:Ljava/lang/String;

.field private mFollowHeader:Landroid/widget/LinearLayout;

.field private mHeaderAdded:Z

.field private mHideProfileReposts:Z

.field private mHideRevines:Landroid/view/MenuItem;

.field private mIsMe:Z

.field private mIsUserBlocked:Z

.field private mLikePage:I

.field private mPostPage:I

.field mPrivateAdapter:Lco/vine/android/ProfileFragment$PrivateAccountAdapter;

.field private mProfileBackground:I

.field mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

.field private mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

.field private mShowProfileActions:Z

.field private mTakeFocus:Z

.field private mUser:Lco/vine/android/api/VineUser;

.field private mUserId:J

.field private mUserProfileImageKeyForShortcut:Lco/vine/android/util/image/ImageKey;

.field private mVineGreen:I

.field private mWaitingToStartUserId:J


# direct methods
.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Lco/vine/android/BaseTimelineFragment;-><init>()V

    new-instance v0, Lco/vine/android/ProfileFragment$ColorChangedReceiver;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lco/vine/android/ProfileFragment$ColorChangedReceiver;-><init>(Lco/vine/android/ProfileFragment;Lco/vine/android/ProfileFragment$1;)V

    iput-object v0, p0, Lco/vine/android/ProfileFragment;->mColorChangedReceiver:Lco/vine/android/ProfileFragment$ColorChangedReceiver;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lco/vine/android/ProfileFragment;->mWaitingToStartUserId:J

    new-instance v0, Lco/vine/android/ProfileFragment$1;

    invoke-direct {v0, p0}, Lco/vine/android/ProfileFragment$1;-><init>(Lco/vine/android/ProfileFragment;)V

    iput-object v0, p0, Lco/vine/android/ProfileFragment;->mDrawerListener:Landroid/view/animation/Animation$AnimationListener;

    return-void
.end method

.method static synthetic access$100(Lco/vine/android/ProfileFragment;)J
    .registers 3

    iget-wide v0, p0, Lco/vine/android/ProfileFragment;->mWaitingToStartUserId:J

    return-wide v0
.end method

.method static synthetic access$1000(Lco/vine/android/ProfileFragment;)J
    .registers 3

    iget-wide v0, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    return-wide v0
.end method

.method static synthetic access$102(Lco/vine/android/ProfileFragment;J)J
    .registers 3

    iput-wide p1, p0, Lco/vine/android/ProfileFragment;->mWaitingToStartUserId:J

    return-wide p1
.end method

.method static synthetic access$1102(Lco/vine/android/ProfileFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/ProfileFragment;->mIsUserBlocked:Z

    return p1
.end method

.method static synthetic access$1200(Lco/vine/android/ProfileFragment;)V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/ProfileFragment;->bindProfileDataAndCounts()V

    return-void
.end method

.method static synthetic access$1300(Lco/vine/android/ProfileFragment;)Landroid/widget/LinearLayout;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mFollowHeader:Landroid/widget/LinearLayout;

    return-object v0
.end method

.method static synthetic access$1400(Lco/vine/android/ProfileFragment;J)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lco/vine/android/ProfileFragment;->setUserId(J)V

    return-void
.end method

.method static synthetic access$1502(Lco/vine/android/ProfileFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/ProfileFragment;->mHideProfileReposts:Z

    return p1
.end method

.method static synthetic access$1600(Lco/vine/android/ProfileFragment;)V
    .registers 1

    invoke-direct {p0}, Lco/vine/android/ProfileFragment;->initProfile()V

    return-void
.end method

.method static synthetic access$200(Lco/vine/android/ProfileFragment;)Lco/vine/android/widget/SectionAdapter;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    return-object v0
.end method

.method static synthetic access$202(Lco/vine/android/ProfileFragment;Lco/vine/android/widget/SectionAdapter;)Lco/vine/android/widget/SectionAdapter;
    .registers 2

    iput-object p1, p0, Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    return-object p1
.end method

.method static synthetic access$300(Lco/vine/android/ProfileFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/ProfileFragment;->mIsMe:Z

    return v0
.end method

.method static synthetic access$302(Lco/vine/android/ProfileFragment;Z)Z
    .registers 2

    iput-boolean p1, p0, Lco/vine/android/ProfileFragment;->mIsMe:Z

    return p1
.end method

.method static synthetic access$400(Lco/vine/android/ProfileFragment;)Lco/vine/android/api/VineUser;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    return-object v0
.end method

.method static synthetic access$402(Lco/vine/android/ProfileFragment;Lco/vine/android/api/VineUser;)Lco/vine/android/api/VineUser;
    .registers 2

    iput-object p1, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    return-object p1
.end method

.method static synthetic access$500(Lco/vine/android/ProfileFragment;)Z
    .registers 2

    invoke-direct {p0}, Lco/vine/android/ProfileFragment;->isLocked()Z

    move-result v0

    return v0
.end method

.method static synthetic access$600(Lco/vine/android/ProfileFragment;)Z
    .registers 2

    iget-boolean v0, p0, Lco/vine/android/ProfileFragment;->mTakeFocus:Z

    return v0
.end method

.method static synthetic access$700(Lco/vine/android/ProfileFragment;Z)V
    .registers 2

    invoke-direct {p0, p1}, Lco/vine/android/ProfileFragment;->setup(Z)V

    return-void
.end method

.method static synthetic access$800(Lco/vine/android/ProfileFragment;)Lco/vine/android/util/image/ImageKey;
    .registers 2

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mUserProfileImageKeyForShortcut:Lco/vine/android/util/image/ImageKey;

    return-object v0
.end method

.method static synthetic access$900(Lco/vine/android/ProfileFragment;Landroid/graphics/Bitmap;)V
    .registers 2

    invoke-direct {p0, p1}, Lco/vine/android/ProfileFragment;->addProfileShortCut(Landroid/graphics/Bitmap;)V

    return-void
.end method

.method private addProfileShortCut(Landroid/graphics/Bitmap;)V
    .registers 10

    const/16 v7, 0x80

    const/4 v4, 0x0

    iput-object v4, p0, Lco/vine/android/ProfileFragment;->mUserProfileImageKeyForShortcut:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    if-eqz v0, :cond_6c

    invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackCreateProfileShortCut()V

    new-instance v3, Landroid/content/Intent;

    const-class v4, Lco/vine/android/StartActivity;

    invoke-direct {v3, v0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "android.intent.action.VIEW"

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "https://vine.co/u/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    iget-wide v5, v5, Lco/vine/android/api/VineUser;->userId:J

    invoke-virtual {v4, v5, v6}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v4}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 v4, 0x1000

    invoke-virtual {v3, v4}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v4, "android.intent.extra.shortcut.INTENT"

    invoke-virtual {v1, v4, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "android.intent.extra.shortcut.NAME"

    iget-object v5, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    iget-object v5, v5, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v4, 0x1

    invoke-static {p1, v7, v7, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    const-string v4, "android.intent.extra.shortcut.ICON"

    invoke-virtual {v1, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    const-string v4, "com.android.launcher.action.INSTALL_SHORTCUT"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplicationContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    const v4, 0x7f0e021b

    invoke-static {v0, v4}, Lco/vine/android/util/Util;->showCenteredToast(Landroid/content/Context;I)V

    :cond_6c
    return-void
.end method

.method private bindProfileDataAndCounts()V
    .registers 6

    const/4 v4, 0x0

    const/4 v3, 0x0

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    if-nez v1, :cond_7

    :goto_6
    return-void

    :cond_7
    iget-boolean v1, p0, Lco/vine/android/ProfileFragment;->mIsMe:Z

    if-eqz v1, :cond_99

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    const-string v2, "settings_profile_name"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    const-string v2, "settings_profile_description"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    const-string v2, "settings_profile_location"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lco/vine/android/api/VineUser;->location:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    const-string v2, "settings_profile_email"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lco/vine/android/api/VineUser;->email:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    const-string v2, "settings_profile_phone"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lco/vine/android/api/VineUser;->phoneNumber:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    const-string v2, "settings_profile_avatar_url"

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    const-string v2, "profile_follow_count"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lco/vine/android/api/VineUser;->followingCount:I

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    const-string v2, "profile_follower_count"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lco/vine/android/api/VineUser;->followerCount:I

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    const-string v2, "profile_authored_post_count"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lco/vine/android/api/VineUser;->authoredPostCount:I

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    const-string v2, "profile_post_count"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lco/vine/android/api/VineUser;->postCount:I

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    const-string v2, "profile_like_count"

    invoke-interface {v0, v2, v4}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lco/vine/android/api/VineUser;->likeCount:I

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    const-string v2, "profile_loop_count"

    const-wide/16 v3, 0x0

    invoke-interface {v0, v2, v3, v4}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v2

    iput-wide v2, v1, Lco/vine/android/api/VineUser;->loopCount:J

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    const-string v2, "profile_background"

    sget v3, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v1, Lco/vine/android/api/VineUser;->profileBackground:I

    :cond_99
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    invoke-virtual {p0, v1}, Lco/vine/android/ProfileFragment;->bindUserData(Lco/vine/android/api/VineUser;)V

    goto/16 :goto_6
.end method

.method private dismissDropdown()V
    .registers 9

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getView()Landroid/view/View;

    move-result-object v7

    if-eqz v7, :cond_3c

    const v1, 0x7f0a0196

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    if-eqz v2, :cond_23

    new-instance v0, Lco/vine/android/animation/HeightAnimation;

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    const/4 v3, 0x0

    const-wide/16 v4, 0x12c

    invoke-direct/range {v0 .. v5}, Lco/vine/android/animation/HeightAnimation;-><init>(Landroid/app/Activity;Landroid/view/View;ZJ)V

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mDrawerListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    :cond_23
    const v1, 0x7f0a0193

    invoke-virtual {v7, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v6

    instance-of v1, v6, Landroid/widget/ImageView;

    if-eqz v1, :cond_3c

    check-cast v6, Landroid/widget/ImageView;

    new-instance v1, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v3, 0x4c00

    sget-object v4, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v1, v3, v4}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v6, v1}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    :cond_3c
    return-void
.end method

.method private initProfile()V
    .registers 4

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    if-eqz v0, :cond_c

    invoke-direct {p0}, Lco/vine/android/ProfileFragment;->bindProfileDataAndCounts()V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lco/vine/android/ProfileFragment;->hideProgress(I)V

    :goto_b
    return-void

    :cond_c
    iget-boolean v0, p0, Lco/vine/android/ProfileFragment;->mIsMe:Z

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v1, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->fetchUsersMe(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/vine/android/ProfileFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_b

    :cond_1c
    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v1, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->fetchUser(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/vine/android/ProfileFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_b
.end method

.method private isLocked()Z
    .registers 2

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    if-eqz v0, :cond_1a

    iget-boolean v0, p0, Lco/vine/android/ProfileFragment;->mIsMe:Z

    if-nez v0, :cond_1a

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    invoke-virtual {v0}, Lco/vine/android/api/VineUser;->isPrivateLocked()Z

    move-result v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    invoke-virtual {v0}, Lco/vine/android/api/VineUser;->isBlocked()Z

    move-result v0

    if-eqz v0, :cond_1a

    :cond_18
    const/4 v0, 0x1

    :goto_19
    return v0

    :cond_1a
    const/4 v0, 0x0

    goto :goto_19
.end method

.method private setRevineOptionText(Lco/vine/android/api/VineUser;Z)V
    .registers 6

    const/4 v2, 0x1

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mHideRevines:Landroid/view/MenuItem;

    if-eqz v0, :cond_11

    if-eqz p1, :cond_12

    invoke-virtual {p1}, Lco/vine/android/api/VineUser;->isFollowing()Z

    move-result v1

    if-nez v1, :cond_12

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    :cond_11
    :goto_11
    return-void

    :cond_12
    if-eqz p2, :cond_1e

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0e010b

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_11

    :cond_1e
    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setVisible(Z)Landroid/view/MenuItem;

    const v1, 0x7f0e021c

    invoke-interface {v0, v1}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_11
.end method

.method private setUserId(J)V
    .registers 6

    iput-wide p1, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mVineSpanClicker:Lco/vine/android/VineSpanClicker;

    iget-wide v1, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/VineSpanClicker;->setUserId(J)V

    return-void
.end method

.method private setup(Z)V
    .registers 11

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    if-nez v0, :cond_98

    invoke-direct {p0}, Lco/vine/android/ProfileFragment;->isLocked()Z

    move-result v0

    if-eqz v0, :cond_59

    new-instance v0, Lco/vine/android/ProfileHeaderAdapter;

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    const/4 v4, 0x1

    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    invoke-virtual {v3}, Lco/vine/android/api/VineUser;->isBlocked()Z

    move-result v5

    iget-object v6, p0, Lco/vine/android/ProfileFragment;->mFlurryFollowEventSource:Ljava/lang/String;

    iget-boolean v7, p0, Lco/vine/android/ProfileFragment;->mHideProfileReposts:Z

    iget-boolean v8, p0, Lco/vine/android/ProfileFragment;->mShowProfileActions:Z

    move-object v3, p0

    invoke-direct/range {v0 .. v8}, Lco/vine/android/ProfileHeaderAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;Lco/vine/android/ProfileFragment;ZZLjava/lang/String;ZZ)V

    iput-object v0, p0, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    new-instance v0, Lco/vine/android/ProfileFragment$PrivateAccountAdapter;

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    invoke-virtual {v1}, Lco/vine/android/api/VineUser;->isBlocked()Z

    move-result v1

    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    invoke-virtual {v2}, Lco/vine/android/api/VineUser;->isPrivateLocked()Z

    move-result v2

    invoke-direct {v0, p0, v1, v2}, Lco/vine/android/ProfileFragment$PrivateAccountAdapter;-><init>(Lco/vine/android/ProfileFragment;ZZ)V

    iput-object v0, p0, Lco/vine/android/ProfileFragment;->mPrivateAdapter:Lco/vine/android/ProfileFragment$PrivateAccountAdapter;

    new-instance v0, Lco/vine/android/widget/SectionAdapter;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/widget/BaseAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mPrivateAdapter:Lco/vine/android/ProfileFragment$PrivateAccountAdapter;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lco/vine/android/widget/SectionAdapter;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    invoke-virtual {v0}, Lco/vine/android/widget/SectionAdapter;->notifyDataSetChanged()V

    :cond_58
    :goto_58
    return-void

    :cond_59
    new-instance v0, Lco/vine/android/ProfileHeaderAdapter;

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    const/4 v4, 0x0

    const/4 v5, 0x0

    iget-object v6, p0, Lco/vine/android/ProfileFragment;->mFlurryFollowEventSource:Ljava/lang/String;

    iget-boolean v7, p0, Lco/vine/android/ProfileFragment;->mHideProfileReposts:Z

    iget-boolean v8, p0, Lco/vine/android/ProfileFragment;->mShowProfileActions:Z

    move-object v3, p0

    invoke-direct/range {v0 .. v8}, Lco/vine/android/ProfileHeaderAdapter;-><init>(Landroid/content/Context;Lco/vine/android/client/AppController;Lco/vine/android/ProfileFragment;ZZLjava/lang/String;ZZ)V

    iput-object v0, p0, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    new-instance v0, Lco/vine/android/widget/SectionAdapter;

    const/4 v1, 0x2

    new-array v1, v1, [Landroid/widget/BaseAdapter;

    const/4 v2, 0x0

    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    aput-object v3, v1, v2

    invoke-direct {v0, v1}, Lco/vine/android/widget/SectionAdapter;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    if-eqz p1, :cond_8b

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/GenericTimelineAdapter;->onResume(Z)V

    :cond_8b
    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    invoke-virtual {v0, p0}, Lco/vine/android/widget/GenericTimelineAdapter;->setOffsetResolver(Lco/vine/android/ViewOffsetResolver;)V

    goto :goto_58

    :cond_98
    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    if-eqz v0, :cond_58

    invoke-direct {p0}, Lco/vine/android/ProfileFragment;->isLocked()Z

    move-result v0

    if-nez v0, :cond_58

    if-eqz p1, :cond_58

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/GenericTimelineAdapter;->onResume(Z)V

    goto :goto_58
.end method


# virtual methods
.method bindUserData(Lco/vine/android/api/VineUser;)V
    .registers 11

    const/4 v8, 0x0

    iget v6, p1, Lco/vine/android/api/VineUser;->profileBackground:I

    if-gtz v6, :cond_9

    sget v6, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    iput v6, p1, Lco/vine/android/api/VineUser;->profileBackground:I

    :cond_9
    iget v6, p1, Lco/vine/android/api/VineUser;->profileBackground:I

    if-lez v6, :cond_3a

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    instance-of v6, v6, Lco/vine/android/ProfileActivity;

    if-eqz v6, :cond_2b

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Lco/vine/android/BaseControllerActionBarActivity;

    iget v7, p1, Lco/vine/android/api/VineUser;->profileBackground:I

    invoke-virtual {v6, v7}, Lco/vine/android/BaseControllerActionBarActivity;->setActionBarColor(I)V

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    check-cast v6, Lco/vine/android/BaseControllerActionBarActivity;

    iget v7, p1, Lco/vine/android/api/VineUser;->profileBackground:I

    invoke-virtual {v6, v7}, Lco/vine/android/BaseControllerActionBarActivity;->notifyColorChange(I)V

    :cond_2b
    iget-object v6, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    if-eqz v6, :cond_36

    iget-object v6, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    iget v7, p1, Lco/vine/android/api/VineUser;->profileBackground:I

    invoke-virtual {v6, v7}, Lco/vine/android/widget/GenericTimelineAdapter;->setProfileColor(I)V

    :cond_36
    iget v6, p1, Lco/vine/android/api/VineUser;->profileBackground:I

    iput v6, p0, Lco/vine/android/ProfileFragment;->mProfileBackground:I

    :cond_3a
    iget-object v6, p0, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    invoke-virtual {v6, p1}, Lco/vine/android/ProfileHeaderAdapter;->bindUser(Lco/vine/android/api/VineUser;)V

    invoke-virtual {p1}, Lco/vine/android/api/VineUser;->hasFollowApprovalPending()Z

    move-result v6

    if-eqz v6, :cond_86

    iget-boolean v6, p0, Lco/vine/android/ProfileFragment;->mHeaderAdded:Z

    if-nez v6, :cond_86

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    const v6, 0x7f030043

    const/4 v7, 0x0

    invoke-virtual {v2, v6, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/LinearLayout;

    iget-object v6, p0, Lco/vine/android/ProfileFragment;->mListView:Landroid/widget/ListView;

    if-eqz v6, :cond_81

    iget-object v6, p0, Lco/vine/android/ProfileFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v6, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V

    const v6, 0x7f0a00fe

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/RelativeLayout;

    invoke-virtual {v3, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    const v6, 0x7f0a00fb

    invoke-virtual {v0, v6}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/RelativeLayout;

    invoke-virtual {v4, p0}, Landroid/widget/RelativeLayout;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    iput-object v0, p0, Lco/vine/android/ProfileFragment;->mFollowHeader:Landroid/widget/LinearLayout;

    const/4 v6, 0x1

    iput-boolean v6, p0, Lco/vine/android/ProfileFragment;->mHeaderAdded:Z

    :cond_81
    iget-object v6, p0, Lco/vine/android/ProfileFragment;->mFollowHeader:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :cond_86
    invoke-virtual {p1}, Lco/vine/android/api/VineUser;->areRepostsEnabled()Z

    move-result v6

    invoke-direct {p0, p1, v6}, Lco/vine/android/ProfileFragment;->setRevineOptionText(Lco/vine/android/api/VineUser;Z)V

    iget v6, p1, Lco/vine/android/api/VineUser;->profileBackground:I

    if-lez v6, :cond_b1

    iget-object v6, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    if-eqz v6, :cond_b1

    iget-object v6, p0, Lco/vine/android/ProfileFragment;->mListView:Landroid/widget/ListView;

    if-eqz v6, :cond_b1

    iget-object v6, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    iget v7, p1, Lco/vine/android/api/VineUser;->profileBackground:I

    invoke-virtual {v6, v7}, Lco/vine/android/widget/GenericTimelineAdapter;->setProfileColor(I)V

    iget-object v5, p0, Lco/vine/android/ProfileFragment;->mListView:Landroid/widget/ListView;

    check-cast v5, Lcom/twitter/android/widget/RefreshableListView;

    const/high16 v6, -0x100

    iget v7, p1, Lco/vine/android/api/VineUser;->profileBackground:I

    or-int v1, v6, v7

    invoke-virtual {v5, v1}, Lcom/twitter/android/widget/RefreshableListView;->setPullToRefreshBackgroundColor(I)V

    const/4 v6, -0x1

    invoke-virtual {v5, v6}, Lcom/twitter/android/widget/RefreshableListView;->colorizePTR(I)V

    :cond_b1
    return-void
.end method

.method public changeMode(I)V
    .registers 8

    const/4 v5, 0x3

    const/4 v1, 0x2

    const/4 v4, 0x0

    const/4 v3, 0x1

    packed-switch p1, :pswitch_data_4e

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    iget v0, p0, Lco/vine/android/ProfileFragment;->mCurrentMode:I

    if-eq v0, v1, :cond_7

    iput v1, p0, Lco/vine/android/ProfileFragment;->mCurrentMode:I

    const-string v0, "Profile: Tab 2"

    invoke-virtual {p0, v0}, Lco/vine/android/ProfileFragment;->setFlurryEventSource(Ljava/lang/String;)V

    new-instance v0, Lco/vine/android/widget/SectionAdapter;

    new-array v1, v3, [Landroid/widget/BaseAdapter;

    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lco/vine/android/widget/SectionAdapter;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    invoke-virtual {p0, v5, v3}, Lco/vine/android/ProfileFragment;->fetchContent(IZ)V

    goto :goto_7

    :pswitch_2b
    iget v0, p0, Lco/vine/android/ProfileFragment;->mCurrentMode:I

    if-eq v0, v3, :cond_7

    iput v3, p0, Lco/vine/android/ProfileFragment;->mCurrentMode:I

    new-instance v0, Lco/vine/android/widget/SectionAdapter;

    new-array v1, v3, [Landroid/widget/BaseAdapter;

    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    aput-object v2, v1, v4

    invoke-direct {v0, v1}, Lco/vine/android/widget/SectionAdapter;-><init>([Landroid/widget/BaseAdapter;)V

    iput-object v0, p0, Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mListView:Landroid/widget/ListView;

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    const-string v0, "Profile: Tab 1"

    invoke-virtual {p0, v0}, Lco/vine/android/ProfileFragment;->setFlurryEventSource(Ljava/lang/String;)V

    invoke-virtual {p0, v5, v3}, Lco/vine/android/ProfileFragment;->fetchContent(IZ)V

    goto :goto_7

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_2b
        :pswitch_8
    .end packed-switch
.end method

.method protected fetchContent(IZ)V
    .registers 16

    const/4 v11, 0x0

    const/16 v2, 0xa

    const/4 v0, 0x2

    iput p1, p0, Lco/vine/android/ProfileFragment;->mLastFetchType:I

    invoke-virtual {p0, p1}, Lco/vine/android/ProfileFragment;->hasPendingRequest(I)Z

    move-result v1

    if-eqz v1, :cond_d

    :goto_c
    return-void

    :cond_d
    packed-switch p1, :pswitch_data_46

    :goto_10
    iget-boolean v1, p0, Lco/vine/android/ProfileFragment;->mHideProfileReposts:Z

    if-eqz v1, :cond_43

    move v5, v2

    :goto_15
    iget v1, p0, Lco/vine/android/ProfileFragment;->mCurrentMode:I

    if-ne v1, v0, :cond_1a

    const/4 v5, 0x3

    :cond_1a
    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v1

    iget-wide v3, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    iget v6, p0, Lco/vine/android/ProfileFragment;->mNextPage:I

    iget-wide v7, p0, Lco/vine/android/ProfileFragment;->mAnchor:J

    iget-wide v9, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-static {v9, v10}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v10

    move v9, p2

    move-object v12, v11

    invoke-virtual/range {v0 .. v12}, Lco/vine/android/client/AppController;->fetchPosts(Lco/vine/android/client/Session;IJIIJZLjava/lang/String;Ljava/lang/String;Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0, p1}, Lco/vine/android/ProfileFragment;->addRequest(Ljava/lang/String;I)Ljava/lang/String;

    goto :goto_c

    :pswitch_38
    invoke-virtual {p0, p1}, Lco/vine/android/ProfileFragment;->showProgress(I)V

    :pswitch_3b
    const/4 v1, 0x1

    iput v1, p0, Lco/vine/android/ProfileFragment;->mNextPage:I

    const-wide/16 v3, 0x0

    iput-wide v3, p0, Lco/vine/android/ProfileFragment;->mAnchor:J

    goto :goto_10

    :cond_43
    move v5, v0

    goto :goto_15

    nop

    :pswitch_data_46
    .packed-switch 0x2
        :pswitch_38
        :pswitch_3b
        :pswitch_3b
    .end packed-switch
.end method

.method protected fetchPosts(IJZ)Ljava/lang/String;
    .registers 7

    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Don\'t call fetch posts for ProfileFragment, this fragment handles its own fetching."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public getOffset(Landroid/widget/BaseAdapter;)I
    .registers 4

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mSectionAdapter:Lco/vine/android/widget/SectionAdapter;

    invoke-virtual {v1, p1}, Lco/vine/android/widget/SectionAdapter;->getMyAdapterIndex(Landroid/widget/BaseAdapter;)I

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/SectionAdapter;->getPositionOffset(I)I

    move-result v0

    return v0
.end method

.method public getUserId()J
    .registers 3

    iget-wide v0, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    return-wide v0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .registers 9

    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onActivityCreated(Landroid/os/Bundle;)V

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v2

    const-string v3, "take_focus"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_2c

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v2, v0, Lco/vine/android/HomeTabActivity;

    if-eqz v2, :cond_2c

    move-object v1, v0

    check-cast v1, Lco/vine/android/HomeTabActivity;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p0}, Lco/vine/android/HomeTabActivity;->showPage(ILandroid/support/v4/app/Fragment;)V

    invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z

    move-result v2

    if-eqz v2, :cond_2c

    const-string v2, "ProfileFragment"

    const-string v3, "Me tab took focus."

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2c
    new-instance v2, Lco/vine/android/widget/TypefacesSpan;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    invoke-static {v4}, Lco/vine/android/widget/Typefaces;->get(Landroid/content/Context;)Lco/vine/android/widget/Typefaces;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x4

    invoke-virtual {v4, v5, v6}, Lco/vine/android/widget/Typefaces;->getContentTypeface(II)Landroid/graphics/Typeface;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lco/vine/android/widget/TypefacesSpan;-><init>(Ljava/lang/String;Landroid/graphics/Typeface;)V

    iput-object v2, p0, Lco/vine/android/ProfileFragment;->mBold:Lco/vine/android/widget/TypefacesSpan;

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v2

    invoke-virtual {v2}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f090096

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getColor(I)I

    move-result v2

    iput v2, p0, Lco/vine/android/ProfileFragment;->mVineGreen:I

    iget-boolean v2, p0, Lco/vine/android/ProfileFragment;->mTakeFocus:Z

    invoke-direct {p0, v2}, Lco/vine/android/ProfileFragment;->setup(Z)V

    return-void
.end method

.method public onActivityResult(IILandroid/content/Intent;)V
    .registers 9

    const/4 v4, 0x1

    invoke-super {p0, p1, p2, p3}, Lco/vine/android/BaseTimelineFragment;->onActivityResult(IILandroid/content/Intent;)V

    packed-switch p1, :pswitch_data_26

    :cond_7
    :goto_7
    return-void

    :pswitch_8
    if-ne p2, v4, :cond_7

    iget-wide v0, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-lez v0, :cond_7

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v0, v4, v4}, Lco/vine/android/client/AppController;->fetchFriends(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/vine/android/ProfileFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    const/4 v1, 0x0

    invoke-virtual {v0, v4, v1}, Lco/vine/android/client/AppController;->fetchFriends(II)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/vine/android/ProfileFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_7

    :pswitch_data_26
    .packed-switch 0x1
        :pswitch_8
    .end packed-switch
.end method

.method public onClick(Landroid/view/View;)V
    .registers 21

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    sparse-switch v3, :sswitch_data_17a

    invoke-super/range {p0 .. p1}, Lco/vine/android/BaseTimelineFragment;->onClick(Landroid/view/View;)V

    :cond_a
    :goto_a
    return-void

    :sswitch_b
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v3, v0, v1, v5}, Lco/vine/android/ProfileHeaderAdapter;->onProfileHeaderClick(Landroid/view/View;Lco/vine/android/ProfileFragment;Lco/vine/android/api/VineUser;)V

    goto :goto_a

    :sswitch_1b
    move-object/from16 v0, p0

    iget-wide v5, v0, Lco/vine/android/ProfileFragment;->mWaitingToStartUserId:J

    const-wide/16 v17, -0x1

    cmp-long v3, v5, v17

    if-nez v3, :cond_a

    move-object/from16 v0, p0

    iget-wide v5, v0, Lco/vine/android/ProfileFragment;->mUserId:J

    move-object/from16 v0, p0

    iput-wide v5, v0, Lco/vine/android/ProfileFragment;->mWaitingToStartUserId:J

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v0, p0

    iget-wide v5, v0, Lco/vine/android/ProfileFragment;->mUserId:J

    const/4 v7, 0x1

    invoke-virtual {v3, v5, v6, v7}, Lco/vine/android/client/AppController;->fetchConversationRowIdFromUserRemoteId(JI)V

    goto :goto_a

    :sswitch_3a
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    move-object/from16 v0, p1

    move-object/from16 v1, p0

    invoke-virtual {v3, v0, v1, v5}, Lco/vine/android/ProfileHeaderAdapter;->onProfileHeaderClick(Landroid/view/View;Lco/vine/android/ProfileFragment;Lco/vine/android/api/VineUser;)V

    goto :goto_a

    :sswitch_4a
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-virtual {v3, v5, v6, v7}, Lco/vine/android/client/AppController;->acceptFollowRequest(Lco/vine/android/client/Session;J)Ljava/lang/String;

    goto :goto_a

    :sswitch_5e
    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    move-object/from16 v0, p0

    iget-object v5, v0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5}, Lco/vine/android/client/AppController;->getActiveSession()Lco/vine/android/client/Session;

    move-result-object v5

    move-object/from16 v0, p0

    iget-wide v6, v0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-virtual {v3, v5, v6, v7}, Lco/vine/android/client/AppController;->acceptRejectRequest(Lco/vine/android/client/Session;J)Ljava/lang/String;

    goto :goto_a

    :sswitch_72
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/ProfileFragment;->onDropDownClicked()V

    goto :goto_a

    :sswitch_76
    invoke-virtual/range {p0 .. p0}, Lco/vine/android/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v13

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    if-eqz v3, :cond_a

    if-eqz v13, :cond_a

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/ProfileFragment;->getView()Landroid/view/View;

    move-result-object v16

    if-eqz v16, :cond_a

    const v3, 0x7f0a0190

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v12

    const v3, 0x7f0a0196

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    if-eqz v4, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-nez v3, :cond_a7

    invoke-direct/range {p0 .. p0}, Lco/vine/android/ProfileFragment;->dismissDropdown()V

    goto/16 :goto_a

    :cond_a7
    if-eqz v12, :cond_a

    invoke-virtual {v4}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lco/vine/android/ProfileHeaderAdapter$DropdownHolder;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lco/vine/android/ProfileFragment;->mHideProfileReposts:Z

    if-eqz v3, :cond_131

    const v3, 0x7f0e021c

    :goto_b8
    invoke-virtual {v13, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v10

    iget-object v3, v14, Lco/vine/android/ProfileHeaderAdapter$DropdownHolder;->revineParent:Landroid/view/View;

    const/4 v5, 0x0

    invoke-virtual {v3, v5}, Landroid/view/View;->setVisibility(I)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ProfileFragment;->mBold:Lco/vine/android/widget/TypefacesSpan;

    iget-object v5, v14, Lco/vine/android/ProfileHeaderAdapter$DropdownHolder;->revineLabel:Landroid/widget/TextView;

    invoke-static {v3, v10, v5}, Lco/vine/android/util/Util;->setTextWithSpan(Ljava/lang/Object;Ljava/lang/String;Landroid/widget/TextView;)V

    new-instance v9, Landroid/text/SpannableStringBuilder;

    invoke-direct {v9, v10}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ProfileFragment;->mBold:Lco/vine/android/widget/TypefacesSpan;

    const/4 v5, 0x0

    invoke-virtual {v9}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v6

    const/16 v7, 0x21

    invoke-static {v9, v3, v5, v6, v7}, Lco/vine/android/util/Util;->safeSetSpan(Landroid/text/Spannable;Ljava/lang/Object;III)V

    iget-object v3, v14, Lco/vine/android/ProfileHeaderAdapter$DropdownHolder;->revineLabel:Landroid/widget/TextView;

    invoke-virtual {v3, v9}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    iget-object v5, v14, Lco/vine/android/ProfileHeaderAdapter$DropdownHolder;->revineIcon:Landroid/widget/ImageView;

    move-object/from16 v0, p0

    iget-boolean v3, v0, Lco/vine/android/ProfileFragment;->mHideProfileReposts:Z

    if-eqz v3, :cond_135

    const v3, 0x7f0201dd

    :goto_ee
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setImageResource(I)V

    new-instance v2, Lco/vine/android/animation/HeightAnimation;

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const/4 v5, 0x1

    const-wide/16 v6, 0x12c

    invoke-direct/range {v2 .. v7}, Lco/vine/android/animation/HeightAnimation;-><init>(Landroid/app/Activity;Landroid/view/View;ZJ)V

    move-object/from16 v0, p0

    iget-object v3, v0, Lco/vine/android/ProfileFragment;->mDrawerListener:Landroid/view/animation/Animation$AnimationListener;

    invoke-virtual {v2, v3}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    invoke-virtual {v4, v2}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    const v3, 0x7f0a0193

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v8

    instance-of v3, v8, Landroid/widget/ImageView;

    if-eqz v3, :cond_a

    move-object/from16 v0, p0

    iget v3, v0, Lco/vine/android/ProfileFragment;->mProfileBackground:I

    sget v5, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    if-ne v3, v5, :cond_139

    check-cast v8, Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v5, -0x100

    move-object/from16 v0, p0

    iget v6, v0, Lco/vine/android/ProfileFragment;->mVineGreen:I

    or-int/2addr v5, v6

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_a

    :cond_131
    const v3, 0x7f0e010b

    goto :goto_b8

    :cond_135
    const v3, 0x7f020192

    goto :goto_ee

    :cond_139
    check-cast v8, Landroid/widget/ImageView;

    new-instance v3, Landroid/graphics/PorterDuffColorFilter;

    const/high16 v5, -0x100

    move-object/from16 v0, p0

    iget v6, v0, Lco/vine/android/ProfileFragment;->mProfileBackground:I

    or-int/2addr v5, v6

    sget-object v6, Landroid/graphics/PorterDuff$Mode;->SRC_IN:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v3, v5, v6}, Landroid/graphics/PorterDuffColorFilter;-><init>(ILandroid/graphics/PorterDuff$Mode;)V

    invoke-virtual {v8, v3}, Landroid/widget/ImageView;->setColorFilter(Landroid/graphics/ColorFilter;)V

    goto/16 :goto_a

    :sswitch_14e
    new-instance v11, Landroid/content/Intent;

    invoke-virtual/range {p0 .. p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v3

    const-class v5, Lco/vine/android/UsersActivity;

    invoke-direct {v11, v3, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "p_id"

    move-object/from16 v0, p0

    iget-wide v5, v0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-virtual {v11, v3, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-virtual/range {p1 .. p1}, Landroid/view/View;->getId()I

    move-result v3

    const v5, 0x7f0a01a3

    if-ne v3, v5, :cond_178

    const/4 v15, 0x2

    :goto_16c
    const-string v3, "u_type"

    invoke-virtual {v11, v3, v15}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    move-object/from16 v0, p0

    invoke-virtual {v0, v11}, Lco/vine/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_a

    :cond_178
    const/4 v15, 0x1

    goto :goto_16c

    :sswitch_data_17a
    .sparse-switch
        0x7f0a0063 -> :sswitch_b
        0x7f0a00fb -> :sswitch_5e
        0x7f0a00fe -> :sswitch_4a
        0x7f0a018c -> :sswitch_b
        0x7f0a018d -> :sswitch_b
        0x7f0a018e -> :sswitch_1b
        0x7f0a0190 -> :sswitch_3a
        0x7f0a0192 -> :sswitch_76
        0x7f0a0194 -> :sswitch_3a
        0x7f0a0197 -> :sswitch_72
        0x7f0a01a3 -> :sswitch_14e
        0x7f0a01a4 -> :sswitch_14e
    .end sparse-switch
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .registers 9

    const/4 v1, 0x0

    const/4 v2, 0x1

    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onCreate(Landroid/os/Bundle;)V

    invoke-virtual {p0, v2}, Lco/vine/android/ProfileFragment;->setHasOptionsMenu(Z)V

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getArguments()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "user_id"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J

    move-result-wide v3

    invoke-direct {p0, v3, v4}, Lco/vine/android/ProfileFragment;->setUserId(J)V

    const-string v3, "Profile: Tab 1"

    invoke-virtual {p0, v3}, Lco/vine/android/ProfileFragment;->setFlurryEventSource(Ljava/lang/String;)V

    const-string v3, "event_source"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    iput-object v3, p0, Lco/vine/android/ProfileFragment;->mFlurryFollowEventSource:Ljava/lang/String;

    const-string v3, "take_focus"

    invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    iput-boolean v3, p0, Lco/vine/android/ProfileFragment;->mTakeFocus:Z

    iget-boolean v3, p0, Lco/vine/android/ProfileFragment;->mTakeFocus:Z

    if-eqz v3, :cond_33

    invoke-virtual {p0, v2}, Lco/vine/android/ProfileFragment;->setFocused(Z)V

    :cond_33
    new-instance v3, Lco/vine/android/ProfileFragment$ProfileListener;

    invoke-direct {v3, p0}, Lco/vine/android/ProfileFragment$ProfileListener;-><init>(Lco/vine/android/ProfileFragment;)V

    iput-object v3, p0, Lco/vine/android/ProfileFragment;->mAppSessionListener:Lco/vine/android/client/AppSessionListener;

    if-eqz p1, :cond_82

    const-string v3, "state_mode"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    iput v3, p0, Lco/vine/android/ProfileFragment;->mCurrentMode:I

    const-string v3, "stated_header_added"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_54

    const-string v3, "stated_header_added"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    iput-boolean v3, p0, Lco/vine/android/ProfileFragment;->mHeaderAdded:Z

    :cond_54
    :goto_54
    invoke-virtual {p0, v1}, Lco/vine/android/ProfileFragment;->showSadface(Z)V

    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    if-eqz v3, :cond_5f

    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    iput v2, v3, Lco/vine/android/api/VineUser;->repostsEnabled:I

    :cond_5f
    const-string v3, "vanity_url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    if-eqz v3, :cond_87

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    const-string v3, "vanity_url"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v1, v3}, Lco/vine/android/client/AppController;->fetchUserId(Ljava/util/ArrayList;)Ljava/lang/String;

    :cond_72
    :goto_72
    iget-boolean v1, p0, Lco/vine/android/ProfileFragment;->mIsMe:Z

    if-eqz v1, :cond_79

    invoke-direct {p0}, Lco/vine/android/ProfileFragment;->bindProfileDataAndCounts()V

    :cond_79
    const-string v1, "show_profile_actions"

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lco/vine/android/ProfileFragment;->mShowProfileActions:Z

    return-void

    :cond_82
    iput v2, p0, Lco/vine/android/ProfileFragment;->mCurrentMode:I

    iput-boolean v1, p0, Lco/vine/android/ProfileFragment;->mHeaderAdded:Z

    goto :goto_54

    :cond_87
    iget-wide v3, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    const-wide/16 v5, 0x0

    cmp-long v3, v3, v5

    if-lez v3, :cond_72

    iget-wide v3, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    iget-object v5, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v5}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v5

    cmp-long v3, v3, v5

    if-nez v3, :cond_9c

    move v1, v2

    :cond_9c
    iput-boolean v1, p0, Lco/vine/android/ProfileFragment;->mIsMe:Z

    iget-boolean v1, p0, Lco/vine/android/ProfileFragment;->mIsMe:Z

    if-nez v1, :cond_72

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getBlockedUsers()Ljava/lang/String;

    goto :goto_72
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;Landroid/view/MenuInflater;)V
    .registers 4

    iget-boolean v0, p0, Lco/vine/android/ProfileFragment;->mIsMe:Z

    if-nez v0, :cond_a

    const v0, 0x7f10000f

    invoke-virtual {p2, v0, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    :cond_a
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .registers 5

    const v0, 0x7f030061

    invoke-virtual {p0, p1, v0, p2}, Lco/vine/android/ProfileFragment;->createView(Landroid/view/LayoutInflater;ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public onDestroy()V
    .registers 3

    invoke-super {p0}, Lco/vine/android/BaseTimelineFragment;->onDestroy()V

    iget-boolean v0, p0, Lco/vine/android/ProfileFragment;->mColorChangedReceiverIsRegistered:Z

    if-eqz v0, :cond_13

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mColorChangedReceiver:Lco/vine/android/ProfileFragment$ColorChangedReceiver;

    invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lco/vine/android/ProfileFragment;->mColorChangedReceiverIsRegistered:Z

    :cond_13
    return-void
.end method

.method public onDropDownClicked()V
    .registers 7

    const/4 v3, 0x0

    const/4 v2, 0x1

    iget-boolean v1, p0, Lco/vine/android/ProfileFragment;->mHideProfileReposts:Z

    if-nez v1, :cond_42

    move v1, v2

    :goto_7
    iput-boolean v1, p0, Lco/vine/android/ProfileFragment;->mHideProfileReposts:Z

    iget-boolean v1, p0, Lco/vine/android/ProfileFragment;->mHideProfileReposts:Z

    iget-object v4, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    iget v4, v4, Lco/vine/android/api/VineUser;->following:I

    if-lez v4, :cond_12

    move v3, v2

    :cond_12
    iget-boolean v4, p0, Lco/vine/android/ProfileFragment;->mIsMe:Z

    invoke-static {v1, v3, v4}, Lco/vine/android/util/FlurryUtils;->trackFilterProfileReposts(ZZZ)V

    iget-boolean v1, p0, Lco/vine/android/ProfileFragment;->mIsMe:Z

    if-eqz v1, :cond_44

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "profile_hide_reposts"

    iget-boolean v3, p0, Lco/vine/android/ProfileFragment;->mHideProfileReposts:Z

    invoke-interface {v0, v1, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    :goto_31
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->isFocused()Z

    move-result v3

    invoke-virtual {v1, v3}, Lco/vine/android/widget/GenericTimelineAdapter;->onPause(Z)V

    const/4 v1, 0x3

    invoke-virtual {p0, v1, v2}, Lco/vine/android/ProfileFragment;->fetchContent(IZ)V

    invoke-direct {p0}, Lco/vine/android/ProfileFragment;->dismissDropdown()V

    return-void

    :cond_42
    move v1, v3

    goto :goto_7

    :cond_44
    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v3, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    iget-boolean v5, p0, Lco/vine/android/ProfileFragment;->mHideProfileReposts:Z

    invoke-virtual {v1, v3, v4, v5}, Lco/vine/android/client/AppController;->setHideProfileReposts(JZ)Ljava/lang/String;

    goto :goto_31
.end method

.method public onLongClick(Landroid/view/View;)Z
    .registers 3

    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    sparse-switch v0, :sswitch_data_10

    const/4 v0, 0x0

    :goto_8
    return v0

    :sswitch_9
    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mProfileHeaderAdapter:Lco/vine/android/ProfileHeaderAdapter;

    invoke-virtual {v0, p1}, Lco/vine/android/ProfileHeaderAdapter;->onProfileHeaderLongClick(Landroid/view/View;)V

    const/4 v0, 0x1

    goto :goto_8

    :sswitch_data_10
    .sparse-switch
        0x7f0a0063 -> :sswitch_9
        0x7f0a018c -> :sswitch_9
        0x7f0a018d -> :sswitch_9
    .end sparse-switch
.end method

.method public onMoveTo(I)V
    .registers 3

    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onMoveTo(I)V

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->isFocused()Z

    move-result v0

    invoke-direct {p0, v0}, Lco/vine/android/ProfileFragment;->setup(Z)V

    invoke-direct {p0}, Lco/vine/android/ProfileFragment;->bindProfileDataAndCounts()V

    return-void
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .registers 10

    const/4 v2, 0x1

    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v3

    packed-switch v3, :pswitch_data_d8

    :cond_8
    :goto_8
    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v2

    :cond_c
    :goto_c
    return v2

    :pswitch_d
    iget-boolean v3, p0, Lco/vine/android/ProfileFragment;->mIsUserBlocked:Z

    if-eqz v3, :cond_19

    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v4, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-virtual {v3, v4, v5}, Lco/vine/android/client/AppController;->unblockUser(J)Ljava/lang/String;

    goto :goto_c

    :cond_19
    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v4, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-virtual {v3, v4, v5}, Lco/vine/android/client/AppController;->blockUser(J)Ljava/lang/String;

    goto :goto_c

    :pswitch_21
    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v4, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-virtual {v3, v4, v5}, Lco/vine/android/client/AppController;->reportPerson(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lco/vine/android/ProfileFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_c

    :pswitch_2d
    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    if-eqz v3, :cond_c

    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    invoke-virtual {v3}, Lco/vine/android/api/VineUser;->areRepostsEnabled()Z

    move-result v3

    if-eqz v3, :cond_45

    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v4, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-virtual {v3, v4, v5}, Lco/vine/android/client/AppController;->disableReposts(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lco/vine/android/ProfileFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_c

    :cond_45
    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v4, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-virtual {v3, v4, v5}, Lco/vine/android/client/AppController;->enableReposts(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lco/vine/android/ProfileFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_c

    :pswitch_51
    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    if-eqz v3, :cond_c

    iget-boolean v3, p0, Lco/vine/android/ProfileFragment;->mIsMe:Z

    if-nez v3, :cond_c

    invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackShareProfile()V

    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.intent.action.SEND"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    const-string v3, "text/plain"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v3, 0x8

    invoke-virtual {v1, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const-string v3, "android.intent.extra.SUBJECT"

    const-string v4, ""

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "android.intent.extra.TEXT"

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v4

    iget-object v5, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    iget-object v5, v5, Lco/vine/android/api/VineUser;->username:Ljava/lang/String;

    iget-object v6, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    iget-wide v6, v6, Lco/vine/android/api/VineUser;->userId:J

    invoke-static {v4, v5, v6, v7}, Lco/vine/android/util/Util;->getShareProfileMessage(Landroid/content/Context;Ljava/lang/String;J)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v3, 0x7f0e01be

    invoke-virtual {p0, v3}, Lco/vine/android/ProfileFragment;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/content/Intent;->createChooser(Landroid/content/Intent;Ljava/lang/CharSequence;)Landroid/content/Intent;

    move-result-object v3

    invoke-virtual {p0, v3}, Lco/vine/android/ProfileFragment;->startActivity(Landroid/content/Intent;)V

    goto/16 :goto_c

    :pswitch_99
    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    if-eqz v3, :cond_8

    new-instance v3, Lco/vine/android/util/image/ImageKey;

    iget-object v4, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    iget-object v4, v4, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-direct {v3, v4, v2}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;Z)V

    iput-object v3, p0, Lco/vine/android/ProfileFragment;->mUserProfileImageKeyForShortcut:Lco/vine/android/util/image/ImageKey;

    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    iget-object v2, v2, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_bc

    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    iget-object v2, v2, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;

    invoke-static {v2}, Lco/vine/android/util/Util;->isDefaultAvatarUrl(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_ce

    :cond_bc
    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f020065

    invoke-static {v2, v3}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    :goto_c7
    if-eqz v0, :cond_8

    invoke-direct {p0, v0}, Lco/vine/android/ProfileFragment;->addProfileShortCut(Landroid/graphics/Bitmap;)V

    goto/16 :goto_8

    :cond_ce
    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v3, p0, Lco/vine/android/ProfileFragment;->mUserProfileImageKeyForShortcut:Lco/vine/android/util/image/ImageKey;

    invoke-virtual {v2, v3}, Lco/vine/android/client/AppController;->getPhotoBitmap(Lco/vine/android/util/image/ImageKey;)Landroid/graphics/Bitmap;

    move-result-object v0

    goto :goto_c7

    nop

    :pswitch_data_d8
    .packed-switch 0x7f0a024c
        :pswitch_d
        :pswitch_21
        :pswitch_2d
        :pswitch_51
        :pswitch_99
    .end packed-switch
.end method

.method public onPause()V
    .registers 3

    invoke-super {p0}, Lco/vine/android/BaseTimelineFragment;->onPause()V

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/GenericTimelineAdapter;->onPause(Z)V

    return-void
.end method

.method public onPrepareOptionsMenu(Landroid/view/Menu;)V
    .registers 5

    const v2, 0x7f0a024c

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v0

    if-eqz v0, :cond_13

    iget-boolean v2, p0, Lco/vine/android/ProfileFragment;->mIsUserBlocked:Z

    if-eqz v2, :cond_2f

    const v2, 0x7f0e0252

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    :cond_13
    :goto_13
    const v2, 0x7f0a024e

    invoke-interface {p1, v2}, Landroid/view/Menu;->findItem(I)Landroid/view/MenuItem;

    move-result-object v2

    iput-object v2, p0, Lco/vine/android/ProfileFragment;->mHideRevines:Landroid/view/MenuItem;

    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    invoke-virtual {v2}, Lco/vine/android/api/VineUser;->areRepostsEnabled()Z

    move-result v2

    if-eqz v2, :cond_36

    :cond_28
    const/4 v1, 0x1

    :goto_29
    iget-object v2, p0, Lco/vine/android/ProfileFragment;->mUser:Lco/vine/android/api/VineUser;

    invoke-direct {p0, v2, v1}, Lco/vine/android/ProfileFragment;->setRevineOptionText(Lco/vine/android/api/VineUser;Z)V

    return-void

    :cond_2f
    const v2, 0x7f0e0053

    invoke-interface {v0, v2}, Landroid/view/MenuItem;->setTitle(I)Landroid/view/MenuItem;

    goto :goto_13

    :cond_36
    const/4 v1, 0x0

    goto :goto_29
.end method

.method public onResume()V
    .registers 6

    const/4 v4, 0x1

    invoke-super {p0}, Lco/vine/android/BaseTimelineFragment;->onResume()V

    iget-wide v0, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getAppController()Lco/vine/android/client/AppController;

    move-result-object v2

    invoke-virtual {v2}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v2

    cmp-long v0, v0, v2

    if-nez v0, :cond_15

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->registerMergePostReceiver()V

    :cond_15
    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mAdapter:Landroid/widget/BaseAdapter;

    invoke-virtual {v0}, Landroid/widget/BaseAdapter;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_21

    const/4 v0, 0x3

    invoke-virtual {p0, v0, v4}, Lco/vine/android/ProfileFragment;->fetchContent(IZ)V

    :cond_21
    iget-boolean v0, p0, Lco/vine/android/ProfileFragment;->mIsMe:Z

    if-eqz v0, :cond_3d

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    const-string v1, "profile_hide_reposts"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lco/vine/android/ProfileFragment;->mHideProfileReposts:Z

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->isFocused()Z

    move-result v0

    invoke-direct {p0, v0}, Lco/vine/android/ProfileFragment;->setup(Z)V

    :cond_3d
    invoke-direct {p0}, Lco/vine/android/ProfileFragment;->initProfile()V

    iget-boolean v0, p0, Lco/vine/android/ProfileFragment;->mColorChangedReceiverIsRegistered:Z

    if-nez v0, :cond_54

    iput-boolean v4, p0, Lco/vine/android/ProfileFragment;->mColorChangedReceiverIsRegistered:Z

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mColorChangedReceiver:Lco/vine/android/ProfileFragment$ColorChangedReceiver;

    sget-object v2, Lco/vine/android/util/Util;->COLOR_CHANGED_INTENT_FILTER:Landroid/content/IntentFilter;

    const-string v3, "co.vine.android.BROADCAST"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    :cond_54
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1}, Lco/vine/android/BaseTimelineFragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    const-string v0, "state_mode"

    iget v1, p0, Lco/vine/android/ProfileFragment;->mCurrentMode:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    const-string v0, "stated_header_added"

    iget-boolean v1, p0, Lco/vine/android/ProfileFragment;->mHeaderAdded:Z

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    return-void
.end method

.method protected onScrollLastItem()V
    .registers 4

    const/4 v2, 0x1

    iget-boolean v0, p0, Lco/vine/android/ProfileFragment;->mRefreshable:Z

    if-eqz v0, :cond_23

    iget v0, p0, Lco/vine/android/ProfileFragment;->mNextPage:I

    if-lez v0, :cond_23

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    invoke-virtual {v0}, Lco/vine/android/widget/GenericTimelineAdapter;->getCount()I

    move-result v0

    const/16 v1, 0x190

    if-gt v0, v1, :cond_23

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mFeedAdapter:Lco/vine/android/widget/GenericTimelineAdapter;

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->isFocused()Z

    move-result v1

    invoke-virtual {v0, v1}, Lco/vine/android/widget/GenericTimelineAdapter;->onPause(Z)V

    iput v2, p0, Lco/vine/android/ProfileFragment;->mLastFetchType:I

    iget v0, p0, Lco/vine/android/ProfileFragment;->mCurrentMode:I

    packed-switch v0, :pswitch_data_7e

    :cond_23
    :goto_23
    return-void

    :pswitch_24
    invoke-virtual {p0, v2}, Lco/vine/android/ProfileFragment;->showProgress(I)V

    invoke-virtual {p0, v2, v2}, Lco/vine/android/ProfileFragment;->fetchContent(IZ)V

    iget v0, p0, Lco/vine/android/ProfileFragment;->mPostPage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lco/vine/android/ProfileFragment;->mPostPage:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Post"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lco/vine/android/ProfileFragment;->mPostPage:I

    invoke-static {v0, v1}, Lco/vine/android/util/FlurryUtils;->trackTimeLinePageScroll(Ljava/lang/String;I)V

    goto :goto_23

    :pswitch_51
    invoke-virtual {p0, v2}, Lco/vine/android/ProfileFragment;->showProgress(I)V

    invoke-virtual {p0, v2, v2}, Lco/vine/android/ProfileFragment;->fetchContent(IZ)V

    iget v0, p0, Lco/vine/android/ProfileFragment;->mLikePage:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lco/vine/android/ProfileFragment;->mLikePage:I

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "_Like"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iget v1, p0, Lco/vine/android/ProfileFragment;->mLikePage:I

    invoke-static {v0, v1}, Lco/vine/android/util/FlurryUtils;->trackTimeLinePageScroll(Ljava/lang/String;I)V

    goto :goto_23

    :pswitch_data_7e
    .packed-switch 0x1
        :pswitch_24
        :pswitch_51
    .end packed-switch
.end method

.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
    .registers 4

    invoke-super {p0, p1, p2}, Lco/vine/android/BaseTimelineFragment;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V

    const/4 v0, 0x6

    invoke-virtual {p0, v0}, Lco/vine/android/ProfileFragment;->setRefreshableHeaderOffset(I)V

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mListView:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V

    const/4 v0, 0x3

    invoke-virtual {p0, v0}, Lco/vine/android/ProfileFragment;->showProgress(I)V

    return-void
.end method

.method protected refresh()V
    .registers 4

    const/4 v0, 0x2

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lco/vine/android/ProfileFragment;->fetchContent(IZ)V

    iget-boolean v0, p0, Lco/vine/android/ProfileFragment;->mIsMe:Z

    if-eqz v0, :cond_19

    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-object v1, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    invoke-virtual {v1}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->fetchUsersMe(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/vine/android/ProfileFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;

    :goto_18
    return-void

    :cond_19
    iget-object v0, p0, Lco/vine/android/ProfileFragment;->mAppController:Lco/vine/android/client/AppController;

    iget-wide v1, p0, Lco/vine/android/ProfileFragment;->mUserId:J

    invoke-virtual {v0, v1, v2}, Lco/vine/android/client/AppController;->fetchUser(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lco/vine/android/ProfileFragment;->addRequest(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_18
.end method

.method public setActionBarColor()V
    .registers 5

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v0

    instance-of v1, v0, Lco/vine/android/BaseActionBarActivity;

    if-eqz v1, :cond_25

    iget v1, p0, Lco/vine/android/ProfileFragment;->mProfileBackground:I

    if-nez v1, :cond_1e

    invoke-virtual {p0}, Lco/vine/android/ProfileFragment;->getActivity()Landroid/support/v4/app/FragmentActivity;

    move-result-object v1

    invoke-static {v1}, Lco/vine/android/util/Util;->getDefaultSharedPrefs(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    const-string v2, "profile_background"

    sget v3, Lco/vine/android/Settings;->DEFAULT_PROFILE_COLOR:I

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lco/vine/android/ProfileFragment;->mProfileBackground:I

    :cond_1e
    check-cast v0, Lco/vine/android/BaseActionBarActivity;

    iget v1, p0, Lco/vine/android/ProfileFragment;->mProfileBackground:I

    invoke-virtual {v0, v1}, Lco/vine/android/BaseActionBarActivity;->setActionBarColor(I)V

    :cond_25
    return-void
.end method
