.class public Lcom/facebook/katana/binding/AppSession;
.super Ljava/lang/Object;
.source "AppSession.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/binding/AppSession$ContactData;,
        Lcom/facebook/katana/binding/AppSession$LoginStatus;,
        Lcom/facebook/katana/binding/AppSession$StatusesQuery;
    }
.end annotation


# static fields
.field private static final ACTION_SERVICE:Ljava/lang/String; = "com.facebook.katana.service."

.field private static final ACTION_WIDGET_BUTTON_SHARE:Ljava/lang/String; = "com.facebook.katana.widget.sharebutton"

.field private static final ACTION_WIDGET_EDIT_SHARE:Ljava/lang/String; = "com.facebook.katana.widget.edit"

.field public static final GET_ALL:I = 0x0

.field public static final GET_NEWER:I = 0x1

.field public static final GET_OLDER:I = 0x2

.field private static IS_BETA_BUILD:Z = false

.field private static final MAX_POLL_ATTEMPTS:I = 0x3

.field public static final PARAM_AID:Ljava/lang/String; = "aid"

.field private static final PARAM_ATTEMPT_COUNT:Ljava/lang/String; = "extra_attempt"

.field public static final PARAM_CONFIRM:Ljava/lang/String; = "confirm"

.field public static final PARAM_DESCRIPTION:Ljava/lang/String; = "description"

.field public static final PARAM_EID:Ljava/lang/String; = "eid"

.field public static final PARAM_EMAIL:Ljava/lang/String; = "email"

.field public static final PARAM_END:Ljava/lang/String; = "end"

.field public static final PARAM_FOLDER:Ljava/lang/String; = "folder"

.field public static final PARAM_GET_TYPE:Ljava/lang/String; = "app_value"

.field public static final PARAM_ITEM_ID:Ljava/lang/String; = "item_id"

.field public static final PARAM_LIMIT:Ljava/lang/String; = "limit"

.field public static final PARAM_LOCATION:Ljava/lang/String; = "location"

.field public static final PARAM_NAME:Ljava/lang/String; = "name"

.field public static final PARAM_PASSWORD:Ljava/lang/String; = "pwd"

.field public static final PARAM_PID:Ljava/lang/String; = "pid"

.field public static final PARAM_POST_ID:Ljava/lang/String; = "post_id"

.field public static final PARAM_PROFILE_DISPLAY_NAME:Ljava/lang/String; = "profile_display_name"

.field public static final PARAM_PROFILE_FIRST_NAME:Ljava/lang/String; = "profile_first_name"

.field public static final PARAM_PROFILE_LAST_NAME:Ljava/lang/String; = "profile_last_name"

.field public static final PARAM_PROFILE_PIC_URL:Ljava/lang/String; = "profile_url"

.field public static final PARAM_PROFILE_UID:Ljava/lang/String; = "profile_uid"

.field public static final PARAM_READ:Ljava/lang/String; = "read"

.field public static final PARAM_REQUEST_ID:Ljava/lang/String; = "rid"

.field public static final PARAM_RSVP_STATUS:Ljava/lang/String; = "rsvp_status"

.field public static final PARAM_SESSION_FILTER_KEY:Ljava/lang/String; = "session_filter_key"

.field public static final PARAM_SESSION_ID:Ljava/lang/String; = "sid"

.field public static final PARAM_SESSION_KEY:Ljava/lang/String; = "session_key"

.field public static final PARAM_SESSION_USER_ID:Ljava/lang/String; = "session_user_id"

.field public static final PARAM_START:Ljava/lang/String; = "start"

.field public static final PARAM_SUBJECT:Ljava/lang/String; = "subject"

.field public static final PARAM_SYNC:Ljava/lang/String; = "sync"

.field public static final PARAM_TAGS:Ljava/lang/String; = "tags"

.field public static final PARAM_TEXT:Ljava/lang/String; = "status"

.field public static final PARAM_THREAD_ID:Ljava/lang/String; = "tid"

.field public static final PARAM_TYPE:Ljava/lang/String; = "type"

.field public static final PARAM_UID:Ljava/lang/String; = "uid"

.field public static final PARAM_URI:Ljava/lang/String; = "uri"

.field public static final PARAM_USERNAME:Ljava/lang/String; = "un"

.field public static final PARAM_VISIBILITY:Ljava/lang/String; = "visibility"

.field private static final PASSWORD_PROMPT_NOTIFICATION_ID:I = 0x0

.field public static final REQ_ALARM_POLL_CONTACT_INFO:I = 0xca

.field public static final REQ_ALARM_POLL_NOTIFICATIONS:I = 0xc9

.field public static final REQ_ALARM_POLL_STATUS:I = 0xcb

.field public static final REQ_ALARM_POLL_STREAM:I = 0xc8

.field public static final REQ_DOWNLOAD_USER_IMAGE:I = 0x64

.field public static final REQ_EVENT_GET_MEMBERS:I = 0x7a

.field public static final REQ_EVENT_RSVP:I = 0x79

.field public static final REQ_FRIEND_ADD_FRIEND:I = 0x82

.field public static final REQ_FRIEND_GET_REQUESTS:I = 0x83

.field public static final REQ_FRIEND_REQUEST_GET_MUTUAL_FRIENDS:I = 0x85

.field public static final REQ_FRIEND_REQUEST_RESPOND:I = 0x84

.field public static final REQ_GET_CONFIG:I = 0x190

.field public static final REQ_GET_EVENTS:I = 0x78

.field public static final REQ_GET_FACEBOOK_AFFILIATION_STATUS:I = 0x8c

.field public static final REQ_LOGIN:I = 0x1

.field public static final REQ_LOGIN_MY_PROFILE:I = 0x3

.field public static final REQ_LOGOUT:I = 0x2

.field public static final REQ_MAILBOX_DELETE_THREAD:I = 0x72

.field public static final REQ_MAILBOX_GET_THREAD_MESSAGES:I = 0x73

.field public static final REQ_MAILBOX_MARK_THREAD:I = 0x71

.field public static final REQ_MAILBOX_REPLY:I = 0x70

.field public static final REQ_MAILBOX_SEND:I = 0x6f

.field public static final REQ_MAILBOX_SYNC:I = 0x6e

.field public static final REQ_NOTIFICATIONS_CLEAR:I = 0x12c

.field public static final REQ_NOTIFICATIONS_HISTORY:I = 0x33

.field public static final REQ_NOTIFICATIONS_MARK_READ:I = 0x34

.field public static final REQ_PHOTO_ADD_COMMENT:I = 0x47

.field public static final REQ_PHOTO_ADD_TAGS:I = 0x44

.field public static final REQ_PHOTO_CREATE_ALBUM:I = 0x3d

.field public static final REQ_PHOTO_DELETE_ALBUM:I = 0x3f

.field public static final REQ_PHOTO_DELETE_PHOTO:I = 0x43

.field public static final REQ_PHOTO_DOWNLOAD_ALBUM_THUMBNAIL:I = 0x4a

.field public static final REQ_PHOTO_DOWNLOAD_CACHE_FULL_PHOTO:I = 0x4d

.field public static final REQ_PHOTO_DOWNLOAD_FULL:I = 0x4c

.field public static final REQ_PHOTO_DOWNLOAD_PHOTO_THUMBNAIL:I = 0x4b

.field public static final REQ_PHOTO_DOWNLOAD_PROFILE_PHOTO:I = 0x48

.field public static final REQ_PHOTO_DOWNLOAD_STREAM_PHOTO:I = 0x49

.field public static final REQ_PHOTO_EDIT_ALBUM:I = 0x3e

.field public static final REQ_PHOTO_EDIT_PHOTO:I = 0x42

.field public static final REQ_PHOTO_GET_ALBUMS:I = 0x3c

.field public static final REQ_PHOTO_GET_COMMENTS:I = 0x46

.field public static final REQ_PHOTO_GET_PHOTOS:I = 0x40

.field public static final REQ_PHOTO_GET_TAGS:I = 0x45

.field public static final REQ_PHOTO_UPLOAD:I = 0x41

.field public static final REQ_POLL_NOTIFICATIONS:I = 0x32

.field public static final REQ_RELOGIN:I = 0x12d

.field public static final REQ_STREAM_ADD_COMMENT:I = 0x21

.field public static final REQ_STREAM_ADD_LIKE:I = 0x24

.field public static final REQ_STREAM_GET:I = 0x1e

.field public static final REQ_STREAM_GET_COMMENTS:I = 0x1f

.field public static final REQ_STREAM_POLL:I = 0x35

.field public static final REQ_STREAM_PUBLISH:I = 0x20

.field public static final REQ_STREAM_REMOVE_COMMENT:I = 0x23

.field public static final REQ_STREAM_REMOVE_LIKE:I = 0x25

.field public static final REQ_STREAM_REMOVE_POST:I = 0x22

.field public static final REQ_STREAM_WIDGET_PUBLISH:I = 0x26

.field public static final REQ_USERS_GET_BRIEF_INFO:I = 0x53

.field public static final REQ_USERS_GET_INFO:I = 0x52

.field public static final REQ_USERS_POLL_STATUSES:I = 0x51

.field public static final REQ_USERS_SEARCH:I = 0xd3

.field public static final REQ_USERS_SYNC:I = 0x50

.field public static final REQ_WIDGET_NEXT_STATUS:I = 0x5a

.field public static final REQ_WIDGET_PREV_STATUS:I = 0x5b

.field public static final REQ_WIDGET_SHARE:I = 0x5c

.field private static SIMULATE_102:Z = false

.field private static final TAG:Ljava/lang/String; = "fbandroid"

.field public static final VISIBILITY_EVERYONE:Ljava/lang/String; = "everyone"

.field public static final VISIBILITY_FRIENDS:Ljava/lang/String; = "friends"

.field public static final VISIBILITY_FRIENDS_OF_FRIENDS:Ljava/lang/String; = "friends-of-friends"

.field public static final VISIBILITY_NETWORKS:Ljava/lang/String; = "networks"

.field public static fixed102:Z

.field private static got102:Z

.field private static mActiveSessionId:Ljava/lang/String;

.field private static mNameSpan:Landroid/text/style/TextAppearanceSpan;

.field private static final mSessionMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Lcom/facebook/katana/binding/AppSession;",
            ">;"
        }
    .end annotation
.end field

.field private static mUniqueId:I


# instance fields
.field private mCurrentStatusIndex:I

.field private mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

.field private mLatestPostTime:J

.field private final mListeners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/binding/AppSessionListener;",
            ">;"
        }
    .end annotation
.end field

.field private mLoginStatus:Lcom/facebook/katana/binding/AppSession$LoginStatus;

.field private final mPendingServiceRequestsMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mPhotosCache:Lcom/facebook/katana/binding/StreamPhotosCache;

.field private mPollingNotificationsAlarmIntent:Landroid/app/PendingIntent;

.field private mPollingStatusAlarmIntent:Landroid/app/PendingIntent;

.field private mPollingStreamAlarmIntent:Landroid/app/PendingIntent;

.field private mPollingUsersAlarmIntent:Landroid/app/PendingIntent;

.field private final mRequestsToHandleAfterLogin:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<",
            "Landroid/content/Intent;",
            ">;"
        }
    .end annotation
.end field

.field private final mSessionId:Ljava/lang/String;

.field private mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

.field private final mStatusesList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookStatus;",
            ">;"
        }
    .end annotation
.end field

.field private final mUserImageCache:Lcom/facebook/katana/binding/UserImagesCache;

.field private mWakeLock:Landroid/os/PowerManager$WakeLock;

.field private final mWallContainerMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Long;",
            "Lcom/facebook/katana/binding/FacebookStreamContainer;",
            ">;"
        }
    .end annotation
.end field

.field private mWorkerThread:Lcom/facebook/katana/binding/WorkerThread;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/4 v0, 0x0

    sput-boolean v0, Lcom/facebook/katana/binding/AppSession;->SIMULATE_102:Z

    sput-boolean v0, Lcom/facebook/katana/binding/AppSession;->got102:Z

    sput-boolean v0, Lcom/facebook/katana/binding/AppSession;->fixed102:Z

    sput-boolean v0, Lcom/facebook/katana/binding/AppSession;->IS_BETA_BUILD:Z

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/binding/AppSession;->mSessionMap:Ljava/util/Map;

    return-void
.end method

.method public constructor <init>()V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    sget-object v0, Lcom/facebook/katana/binding/AppSession;->mSessionMap:Ljava/util/Map;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    sput-object v0, Lcom/facebook/katana/binding/AppSession;->mActiveSessionId:Ljava/lang/String;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mPendingServiceRequestsMap:Ljava/util/Map;

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mRequestsToHandleAfterLogin:Ljava/util/Collection;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    sget-object v0, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mLoginStatus:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mWallContainerMap:Ljava/util/Map;

    new-instance v0, Lcom/facebook/katana/binding/UserImagesCache;

    new-instance v1, Lcom/facebook/katana/binding/AppSession$1;

    invoke-direct {v1, p0}, Lcom/facebook/katana/binding/AppSession$1;-><init>(Lcom/facebook/katana/binding/AppSession;)V

    invoke-direct {v0, v1}, Lcom/facebook/katana/binding/UserImagesCache;-><init>(Lcom/facebook/katana/binding/UserImagesCache$UserImagesContainerListener;)V

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mUserImageCache:Lcom/facebook/katana/binding/UserImagesCache;

    new-instance v0, Lcom/facebook/katana/binding/StreamPhotosCache;

    new-instance v1, Lcom/facebook/katana/binding/AppSession$2;

    invoke-direct {v1, p0}, Lcom/facebook/katana/binding/AppSession$2;-><init>(Lcom/facebook/katana/binding/AppSession;)V

    invoke-direct {v0, v1}, Lcom/facebook/katana/binding/StreamPhotosCache;-><init>(Lcom/facebook/katana/binding/StreamPhotosCache$PhotosContainerListener;)V

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mPhotosCache:Lcom/facebook/katana/binding/StreamPhotosCache;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;

    const-wide/16 v0, -0x1

    iput-wide v0, p0, Lcom/facebook/katana/binding/AppSession;->mLatestPostTime:J

    return-void
.end method

.method static synthetic access$0(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .registers 6

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/katana/binding/AppSession;->downloadUserImage(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1(Lcom/facebook/katana/binding/AppSession;)I
    .registers 2

    iget v0, p0, Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I

    return v0
.end method

.method static synthetic access$2(Lcom/facebook/katana/binding/AppSession;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$3(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookStatus;ILandroid/graphics/Bitmap;)V
    .registers 5

    invoke-direct {p0, p1, p2, p3, p4}, Lcom/facebook/katana/binding/AppSession;->updateWidget(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookStatus;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method static synthetic access$4(Lcom/facebook/katana/binding/AppSession;)Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$5(Lcom/facebook/katana/binding/AppSession;Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-direct/range {p0 .. p7}, Lcom/facebook/katana/binding/AppSession;->downloadPhoto(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private acquireWakeLock(Landroid/content/Context;)V
    .registers 5

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-nez v1, :cond_1a

    const-string v1, "power"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    const/4 v1, 0x1

    const-string v2, "FacebookService"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v1}, Landroid/os/PowerManager$WakeLock;->acquire()V

    :cond_1a
    return-void
.end method

.method public static clearWidget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
    .registers 12

    const/high16 v8, 0x1000

    const/4 v7, 0x0

    new-instance v0, Landroid/widget/RemoteViews;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030050

    invoke-direct {v0, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    const v5, 0x7f0b0078

    invoke-virtual {v0, v5, p1}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v5, 0x7f0b00cd

    invoke-virtual {v0, v5, p2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    new-instance v1, Landroid/content/Intent;

    const-class v5, Lcom/facebook/katana/StreamActivity;

    invoke-direct {v1, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x1400

    invoke-virtual {v1, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v5, 0x7f0b00cc

    invoke-static {p0, v7, v1, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v2, Landroid/content/Intent;

    const-class v5, Lcom/facebook/katana/LoginActivity;

    invoke-direct {v2, p0, v5}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const v5, 0x7f0b00cb

    invoke-static {p0, v7, v2, v8}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v0, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v4, Landroid/content/ComponentName;

    const-class v5, Lcom/facebook/katana/FacebookWidgetProvider;

    invoke-direct {v4, p0, v5}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {p0}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v3

    invoke-virtual {v3, v4, v0}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    return-void
.end method

.method private downloadPhoto(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 12

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    invoke-virtual {v0, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "aid"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pid"

    invoke-virtual {v0, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uri"

    invoke-virtual {v0, v2, p7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method private downloadUserImage(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x64

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "uri"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public static getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;
    .registers 14

    sget-object v7, Lcom/facebook/katana/binding/AppSession;->mActiveSessionId:Ljava/lang/String;

    if-eqz v7, :cond_25

    sget-object v7, Lcom/facebook/katana/binding/AppSession;->mSessionMap:Ljava/util/Map;

    sget-object v8, Lcom/facebook/katana/binding/AppSession;->mActiveSessionId:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/katana/binding/AppSession;

    :goto_e
    if-eqz v7, :cond_f0

    sget-boolean v8, Lcom/facebook/katana/binding/AppSession;->IS_BETA_BUILD:Z

    if-eqz v8, :cond_f0

    invoke-static {}, Lcom/facebook/katana/service/api/FacebookAffiliation;->synced()Z

    move-result v8

    if-nez v8, :cond_1d

    invoke-static {p0}, Lcom/facebook/katana/service/api/FacebookAffiliation;->syncStatus(Landroid/content/Context;)V

    :cond_1d
    invoke-static {}, Lcom/facebook/katana/service/api/FacebookAffiliation;->allowed()Z

    move-result v8

    if-eqz v8, :cond_d4

    move-object p0, v7

    :goto_24
    return-object p0

    :cond_25
    invoke-static {p0}, Lcom/facebook/katana/provider/UserValuesManager;->loadActiveSessionInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_d1

    :try_start_2b
    new-instance v11, Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-direct {v11, v7}, Lcom/facebook/katana/service/api/FacebookSessionInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v11}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionSecret()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_68

    new-instance v8, Lcom/facebook/katana/binding/AppSession;

    invoke-direct {v8}, Lcom/facebook/katana/binding/AppSession;-><init>()V

    new-instance v7, Landroid/content/Intent;

    const-class v9, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v7, p0, v9}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v9, "type"

    const/4 v10, 0x1

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v9, "rid"

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v7, v9, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v9, "sid"

    iget-object v8, v8, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v7, v9, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/16 v8, 0xc8

    const-string v9, "Ok"

    const/4 v10, 0x0

    const/4 v12, 0x0

    move-object v0, p0

    move-object v1, v7

    move v2, v8

    move-object v3, v9

    move-object v4, v10

    move-object v5, v11

    move-object v6, v12

    invoke-static/range {v0 .. v6}, Lcom/facebook/katana/binding/AppSession;->onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V
    :try_end_68
    .catch Ljava/lang/Exception; {:try_start_2b .. :try_end_68} :catch_c2

    :cond_68
    :goto_68
    sget-object v7, Lcom/facebook/katana/binding/AppSession;->mActiveSessionId:Ljava/lang/String;

    if-eqz v7, :cond_ce

    sget-object v7, Lcom/facebook/katana/binding/AppSession;->mSessionMap:Ljava/util/Map;

    sget-object v8, Lcom/facebook/katana/binding/AppSession;->mActiveSessionId:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/facebook/katana/binding/AppSession;

    move-object v9, v7

    :goto_77
    if-eqz v9, :cond_f3

    iget-object v7, v9, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getProfile()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v7

    invoke-virtual {v7}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-nez v7, :cond_f3

    new-instance v7, Landroid/content/Intent;

    const-class v8, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v7, p0, v8}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v8

    const-string v10, "type"

    const/4 v11, 0x3

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v10, "rid"

    invoke-virtual {v7, v10, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "sid"

    iget-object v11, v9, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "session_key"

    iget-object v11, v9, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v11}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v7, v10, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v10, "uid"

    iget-object v11, v9, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v11}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v11

    invoke-virtual {v7, v10, v11, v12}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {v9, p0, v8, v7}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    move-object v7, v9

    goto/16 :goto_e

    :catch_c2
    move-exception v7

    sget-object v7, Lcom/facebook/katana/binding/AppSession;->mSessionMap:Ljava/util/Map;

    sget-object v8, Lcom/facebook/katana/binding/AppSession;->mActiveSessionId:Ljava/lang/String;

    invoke-interface {v7, v8}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    const/4 v7, 0x0

    sput-object v7, Lcom/facebook/katana/binding/AppSession;->mActiveSessionId:Ljava/lang/String;

    goto :goto_68

    :cond_ce
    const/4 v7, 0x0

    move-object v9, v7

    goto :goto_77

    :cond_d1
    const/4 v7, 0x0

    goto/16 :goto_e

    :cond_d4
    invoke-static {}, Lcom/facebook/katana/service/api/FacebookAffiliation;->rejected()Z

    move-result v8

    if-eqz v8, :cond_e1

    const/4 v7, 0x0

    invoke-static {p0}, Lcom/facebook/katana/service/api/FacebookAffiliation;->maybeToast(Landroid/content/Context;)V

    move-object p0, v7

    goto/16 :goto_24

    :cond_e1
    invoke-static {}, Lcom/facebook/katana/service/api/FacebookAffiliation;->shouldInitiateRequest()Z

    move-result v8

    if-eqz v8, :cond_f0

    iget-object v8, v7, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v8}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v8

    invoke-virtual {v7, p0, v8, v9}, Lcom/facebook/katana/binding/AppSession;->getFacebookAffiliationStatus(Landroid/content/Context;J)Ljava/lang/String;

    :cond_f0
    move-object p0, v7

    goto/16 :goto_24

    :cond_f3
    move-object v7, v9

    goto/16 :goto_e
.end method

.method public static getUsernameHint(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    :try_start_0
    invoke-static {p0}, Lcom/facebook/katana/provider/UserValuesManager;->loadActiveSessionInfo(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_10

    new-instance v1, Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-direct {v1, v2}, Lcom/facebook/katana/service/api/FacebookSessionInfo;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUsername()Ljava/lang/String;
    :try_end_e
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_e} :catch_12

    move-result-object v0

    :goto_f
    return-object v0

    :cond_10
    const/4 v0, 0x0

    goto :goto_f

    :catch_12
    move-exception v4

    move-object v3, v4

    const/4 v0, 0x0

    goto :goto_f
.end method

.method private handleLogin(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookSessionInfo;)V
    .registers 7

    const/4 v3, 0x0

    sget-boolean v1, Lcom/facebook/katana/binding/AppSession;->SIMULATE_102:Z

    if-eqz v1, :cond_c

    sget-boolean v1, Lcom/facebook/katana/binding/AppSession;->got102:Z

    if-eqz v1, :cond_c

    const/4 v1, 0x1

    sput-boolean v1, Lcom/facebook/katana/binding/AppSession;->fixed102:Z

    :cond_c
    sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    iput-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mLoginStatus:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v1

    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/katana/provider/UserValuesManager;->saveActiveSessionInfo(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    new-instance v1, Lcom/facebook/katana/binding/WorkerThread;

    invoke-direct {v1}, Lcom/facebook/katana/binding/WorkerThread;-><init>()V

    iput-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mWorkerThread:Lcom/facebook/katana/binding/WorkerThread;

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mUserImageCache:Lcom/facebook/katana/binding/UserImagesCache;

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mWorkerThread:Lcom/facebook/katana/binding/WorkerThread;

    invoke-virtual {v1, p1, v2}, Lcom/facebook/katana/binding/UserImagesCache;->open(Landroid/content/Context;Lcom/facebook/katana/binding/WorkerThread;)V

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mPhotosCache:Lcom/facebook/katana/binding/StreamPhotosCache;

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mWorkerThread:Lcom/facebook/katana/binding/WorkerThread;

    invoke-virtual {v1, p1, v2}, Lcom/facebook/katana/binding/StreamPhotosCache;->open(Landroid/content/Context;Lcom/facebook/katana/binding/WorkerThread;)V

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;

    invoke-static {p1}, Lcom/facebook/katana/binding/AppSession;->loadUserStatuses(Landroid/content/Context;)Ljava/util/List;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-nez v1, :cond_61

    const v1, 0x7f0801a0

    invoke-virtual {p1, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, ""

    invoke-static {p1, v1, v2}, Lcom/facebook/katana/binding/AppSession;->clearWidget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :goto_4f
    const/16 v1, 0x3e8

    invoke-direct {p0, p1, v1, v3}, Lcom/facebook/katana/binding/AppSession;->scheduleUsersPollingAlarm(Landroid/content/Context;II)V

    const/4 v1, -0x1

    invoke-direct {p0, p1, v1, v3}, Lcom/facebook/katana/binding/AppSession;->scheduleStreamPollingAlarm(Landroid/content/Context;II)V

    const/16 v1, 0x2710

    invoke-direct {p0, p1, v1, v3}, Lcom/facebook/katana/binding/AppSession;->scheduleNotificationsPollingAlarm(Landroid/content/Context;II)V

    invoke-static {p1}, Lcom/facebook/katana/service/api/FacebookNotifications;->load(Landroid/content/Context;)V

    return-void

    :cond_61
    iput v3, p0, Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I

    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/AppSession;->initiateWidgetUpdate(Landroid/content/Context;)V

    goto :goto_4f
.end method

.method private handleLoginResult(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Z)V
    .registers 16

    const/4 v3, 0x0

    sget-object v1, Lcom/facebook/katana/binding/AppSession;->mActiveSessionId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_85

    const/16 v1, 0xc8

    if-ne p3, v1, :cond_49

    check-cast p6, Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-direct {p0, p1, p6}, Lcom/facebook/katana/binding/AppSession;->handleLogin(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookSessionInfo;)V

    if-eqz p7, :cond_24

    const v1, 0x7f080082

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    :cond_24
    sget-boolean v1, Lcom/facebook/katana/binding/AppSession;->IS_BETA_BUILD:Z

    if-eqz v1, :cond_2b

    invoke-static {p1}, Lcom/facebook/katana/service/api/FacebookAffiliation;->invalidateEmployeeBit(Landroid/content/Context;)V

    :cond_2b
    :goto_2b
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mRequestsToHandleAfterLogin:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_31
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_75

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mRequestsToHandleAfterLogin:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->clear()V

    :cond_3c
    :goto_3c
    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_42
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-nez v1, :cond_8f

    return-void

    :cond_49
    sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    iput-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mLoginStatus:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    if-eqz p7, :cond_69

    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/AppSession;->postLoginRequiredNotification(Landroid/content/Context;)V

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mRequestsToHandleAfterLogin:Ljava/util/Collection;

    invoke-interface {v1}, Ljava/util/Collection;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2b

    const v1, 0x7f080079

    invoke-virtual {p1, v1}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-static {p1, v1, v3}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v1

    invoke-virtual {v1}, Landroid/widget/Toast;->show()V

    goto :goto_2b

    :cond_69
    sget-object v1, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    iput-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mLoginStatus:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    sget-object v1, Lcom/facebook/katana/binding/AppSession;->mSessionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2b

    :cond_75
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v6, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v2, v6}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    goto :goto_31

    :cond_85
    if-nez p7, :cond_3c

    sget-object v1, Lcom/facebook/katana/binding/AppSession;->mSessionMap:Ljava/util/Map;

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-interface {v1, v2}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3c

    :cond_8f
    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSessionListener;

    move-object v1, p0

    move-object v2, p2

    move v3, p3

    move-object v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/facebook/katana/binding/AppSessionListener;->onLoginComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_42
.end method

.method private handleLogout(Landroid/content/Context;)V
    .registers 7

    const/4 v4, 0x0

    sget-object v2, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGED_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    iput-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mLoginStatus:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPendingServiceRequestsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mWallContainerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :goto_14
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_e1

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mWallContainerMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->clear()V

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    if-eqz v2, :cond_28

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/FacebookStreamContainer;->clear()V

    :cond_28
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mUserImageCache:Lcom/facebook/katana/binding/UserImagesCache;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/UserImagesCache;->close()V

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mWorkerThread:Lcom/facebook/katana/binding/WorkerThread;

    if-eqz v2, :cond_3d

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mWorkerThread:Lcom/facebook/katana/binding/WorkerThread;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/WorkerThread;->quit()V

    iput-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mWorkerThread:Lcom/facebook/katana/binding/WorkerThread;

    :cond_3d
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPhotosCache:Lcom/facebook/katana/binding/StreamPhotosCache;

    invoke-virtual {v2}, Lcom/facebook/katana/binding/StreamPhotosCache;->close()V

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    sget-object v2, Lcom/facebook/katana/binding/AppSession;->mSessionMap:Ljava/util/Map;

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/facebook/katana/binding/AppSession;->mActiveSessionId:Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_5b

    invoke-static {p1}, Lcom/facebook/katana/binding/ServiceNotificationManager;->release(Landroid/content/Context;)V

    :cond_5b
    sget-object v2, Lcom/facebook/katana/binding/AppSession;->mSessionMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v2

    if-nez v2, :cond_70

    invoke-direct {p0}, Lcom/facebook/katana/binding/AppSession;->releaseWakeLock()V

    new-instance v2, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v2, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p1, v2}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_70
    const v2, 0x7f08019f

    invoke-virtual {p1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v2

    const v3, 0x7f08019e

    invoke-virtual {p1, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-static {p1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->clearWidget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStreamAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_99

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStreamAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStreamAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    iput-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStreamAlarmIntent:Landroid/app/PendingIntent;

    :cond_99
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingUsersAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_a9

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingUsersAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingUsersAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    iput-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mPollingUsersAlarmIntent:Landroid/app/PendingIntent;

    :cond_a9
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStatusAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_b9

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStatusAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStatusAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    iput-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStatusAlarmIntent:Landroid/app/PendingIntent;

    :cond_b9
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStreamAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_c9

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStreamAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStreamAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    iput-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStreamAlarmIntent:Landroid/app/PendingIntent;

    :cond_c9
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingNotificationsAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_d9

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingNotificationsAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingNotificationsAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    iput-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mPollingNotificationsAlarmIntent:Landroid/app/PendingIntent;

    :cond_d9
    sget-boolean v2, Lcom/facebook/katana/binding/AppSession;->IS_BETA_BUILD:Z

    if-eqz v2, :cond_e0

    invoke-static {p1}, Lcom/facebook/katana/service/api/FacebookAffiliation;->invalidateEmployeeBit(Landroid/content/Context;)V

    :cond_e0
    return-void

    :cond_e1
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-virtual {v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->clear()V

    goto/16 :goto_14
.end method

.method private initiateWidgetUpdate(Landroid/content/Context;)V
    .registers 9

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;

    iget v4, p0, Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/service/api/FacebookStatus;

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookStatus;->getUser()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookUser;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_23

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mUserImageCache:Lcom/facebook/katana/binding/UserImagesCache;

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v4

    invoke-virtual {v1}, Lcom/facebook/katana/service/api/FacebookUser;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v3, p1, v4, v5, v6}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;JLjava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v2

    :cond_23
    iget v3, p0, Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I

    invoke-direct {p0, p1, v0, v3, v2}, Lcom/facebook/katana/binding/AppSession;->updateWidget(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookStatus;ILandroid/graphics/Bitmap;)V

    return-void
.end method

.method private static isLoginRequest(Landroid/content/Intent;)Z
    .registers 5

    const/4 v3, 0x1

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {p0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    if-eq v3, v0, :cond_10

    const/16 v1, 0x12d

    if-eq v1, v0, :cond_10

    const/4 v1, 0x0

    :goto_f
    return v1

    :cond_10
    move v1, v3

    goto :goto_f
.end method

.method private static listToCommaString(Ljava/util/List;Z)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<*>;Z)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v6, "\'"

    new-instance v1, Ljava/lang/StringBuffer;

    const/16 v3, 0x40

    invoke-direct {v1, v3}, Ljava/lang/StringBuffer;-><init>(I)V

    const/4 v0, 0x1

    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_e
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_19

    invoke-virtual {v1}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    :cond_19
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    if-nez v0, :cond_36

    const-string v4, ","

    invoke-virtual {v1, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    :goto_24
    if-eqz p1, :cond_38

    const-string v4, "\'"

    invoke-virtual {v1, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    move-result-object v4

    const-string v5, "\'"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_e

    :cond_36
    const/4 v0, 0x0

    goto :goto_24

    :cond_38
    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(Ljava/lang/Object;)Ljava/lang/StringBuffer;

    goto :goto_e
.end method

.method private static loadUserStatuses(Landroid/content/Context;)Ljava/util/List;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookStatus;",
            ">;"
        }
    .end annotation

    const/4 v3, 0x0

    new-instance v8, Ljava/util/ArrayList;

    invoke-direct {v8}, Ljava/util/ArrayList;-><init>()V

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/facebook/katana/provider/UserStatusesProvider;->CONTENT_URI:Landroid/net/Uri;

    sget-object v2, Lcom/facebook/katana/binding/AppSession$StatusesQuery;->PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v7

    if-eqz v7, :cond_55

    invoke-interface {v7}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_52

    :cond_1c
    new-instance v9, Lcom/facebook/katana/service/api/FacebookStatus;

    new-instance v0, Lcom/facebook/katana/service/api/FacebookUser;

    const/4 v1, 0x0

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v1

    const/4 v3, 0x1

    invoke-interface {v7, v3}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x2

    invoke-interface {v7, v4}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x3

    invoke-interface {v7, v5}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v5

    const/4 v6, 0x4

    invoke-interface {v7, v6}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v6

    invoke-direct/range {v0 .. v6}, Lcom/facebook/katana/service/api/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 v1, 0x6

    invoke-interface {v7, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x5

    invoke-interface {v7, v2}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v2

    invoke-direct {v9, v0, v1, v2, v3}, Lcom/facebook/katana/service/api/FacebookStatus;-><init>(Lcom/facebook/katana/service/api/FacebookUser;Ljava/lang/String;J)V

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    invoke-interface {v7}, Landroid/database/Cursor;->moveToNext()Z

    move-result v0

    if-nez v0, :cond_1c

    :cond_52
    invoke-interface {v7}, Landroid/database/Cursor;->close()V

    :cond_55
    return-object v8
.end method

.method private static nextRequestId()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget v1, Lcom/facebook/katana/binding/AppSession;->mUniqueId:I

    add-int/lit8 v2, v1, 0x1

    sput v2, Lcom/facebook/katana/binding/AppSession;->mUniqueId:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private onOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 141

    const-string v5, "type"

    const/4 v6, -0x1

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v124

    move/from16 v0, p3

    move-object/from16 v1, p5

    invoke-static {v0, v1}, Lcom/facebook/katana/service/api/methods/ApiMethod;->isSessionKeyError(ILjava/lang/Exception;)Z

    move-result v5

    if-eqz v5, :cond_1f

    sget-boolean v5, Lcom/facebook/katana/binding/AppSession;->SIMULATE_102:Z

    if-eqz v5, :cond_1c

    const/4 v5, 0x1

    sput-boolean v5, Lcom/facebook/katana/binding/AppSession;->got102:Z

    :cond_1c
    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/binding/AppSession;->postLoginRequiredNotification(Landroid/content/Context;)V

    :cond_1f
    const-string v5, "rid"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_32

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mPendingServiceRequestsMap:Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v5, v7}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    :cond_32
    sparse-switch v124, :sswitch_data_12f8

    :cond_35
    :goto_35
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mPendingServiceRequestsMap:Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Map;->size()I

    move-result v5

    if-nez v5, :cond_54

    invoke-direct/range {p0 .. p0}, Lcom/facebook/katana/binding/AppSession;->releaseWakeLock()V

    new-instance v5, Landroid/content/Intent;

    const-class v6, Lcom/facebook/katana/service/FacebookService;

    move-object v0, v5

    move-object/from16 v1, p1

    move-object v2, v6

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->stopService(Landroid/content/Intent;)Z

    :cond_54
    return-void

    :sswitch_55
    const/4 v12, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v5 .. v12}, Lcom/facebook/katana/binding/AppSession;->handleLoginResult(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Z)V

    goto :goto_35

    :sswitch_66
    const/4 v12, 0x1

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move/from16 v8, p3

    move-object/from16 v9, p4

    move-object/from16 v10, p5

    move-object/from16 v11, p6

    invoke-direct/range {v5 .. v12}, Lcom/facebook/katana/binding/AppSession;->handleLoginResult(Landroid/content/Context;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Z)V

    goto :goto_35

    :sswitch_77
    sget-object v5, Lcom/facebook/katana/binding/AppSession;->mActiveSessionId:Ljava/lang/String;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    move-object v6, v0

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_8b

    const/4 v5, 0x0

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-static {v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->saveActiveSessionInfo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mPendingServiceRequestsMap:Ljava/util/Map;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :cond_98
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_b1

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_f2

    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/binding/AppSession;->handleLogout(Landroid/content/Context;)V

    goto :goto_35

    :cond_b1
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v120

    check-cast v120, Landroid/content/Intent;

    const-string v6, "type"

    const/4 v8, -0x1

    move-object/from16 v0, v120

    move-object v1, v6

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v125

    const/16 v6, 0x50

    move/from16 v0, v125

    move v1, v6

    if-ne v0, v1, :cond_98

    const-string v6, "rid"

    move-object/from16 v0, v120

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_db
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_98

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/facebook/katana/binding/AppSessionListener;

    const/16 v11, 0x190

    const-string v12, "Canceled"

    const/4 v13, 0x0

    move-object/from16 v9, p0

    invoke-virtual/range {v8 .. v13}, Lcom/facebook/katana/binding/AppSessionListener;->onFriendsSyncComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_db

    :cond_f2
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object/from16 v12, p0

    move-object v13, v7

    move/from16 v14, p3

    move-object/from16 v15, p4

    move-object/from16 v16, p5

    invoke-virtual/range {v11 .. v16}, Lcom/facebook/katana/binding/AppSessionListener;->onLogoutComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_a7

    :sswitch_105
    move-object/from16 v0, p6

    check-cast v0, Ljava/util/List;

    move-object v13, v0

    move-object/from16 v0, p7

    check-cast v0, Lcom/facebook/katana/service/api/FacebookInfo;

    move-object/from16 v118, v0

    const/4 v12, 0x0

    const-string v5, "subject"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v22

    const/16 v5, 0xc8

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_19d

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_14e

    if-nez v22, :cond_14e

    const/4 v5, 0x0

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/facebook/katana/service/api/FacebookPost;

    invoke-virtual/range {p6 .. p6}, Lcom/facebook/katana/service/api/FacebookPost;->getCreatedTime()J

    move-result-wide v5

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/katana/binding/AppSession;->mLatestPostTime:J

    move-wide v8, v0

    cmp-long v5, v5, v8

    if-lez v5, :cond_14e

    const/4 v5, 0x0

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p6

    check-cast p6, Lcom/facebook/katana/service/api/FacebookPost;

    invoke-virtual/range {p6 .. p6}, Lcom/facebook/katana/service/api/FacebookPost;->getCreatedTime()J

    move-result-wide v5

    move-wide v0, v5

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/binding/AppSession;->mLatestPostTime:J

    :cond_14e
    if-nez v22, :cond_200

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-object v5, v0

    if-nez v5, :cond_161

    new-instance v5, Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-direct {v5}, Lcom/facebook/katana/binding/FacebookStreamContainer;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    :cond_161
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-object v12, v0

    const-string v5, "start"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v5, "end"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v5, "limit"

    const/16 v6, 0x14

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const-string v5, "app_value"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    invoke-virtual/range {v12 .. v19}, Lcom/facebook/katana/binding/FacebookStreamContainer;->add(Ljava/util/List;JJII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-object v12, v0

    :cond_19d
    :goto_19d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1a6
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    const-string v6, "uid"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    move-object v1, v6

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v20

    const-string v6, "start"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    move-object v1, v6

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v23

    const-string v6, "end"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    move-object v1, v6

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v25

    const-string v6, "limit"

    const/16 v8, 0x1e

    move-object/from16 v0, p2

    move-object v1, v6

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v27

    const-string v6, "app_value"

    const/4 v8, -0x1

    move-object/from16 v0, p2

    move-object v1, v6

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v28

    move-object v14, v11

    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v29, v13

    move-object/from16 v30, v12

    invoke-virtual/range {v14 .. v30}, Lcom/facebook/katana/binding/AppSessionListener;->onStreamGetComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;J[JJJIILjava/util/List;Lcom/facebook/katana/binding/FacebookStreamContainer;)V

    goto :goto_1a6

    :cond_200
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mWallContainerMap:Ljava/util/Map;

    move-object v5, v0

    const/4 v6, 0x0

    aget-wide v8, v22, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/katana/binding/FacebookStreamContainer;

    if-nez v12, :cond_228

    new-instance v12, Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-direct {v12}, Lcom/facebook/katana/binding/FacebookStreamContainer;-><init>()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mWallContainerMap:Ljava/util/Map;

    move-object v5, v0

    const/4 v6, 0x0

    aget-wide v8, v22, v6

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6, v12}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_228
    const-string v5, "start"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v14

    const-string v5, "end"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v5, "limit"

    const/16 v6, 0x14

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v18

    const-string v5, "app_value"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v19

    invoke-virtual/range {v12 .. v19}, Lcom/facebook/katana/binding/FacebookStreamContainer;->add(Ljava/util/List;JJII)V

    move-object v0, v12

    move-object/from16 v1, v118

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->setLatestInfo(Lcom/facebook/katana/service/api/FacebookInfo;)V

    goto/16 :goto_19d

    :sswitch_262
    const/16 v5, 0xc8

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_301

    move-object/from16 v0, p6

    check-cast v0, Ljava/util/List;

    move-object v13, v0

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    if-le v5, v6, :cond_28f

    const/4 v5, 0x0

    invoke-interface {v13, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lcom/facebook/katana/service/api/FacebookPost;

    invoke-virtual/range {p3 .. p3}, Lcom/facebook/katana/service/api/FacebookPost;->getCreatedTime()J

    move-result-wide v114

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/facebook/katana/binding/AppSession;->mLatestPostTime:J

    move-wide v5, v0

    cmp-long v5, v114, v5

    if-lez v5, :cond_28f

    move-wide/from16 v0, v114

    move-object/from16 v2, p0

    iput-wide v0, v2, Lcom/facebook/katana/binding/AppSession;->mLatestPostTime:J

    :cond_28f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-object v5, v0

    if-nez v5, :cond_2a0

    new-instance v5, Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-direct {v5}, Lcom/facebook/katana/binding/FacebookStreamContainer;-><init>()V

    move-object v0, v5

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    :cond_2a0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-object v14, v0

    const-string v5, "start"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v16

    const-string v5, "end"

    const-wide/16 v6, -0x1

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v18

    const-string v5, "limit"

    const/16 v6, 0x14

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v20

    const-string v5, "app_value"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v21

    move-object v15, v13

    invoke-virtual/range {v14 .. v21}, Lcom/facebook/katana/binding/FacebookStreamContainer;->add(Ljava/util/List;JJII)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_2e1
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_2f4

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->scheduleStreamPollingAlarm(Landroid/content/Context;II)V

    goto/16 :goto_35

    :cond_2f4
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object v0, v11

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/AppSessionListener;->onHomeStreamUpdated(Lcom/facebook/katana/binding/AppSession;)V

    goto :goto_2e1

    :cond_301
    const-string v5, "extra_attempt"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v111, v5, 0x1

    const/4 v5, 0x3

    move/from16 v0, v111

    move v1, v5

    if-ge v0, v1, :cond_322

    const/16 v5, 0x7530

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, v111

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->scheduleStreamPollingAlarm(Landroid/content/Context;II)V

    goto/16 :goto_35

    :cond_322
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->scheduleStreamPollingAlarm(Landroid/content/Context;II)V

    goto/16 :goto_35

    :sswitch_32f
    const-string v5, "uid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v8

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v128

    new-instance v23, Lcom/facebook/katana/service/api/FacebookPost;

    move-object/from16 v0, p6

    check-cast v0, Ljava/lang/String;

    move-object/from16 v24, v0

    const-wide v25, 0x51a67c8e50L

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v27

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v29

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v5

    cmp-long v5, v128, v5

    if-eqz v5, :cond_431

    move-wide/from16 v31, v128

    :goto_370
    const-string v5, "status"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v33

    const/16 v34, 0x0

    invoke-direct/range {v23 .. v34}, Lcom/facebook/katana/service/api/FacebookPost;-><init>(Ljava/lang/String;JJJJLjava/lang/String;Lcom/facebook/katana/service/api/FacebookPost$Attachment;)V

    new-instance v14, Lcom/facebook/katana/service/api/FacebookPost$Profile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getProfile()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getProfile()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getImageUrl()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/facebook/katana/service/api/FacebookPost$Profile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v23

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;->setProfile(Lcom/facebook/katana/service/api/FacebookPost$Profile;)V

    const/16 v5, 0xc8

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_3eb

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v5

    cmp-long v5, v128, v5

    if-nez v5, :cond_3d4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-object v5, v0

    if-eqz v5, :cond_3d4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->insertFirst(Lcom/facebook/katana/service/api/FacebookPost;)V

    :cond_3d4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mWallContainerMap:Ljava/util/Map;

    move-object v5, v0

    invoke-static/range {v128 .. v129}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/katana/binding/FacebookStreamContainer;

    if-eqz v12, :cond_3eb

    move-object v0, v12

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->insertFirst(Lcom/facebook/katana/service/api/FacebookPost;)V

    :cond_3eb
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_3f4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_437

    const/16 v5, 0x26

    move/from16 v0, v124

    move v1, v5

    if-ne v0, v1, :cond_35

    :try_start_401
    new-instance v120, Landroid/content/Intent;

    invoke-direct/range {v120 .. v120}, Landroid/content/Intent;-><init>()V

    const-string v5, "com.facebook.katana.widget.publish.result"

    move-object/from16 v0, v120

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "extra_error_code"

    move-object/from16 v0, v120

    move-object v1, v5

    move/from16 v2, p3

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v0, p1

    move v1, v5

    move-object/from16 v2, v120

    move v3, v6

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getBroadcast(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/PendingIntent;->send()V
    :try_end_427
    .catch Ljava/lang/Exception; {:try_start_401 .. :try_end_427} :catch_429

    goto/16 :goto_35

    :catch_429
    move-exception v5

    move-object/from16 v116, v5

    invoke-virtual/range {v116 .. v116}, Ljava/lang/Exception;->printStackTrace()V

    goto/16 :goto_35

    :cond_431
    const-wide/16 v5, -0x1

    move-wide/from16 v31, v5

    goto/16 :goto_370

    :cond_437
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object v14, v11

    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v20, v23

    invoke-virtual/range {v14 .. v20}, Lcom/facebook/katana/binding/AppSessionListener;->onStreamPublishComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/service/api/FacebookPost;)V

    goto :goto_3f4

    :sswitch_44e
    const/16 v5, 0xc8

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_4a7

    const-string v5, "uid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v8

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v128

    const-string v5, "post_id"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v5

    cmp-long v5, v128, v5

    if-nez v5, :cond_490

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-object v5, v0

    if-eqz v5, :cond_490

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->deletePost(Ljava/lang/String;)V

    :cond_490
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mWallContainerMap:Ljava/util/Map;

    move-object v5, v0

    invoke-static/range {v128 .. v129}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/katana/binding/FacebookStreamContainer;

    if-eqz v12, :cond_4a7

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->deletePost(Ljava/lang/String;)V

    :cond_4a7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_4b0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object v14, v11

    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-virtual/range {v14 .. v19}, Lcom/facebook/katana/binding/AppSessionListener;->onStreamRemovePostComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_4b0

    :sswitch_4cb
    const-string v5, "post_id"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v5, 0xc8

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_53e

    move-object/from16 v0, p6

    check-cast v0, Ljava/util/List;

    move-object/from16 v113, v0

    const-string v5, "uid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v8

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v128

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v5

    cmp-long v5, v128, v5

    if-nez v5, :cond_51d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-object v5, v0

    if-eqz v5, :cond_51d

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPost(Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookPost;

    move-result-object v23

    if-eqz v23, :cond_51d

    move-object/from16 v0, v23

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;->updateComments(Ljava/util/List;)V

    :cond_51d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mWallContainerMap:Ljava/util/Map;

    move-object v5, v0

    invoke-static/range {v128 .. v129}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/katana/binding/FacebookStreamContainer;

    if-eqz v12, :cond_53e

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPost(Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookPost;

    move-result-object v23

    if-eqz v23, :cond_53e

    move-object/from16 v0, v23

    move-object/from16 v1, v113

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;->updateComments(Ljava/util/List;)V

    :cond_53e
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_547
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object v14, v11

    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-virtual/range {v14 .. v20}, Lcom/facebook/katana/binding/AppSessionListener;->onStreamGetCommentsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_547

    :sswitch_562
    new-instance v24, Lcom/facebook/katana/service/api/FacebookPost$Comment;

    move-object/from16 v0, p6

    check-cast v0, Ljava/lang/String;

    move-object/from16 v25, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v26

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v5

    const-wide/16 v8, 0x3e8

    div-long v28, v5, v8

    const-string v5, "status"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v30

    invoke-direct/range {v24 .. v30}, Lcom/facebook/katana/service/api/FacebookPost$Comment;-><init>(Ljava/lang/String;JJLjava/lang/String;)V

    new-instance v14, Lcom/facebook/katana/service/api/FacebookPost$Profile;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getProfile()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getProfile()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getImageUrl()Ljava/lang/String;

    move-result-object v18

    const/16 v19, 0x0

    invoke-direct/range {v14 .. v19}, Lcom/facebook/katana/service/api/FacebookPost$Profile;-><init>(JLjava/lang/String;Ljava/lang/String;I)V

    move-object/from16 v0, v24

    move-object v1, v14

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost$Comment;->setProfile(Lcom/facebook/katana/service/api/FacebookPost$Profile;)V

    const-string v5, "post_id"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v5, 0xc8

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_61c

    const-string v5, "uid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v8

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v128

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v5

    cmp-long v5, v128, v5

    if-nez v5, :cond_5ff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-object v5, v0

    if-eqz v5, :cond_5ff

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPost(Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookPost;

    move-result-object v23

    if-eqz v23, :cond_5ff

    invoke-virtual/range {v23 .. v24}, Lcom/facebook/katana/service/api/FacebookPost;->addComment(Lcom/facebook/katana/service/api/FacebookPost$Comment;)V

    :cond_5ff
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mWallContainerMap:Ljava/util/Map;

    move-object v5, v0

    invoke-static/range {v128 .. v129}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/katana/binding/FacebookStreamContainer;

    if-eqz v12, :cond_61c

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPost(Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookPost;

    move-result-object v23

    if-eqz v23, :cond_61c

    invoke-virtual/range {v23 .. v24}, Lcom/facebook/katana/service/api/FacebookPost;->addComment(Lcom/facebook/katana/service/api/FacebookPost$Comment;)V

    :cond_61c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_625
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object v14, v11

    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    move-object/from16 v21, v24

    invoke-virtual/range {v14 .. v21}, Lcom/facebook/katana/binding/AppSessionListener;->onStreamAddCommentComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Lcom/facebook/katana/service/api/FacebookPost$Comment;)V

    goto :goto_625

    :sswitch_642
    const-string v5, "post_id"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v5, 0xc8

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_6bf

    const-string v5, "uid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v8

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v128

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v5

    cmp-long v5, v128, v5

    if-nez v5, :cond_696

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-object v5, v0

    if-eqz v5, :cond_696

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPost(Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookPost;

    move-result-object v23

    if-eqz v23, :cond_696

    const-string v5, "item_id"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;->deleteComment(Ljava/lang/String;)V

    :cond_696
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mWallContainerMap:Ljava/util/Map;

    move-object v5, v0

    invoke-static/range {v128 .. v129}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/katana/binding/FacebookStreamContainer;

    if-eqz v12, :cond_6bf

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPost(Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookPost;

    move-result-object v23

    if-eqz v23, :cond_6bf

    const-string v5, "item_id"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v23

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;->deleteComment(Ljava/lang/String;)V

    :cond_6bf
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_6c8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object v14, v11

    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-virtual/range {v14 .. v20}, Lcom/facebook/katana/binding/AppSessionListener;->onStreamRemoveCommentComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_6c8

    :sswitch_6e3
    const-string v5, "post_id"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v5, 0xc8

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_750

    const-string v5, "uid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v8

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v128

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v5

    cmp-long v5, v128, v5

    if-nez v5, :cond_72f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-object v5, v0

    if-eqz v5, :cond_72f

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPost(Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookPost;

    move-result-object v23

    if-eqz v23, :cond_72f

    const/4 v5, 0x1

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;->setUserLikes(Z)V

    :cond_72f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mWallContainerMap:Ljava/util/Map;

    move-object v5, v0

    invoke-static/range {v128 .. v129}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/katana/binding/FacebookStreamContainer;

    if-eqz v12, :cond_750

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPost(Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookPost;

    move-result-object v23

    if-eqz v23, :cond_750

    const/4 v5, 0x1

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;->setUserLikes(Z)V

    :cond_750
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_759
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object v14, v11

    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-virtual/range {v14 .. v20}, Lcom/facebook/katana/binding/AppSessionListener;->onStreamAddLikeComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_759

    :sswitch_774
    const-string v5, "post_id"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    const/16 v5, 0xc8

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_7e1

    const-string v5, "uid"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v6, v0

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v8

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v128

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v5

    cmp-long v5, v128, v5

    if-nez v5, :cond_7c0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-object v5, v0

    if-eqz v5, :cond_7c0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPost(Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookPost;

    move-result-object v23

    if-eqz v23, :cond_7c0

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;->setUserLikes(Z)V

    :cond_7c0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mWallContainerMap:Ljava/util/Map;

    move-object v5, v0

    invoke-static/range {v128 .. v129}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/facebook/katana/binding/FacebookStreamContainer;

    if-eqz v12, :cond_7e1

    move-object v0, v12

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/facebook/katana/binding/FacebookStreamContainer;->getPost(Ljava/lang/String;)Lcom/facebook/katana/service/api/FacebookPost;

    move-result-object v23

    if-eqz v23, :cond_7e1

    const/4 v5, 0x0

    move-object/from16 v0, v23

    move v1, v5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPost;->setUserLikes(Z)V

    :cond_7e1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_7ea
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object v14, v11

    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-virtual/range {v14 .. v20}, Lcom/facebook/katana/binding/AppSessionListener;->onStreamRemoveLikeComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_7ea

    :sswitch_805
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_80e
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    const-string v6, "uid"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    move-object v1, v6

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v31

    move-object/from16 v25, v11

    move-object/from16 v26, p0

    move-object/from16 v27, v7

    move/from16 v28, p3

    move-object/from16 v29, p4

    move-object/from16 v30, p5

    invoke-virtual/range {v25 .. v32}, Lcom/facebook/katana/binding/AppSessionListener;->onFriendsAddFriendComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;J)V

    goto :goto_80e

    :sswitch_836
    move-object/from16 v0, p6

    check-cast v0, Lcom/facebook/katana/service/api/FacebookUserFull;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_845
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    const-string v5, "uid"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v31

    move-object/from16 v0, p7

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v34

    move-object/from16 v25, v11

    move-object/from16 v26, p0

    move-object/from16 v27, v7

    move/from16 v28, p3

    move-object/from16 v29, p4

    move-object/from16 v30, p5

    invoke-virtual/range {v25 .. v34}, Lcom/facebook/katana/binding/AppSessionListener;->onUsersGetInfoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;JLcom/facebook/katana/service/api/FacebookUserFull;Z)V

    goto :goto_845

    :sswitch_876
    move-object/from16 v0, p6

    check-cast v0, Lcom/facebook/katana/service/api/FacebookUser;

    move-object/from16 v33, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_885
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    const-string v6, "uid"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    move-object v1, v6

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v31

    const/16 v34, 0x0

    move-object/from16 v25, v11

    move-object/from16 v26, p0

    move-object/from16 v27, v7

    move/from16 v28, p3

    move-object/from16 v29, p4

    move-object/from16 v30, p5

    invoke-virtual/range {v25 .. v34}, Lcom/facebook/katana/binding/AppSessionListener;->onUsersGetInfoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;JLcom/facebook/katana/service/api/FacebookUser;Z)V

    goto :goto_885

    :sswitch_8af
    const/16 v5, 0xc8

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_907

    invoke-static/range {p1 .. p1}, Lcom/facebook/katana/provider/UserValuesManager;->setLastContactsSync(Landroid/content/Context;)V

    move-object/from16 v0, p6

    check-cast v0, Ljava/util/Map;

    move-object/from16 v132, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mUserImageCache:Lcom/facebook/katana/binding/UserImagesCache;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move-object/from16 v2, v132

    invoke-virtual {v0, v1, v2}, Lcom/facebook/katana/binding/UserImagesCache;->get(Landroid/content/Context;Ljava/util/Map;)V

    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->scheduleUsersPollingAlarm(Landroid/content/Context;II)V

    :goto_8d7
    const/16 v5, 0x3e8

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->scheduleStatusPollingAlarm(Landroid/content/Context;II)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_8ec
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object v14, v11

    move-object/from16 v15, p0

    move-object/from16 v16, v7

    move/from16 v17, p3

    move-object/from16 v18, p4

    move-object/from16 v19, p5

    invoke-virtual/range {v14 .. v19}, Lcom/facebook/katana/binding/AppSessionListener;->onFriendsSyncComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_8ec

    :cond_907
    const-string v5, "extra_attempt"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v111, v5, 0x1

    const/4 v5, 0x3

    move/from16 v0, v111

    move v1, v5

    if-ge v0, v1, :cond_928

    const v5, 0x493e0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, v111

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->scheduleUsersPollingAlarm(Landroid/content/Context;II)V

    goto :goto_8d7

    :cond_928
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->scheduleUsersPollingAlarm(Landroid/content/Context;II)V

    goto :goto_8d7

    :sswitch_934
    const/16 v5, 0xc8

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_971

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->clear()V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;

    move-object v5, v0

    check-cast p6, Ljava/util/List;

    move-object v0, v5

    move-object/from16 v1, p6

    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    const/4 v5, 0x0

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_964

    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/binding/AppSession;->initiateWidgetUpdate(Landroid/content/Context;)V

    :cond_964
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->scheduleStatusPollingAlarm(Landroid/content/Context;II)V

    goto/16 :goto_35

    :cond_971
    const-string v5, "extra_attempt"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v111, v5, 0x1

    const/4 v5, 0x3

    move/from16 v0, v111

    move v1, v5

    if-ge v0, v1, :cond_992

    const/16 v5, 0x7530

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, v111

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->scheduleStatusPollingAlarm(Landroid/content/Context;II)V

    goto/16 :goto_35

    :cond_992
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-nez v5, :cond_9b0

    const v5, 0x7f08019d

    move-object/from16 v0, p1

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    const-string v6, ""

    move-object/from16 v0, p1

    move-object v1, v5

    move-object v2, v6

    invoke-static {v0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->clearWidget(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9b0
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->scheduleStatusPollingAlarm(Landroid/content/Context;II)V

    goto/16 :goto_35

    :sswitch_9bd
    const/16 v5, 0xc8

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_9fd

    move-object/from16 v0, p6

    check-cast v0, Lcom/facebook/katana/service/api/FacebookNotifications;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Lcom/facebook/katana/service/api/FacebookNotifications;->hasNewNotifications()Z

    move-result v5

    if-eqz v5, :cond_9f0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v15

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionSecret()Ljava/lang/String;

    move-result-object v19

    move-object/from16 v14, p1

    invoke-static/range {v14 .. v19}, Lcom/facebook/katana/binding/ServiceNotificationManager;->showNotification(Landroid/content/Context;JLcom/facebook/katana/service/api/FacebookNotifications;Ljava/lang/String;Ljava/lang/String;)V

    :cond_9f0
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->scheduleNotificationsPollingAlarm(Landroid/content/Context;II)V

    goto/16 :goto_35

    :cond_9fd
    const-string v5, "extra_attempt"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    add-int/lit8 v111, v5, 0x1

    const/4 v5, 0x3

    move/from16 v0, v111

    move v1, v5

    if-ge v0, v1, :cond_a1f

    const v5, 0xea60

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move/from16 v3, v111

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->scheduleNotificationsPollingAlarm(Landroid/content/Context;II)V

    goto/16 :goto_35

    :cond_a1f
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->scheduleNotificationsPollingAlarm(Landroid/content/Context;II)V

    goto/16 :goto_35

    :sswitch_a2c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a35
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object/from16 v25, v11

    move-object/from16 v26, p0

    move-object/from16 v27, v7

    move/from16 v28, p3

    move-object/from16 v29, p4

    move-object/from16 v30, p5

    invoke-virtual/range {v25 .. v30}, Lcom/facebook/katana/binding/AppSessionListener;->onGetNotificationHistoryComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_a35

    :sswitch_a51
    const-string v5, "uid"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v41

    const-string v5, "aid"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v40

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a6f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object/from16 v34, v11

    move-object/from16 v35, p0

    move-object/from16 v36, v7

    move/from16 v37, p3

    move-object/from16 v38, p4

    move-object/from16 v39, p5

    invoke-virtual/range {v34 .. v42}, Lcom/facebook/katana/binding/AppSessionListener;->onPhotoGetAlbumsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[Ljava/lang/String;J)V

    goto :goto_a6f

    :sswitch_a8b
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_a94
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object/from16 v0, p6

    check-cast v0, Lcom/facebook/katana/service/api/FacebookAlbum;

    move-object/from16 v31, v0

    move-object/from16 v25, v11

    move-object/from16 v26, p0

    move-object/from16 v27, v7

    move/from16 v28, p3

    move-object/from16 v29, p4

    move-object/from16 v30, p5

    invoke-virtual/range {v25 .. v31}, Lcom/facebook/katana/binding/AppSessionListener;->onPhotoCreateAlbumComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/service/api/FacebookAlbum;)V

    goto :goto_a94

    :sswitch_ab6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_abf
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    const-string v6, "aid"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v25, v11

    move-object/from16 v26, p0

    move-object/from16 v27, v7

    move/from16 v28, p3

    move-object/from16 v29, p4

    move-object/from16 v30, p5

    invoke-virtual/range {v25 .. v31}, Lcom/facebook/katana/binding/AppSessionListener;->onPhotoEditAlbumComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_abf

    :sswitch_ae4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_aed
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    const-string v6, "aid"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v31

    move-object/from16 v25, v11

    move-object/from16 v26, p0

    move-object/from16 v27, v7

    move/from16 v28, p3

    move-object/from16 v29, p4

    move-object/from16 v30, p5

    invoke-virtual/range {v25 .. v31}, Lcom/facebook/katana/binding/AppSessionListener;->onPhotoDeleteAlbumComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_aed

    :sswitch_b12
    const-string v5, "aid"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v49

    const-string v5, "pid"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v50

    const-string v5, "uid"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v51

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_b39
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object/from16 v43, v11

    move-object/from16 v44, p0

    move-object/from16 v45, v7

    move/from16 v46, p3

    move-object/from16 v47, p4

    move-object/from16 v48, p5

    invoke-virtual/range {v43 .. v52}, Lcom/facebook/katana/binding/AppSessionListener;->onPhotoGetPhotosComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;[Ljava/lang/String;J)V

    goto :goto_b39

    :sswitch_b55
    move-object/from16 v0, p6

    check-cast v0, Lcom/facebook/katana/service/api/FacebookPhoto;

    move-object/from16 v59, v0

    if-eqz v59, :cond_bdc

    invoke-virtual/range {v59 .. v59}, Lcom/facebook/katana/service/api/FacebookPhoto;->getAlbumId()Ljava/lang/String;

    move-result-object v49

    invoke-virtual/range {v59 .. v59}, Lcom/facebook/katana/service/api/FacebookPhoto;->getPhotoId()Ljava/lang/String;

    move-result-object v30

    :goto_b65
    const/16 v5, 0xc8

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_b8a

    if-eqz v49, :cond_b8a

    new-instance v110, Ljava/util/ArrayList;

    const/4 v5, 0x1

    move-object/from16 v0, v110

    move v1, v5

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, v110

    move-object/from16 v1, v49

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v5

    move-object/from16 v4, v110

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->photoGetAlbums(Landroid/content/Context;JLjava/util/List;)Ljava/lang/String;

    :cond_b8a
    const-string v5, "uri"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    invoke-static {v7}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v26

    move-object/from16 v25, p1

    move/from16 v27, p3

    move-object/from16 v29, v49

    invoke-static/range {v25 .. v30}, Lcom/facebook/katana/binding/ServiceNotificationManager;->endProgressNotification(Landroid/content/Context;IILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_bae

    new-instance v5, Ljava/io/File;

    move-object v0, v5

    move-object/from16 v1, v28

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5}, Ljava/io/File;->delete()Z

    :cond_bae
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_bb7
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    const-string v6, "uri"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v60

    move-object/from16 v53, v11

    move-object/from16 v54, p0

    move-object/from16 v55, v7

    move/from16 v56, p3

    move-object/from16 v57, p4

    move-object/from16 v58, p5

    invoke-virtual/range {v53 .. v60}, Lcom/facebook/katana/binding/AppSessionListener;->onPhotoUploadComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/service/api/FacebookPhoto;Ljava/lang/String;)V

    goto :goto_bb7

    :cond_bdc
    const/16 v49, 0x0

    const/16 v30, 0x0

    goto :goto_b65

    :sswitch_be1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_bea
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    const-string v6, "aid"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    const-string v6, "pid"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    move-object/from16 v60, v11

    move-object/from16 v61, p0

    move-object/from16 v62, v7

    move/from16 v63, p3

    move-object/from16 v64, p4

    move-object/from16 v65, p5

    invoke-virtual/range {v60 .. v67}, Lcom/facebook/katana/binding/AppSessionListener;->onPhotoEditPhotoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_bea

    :sswitch_c18
    check-cast p6, Ljava/lang/Boolean;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v119

    if-eqz v119, :cond_c40

    new-instance v110, Ljava/util/ArrayList;

    invoke-direct/range {v110 .. v110}, Ljava/util/ArrayList;-><init>()V

    const-string v5, "aid"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v110

    move-object v1, v5

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-wide/16 v5, -0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-wide v2, v5

    move-object/from16 v4, v110

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->photoGetAlbums(Landroid/content/Context;JLjava/util/List;)Ljava/lang/String;

    :cond_c40
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c49
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    const-string v6, "aid"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    const-string v6, "pid"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v67

    move-object/from16 v60, v11

    move-object/from16 v61, p0

    move-object/from16 v62, v7

    move/from16 v63, p3

    move-object/from16 v64, p4

    move-object/from16 v65, p5

    invoke-virtual/range {v60 .. v67}, Lcom/facebook/katana/binding/AppSessionListener;->onPhotoDeletePhotoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_c49

    :sswitch_c77
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_c80
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    const-string v6, "pid"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, p6

    check-cast v0, Ljava/util/List;

    move-object/from16 v67, v0

    move-object/from16 v60, v11

    move-object/from16 v61, p0

    move-object/from16 v62, v7

    move/from16 v63, p3

    move-object/from16 v64, p4

    move-object/from16 v65, p5

    invoke-virtual/range {v60 .. v67}, Lcom/facebook/katana/binding/AppSessionListener;->onPhotoAddTagsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/util/List;)V

    goto :goto_c80

    :sswitch_cab
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_cb4
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object/from16 v0, p6

    check-cast v0, Ljava/util/List;

    move-object/from16 v66, v0

    move-object/from16 v60, v11

    move-object/from16 v61, p0

    move-object/from16 v62, v7

    move/from16 v63, p3

    move-object/from16 v64, p4

    move-object/from16 v65, p5

    invoke-virtual/range {v60 .. v66}, Lcom/facebook/katana/binding/AppSessionListener;->onPhotoGetTagsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/util/List;)V

    goto :goto_cb4

    :sswitch_cd6
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_cdf
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_35

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    const-string v5, "pid"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, p6

    check-cast v0, Ljava/util/List;

    move-object/from16 v67, v0

    move-object/from16 v0, p7

    check-cast v0, Ljava/lang/Boolean;

    move-object v5, v0

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v68

    move-object/from16 v60, v11

    move-object/from16 v61, p0

    move-object/from16 v62, v7

    move/from16 v63, p3

    move-object/from16 v64, p4

    move-object/from16 v65, p5

    invoke-virtual/range {v60 .. v68}, Lcom/facebook/katana/binding/AppSessionListener;->onPhotoGetCommentsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/util/List;Z)V

    goto :goto_cdf

    :sswitch_d13
    const/16 v24, 0x0

    const/16 v5, 0xc8

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_d31

    move-object/from16 v0, p6

    check-cast v0, Lcom/facebook/katana/service/api/FacebookPhotoComment;

    move-object/from16 v24, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getProfile()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v5

    move-object/from16 v0, v24

    move-object v1, v5

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookPhotoComment;->setFromUser(Lcom/facebook/katana/service/api/FacebookUser;)V

    :cond_d31
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d3a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    const-string v6, "pid"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    move-object/from16 v60, v11

    move-object/from16 v61, p0

    move-object/from16 v62, v7

    move/from16 v63, p3

    move-object/from16 v64, p4

    move-object/from16 v65, p5

    move-object/from16 v67, v24

    invoke-virtual/range {v60 .. v67}, Lcom/facebook/katana/binding/AppSessionListener;->onPhotoAddCommentComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Lcom/facebook/katana/service/api/FacebookPhotoComment;)V

    goto :goto_d3a

    :sswitch_d61
    const-string v5, "uri"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v66

    move-object/from16 v0, p6

    check-cast v0, Lcom/facebook/katana/binding/StreamPhoto;

    move-object/from16 v123, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mPhotosCache:Lcom/facebook/katana/binding/StreamPhotosCache;

    move-object v5, v0

    move-object v0, v5

    move-object/from16 v1, p1

    move/from16 v2, p3

    move-object/from16 v3, v66

    move-object/from16 v4, v123

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/katana/binding/StreamPhotosCache;->onDownloadComplete(Landroid/content/Context;ILjava/lang/String;Lcom/facebook/katana/binding/StreamPhoto;)Lcom/facebook/katana/binding/StreamPhoto;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_d8a
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    if-eqz v123, :cond_dae

    invoke-virtual/range {v123 .. v123}, Lcom/facebook/katana/binding/StreamPhoto;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v67, v6

    :goto_d9e
    move-object/from16 v60, v11

    move-object/from16 v61, p0

    move-object/from16 v62, v7

    move/from16 v63, p3

    move-object/from16 v64, p4

    move-object/from16 v65, p5

    invoke-virtual/range {v60 .. v67}, Lcom/facebook/katana/binding/AppSessionListener;->onDownloadStreamPhotoComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Landroid/graphics/Bitmap;)V

    goto :goto_d8a

    :cond_dae
    const/4 v6, 0x0

    move-object/from16 v67, v6

    goto :goto_d9e

    :sswitch_db2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_dbb
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    const-string v6, "aid"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v73

    move-object/from16 v67, v11

    move-object/from16 v68, p0

    move-object/from16 v69, v7

    move/from16 v70, p3

    move-object/from16 v71, p4

    move-object/from16 v72, p5

    invoke-virtual/range {v67 .. v73}, Lcom/facebook/katana/binding/AppSessionListener;->onDownloadAlbumThumbnailComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;)V

    goto :goto_dbb

    :sswitch_de0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_de9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    const-string v6, "aid"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v73

    const-string v6, "pid"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v74

    move-object/from16 v67, v11

    move-object/from16 v68, p0

    move-object/from16 v69, v7

    move/from16 v70, p3

    move-object/from16 v71, p4

    move-object/from16 v72, p5

    invoke-virtual/range {v67 .. v74}, Lcom/facebook/katana/binding/AppSessionListener;->onDownloadPhotoThumbnailComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_de9

    :sswitch_e17
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_e20
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    const-string v6, "aid"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v73

    const-string v6, "pid"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v74

    move-object/from16 v67, v11

    move-object/from16 v68, p0

    move-object/from16 v69, v7

    move/from16 v70, p3

    move-object/from16 v71, p4

    move-object/from16 v72, p5

    invoke-virtual/range {v67 .. v74}, Lcom/facebook/katana/binding/AppSessionListener;->onDownloadPhotoFullComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_e20

    :sswitch_e4e
    const-string v5, "uid"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v37

    move-object/from16 v0, p6

    check-cast v0, Lcom/facebook/katana/binding/UserImage;

    move-object/from16 v39, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mUserImageCache:Lcom/facebook/katana/binding/UserImagesCache;

    move-object/from16 v34, v0

    move-object/from16 v35, p1

    move/from16 v36, p3

    invoke-virtual/range {v34 .. v39}, Lcom/facebook/katana/binding/UserImagesCache;->onDownloadComplete(Landroid/content/Context;IJLcom/facebook/katana/binding/UserImage;)Lcom/facebook/katana/binding/UserImage;

    const/16 v5, 0xc8

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I

    move v5, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;

    move-object v6, v0

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-ge v5, v6, :cond_ec4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I

    move v6, v0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/katana/service/api/FacebookStatus;

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/katana/service/api/FacebookStatus;->getUser()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v5

    cmp-long v5, v5, v37

    if-nez v5, :cond_ec4

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;

    move-object v5, v0

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I

    move v6, v0

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lcom/facebook/katana/service/api/FacebookStatus;

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I

    move v5, v0

    invoke-virtual/range {v39 .. v39}, Lcom/facebook/katana/binding/UserImage;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move v3, v5

    move-object v4, v6

    invoke-direct {v0, v1, v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->updateWidget(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookStatus;ILandroid/graphics/Bitmap;)V

    :cond_ec4
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v5

    cmp-long v5, v5, v37

    if-nez v5, :cond_f20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getProfile()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v122

    invoke-virtual/range {v39 .. v39}, Lcom/facebook/katana/binding/UserImage;->getUrl()Ljava/lang/String;

    move-result-object v5

    invoke-virtual/range {v122 .. v122}, Lcom/facebook/katana/service/api/FacebookUser;->getImageUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_f20

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    new-instance v67, Lcom/facebook/katana/service/api/FacebookUser;

    invoke-virtual/range {v122 .. v122}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v68

    invoke-virtual/range {v122 .. v122}, Lcom/facebook/katana/service/api/FacebookUser;->getFirstName()Ljava/lang/String;

    move-result-object v70

    invoke-virtual/range {v122 .. v122}, Lcom/facebook/katana/service/api/FacebookUser;->getLastName()Ljava/lang/String;

    move-result-object v71

    invoke-virtual/range {v122 .. v122}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;

    move-result-object v72

    invoke-virtual/range {v39 .. v39}, Lcom/facebook/katana/binding/UserImage;->getUrl()Ljava/lang/String;

    move-result-object v73

    invoke-direct/range {v67 .. v73}, Lcom/facebook/katana/service/api/FacebookUser;-><init>(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, v67

    invoke-virtual {v0, v1}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->setProfile(Lcom/facebook/katana/service/api/FacebookUser;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->toJSONObject()Lorg/json/JSONObject;

    move-result-object v5

    invoke-virtual {v5}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    move-result-object v109

    move-object/from16 v0, p1

    move-object/from16 v1, v109

    invoke-static {v0, v1}, Lcom/facebook/katana/provider/UserValuesManager;->saveActiveSessionInfo(Landroid/content/Context;Ljava/lang/String;)V

    :cond_f20
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f29
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mUserImageCache:Lcom/facebook/katana/binding/UserImagesCache;

    move-object/from16 v74, v0

    move-object/from16 v67, v11

    move-object/from16 v68, p0

    move-object/from16 v69, v7

    move/from16 v70, p3

    move-object/from16 v71, p4

    move-object/from16 v72, p5

    move-object/from16 v73, v39

    invoke-virtual/range {v67 .. v74}, Lcom/facebook/katana/binding/AppSessionListener;->onUserImageDownloaded(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Lcom/facebook/katana/binding/UserImage;Lcom/facebook/katana/binding/UserImagesCache;)V

    goto :goto_f29

    :sswitch_f4d
    const-string v5, "folder"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v73

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f61
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object/from16 v67, v11

    move-object/from16 v68, p0

    move-object/from16 v69, v7

    move/from16 v70, p3

    move-object/from16 v71, p4

    move-object/from16 v72, p5

    invoke-virtual/range {v67 .. v73}, Lcom/facebook/katana/binding/AppSessionListener;->onMailboxSyncComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;I)V

    goto :goto_f61

    :sswitch_f7d
    const-string v5, "folder"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v73

    const-string v5, "tid"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v74

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_f9d
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-nez v6, :cond_fcf

    const/16 v5, 0xc8

    move/from16 v0, p3

    move v1, v5

    if-ne v0, v1, :cond_35

    const-string v5, "read"

    const/4 v6, 0x1

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v121

    if-eqz v121, :cond_35

    const/4 v5, 0x1

    move v0, v5

    new-array v0, v0, [J

    move-object/from16 v130, v0

    const/4 v5, 0x0

    aput-wide v74, v130, v5

    const/4 v5, 0x1

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move/from16 v2, v73

    move-object/from16 v3, v130

    move v4, v5

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/facebook/katana/binding/AppSession;->mailboxMarkThread(Landroid/content/Context;I[JZ)Ljava/lang/String;

    goto/16 :goto_35

    :cond_fcf
    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object/from16 v67, v11

    move-object/from16 v68, p0

    move-object/from16 v69, v7

    move/from16 v70, p3

    move-object/from16 v71, p4

    move-object/from16 v72, p5

    invoke-virtual/range {v67 .. v75}, Lcom/facebook/katana/binding/AppSessionListener;->onMailboxGetThreadMessagesComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;IJ)V

    goto :goto_f9d

    :sswitch_fe5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_fee
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object/from16 v43, v11

    move-object/from16 v44, p0

    move-object/from16 v45, v7

    move/from16 v46, p3

    move-object/from16 v47, p4

    move-object/from16 v48, p5

    invoke-virtual/range {v43 .. v48}, Lcom/facebook/katana/binding/AppSessionListener;->onMailboxSendComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;)V

    goto :goto_fee

    :sswitch_100a
    const-string v5, "tid"

    const-wide/16 v8, -0x1

    move-object/from16 v0, p2

    move-object v1, v5

    move-wide v2, v8

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v74

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_101f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object/from16 v76, v11

    move-object/from16 v77, p0

    move-object/from16 v78, v7

    move/from16 v79, p3

    move-object/from16 v80, p4

    move-object/from16 v81, p5

    move-wide/from16 v82, v74

    invoke-virtual/range {v76 .. v83}, Lcom/facebook/katana/binding/AppSessionListener;->onMailboxReplyComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;J)V

    goto :goto_101f

    :sswitch_103d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1046
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    const-string v6, "tid"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v82

    const-string v6, "read"

    const/4 v8, 0x0

    move-object/from16 v0, p2

    move-object v1, v6

    move v2, v8

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getBooleanExtra(Ljava/lang/String;Z)Z

    move-result v83

    move-object/from16 v76, v11

    move-object/from16 v77, p0

    move-object/from16 v78, v7

    move/from16 v79, p3

    move-object/from16 v80, p4

    move-object/from16 v81, p5

    invoke-virtual/range {v76 .. v83}, Lcom/facebook/katana/binding/AppSessionListener;->onMailboxMarkThreadComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[JZ)V

    goto :goto_1046

    :sswitch_1076
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_107f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    const-string v6, "tid"

    move-object/from16 v0, p2

    move-object v1, v6

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v82

    move-object/from16 v76, v11

    move-object/from16 v77, p0

    move-object/from16 v78, v7

    move/from16 v79, p3

    move-object/from16 v80, p4

    move-object/from16 v81, p5

    invoke-virtual/range {v76 .. v82}, Lcom/facebook/katana/binding/AppSessionListener;->onMailboxDeleteThreadComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;[J)V

    goto :goto_107f

    :sswitch_10a4
    check-cast p6, Ljava/lang/Integer;

    invoke-virtual/range {p6 .. p6}, Ljava/lang/Integer;->intValue()I

    move-result v82

    check-cast p7, Ljava/lang/Integer;

    invoke-virtual/range {p7 .. p7}, Ljava/lang/Integer;->intValue()I

    move-result v83

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_10b9
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object/from16 v76, v11

    move-object/from16 v77, p0

    move-object/from16 v78, v7

    move/from16 v79, p3

    move-object/from16 v80, p4

    move-object/from16 v81, p5

    invoke-virtual/range {v76 .. v83}, Lcom/facebook/katana/binding/AppSessionListener;->onUsersSearchComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;II)V

    goto :goto_10b9

    :sswitch_10d5
    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/binding/AppSession;->acquireWakeLock(Landroid/content/Context;)V

    const-string v5, "extra_attempt"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->streamPoll(Landroid/content/Context;I)Ljava/lang/String;

    goto/16 :goto_35

    :sswitch_10ed
    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/binding/AppSession;->acquireWakeLock(Landroid/content/Context;)V

    const-string v5, "extra_attempt"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->pollNotifications(Landroid/content/Context;I)Ljava/lang/String;

    goto/16 :goto_35

    :sswitch_1105
    const-string v5, "connectivity"

    move-object/from16 v0, p1

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v112

    check-cast v112, Landroid/net/ConnectivityManager;

    invoke-virtual/range {v112 .. v112}, Landroid/net/ConnectivityManager;->getBackgroundDataSetting()Z

    move-result v5

    if-eqz v5, :cond_1131

    const-string v5, "extra_attempt"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->syncFriends(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v5

    if-eqz v5, :cond_35

    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/binding/AppSession;->acquireWakeLock(Landroid/content/Context;)V

    goto/16 :goto_35

    :cond_1131
    const/4 v5, -0x1

    const/4 v6, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    move v3, v6

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/katana/binding/AppSession;->scheduleUsersPollingAlarm(Landroid/content/Context;II)V

    goto/16 :goto_35

    :sswitch_113e
    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/binding/AppSession;->acquireWakeLock(Landroid/content/Context;)V

    const-string v5, "extra_attempt"

    const/4 v6, 0x0

    move-object/from16 v0, p2

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v5

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move v2, v5

    invoke-direct {v0, v1, v2}, Lcom/facebook/katana/binding/AppSession;->usersPollStatuses(Landroid/content/Context;I)Ljava/lang/String;

    goto/16 :goto_35

    :sswitch_1156
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v126

    if-eqz v126, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I

    move v5, v0

    if-ltz v5, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I

    move v5, v0

    const/4 v6, 0x1

    sub-int v6, v126, v6

    if-ge v5, v6, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I

    move v5, v0

    add-int/lit8 v5, v5, 0x1

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I

    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/binding/AppSession;->initiateWidgetUpdate(Landroid/content/Context;)V

    goto/16 :goto_35

    :sswitch_1183
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v126

    if-eqz v126, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I

    move v5, v0

    if-eqz v5, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I

    move v5, v0

    if-lez v5, :cond_35

    move-object/from16 v0, p0

    iget v0, v0, Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I

    move v5, v0

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move v0, v5

    move-object/from16 v1, p0

    iput v0, v1, Lcom/facebook/katana/binding/AppSession;->mCurrentStatusIndex:I

    invoke-direct/range {p0 .. p1}, Lcom/facebook/katana/binding/AppSession;->initiateWidgetUpdate(Landroid/content/Context;)V

    goto/16 :goto_35

    :sswitch_11ad
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-object v5, v0

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v45

    const-string v5, "status"

    move-object/from16 v0, p2

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v47

    const/16 v48, 0x1

    move-object/from16 v43, p0

    move-object/from16 v44, p1

    invoke-virtual/range {v43 .. v48}, Lcom/facebook/katana/binding/AppSession;->streamPublish(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;

    goto/16 :goto_35

    :sswitch_11ca
    invoke-static/range {p1 .. p1}, Lcom/facebook/katana/binding/ServiceNotificationManager;->handleClearNotifications(Landroid/content/Context;)V

    goto/16 :goto_35

    :sswitch_11cf
    move-object/from16 v0, p6

    check-cast v0, Ljava/util/List;

    move-object/from16 v90, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_11de
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object/from16 v84, v11

    move-object/from16 v85, p0

    move-object/from16 v86, v7

    move/from16 v87, p3

    move-object/from16 v88, p4

    move-object/from16 v89, p5

    invoke-virtual/range {v84 .. v90}, Lcom/facebook/katana/binding/AppSessionListener;->onUserGetEventsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/util/List;)V

    goto :goto_11de

    :sswitch_11fa
    move-object/from16 v0, p6

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v117, v0

    move-object/from16 v0, p7

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v127, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_120f
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual/range {v117 .. v117}, Ljava/lang/Long;->longValue()J

    move-result-wide v97

    invoke-virtual/range {v127 .. v127}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v99

    move-object/from16 v91, v11

    move-object/from16 v92, p0

    move-object/from16 v93, v7

    move/from16 v94, p3

    move-object/from16 v95, p4

    move-object/from16 v96, p5

    invoke-virtual/range {v91 .. v99}, Lcom/facebook/katana/binding/AppSessionListener;->onEventRsvpComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;JZ)V

    goto :goto_120f

    :sswitch_1233
    move-object/from16 v0, p6

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v117, v0

    move-object/from16 v0, p7

    check-cast v0, Ljava/util/Map;

    move-object/from16 v99, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1248
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual/range {v117 .. v117}, Ljava/lang/Long;->longValue()J

    move-result-wide v97

    move-object/from16 v91, v11

    move-object/from16 v92, p0

    move-object/from16 v93, v7

    move/from16 v94, p3

    move-object/from16 v95, p4

    move-object/from16 v96, p5

    invoke-virtual/range {v91 .. v99}, Lcom/facebook/katana/binding/AppSessionListener;->onEventGetMembersComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;JLjava/util/Map;)V

    goto :goto_1248

    :sswitch_1268
    move-object/from16 v0, p6

    check-cast v0, Ljava/util/Map;

    move-object/from16 v97, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_1277
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object/from16 v91, v11

    move-object/from16 v92, p0

    move-object/from16 v93, v7

    move/from16 v94, p3

    move-object/from16 v95, p4

    move-object/from16 v96, p5

    invoke-virtual/range {v91 .. v97}, Lcom/facebook/katana/binding/AppSessionListener;->onUserGetFriendRequestsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/util/Map;)V

    goto :goto_1277

    :sswitch_1293
    move-object/from16 v0, p6

    check-cast v0, Ljava/lang/Long;

    move-object/from16 v131, v0

    move-object/from16 v0, p7

    check-cast v0, Ljava/lang/Boolean;

    move-object/from16 v127, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12a8
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    invoke-virtual/range {v131 .. v131}, Ljava/lang/Long;->longValue()J

    move-result-wide v106

    invoke-virtual/range {v127 .. v127}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v108

    move-object/from16 v100, v11

    move-object/from16 v101, p0

    move-object/from16 v102, v7

    move/from16 v103, p3

    move-object/from16 v104, p4

    move-object/from16 v105, p5

    invoke-virtual/range {v100 .. v108}, Lcom/facebook/katana/binding/AppSessionListener;->onFriendRequestRespondComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;JZ)V

    goto :goto_12a8

    :sswitch_12cc
    move-object/from16 v0, p6

    check-cast v0, Ljava/util/Map;

    move-object/from16 v106, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    :goto_12db
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_35

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/facebook/katana/binding/AppSessionListener;

    move-object/from16 v100, v11

    move-object/from16 v101, p0

    move-object/from16 v102, v7

    move/from16 v103, p3

    move-object/from16 v104, p4

    move-object/from16 v105, p5

    invoke-virtual/range {v100 .. v106}, Lcom/facebook/katana/binding/AppSessionListener;->onFriendRequestsMutualFriendsComplete(Lcom/facebook/katana/binding/AppSession;Ljava/lang/String;ILjava/lang/String;Ljava/lang/Exception;Ljava/util/Map;)V

    goto :goto_12db

    nop

    :sswitch_data_12f8
    .sparse-switch
        0x1 -> :sswitch_55
        0x2 -> :sswitch_77
        0x1e -> :sswitch_105
        0x1f -> :sswitch_4cb
        0x20 -> :sswitch_32f
        0x21 -> :sswitch_562
        0x22 -> :sswitch_44e
        0x23 -> :sswitch_642
        0x24 -> :sswitch_6e3
        0x25 -> :sswitch_774
        0x26 -> :sswitch_32f
        0x32 -> :sswitch_9bd
        0x33 -> :sswitch_a2c
        0x35 -> :sswitch_262
        0x3c -> :sswitch_a51
        0x3d -> :sswitch_a8b
        0x3e -> :sswitch_ab6
        0x3f -> :sswitch_ae4
        0x40 -> :sswitch_b12
        0x41 -> :sswitch_b55
        0x42 -> :sswitch_be1
        0x43 -> :sswitch_c18
        0x44 -> :sswitch_c77
        0x45 -> :sswitch_cab
        0x46 -> :sswitch_cd6
        0x47 -> :sswitch_d13
        0x48 -> :sswitch_d61
        0x49 -> :sswitch_d61
        0x4a -> :sswitch_db2
        0x4b -> :sswitch_de0
        0x4c -> :sswitch_e17
        0x4d -> :sswitch_d61
        0x50 -> :sswitch_8af
        0x51 -> :sswitch_934
        0x52 -> :sswitch_836
        0x53 -> :sswitch_876
        0x5a -> :sswitch_1156
        0x5b -> :sswitch_1183
        0x5c -> :sswitch_11ad
        0x64 -> :sswitch_e4e
        0x6e -> :sswitch_f4d
        0x6f -> :sswitch_fe5
        0x70 -> :sswitch_100a
        0x71 -> :sswitch_103d
        0x72 -> :sswitch_1076
        0x73 -> :sswitch_f7d
        0x78 -> :sswitch_11cf
        0x79 -> :sswitch_11fa
        0x7a -> :sswitch_1233
        0x82 -> :sswitch_805
        0x83 -> :sswitch_1268
        0x84 -> :sswitch_1293
        0x85 -> :sswitch_12cc
        0xc8 -> :sswitch_10d5
        0xc9 -> :sswitch_10ed
        0xca -> :sswitch_1105
        0xcb -> :sswitch_113e
        0xd3 -> :sswitch_10a4
        0x12c -> :sswitch_11ca
        0x12d -> :sswitch_66
    .end sparse-switch
.end method

.method private onOperationProgress(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 8

    const-string v1, "type"

    const/4 v2, -0x1

    invoke-virtual {p2, v1, v2}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v0

    packed-switch v0, :pswitch_data_20

    :goto_a
    return-void

    :pswitch_b
    const-string v1, "rid"

    invoke-virtual {p2, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-static {p1, v1, v2}, Lcom/facebook/katana/binding/ServiceNotificationManager;->updateProgressNotification(Landroid/content/Context;II)Z

    goto :goto_a

    nop

    :pswitch_data_20
    .packed-switch 0x41
        :pswitch_b
    .end packed-switch
.end method

.method public static onServiceOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 16

    const/4 v3, -0x1

    const-string v6, "onServiceOperationComplete"

    const-string v5, "No session: "

    const-string v4, "type"

    sget-object v1, Lcom/facebook/katana/binding/AppSession;->mSessionMap:Ljava/util/Map;

    const-string v2, "sid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_22

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/binding/AppSession;->onOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    :goto_21
    return-void

    :cond_22
    const-string v1, "type"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v8

    sparse-switch v8, :sswitch_data_72

    const-string v1, "onServiceOperationComplete"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No session: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :sswitch_46
    invoke-static {p0}, Lcom/facebook/katana/binding/AppSession;->getActiveSession(Landroid/content/Context;)Lcom/facebook/katana/binding/AppSession;

    move-result-object v0

    if-eqz v0, :cond_57

    move-object v1, p0

    move-object v2, p1

    move v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/binding/AppSession;->onOperationComplete(Landroid/content/Context;Landroid/content/Intent;ILjava/lang/String;Ljava/lang/Exception;Ljava/lang/Object;Ljava/lang/Object;)V

    goto :goto_21

    :cond_57
    const-string v1, "onServiceOperationComplete"

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "No session: "

    invoke-direct {v1, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v2, "type"

    invoke-virtual {p1, v4, v3}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v6, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_21

    :sswitch_data_72
    .sparse-switch
        0x5a -> :sswitch_46
        0x5b -> :sswitch_46
        0x5c -> :sswitch_46
        0xc8 -> :sswitch_46
        0xc9 -> :sswitch_46
        0xca -> :sswitch_46
        0xcb -> :sswitch_46
        0x12c -> :sswitch_46
    .end sparse-switch
.end method

.method public static onServiceOperationProgress(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;Ljava/lang/Object;)V
    .registers 7

    sget-object v1, Lcom/facebook/katana/binding/AppSession;->mSessionMap:Ljava/util/Map;

    const-string v2, "sid"

    invoke-virtual {p1, v2}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/AppSession;

    if-eqz v0, :cond_13

    invoke-direct {v0, p0, p1, p2, p3}, Lcom/facebook/katana/binding/AppSession;->onOperationProgress(Landroid/content/Context;Landroid/content/Intent;Ljava/lang/Object;Ljava/lang/Object;)V

    :cond_13
    return-void
.end method

.method private pollNotifications(Landroid/content/Context;I)Ljava/lang/String;
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    const/16 v3, 0x32

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_attempt"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method private postLoginRequiredNotification(Landroid/content/Context;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/facebook/katana/binding/AppSession;->postLoginRequiredNotification(Landroid/content/Context;Ljava/lang/String;)V

    return-void
.end method

.method public static postLoginRequiredNotification(Landroid/content/Context;Ljava/lang/String;)V
    .registers 12

    const v9, 0x7f080078

    const/4 v8, 0x0

    new-instance v3, Landroid/app/Notification;

    const v4, 0x108008a

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    invoke-direct {v3, v4, v5, v6, v7}, Landroid/app/Notification;-><init>(ILjava/lang/CharSequence;J)V

    const/16 v4, 0x10

    iput v4, v3, Landroid/app/Notification;->flags:I

    new-instance v1, Landroid/content/Intent;

    const-class v4, Lcom/facebook/katana/LoginNotificationActivity;

    invoke-direct {v1, p0, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v4, "un"

    invoke-virtual {v1, v4, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v4, 0x1000

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    const/high16 v4, 0x800

    invoke-static {p0, v8, v1, v4}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v0

    invoke-virtual {p0, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v4

    const v5, 0x7f08007b

    invoke-virtual {p0, v5}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v3, p0, v4, v5, v0}, Landroid/app/Notification;->setLatestEventInfo(Landroid/content/Context;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/app/PendingIntent;)V

    const-string v4, "notification"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/NotificationManager;

    invoke-virtual {v2, v8, v3}, Landroid/app/NotificationManager;->notify(ILandroid/app/Notification;)V

    return-void
.end method

.method private postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V
    .registers 8

    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v0

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionSecret()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_11

    const-string v2, "ApiMethod.secret"

    invoke-virtual {p3, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_11
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPendingServiceRequestsMap:Ljava/util/Map;

    invoke-interface {v2, p2, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v2, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGING_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mLoginStatus:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    if-ne v2, v3, :cond_22

    invoke-static {p3}, Lcom/facebook/katana/binding/AppSession;->isLoginRequest(Landroid/content/Intent;)Z

    move-result v2

    if-eqz v2, :cond_26

    :cond_22
    invoke-virtual {p1, p3}, Landroid/content/Context;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;

    :goto_25
    return-void

    :cond_26
    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mRequestsToHandleAfterLogin:Ljava/util/Collection;

    invoke-interface {v2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_25
.end method

.method private releaseWakeLock()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    if-eqz v0, :cond_c

    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->release()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mWakeLock:Landroid/os/PowerManager$WakeLock;

    :cond_c
    return-void
.end method

.method private scheduleNotificationsPollingAlarm(Landroid/content/Context;II)V
    .registers 11

    const/4 v6, 0x0

    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingNotificationsAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingNotificationsAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingNotificationsAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    :cond_17
    const/4 v2, -0x1

    if-ne p2, v2, :cond_34

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "polling_interval"

    const-string v4, "60"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/16 v2, 0x78

    if-le p2, v2, :cond_76

    const/16 p2, 0x78

    :cond_30
    :goto_30
    const v2, 0xea60

    mul-int/2addr p2, v2

    :cond_34
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.facebook.katana.service."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "type"

    const/16 v3, 0xc9

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_attempt"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p1, v6, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingNotificationsAlarmIntent:Landroid/app/PendingIntent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p2

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mPollingNotificationsAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void

    :cond_76
    if-nez p2, :cond_30

    const/16 p2, 0x1e

    goto :goto_30
.end method

.method private scheduleStatusPollingAlarm(Landroid/content/Context;II)V
    .registers 11

    const/4 v6, 0x0

    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStatusAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_17

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStatusAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStatusAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    :cond_17
    const/4 v2, -0x1

    if-ne p2, v2, :cond_34

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "polling_interval"

    const-string v4, "60"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result p2

    const/16 v2, 0x78

    if-le p2, v2, :cond_76

    const/16 p2, 0x78

    :cond_30
    :goto_30
    const v2, 0xea60

    mul-int/2addr p2, v2

    :cond_34
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.facebook.katana.service."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "type"

    const/16 v3, 0xcb

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_attempt"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p1, v6, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStatusAlarmIntent:Landroid/app/PendingIntent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p2

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStatusAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    return-void

    :cond_76
    if-nez p2, :cond_30

    const/16 p2, 0x1e

    goto :goto_30
.end method

.method private scheduleStreamPollingAlarm(Landroid/content/Context;II)V
    .registers 11

    const/4 v6, 0x0

    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStreamAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStreamAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStreamAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    const/4 v2, 0x0

    iput-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStreamAlarmIntent:Landroid/app/PendingIntent;

    :cond_1a
    const/4 v2, -0x1

    if-ne p2, v2, :cond_32

    invoke-static {p1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v3, "polling_interval"

    const-string v4, "60"

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    const v3, 0xea60

    mul-int p2, v2, v3

    :cond_32
    if-lez p2, :cond_75

    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.facebook.katana.service."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "type"

    const/16 v3, 0xc8

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_attempt"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p1, v6, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStreamAlarmIntent:Landroid/app/PendingIntent;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p2

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mPollingStreamAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    :cond_75
    return-void
.end method

.method private scheduleUsersPollingAlarm(Landroid/content/Context;II)V
    .registers 11

    const/4 v4, -0x1

    const/4 v6, 0x0

    if-ne p2, v4, :cond_b

    invoke-static {p1}, Lcom/facebook/katana/util/PlatformUtils;->platformStorageSupported(Landroid/content/Context;)Z

    move-result v2

    if-eqz v2, :cond_b

    :goto_a
    return-void

    :cond_b
    const-string v2, "alarm"

    invoke-virtual {p1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AlarmManager;

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingUsersAlarmIntent:Landroid/app/PendingIntent;

    if-eqz v2, :cond_21

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingUsersAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v2}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingUsersAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v2}, Landroid/app/PendingIntent;->cancel()V

    :cond_21
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v1, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "com.facebook.katana.service."

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "type"

    const/16 v3, 0xca

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_attempt"

    invoke-virtual {v1, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-static {p1, v6, v1, v6}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v2

    iput-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPollingUsersAlarmIntent:Landroid/app/PendingIntent;

    if-ne p2, v4, :cond_5c

    const p2, 0xa4cb800

    :cond_5c
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    int-to-long v4, p2

    add-long/2addr v2, v4

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mPollingUsersAlarmIntent:Landroid/app/PendingIntent;

    invoke-virtual {v0, v6, v2, v3, v4}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    goto :goto_a
.end method

.method private streamPoll(Landroid/content/Context;I)Ljava/lang/String;
    .registers 10

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    const/16 v3, 0x35

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "app_value"

    const/4 v3, 0x1

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    iget-wide v2, p0, Lcom/facebook/katana/binding/AppSession;->mLatestPostTime:J

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_41

    const-string v2, "start"

    iget-wide v3, p0, Lcom/facebook/katana/binding/AppSession;->mLatestPostTime:J

    const-wide/16 v5, 0x1

    add-long/2addr v3, v5

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_41
    const-string v2, "limit"

    const/16 v3, 0x14

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_filter_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getFilterKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "extra_attempt"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method private stringCollectionToSortedArray(Ljava/util/Collection;)[Ljava/lang/String;
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;)[",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {v0}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Ljava/lang/String;

    return-object p0
.end method

.method private syncFriends(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8

    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->isFriendsSyncPending()Z

    move-result v2

    if-eqz v2, :cond_8

    const/4 v2, 0x0

    :goto_7
    return-object v2

    :cond_8
    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    const/16 v3, 0x50

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "extra_attempt"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "un"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    move-object v2, v1

    goto :goto_7
.end method

.method private updateWidget(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookStatus;ILandroid/graphics/Bitmap;)V
    .registers 29

    invoke-static/range {p1 .. p1}, Landroid/appwidget/AppWidgetManager;->getInstance(Landroid/content/Context;)Landroid/appwidget/AppWidgetManager;

    move-result-object v14

    new-instance v23, Landroid/content/ComponentName;

    const-class v5, Lcom/facebook/katana/FacebookWidgetProvider;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    move-object v0, v14

    move-object/from16 v1, v23

    invoke-virtual {v0, v1}, Landroid/appwidget/AppWidgetManager;->getAppWidgetIds(Landroid/content/ComponentName;)[I

    move-result-object v5

    array-length v5, v5

    if-nez v5, :cond_1b

    :goto_1a
    return-void

    :cond_1b
    new-instance v12, Landroid/widget/RemoteViews;

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    const v6, 0x7f030051

    invoke-direct {v12, v5, v6}, Landroid/widget/RemoteViews;-><init>(Ljava/lang/String;I)V

    new-instance v13, Landroid/content/Intent;

    const-class v5, Lcom/facebook/katana/StreamActivity;

    move-object v0, v13

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "android.intent.action.VIEW"

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x1400

    invoke-virtual {v13, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v5, 0x7f0b00cc

    const/4 v6, 0x0

    const/high16 v7, 0x1000

    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v13

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v11, Landroid/content/Intent;

    const-class v5, Lcom/facebook/katana/WidgetActivity;

    move-object v0, v11

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.facebook.katana.widget.sharebutton"

    invoke-virtual {v11, v5}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x1000

    invoke-virtual {v11, v5}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v5, 0x7f0b00cf

    const/4 v6, 0x0

    const/high16 v7, 0x1000

    move-object/from16 v0, p1

    move v1, v6

    move-object v2, v11

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    new-instance v22, Landroid/content/Intent;

    const-class v5, Lcom/facebook/katana/WidgetActivity;

    move-object/from16 v0, v22

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v5, "com.facebook.katana.widget.edit"

    move-object/from16 v0, v22

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const/high16 v5, 0x1000

    move-object/from16 v0, v22

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const v5, 0x7f0b00ce

    const/4 v6, 0x0

    const/high16 v7, 0x1000

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v22

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/katana/service/api/FacebookStatus;->getUser()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v5

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/katana/service/api/FacebookStatus;->getMessage()Ljava/lang/String;

    move-result-object v15

    new-instance v20, Landroid/text/SpannableStringBuilder;

    move-object/from16 v0, v20

    move-object/from16 v1, v16

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    if-eqz v15, :cond_c7

    const-string v5, " "

    move-object/from16 v0, v20

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object v5

    invoke-virtual {v5, v15}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    :cond_c7
    sget-object v5, Lcom/facebook/katana/binding/AppSession;->mNameSpan:Landroid/text/style/TextAppearanceSpan;

    if-nez v5, :cond_f1

    invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v19

    const/high16 v5, 0x4160

    invoke-virtual/range {v19 .. v19}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v6

    iget v6, v6, Landroid/util/DisplayMetrics;->density:F

    mul-float/2addr v5, v6

    float-to-int v8, v5

    const v5, 0x7f070007

    move-object/from16 v0, v19

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getColor(I)I

    move-result v5

    invoke-static {v5}, Landroid/content/res/ColorStateList;->valueOf(I)Landroid/content/res/ColorStateList;

    move-result-object v9

    new-instance v5, Landroid/text/style/TextAppearanceSpan;

    const/4 v6, 0x0

    const/4 v7, 0x1

    const/4 v10, 0x0

    invoke-direct/range {v5 .. v10}, Landroid/text/style/TextAppearanceSpan;-><init>(Ljava/lang/String;IILandroid/content/res/ColorStateList;Landroid/content/res/ColorStateList;)V

    sput-object v5, Lcom/facebook/katana/binding/AppSession;->mNameSpan:Landroid/text/style/TextAppearanceSpan;

    :cond_f1
    sget-object v5, Lcom/facebook/katana/binding/AppSession;->mNameSpan:Landroid/text/style/TextAppearanceSpan;

    const/4 v6, 0x0

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v7

    const/16 v8, 0x21

    move-object/from16 v0, v20

    move-object v1, v5

    move v2, v6

    move v3, v7

    move v4, v8

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const v5, 0x7f0b00d2

    move-object v0, v12

    move v1, v5

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    const v5, 0x7f0b00d3

    sget-object v6, Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;->STREAM_RELATIVE_STYLE:Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/katana/service/api/FacebookStatus;->getTime()J

    move-result-wide v7

    const-wide/16 v9, 0x3e8

    mul-long/2addr v7, v9

    move-object/from16 v0, p1

    move-object v1, v6

    move-wide v2, v7

    invoke-static {v0, v1, v2, v3}, Lcom/facebook/katana/util/StringUtils;->getTimeAsString(Landroid/content/Context;Lcom/facebook/katana/util/StringUtils$TimeFormatStyle;J)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/widget/RemoteViews;->setTextViewText(ILjava/lang/CharSequence;)V

    if-eqz p4, :cond_1bf

    const v5, 0x7f0b00d1

    move-object v0, v12

    move v1, v5

    move-object/from16 v2, p4

    invoke-virtual {v0, v1, v2}, Landroid/widget/RemoteViews;->setImageViewBitmap(ILandroid/graphics/Bitmap;)V

    :goto_130
    new-instance v21, Landroid/content/Intent;

    const-class v5, Lcom/facebook/katana/ProfileTabHostActivity;

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const/high16 v5, 0x1400

    move-object/from16 v0, v21

    move v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    const-string v5, "extra_user_id"

    invoke-virtual/range {p2 .. p2}, Lcom/facebook/katana/service/api/FacebookStatus;->getUser()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v6

    move-object/from16 v0, v21

    move-object v1, v5

    move-wide v2, v6

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const v5, 0x7f0b00d0

    const/4 v6, 0x0

    const/high16 v7, 0x1000

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v21

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    if-nez p3, :cond_1ca

    const/16 v18, 0x0

    const v5, 0x7f0b00d4

    const v6, 0x7f020095

    invoke-virtual {v12, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_175
    const v5, 0x7f0b00d4

    const/4 v6, 0x0

    const/high16 v7, 0x1000

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v18

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;

    move-object v5, v0

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    const/4 v6, 0x1

    sub-int/2addr v5, v6

    move/from16 v0, p3

    move v1, v5

    if-lt v0, v1, :cond_210

    const/16 v17, 0x0

    const v5, 0x7f0b00d5

    const v6, 0x7f02008a

    invoke-virtual {v12, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    :goto_1a3
    const v5, 0x7f0b00d5

    const/4 v6, 0x0

    const/high16 v7, 0x1000

    move-object/from16 v0, p1

    move v1, v6

    move-object/from16 v2, v17

    move v3, v7

    invoke-static {v0, v1, v2, v3}, Landroid/app/PendingIntent;->getService(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v12, v5, v6}, Landroid/widget/RemoteViews;->setOnClickPendingIntent(ILandroid/app/PendingIntent;)V

    move-object v0, v14

    move-object/from16 v1, v23

    move-object v2, v12

    invoke-virtual {v0, v1, v2}, Landroid/appwidget/AppWidgetManager;->updateAppWidget(Landroid/content/ComponentName;Landroid/widget/RemoteViews;)V

    goto/16 :goto_1a

    :cond_1bf
    const v5, 0x7f0b00d1

    const v6, 0x7f0200b3

    invoke-virtual {v12, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_130

    :cond_1ca
    new-instance v18, Landroid/content/Intent;

    const-class v5, Lcom/facebook/katana/service/FacebookService;

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "com.facebook.katana.service."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v18

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "type"

    const/16 v6, 0x5b

    move-object/from16 v0, v18

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "sid"

    sget-object v6, Lcom/facebook/katana/binding/AppSession;->mActiveSessionId:Ljava/lang/String;

    move-object/from16 v0, v18

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v5, 0x7f0b00d4

    const v6, 0x7f0200e5

    invoke-virtual {v12, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_175

    :cond_210
    new-instance v17, Landroid/content/Intent;

    const-class v5, Lcom/facebook/katana/service/FacebookService;

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    move-object v2, v5

    invoke-direct {v0, v1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "com.facebook.katana.service."

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, v17

    move-object v1, v5

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    const-string v5, "type"

    const/16 v6, 0x5a

    move-object/from16 v0, v17

    move-object v1, v5

    move v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v5, "sid"

    sget-object v6, Lcom/facebook/katana/binding/AppSession;->mActiveSessionId:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object v1, v5

    move-object v2, v6

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const v5, 0x7f0b00d5

    const v6, 0x7f0200e4

    invoke-virtual {v12, v5, v6}, Landroid/widget/RemoteViews;->setImageViewResource(II)V

    goto/16 :goto_1a3
.end method

.method private usersPollStatuses(Landroid/content/Context;I)Ljava/lang/String;
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    const/16 v3, 0x51

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "extra_attempt"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "un"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUsername()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method


# virtual methods
.method public addListener(Lcom/facebook/katana/binding/AppSessionListener;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_9

    :goto_8
    return-void

    :cond_9
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_8
.end method

.method public authLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;
    .registers 9

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    if-eqz p4, :cond_32

    const/16 v3, 0x12d

    :goto_11
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "un"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pwd"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    sget-object v2, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGING_IN:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    iput-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mLoginStatus:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    return-object v1

    :cond_32
    const/4 v3, 0x1

    goto :goto_11
.end method

.method public authLogout(Landroid/content/Context;)Ljava/lang/String;
    .registers 6

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/4 v3, 0x2

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    if-eqz v2, :cond_2c

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2c
    sget-object v2, Lcom/facebook/katana/binding/AppSession$LoginStatus;->STATUS_LOGGING_OUT:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    iput-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mLoginStatus:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public cancelUploadNotification(Landroid/content/Context;Ljava/lang/String;)V
    .registers 4

    invoke-static {p2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v0

    invoke-static {p1, v0}, Lcom/facebook/katana/binding/ServiceNotificationManager;->cancelUploadNotification(Landroid/content/Context;I)V

    return-void
.end method

.method public downloadAlbumThumbail(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 15

    const/16 v2, 0x4a

    move-object v0, p0

    move-object v1, p1

    move-wide v3, p2

    move-object v5, p4

    move-object v6, p5

    move-object v7, p6

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/binding/AppSession;->downloadPhoto(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public downloadFullPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/16 v2, 0x4c

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/binding/AppSession;->downloadPhoto(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public downloadPhotoThumbail(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 13

    const/16 v2, 0x4b

    const-wide/16 v3, -0x1

    move-object v0, p0

    move-object v1, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Lcom/facebook/katana/binding/AppSession;->downloadPhoto(Landroid/content/Context;IJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public eventGetMembers(Landroid/content/Context;J)Ljava/lang/String;
    .registers 9

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x7a

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "eid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public eventRsvp(Landroid/content/Context;JLcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x79

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "eid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "rsvp_status"

    invoke-static {p4}, Lcom/facebook/katana/service/api/FacebookEvent;->getRsvpStatusString(Lcom/facebook/katana/service/api/FacebookEvent$RsvpStatus;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public friendsAddFriend(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x82

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p4, :cond_2a

    const-string v2, "status"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2a
    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public getConfig(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x190

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public getEvents(Landroid/content/Context;J)Ljava/lang/String;
    .registers 9

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x78

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public getFacebookAffiliationStatus(Landroid/content/Context;J)Ljava/lang/String;
    .registers 9

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x8c

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public getFriendRequests(Landroid/content/Context;J)Ljava/lang/String;
    .registers 9

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x83

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public getFriendRequestsMutualFriends(Landroid/content/Context;J)Ljava/lang/String;
    .registers 9

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x85

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public getPhotosCache()Lcom/facebook/katana/binding/StreamPhotosCache;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mPhotosCache:Lcom/facebook/katana/binding/StreamPhotosCache;

    return-object v0
.end method

.method public getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    return-object v0
.end method

.method public getStatus()Lcom/facebook/katana/binding/AppSession$LoginStatus;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mLoginStatus:Lcom/facebook/katana/binding/AppSession$LoginStatus;

    return-object v0
.end method

.method public getStreamContainer(JZ)Lcom/facebook/katana/binding/FacebookStreamContainer;
    .registers 7

    if-eqz p3, :cond_f

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mWallContainerMap:Ljava/util/Map;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/FacebookStreamContainer;

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mHomeStreamContainer:Lcom/facebook/katana/binding/FacebookStreamContainer;

    goto :goto_e
.end method

.method public getUserImagesCache()Lcom/facebook/katana/binding/UserImagesCache;
    .registers 2

    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mUserImageCache:Lcom/facebook/katana/binding/UserImagesCache;

    return-object v0
.end method

.method public handlePasswordEntry(Landroid/content/Context;Ljava/lang/String;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUsername()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {p0, p1, v0, p2, v1}, Lcom/facebook/katana/binding/AppSession;->authLogin(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Z)Ljava/lang/String;

    return-void
.end method

.method public isAlbumsGetPending(J)Z
    .registers 9

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPendingServiceRequestsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    const/4 v2, 0x0

    :goto_11
    return v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v3, "type"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x3c

    if-ne v1, v3, :cond_a

    const-string v3, "uid"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_a

    const/4 v2, 0x1

    goto :goto_11
.end method

.method public isAlbumsGetPending(JLjava/lang/String;)Z
    .registers 12

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mPendingServiceRequestsMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_12

    return v3

    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v5, "type"

    const/4 v6, -0x1

    invoke-virtual {v0, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v5, 0x3c

    if-ne v2, v5, :cond_b

    const-string v5, "uid"

    const-wide/16 v6, -0x1

    invoke-virtual {v0, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v5, v5, p1

    if-nez v5, :cond_b

    const-string v5, "aid"

    invoke-virtual {v0, v5}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_b

    invoke-virtual {p3, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v3, 0x1

    goto :goto_b
.end method

.method public isFriendsSyncPending()Z
    .registers 6

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPendingServiceRequestsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    const/4 v2, 0x0

    :goto_11
    return v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v3, "type"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x50

    if-ne v1, v3, :cond_a

    const/4 v2, 0x1

    goto :goto_11
.end method

.method public isMailboxGetMessagesPending(IJ)Z
    .registers 11

    const/4 v6, 0x0

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPendingServiceRequestsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_13

    move v2, v6

    :goto_12
    return v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v3, "type"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x73

    if-ne v1, v3, :cond_b

    const-string v3, "folder"

    invoke-virtual {v0, v3, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, p1, :cond_b

    const-string v3, "tid"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, p2

    if-nez v3, :cond_b

    const/4 v2, 0x1

    goto :goto_12
.end method

.method public isMailboxSyncPending(I)Z
    .registers 8

    const/4 v5, 0x0

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPendingServiceRequestsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_b
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_13

    move v2, v5

    :goto_12
    return v2

    :cond_13
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v3, "type"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x6e

    if-ne v1, v3, :cond_b

    const-string v3, "folder"

    invoke-virtual {v0, v3, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    if-ne v3, p1, :cond_b

    const/4 v2, 0x1

    goto :goto_12
.end method

.method public isNotificationsSyncPending()Z
    .registers 6

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPendingServiceRequestsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    const/4 v2, 0x0

    :goto_11
    return v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v3, "type"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x33

    if-ne v1, v3, :cond_a

    const/4 v2, 0x1

    goto :goto_11
.end method

.method public isPhotoGetCommentPending(Ljava/lang/String;)Z
    .registers 7

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPendingServiceRequestsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    const/4 v2, 0x0

    :goto_11
    return v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v3, "type"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x46

    if-ne v1, v3, :cond_a

    const-string v3, "pid"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v2, 0x1

    goto :goto_11
.end method

.method public isPhotosGetPending(Ljava/lang/String;J)Z
    .registers 11

    const/4 v2, 0x0

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mPendingServiceRequestsMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_b
    :goto_b
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_12

    return v2

    :cond_12
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v4, "type"

    const/4 v5, -0x1

    invoke-virtual {v0, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v4, 0x40

    if-ne v1, v4, :cond_b

    const-string v4, "aid"

    invoke-virtual {v0, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_b

    const-string v4, "uid"

    const-wide/16 v5, -0x1

    invoke-virtual {v0, v4, v5, v6}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v4

    cmp-long v4, p2, v4

    if-nez v4, :cond_b

    const/4 v2, 0x1

    goto :goto_b
.end method

.method public isPhotosGetPending(Ljava/util/Collection;J)Z
    .registers 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;J)Z"
        }
    .end annotation

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mPendingServiceRequestsMap:Ljava/util/Map;

    invoke-interface {v4}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_b
    :goto_b
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-nez v5, :cond_12

    return v3

    :cond_12
    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v5, "type"

    const/4 v6, -0x1

    invoke-virtual {v1, v5, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v5, 0x40

    if-ne v2, v5, :cond_b

    const-string v5, "uid"

    const-wide/16 v6, -0x1

    invoke-virtual {v1, v5, v6, v7}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v5

    cmp-long v5, p2, v5

    if-nez v5, :cond_b

    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/AppSession;->stringCollectionToSortedArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v0

    const-string v5, "pid"

    invoke-virtual {v1, v5}, Landroid/content/Intent;->getStringArrayExtra(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_b

    const/4 v3, 0x1

    goto :goto_b
.end method

.method public isRequestPending(Ljava/lang/String;)Z
    .registers 6

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPendingServiceRequestsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    const/4 v2, 0x0

    :goto_11
    return v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v3, "rid"

    invoke-virtual {v1, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    if-ne p1, v0, :cond_a

    const/4 v2, 0x1

    goto :goto_11
.end method

.method public isStreamGetCommentsPending(JLjava/lang/String;)Z
    .registers 10

    iget-object v2, p0, Lcom/facebook/katana/binding/AppSession;->mPendingServiceRequestsMap:Ljava/util/Map;

    invoke-interface {v2}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v2

    invoke-interface {v2}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_a
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-nez v3, :cond_12

    const/4 v2, 0x0

    :goto_11
    return v2

    :cond_12
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/Intent;

    const-string v3, "type"

    const/4 v4, -0x1

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    const/16 v3, 0x1f

    if-ne v1, v3, :cond_a

    const-string v3, "uid"

    const-wide/16 v4, -0x1

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J

    move-result-wide v3

    cmp-long v3, v3, p1

    if-nez v3, :cond_a

    const-string v3, "post_id"

    invoke-virtual {v0, v3}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    const/4 v2, 0x1

    goto :goto_11
.end method

.method public isStreamGetPending(JZ)Z
    .registers 12

    const/4 v7, 0x1

    const/4 v6, 0x0

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mPendingServiceRequestsMap:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :cond_c
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-nez v4, :cond_14

    move v3, v6

    :goto_13
    return v3

    :cond_14
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/Intent;

    const-string v4, "type"

    const/4 v5, -0x1

    invoke-virtual {v1, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0x1e

    if-ne v2, v4, :cond_c

    const-string v4, "subject"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->getLongArrayExtra(Ljava/lang/String;)[J

    move-result-object v0

    if-nez v0, :cond_3b

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v4

    cmp-long v4, p1, v4

    if-nez v4, :cond_c

    if-nez p3, :cond_c

    move v3, v7

    goto :goto_13

    :cond_3b
    aget-wide v4, v0, v6

    cmp-long v4, v4, p1

    if-nez v4, :cond_c

    if-eqz p3, :cond_c

    move v3, v7

    goto :goto_13
.end method

.method public mailboxDeleteThread(Landroid/content/Context;[JI)Ljava/lang/String;
    .registers 8

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x72

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "tid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string v2, "folder"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public mailboxGetThreadMessages(Landroid/content/Context;IJZ)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x73

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "folder"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "tid"

    invoke-virtual {v0, v2, p3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "read"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public mailboxMarkThread(Landroid/content/Context;I[JZ)Ljava/lang/String;
    .registers 9

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x71

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "tid"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    const-string v2, "folder"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "read"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public mailboxReply(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x70

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "tid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "status"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "profile_uid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getProfile()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "profile_first_name"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getProfile()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getFirstName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "profile_last_name"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getProfile()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getLastName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "profile_display_name"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getProfile()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "profile_url"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getProfile()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookUser;->getImageUrl()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public mailboxSend(Landroid/content/Context;Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookUser;",
            ">;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, p2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v2

    new-instance v0, Landroid/content/Intent;

    const-class v3, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v3, "type"

    const/16 v4, 0x6f

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v3, "rid"

    invoke-virtual {v0, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "sid"

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "session_key"

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "uid"

    invoke-virtual {v0, v3, v1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;

    const-string v3, "subject"

    invoke-virtual {v0, v3, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "status"

    invoke-virtual {v0, v3, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "profile_uid"

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getProfile()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookUser;->getUserId()J

    move-result-wide v4

    invoke-virtual {v0, v3, v4, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v3, "profile_first_name"

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getProfile()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookUser;->getFirstName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "profile_last_name"

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getProfile()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookUser;->getLastName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "profile_display_name"

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getProfile()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookUser;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v3, "profile_url"

    iget-object v4, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getProfile()Lcom/facebook/katana/service/api/FacebookUser;

    move-result-object v4

    invoke-virtual {v4}, Lcom/facebook/katana/service/api/FacebookUser;->getImageUrl()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v0, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v2, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v2
.end method

.method public mailboxSync(Landroid/content/Context;IIIZ)Ljava/lang/String;
    .registers 11

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x6e

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "folder"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "start"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "limit"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "sync"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "uid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public notificationsMarkAsRead(Landroid/content/Context;[J)Ljava/lang/String;
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    const/16 v3, 0x34

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "item_id"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public openMediaItem(Landroid/content/Context;Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;)V
    .registers 13

    const/4 v8, 0x0

    const-string v9, "android.intent.action.VIEW"

    const/4 v5, 0x0

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "video"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_87

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getVideo()Lcom/facebook/katana/service/api/FacebookVideo;

    move-result-object v6

    if-eqz v6, :cond_7d

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getVideo()Lcom/facebook/katana/service/api/FacebookVideo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookVideo;->getSourceType()Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;

    move-result-object v6

    sget-object v7, Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;->SOURCE_RAW:Lcom/facebook/katana/service/api/FacebookVideo$VideoSource;

    if-ne v6, v7, :cond_4c

    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-direct {v1, v9}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getVideo()Lcom/facebook/katana/service/api/FacebookVideo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookVideo;->getSourceUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    const-string v7, "video/*"

    invoke-virtual {v1, v6, v7}, Landroid/content/Intent;->setDataAndType(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/Intent;

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_4c

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v5, 0x1

    :cond_4c
    if-nez v5, :cond_7d

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getVideo()Lcom/facebook/katana/service/api/FacebookVideo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookVideo;->getDisplayUrl()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_7d

    new-instance v1, Landroid/content/Intent;

    const-string v6, "android.intent.action.VIEW"

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getVideo()Lcom/facebook/katana/service/api/FacebookVideo;

    move-result-object v6

    invoke-virtual {v6}, Lcom/facebook/katana/service/api/FacebookVideo;->getDisplayUrl()Ljava/lang/String;

    move-result-object v6

    invoke-static {v6}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v6

    invoke-direct {v1, v9, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v4, v1, v8}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    if-lez v6, :cond_7d

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v5, 0x1

    :cond_7d
    :goto_7d
    if-nez v5, :cond_86

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getHref()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/facebook/katana/binding/AppSession;->openURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    :cond_86
    return-void

    :cond_87
    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getType()Ljava/lang/String;

    move-result-object v6

    const-string v7, "photo"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_7d

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getPhoto()Lcom/facebook/katana/service/api/FacebookPhoto;

    move-result-object v2

    if-eqz v2, :cond_b1

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookPhoto;->getAlbumId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookPhoto;->getPhotoId()Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_a5

    if-eqz v0, :cond_b1

    :cond_a5
    invoke-virtual {v2}, Lcom/facebook/katana/service/api/FacebookPhoto;->getOwnerId()J

    move-result-wide v6

    invoke-static {p1, v6, v7, v0, v3}, Lcom/facebook/katana/ViewPhotoActivity;->viewPhotoIntent(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    const/4 v5, 0x1

    :cond_b1
    if-nez v5, :cond_7d

    invoke-virtual {p2}, Lcom/facebook/katana/service/api/FacebookPost$Attachment$MediaItem;->getHref()Ljava/lang/String;

    move-result-object v6

    const-string v7, "www."

    const-string v8, "m."

    invoke-virtual {v6, v7, v8}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, p1, v6}, Lcom/facebook/katana/binding/AppSession;->openURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    const/4 v5, 0x1

    goto :goto_7d
.end method

.method public openURL(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 14

    const-string v1, "/"

    invoke-virtual {p2, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_17

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "http://www.facebook.com"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    :cond_17
    invoke-static {p2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/Uri;->getHost()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    const-string v2, ".facebook.com"

    invoke-virtual {v1, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_65

    new-instance v0, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v1

    const-wide/16 v3, 0x3e8

    div-long/2addr v1, v3

    invoke-virtual {p0}, Lcom/facebook/katana/binding/AppSession;->getSessionInfo()Lcom/facebook/katana/service/api/FacebookSessionInfo;

    move-result-object v3

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    const/4 v6, 0x0

    iget-object v5, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v7

    iget-object v5, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v5}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionSecret()Ljava/lang/String;

    move-result-object v8

    move-object v5, p2

    invoke-direct/range {v0 .. v8}, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;-><init>(JJLjava/lang/String;Lcom/facebook/katana/service/api/methods/ApiMethodListener;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;->start()V

    invoke-virtual {v0}, Lcom/facebook/katana/service/api/methods/AuthDeepLinkMethod;->getUrl()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v10

    :goto_58
    if-eqz p1, :cond_64

    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.VIEW"

    invoke-direct {v1, v2, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    invoke-virtual {p1, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_64
    return-object v9

    :cond_65
    move-object v9, p2

    goto :goto_58
.end method

.method public photoAddComment(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    const/16 v3, 0x47

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "status"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public photoAddTags(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)Ljava/lang/String;
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/facebook/katana/service/api/FacebookPhotoTag;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    const/16 v3, 0x44

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "tags"

    invoke-static {p3}, Lcom/facebook/katana/service/api/FacebookPhotoTag;->encode(Ljava/util/List;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public photoCreateAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    const/16 v3, 0x3d

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "name"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_35

    const-string v2, "location"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_35
    if-eqz p4, :cond_3c

    const-string v2, "description"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3c
    if-eqz p5, :cond_43

    const-string v2, "visibility"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_43
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public photoDeleteAlbum(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    const/16 v3, 0x3f

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "aid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public photoDeletePhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 8

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    const/16 v3, 0x43

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "aid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pid"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public photoEditAlbum(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    const/16 v3, 0x3e

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "aid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "name"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_3a

    const-string v2, "location"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3a
    if-eqz p5, :cond_41

    const-string v2, "description"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_41
    if-eqz p6, :cond_48

    const-string v2, "visibility"

    invoke-virtual {v0, v2, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_48
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public photoEditPhoto(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 9

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    const/16 v3, 0x42

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "aid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pid"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_3a

    const-string v2, "subject"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_3a
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public photoGetAlbums(Landroid/content/Context;JLjava/util/List;)Ljava/lang/String;
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "J",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    const/16 v3, 0x3c

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_38

    const-string v2, "aid"

    invoke-direct {p0, p4}, Lcom/facebook/katana/binding/AppSession;->stringCollectionToSortedArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :goto_34
    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1

    :cond_38
    const-string v2, "uid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    goto :goto_34
.end method

.method public photoGetComments(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;
    .registers 7

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    const/16 v3, 0x46

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public photoGetPhotos(Landroid/content/Context;Ljava/lang/String;Ljava/util/Collection;J)Ljava/lang/String;
    .registers 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/lang/String;",
            "Ljava/util/Collection",
            "<",
            "Ljava/lang/String;",
            ">;J)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    const/16 v3, 0x40

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "aid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p3, :cond_39

    const-string v2, "pid"

    invoke-direct {p0, p3}, Lcom/facebook/katana/binding/AppSession;->stringCollectionToSortedArray(Ljava/util/Collection;)[Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[Ljava/lang/String;)Landroid/content/Intent;

    :cond_39
    const-string v2, "uid"

    invoke-virtual {v0, v2, p4, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public photoGetTags(Landroid/content/Context;Ljava/util/List;)Ljava/lang/String;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)",
            "Ljava/lang/String;"
        }
    .end annotation

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    const/16 v3, 0x45

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "pid"

    const/4 v3, 0x1

    invoke-static {p2, v3}, Lcom/facebook/katana/binding/AppSession;->listToCommaString(Ljava/util/List;Z)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public photoUpload(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    invoke-static {p1, v2, p2, p3, p4}, Lcom/facebook/katana/binding/ServiceNotificationManager;->beginProgressNotification(Landroid/content/Context;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x41

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p2, :cond_2c

    const-string v2, "aid"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_2c
    if-eqz p3, :cond_33

    const-string v2, "subject"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    :cond_33
    const-string v2, "uri"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public releaseWallContainers()V
    .registers 4

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mWallContainerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->values()Ljava/util/Collection;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_a
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-nez v2, :cond_16

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mWallContainerMap:Ljava/util/Map;

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    return-void

    :cond_16
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/facebook/katana/binding/FacebookStreamContainer;

    invoke-virtual {v0}, Lcom/facebook/katana/binding/FacebookStreamContainer;->clear()V

    goto :goto_a
.end method

.method public removeListener(Lcom/facebook/katana/binding/AppSessionListener;)V
    .registers 3

    iget-object v0, p0, Lcom/facebook/katana/binding/AppSession;->mListeners:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    return-void
.end method

.method public respondToFriendRequest(Landroid/content/Context;JZ)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x84

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "confirm"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public setIsEmployee(Landroid/content/Context;Z)V
    .registers 3

    invoke-static {p1, p2}, Lcom/facebook/katana/service/api/FacebookAffiliation;->setIsEmployee(Landroid/content/Context;Z)V

    return-void
.end method

.method public settingsChanged(Landroid/content/Context;)V
    .registers 4

    const/4 v1, 0x0

    const/4 v0, -0x1

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->scheduleStreamPollingAlarm(Landroid/content/Context;II)V

    invoke-direct {p0, p1, v0, v1}, Lcom/facebook/katana/binding/AppSession;->scheduleNotificationsPollingAlarm(Landroid/content/Context;II)V

    return-void
.end method

.method public streamAddComment(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 11

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x21

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "post_id"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "status"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public streamAddLike(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x24

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "post_id"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public streamGet(Landroid/content/Context;J[JJJII)Ljava/lang/String;
    .registers 15

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x1e

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    if-eqz p4, :cond_5b

    const-string v2, "subject"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[J)Landroid/content/Intent;

    :goto_2a
    const-wide/16 v2, 0x0

    cmp-long v2, p5, v2

    if-lez v2, :cond_35

    const-string v2, "start"

    invoke-virtual {v0, v2, p5, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_35
    const-wide/16 v2, 0x0

    cmp-long v2, p7, v2

    if-lez v2, :cond_40

    const-string v2, "end"

    invoke-virtual {v0, v2, p7, p8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    :cond_40
    if-lez p9, :cond_47

    const-string v2, "limit"

    invoke-virtual {v0, v2, p9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    :cond_47
    const-string v2, "app_value"

    invoke-virtual {v0, v2, p10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1

    :cond_5b
    const-string v2, "session_filter_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getFilterKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    goto :goto_2a
.end method

.method public streamGetComments(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x1f

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "post_id"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public streamPublish(Landroid/content/Context;JLjava/lang/String;Z)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    if-eqz p5, :cond_39

    const/16 v3, 0x26

    :goto_11
    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "status"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1

    :cond_39
    const/16 v3, 0x20

    goto :goto_11
.end method

.method public streamRemoveComment(Landroid/content/Context;JLjava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .registers 10

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x23

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "post_id"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "item_id"

    invoke-virtual {v0, v2, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public streamRemoveLike(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x25

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "post_id"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public streamRemovePost(Landroid/content/Context;JLjava/lang/String;)Ljava/lang/String;
    .registers 9

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x22

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "post_id"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public syncFriends(Landroid/content/Context;)Ljava/lang/String;
    .registers 3

    const/4 v0, 0x3

    invoke-direct {p0, p1, v0}, Lcom/facebook/katana/binding/AppSession;->syncFriends(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public syncNotifications(Landroid/content/Context;)Ljava/lang/String;
    .registers 7

    const/4 v2, 0x0

    invoke-direct {p0, p1, v2}, Lcom/facebook/katana/binding/AppSession;->pollNotifications(Landroid/content/Context;I)Ljava/lang/String;

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    const-string v2, "type"

    const/16 v3, 0x33

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public usersGetBriefInfo(Landroid/content/Context;J)Ljava/lang/String;
    .registers 9

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x53

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public usersGetInfo(Landroid/content/Context;J)Ljava/lang/String;
    .registers 9

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0x52

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "uid"

    invoke-virtual {v0, v2, p2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_user_id"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getUserId()J

    move-result-wide v3

    invoke-virtual {v0, v2, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public usersSearch(Landroid/content/Context;Ljava/lang/String;II)Ljava/lang/String;
    .registers 9

    invoke-static {}, Lcom/facebook/katana/binding/AppSession;->nextRequestId()Ljava/lang/String;

    move-result-object v1

    new-instance v0, Landroid/content/Intent;

    const-class v2, Lcom/facebook/katana/service/FacebookService;

    invoke-direct {v0, p1, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    const-string v2, "type"

    const/16 v3, 0xd3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "rid"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "sid"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionId:Ljava/lang/String;

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "session_key"

    iget-object v3, p0, Lcom/facebook/katana/binding/AppSession;->mSessionInfo:Lcom/facebook/katana/service/api/FacebookSessionInfo;

    invoke-virtual {v3}, Lcom/facebook/katana/service/api/FacebookSessionInfo;->getSessionKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "subject"

    invoke-virtual {v0, v2, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v2, "start"

    invoke-virtual {v0, v2, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    const-string v2, "limit"

    invoke-virtual {v0, v2, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    invoke-direct {p0, p1, v1, v0}, Lcom/facebook/katana/binding/AppSession;->postToService(Landroid/content/Context;Ljava/lang/String;Landroid/content/Intent;)V

    return-object v1
.end method

.method public widgetUpdate(Landroid/content/Context;)V
    .registers 4

    iget-object v1, p0, Lcom/facebook/katana/binding/AppSession;->mStatusesList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_b

    invoke-direct {p0, p1}, Lcom/facebook/katana/binding/AppSession;->initiateWidgetUpdate(Landroid/content/Context;)V

    :cond_b
    return-void
.end method
