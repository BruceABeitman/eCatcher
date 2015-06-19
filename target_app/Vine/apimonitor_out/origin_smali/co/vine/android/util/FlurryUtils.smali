.class public Lco/vine/android/util/FlurryUtils;
.super Ljava/lang/Object;
.source "FlurryUtils.java"


# static fields
.field private static final LOADING_KEY:Ljava/lang/String; = "Loading"

.field private static isSignupFailed:Z

.field private static final mLoadingTime:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static sRecordingCamera:Z

.field private static sRecordingFocus:Z

.field private static sRecordingGhost:Z

.field private static sRecordingGrid:Z

.field private static sRecordingSession:Z


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lco/vine/android/util/FlurryUtils;->mLoadingTime:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static getBucketedTime(J)Ljava/lang/String;
    .registers 9

    const-wide/16 v5, 0x1f4

    const-wide/16 v3, 0x64

    const-wide/16 v0, 0x3e8

    cmp-long v0, p0, v0

    if-gez v0, :cond_25

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long v1, p0, v3

    mul-long/2addr v1, v3

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "ms"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_24
    return-object v0

    :cond_25
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    div-long v1, p0, v5

    mul-long/2addr v1, v5

    long-to-double v1, v1

    const-wide v3, 0x408f400000000000L

    div-double/2addr v1, v3

    const-wide/high16 v3, 0x3ff0

    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->max(DD)D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "s"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    goto :goto_24
.end method

.method public static onSignupFailure(ZLco/vine/android/api/VineError;I)V
    .registers 7

    const/4 v1, 0x1

    sput-boolean v1, Lco/vine/android/util/FlurryUtils;->isSignupFailed:Z

    new-instance v0, Lco/vine/android/util/FlurryEvent;

    const-string v1, "SignupFailure"

    invoke-direct {v0, v1}, Lco/vine/android/util/FlurryEvent;-><init>(Ljava/lang/String;)V

    if-eqz p1, :cond_1f

    const-string v1, "errorCode"

    iget v2, p1, Lco/vine/android/api/VineError;->errorCode:I

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/FlurryEvent;

    move-result-object v1

    const-string v2, "message"

    iget-object v3, p1, Lco/vine/android/api/VineError;->message:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Lco/vine/android/util/FlurryEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/FlurryEvent;

    :cond_1f
    const-string v1, "isTwitter"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/FlurryEvent;

    move-result-object v1

    const-string v2, "statusCode"

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/vine/android/util/FlurryEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/FlurryEvent;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/util/FlurryEvent;->log()V

    return-void
.end method

.method public static onSignupSuccess(Z)V
    .registers 4

    const/4 v0, 0x0

    sput-boolean v0, Lco/vine/android/util/FlurryUtils;->isSignupFailed:Z

    const-string v0, "SignupSuccess"

    const-string v1, "isTwitter"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static onSignupWithPreinstallSuccess(Ljava/lang/String;)V
    .registers 3

    const-string v0, "SignUpWithPreinstall"

    const-string v1, "target"

    invoke-static {v0, v1, p0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static start(Landroid/content/Context;)V
    .registers 6

    :try_start_0
    const-string v3, "K5MVVCSN2MQ89JDRWKGY"

    invoke-static {p0, v3}, Lcom/flurry/android/FlurryAgent;->onStartSession(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v3, 0x1

    invoke-static {v3}, Lcom/flurry/android/FlurryAgent;->setUseHttps(Z)V

    invoke-static {p0}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;

    move-result-object v3

    invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveId()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    cmp-long v3, v1, v3

    if-lez v3, :cond_1e

    invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/flurry/android/FlurryAgent;->setUserId(Ljava/lang/String;)V

    :cond_1e
    const-string v3, "2.1.2"

    invoke-static {v3}, Lcom/flurry/android/FlurryAgent;->setVersionName(Ljava/lang/String;)V
    :try_end_23
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_23} :catch_24

    :goto_23
    return-void

    :catch_24
    move-exception v0

    invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto :goto_23
.end method

.method public static stop(Landroid/content/Context;)V
    .registers 2

    :try_start_0
    invoke-static {p0}, Lcom/flurry/android/FlurryAgent;->onEndSession(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_3} :catch_4

    :goto_3
    return-void

    :catch_4
    move-exception v0

    invoke-static {v0}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;)V

    goto :goto_3
.end method

.method public static traceNotificationShown()V
    .registers 1

    const-string v0, "notificationShown"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackAbandonedStage(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Abandon"

    const-string v1, "stage"

    invoke-static {v0, v1, p0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackAbandonedTier(Ljava/lang/String;)V
    .registers 7

    const-string v0, "Post abandoned for {}, had to wait {}ms and {}ms."

    sget-wide v1, Lco/vine/android/recorder/BasicVineRecorder;->sTimeTaken:J

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v1

    sget-wide v2, Lco/vine/android/recorder/RecordController;->sMaxKnownStopTime:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, p0, v1, v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Post_Abandon_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "waitOnCamera"

    sget-wide v2, Lco/vine/android/recorder/BasicVineRecorder;->sTimeTaken:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "waitOnProcessing"

    sget-wide v4, Lco/vine/android/recorder/RecordController;->sMaxKnownStopTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackAddressNewFollowingCount(Ljava/lang/String;)V
    .registers 3

    const-string v0, "FindFriendsAddressNewFollowing"

    const-string v1, "Count"

    invoke-static {v0, v1, p0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackAttribution()V
    .registers 1

    const-string v0, "Attribution"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackBackFromPostScreen()V
    .registers 1

    const-string v0, "BackToPreviewFromPostScreen"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackBlockUser()V
    .registers 1

    const-string v0, "BlockUser"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackCameraSwitchPressed(Landroid/view/View;)V
    .registers 2

    if-eqz p0, :cond_e

    sget-boolean v0, Lco/vine/android/util/FlurryUtils;->sRecordingCamera:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    sput-boolean v0, Lco/vine/android/util/FlurryUtils;->sRecordingCamera:Z

    const-string v0, "RecordingCamera"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public static trackCameraWidgetAdded()V
    .registers 1

    const-string v0, "CameraWidgetAdded"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackCameraWidgetRemoved()V
    .registers 1

    const-string v0, "CameraWidgetRemoved"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackChangedDescription()V
    .registers 1

    const-string v0, "Settings_ChangedDescription"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackChangedEdition()V
    .registers 1

    const-string v0, "ChangedEdition"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackChangedEmail()V
    .registers 1

    const-string v0, "Settings_ChangedEmail"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackChangedLocation()V
    .registers 1

    const-string v0, "Settings_ChangedLocation"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackChangedName()V
    .registers 1

    const-string v0, "Settings_ChangedName"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackChannelChange(Ljava/lang/String;)V
    .registers 3

    const-string v0, "PostChannelChange"

    const-string v1, "channelDetails"

    invoke-static {v0, v1, p0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackConnectFacebook()V
    .registers 1

    const-string v0, "ConnectFacebook"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackConnectTwitter()V
    .registers 1

    const-string v0, "ConnectTwitter"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackContentControls()V
    .registers 1

    const-string v0, "ContentControls"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackCreateProfileShortCut()V
    .registers 1

    const-string v0, "CreateProfileShortCut"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackDeactivateAccount()V
    .registers 1

    const-string v0, "DeactivateAccount"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackDeleteComment()V
    .registers 1

    const-string v0, "DeleteComment"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackDisConnectTwitter()V
    .registers 1

    const-string v0, "DisconnectTwitter"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackFilterProfileReposts(ZZZ)V
    .registers 8

    if-eqz p0, :cond_14

    const-string v0, "ProfileRepostsHidden"

    :goto_4
    const-string v1, "Is Following"

    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "Is Me"

    invoke-static {p2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void

    :cond_14
    const-string v0, "ProfileRepostsShown"

    goto :goto_4
.end method

.method public static trackFindFriendsAddressCount(I)V
    .registers 4

    const-string v0, "FindFriendsAddressResultsCount"

    const-string v1, "Result Count"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackFindFriendsAddressFailure()V
    .registers 1

    const-string v0, "FindFriendsAddressFailure"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackFindFriendsTabSelect(I)V
    .registers 4

    const-string v0, "FindFriendsTabSelect"

    const-string v1, "Address/Twitter/Search"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackFindFriendsTwitterCount(I)V
    .registers 4

    const-string v0, "FindFriendsTwitterResultsCount"

    const-string v1, "Result Count"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackFindFriendsTwitterFailure()V
    .registers 1

    const-string v0, "FindFriendsTwitterFailure"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackFocusSwitchPressed(Landroid/view/View;)V
    .registers 2

    if-eqz p0, :cond_e

    sget-boolean v0, Lco/vine/android/util/FlurryUtils;->sRecordingFocus:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    sput-boolean v0, Lco/vine/android/util/FlurryUtils;->sRecordingFocus:Z

    const-string v0, "RecordingFocus"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public static trackFollow(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Follow"

    const-string v1, "source"

    invoke-static {v0, v1, p0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackGetComments()V
    .registers 1

    const-string v0, "GetComments"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackGetEditions()V
    .registers 1

    const-string v0, "GetEditions"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackGetUser(Z)V
    .registers 4

    const-string v0, "ProfileFetch"

    const-string v1, "self"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackGhostSwitchPressed(Landroid/view/View;)V
    .registers 2

    if-eqz p0, :cond_e

    sget-boolean v0, Lco/vine/android/util/FlurryUtils;->sRecordingGhost:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    sput-boolean v0, Lco/vine/android/util/FlurryUtils;->sRecordingGhost:Z

    const-string v0, "RecordingGhost"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public static trackGraphTimelineRefreshNewCount(I)V
    .registers 4

    const-string v0, "GraphRefreshNewVideoCount"

    const-string v1, "count"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackGridSwitchPressed(Landroid/view/View;)V
    .registers 2

    if-eqz p0, :cond_e

    sget-boolean v0, Lco/vine/android/util/FlurryUtils;->sRecordingGrid:Z

    if-nez v0, :cond_e

    const/4 v0, 0x1

    sput-boolean v0, Lco/vine/android/util/FlurryUtils;->sRecordingGrid:Z

    const-string v0, "RecordingGrid"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    :cond_e
    return-void
.end method

.method public static trackInvite(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Invite_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "source"

    invoke-static {v0, v1, p1}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackInviteBannerViewed(J)V
    .registers 6

    const-string v0, "InviteBannerViews"

    const-string v1, "ViewCount"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, ">"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0, p1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackLikePost(JLjava/lang/String;)V
    .registers 7

    const-string v0, "Like"

    const-string v1, "postId"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Source View"

    invoke-static {v0, v1, v2, v3, p2}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackLoadingTime(Ljava/lang/String;J)V
    .registers 6

    invoke-static {}, Lco/vine/android/util/BuildUtil;->isProduction()Z

    move-result v0

    if-eqz v0, :cond_29

    sget-object v0, Lco/vine/android/util/FlurryUtils;->mLoadingTime:Ljava/util/HashMap;

    const-string v1, "Loading"

    invoke-static {p1, p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Loading_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lco/vine/android/util/FlurryUtils;->mLoadingTime:Ljava/util/HashMap;

    invoke-static {v0, v1}, Lcom/flurry/android/FlurryAgent;->logEvent(Ljava/lang/String;Ljava/util/Map;)V

    :cond_29
    return-void
.end method

.method public static trackLockOutSessionCount()V
    .registers 1

    sget-boolean v0, Lco/vine/android/util/FlurryUtils;->isSignupFailed:Z

    if-eqz v0, :cond_c

    const/4 v0, 0x0

    sput-boolean v0, Lco/vine/android/util/FlurryUtils;->isSignupFailed:Z

    const-string v0, "SignUpLockOut"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public static trackLoginFailure(ZI)V
    .registers 7

    const-string v0, "LoginFailure"

    const-string v1, "isTwitter"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    const-string v3, "statusCode"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackLoginSuccess(Z)V
    .registers 4

    const-string v0, "LoginSuccess"

    const-string v1, "isTwitter"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackLogout()V
    .registers 1

    const-string v0, "Logout"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackNotificationClicked(Ljava/lang/String;)V
    .registers 3

    const-string v0, "notificationClicked"

    const-string v1, "type"

    invoke-static {v0, v1, p0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackNotificationDisabled()V
    .registers 1

    const-string v0, "notificationDisabled"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackNotificationReceived(Z)V
    .registers 4

    const-string v0, "notificationReceived"

    const-string v1, "isDisabled"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackNotificationSettings()V
    .registers 1

    const-string v0, "NotificationSettings"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackPost(Z)V
    .registers 4

    const-string v0, "Post"

    const-string v1, "Vine"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackPostComment()V
    .registers 1

    const-string v0, "PostComment"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackPostTier(Ljava/lang/String;)V
    .registers 7

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Post_Posted_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "waitOnCamera"

    sget-wide v2, Lco/vine/android/recorder/BasicVineRecorder;->sTimeTaken:J

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "waitOnProcessing"

    sget-wide v4, Lco/vine/android/recorder/RecordController;->sMaxKnownStopTime:J

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v4

    invoke-static {v0, v1, v2, v3, v4}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackPreviewAction(Ljava/lang/String;)V
    .registers 3

    const-string v0, "PreviewAction"

    const-string v1, "action"

    invoke-static {v0, v1, p0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackPrivacyPolicy()V
    .registers 1

    const-string v0, "PrivacyPolicy"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackProfileImageClick(Z)V
    .registers 4

    const-string v0, "ProfileImageClick"

    const-string v1, "self"

    invoke-static {p0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackRecordingDestroy()V
    .registers 0

    return-void
.end method

.method public static trackRecordingInfo(IJJI)V
    .registers 9

    new-instance v0, Lco/vine/android/util/FlurryEvent;

    const-string v1, "Recording"

    invoke-direct {v0, v1}, Lco/vine/android/util/FlurryEvent;-><init>(Ljava/lang/String;)V

    const-string v1, "Duration"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/FlurryEvent;

    move-result-object v0

    const-string v1, "Wait time"

    invoke-static {p3, p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/FlurryEvent;

    move-result-object v0

    const-string v1, "Cuts"

    invoke-static {p5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/FlurryEvent;

    move-result-object v0

    const-string v1, "Phase"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/FlurryEvent;

    move-result-object v0

    invoke-virtual {v0}, Lco/vine/android/util/FlurryEvent;->log()V

    return-void
.end method

.method public static trackRecordingStart()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lco/vine/android/util/FlurryUtils;->sRecordingCamera:Z

    sput-boolean v0, Lco/vine/android/util/FlurryUtils;->sRecordingFocus:Z

    sput-boolean v0, Lco/vine/android/util/FlurryUtils;->sRecordingGrid:Z

    sput-boolean v0, Lco/vine/android/util/FlurryUtils;->sRecordingGhost:Z

    sput-boolean v0, Lco/vine/android/util/FlurryUtils;->sRecordingSession:Z

    const-string v0, "RecordingStart"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackReportPost()V
    .registers 1

    const-string v0, "ReportPost"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackReportUser()V
    .registers 1

    const-string v0, "ReportUser"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackResetPassword()V
    .registers 1

    const-string v0, "ResetPassword"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackRespondTime(Ljava/lang/String;Ljava/lang/String;JJZ)V
    .registers 11

    invoke-static {}, Lco/vine/android/util/BuildUtil;->isProduction()Z

    move-result v1

    if-eqz v1, :cond_40

    new-instance v0, Lco/vine/android/util/FlurryEvent;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Response_"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p6, :cond_41

    const-string v1, "video"

    :goto_17
    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Lco/vine/android/util/FlurryEvent;-><init>(Ljava/lang/String;)V

    if-eqz p6, :cond_44

    const-string v1, "host"

    invoke-virtual {v0, v1, p0}, Lco/vine/android/util/FlurryEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/FlurryEvent;

    :goto_29
    const-string v1, "statusTime"

    invoke-static {p2, p3}, Lco/vine/android/util/FlurryUtils;->getBucketedTime(J)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/FlurryEvent;

    move-result-object v1

    const-string v2, "totalTime"

    invoke-static {p4, p5}, Lco/vine/android/util/FlurryUtils;->getBucketedTime(J)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lco/vine/android/util/FlurryEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/FlurryEvent;

    move-result-object v1

    invoke-virtual {v1}, Lco/vine/android/util/FlurryEvent;->log()V

    :cond_40
    return-void

    :cond_41
    const-string v1, "generic"

    goto :goto_17

    :cond_44
    const-string v1, "host"

    invoke-virtual {v0, v1, p0}, Lco/vine/android/util/FlurryEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/FlurryEvent;

    move-result-object v1

    const-string v2, "path"

    invoke-virtual {v1, v2, p1}, Lco/vine/android/util/FlurryEvent;->add(Ljava/lang/String;Ljava/lang/Object;)Lco/vine/android/util/FlurryEvent;

    goto :goto_29
.end method

.method public static trackRevine(JLjava/lang/String;)V
    .registers 7

    const-string v0, "Revine"

    const-string v1, "postId"

    invoke-static {p0, p1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    const-string v3, "Source View"

    invoke-static {v0, v1, v2, v3, p2}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackSaveSession(Ljava/lang/String;)V
    .registers 3

    const-string v0, "SaveSession"

    const-string v1, "source"

    invoke-static {v0, v1, p0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackSearchTags()V
    .registers 1

    const-string v0, "SearchTags"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackSearchUsers()V
    .registers 1

    const-string v0, "SearchUser"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackSeeReviners()V
    .registers 1

    const-string v0, "SeeReviners"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackSessionSwitchPressed(Landroid/view/View;)V
    .registers 2

    sget-boolean v0, Lco/vine/android/util/FlurryUtils;->sRecordingSession:Z

    if-nez v0, :cond_c

    const/4 v0, 0x1

    sput-boolean v0, Lco/vine/android/util/FlurryUtils;->sRecordingSession:Z

    const-string v0, "RecordingSession"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    :cond_c
    return-void
.end method

.method public static trackSessionSwitchPressedOnDraftUpgrade(I)V
    .registers 4

    sget-boolean v0, Lco/vine/android/util/FlurryUtils;->sRecordingSession:Z

    if-nez v0, :cond_12

    const/4 v0, 0x1

    sput-boolean v0, Lco/vine/android/util/FlurryUtils;->sRecordingSession:Z

    const-string v0, "RecordingSessionDraftUpgrading"

    const-string v1, "count"

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_12
    return-void
.end method

.method public static trackSharePost(Ljava/lang/String;J)V
    .registers 6

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "SharePost_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "postId"

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackShareProfile()V
    .registers 1

    const-string v0, "ShareProfile"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackTabChange(Ljava/lang/String;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Page_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackTimeLinePageScroll(Ljava/lang/String;I)V
    .registers 5

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "TimeLinePageScroll_"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "page"

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v0, v1, v2}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackTos()V
    .registers 1

    const-string v0, "TermsOfServiceClicked"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackTwitterNewFollowingCount(Ljava/lang/String;)V
    .registers 3

    const-string v0, "FindFriendsTwitterNewFollowing"

    const-string v1, "Count"

    invoke-static {v0, v1, p0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackUnBlockUser()V
    .registers 1

    const-string v0, "UnBlockUser"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackUnLikePost(Ljava/lang/String;)V
    .registers 3

    const-string v0, "UnLike"

    const-string v1, "Source View"

    invoke-static {v0, v1, p0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackUnRevine(Ljava/lang/String;)V
    .registers 3

    const-string v0, "UnRevine"

    const-string v1, "Source View"

    invoke-static {v0, v1, p0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackUnfollow(Ljava/lang/String;)V
    .registers 3

    const-string v0, "Unfollow"

    const-string v1, "source"

    invoke-static {v0, v1, p0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackValidPullToRefreshRelease(Ljava/lang/String;)V
    .registers 3

    const-string v0, "ValidPullToRefreshRelease"

    const-string v1, "source"

    invoke-static {v0, v1, p0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackVineLoopWatched()V
    .registers 1

    const-string v0, "VineLoopWatched"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    return-void
.end method

.method public static trackVisitFindFriends(Ljava/lang/String;)V
    .registers 3

    const-string v0, "VisitFindFriends"

    const-string v1, "source"

    invoke-static {v0, v1, p0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackVisitInbox(Ljava/lang/String;)V
    .registers 3

    const-string v0, "VisitInbox"

    const-string v1, "source"

    invoke-static {v0, v1, p0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackVisitSearch(Ljava/lang/String;)V
    .registers 3

    const-string v0, "VisitSearch"

    const-string v1, "source"

    invoke-static {v0, v1, p0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackVisitSettings(Ljava/lang/String;)V
    .registers 3

    const-string v0, "VisitSettings"

    const-string v1, "source"

    invoke-static {v0, v1, p0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    return-void
.end method

.method public static trackZeroRatedSessionStarted(Z)V
    .registers 2

    if-eqz p0, :cond_7

    const-string v0, "ZeroRatedSessionStarted"

    invoke-static {v0}, Lco/vine/android/util/FlurryEvent;->log(Ljava/lang/String;)V

    :cond_7
    return-void
.end method
