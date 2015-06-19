.class public Lco/vine/android/service/VineService;
.super Landroid/app/Service;
.source "VineService.java"
.field public static final ACTION_CODE_ABORT_ALL_REQUESTS:I = 0x70
.field public static final ACTION_CODE_BLOCK_USER:I = 0x2f
.field public static final ACTION_CODE_BULK_FOLLOW:I = 0x6b
.field public static final ACTION_CODE_CHECK_LOGIN_TWITTER:I = 0x6
.field public static final ACTION_CODE_CLEANUP:I = 0x1d
.field public static final ACTION_CODE_CLEAR_DB_ALL:I = 0x3b
.field public static final ACTION_CODE_CLEAR_DB_CACHE:I = 0x3a
.field public static final ACTION_CODE_CLEAR_GCM_REG_ID:I = 0x3d
.field public static final ACTION_CODE_CLEAR_INBOX_PAGE_CURSORS:I = 0x68
.field public static final ACTION_CODE_CLEAR_NOTIFICATION:I = 0x66
.field public static final ACTION_CODE_CLEAR_UNREAD_COUNT:I = 0x5e
.field public static final ACTION_CODE_CLIENT_PROFILE:I = 0x23
.field public static final ACTION_CODE_CONNECT_TWITTER:I = 0x20
.field public static final ACTION_CODE_DEACTIVATE_ACCOUNT:I = 0x43
.field public static final ACTION_CODE_DELETE_COMMENT:I = 0x1e
.field public static final ACTION_CODE_DELETE_CONVERSATION:I = 0x50
.field public static final ACTION_CODE_DELETE_MESSAGE:I = 0x5f
.field public static final ACTION_CODE_DELETE_POST:I = 0x1f
.field public static final ACTION_CODE_DELETE_PUSH_NOTIFICATIONS:I = 0x3e
.field public static final ACTION_CODE_DELETE_SESSION:I = 0x40
.field public static final ACTION_CODE_DISABLE_USER_REPOSTS:I = 0x45
.field public static final ACTION_CODE_DISCONNECT_TWITTER:I = 0x21
.field public static final ACTION_CODE_ENABLE_USER_REPOSTS:I = 0x44
.field public static final ACTION_CODE_EXPIRE_TIMELINE:I = 0x2d
.field public static final ACTION_CODE_FETCH_CLIENT_FLAGS:I = 0x6f
.field public static final ACTION_CODE_FETCH_FRIENDS_TYPEAHEAD:I = 0x63
.field public static final ACTION_CODE_FETCH_SERVER_STATUS:I = 0x26
.field public static final ACTION_CODE_FETCH_USERS_TYPEAHEAD:I = 0x27
.field public static final ACTION_CODE_FOLLOW:I = 0x12
.field public static final ACTION_CODE_FOLLOW_EDITORS_PICKS:I = 0x2c
.field public static final ACTION_CODE_GET_ACTIVITY:I = 0x14
.field public static final ACTION_CODE_GET_ACTIVITY_COUNTS:I = 0x51
.field public static final ACTION_CODE_GET_ADDRESS_FRIENDS:I = 0x10
.field public static final ACTION_CODE_GET_BLOCKED_USERS:I = 0x2e
.field public static final ACTION_CODE_GET_CHANNELS:I = 0x35
.field public static final ACTION_CODE_GET_COMMENTS:I = 0xc
.field public static final ACTION_CODE_GET_CONVERSATION:I = 0x4c
.field public static final ACTION_CODE_GET_CONVERSATION_REMOTE_ID:I = 0x4d
.field public static final ACTION_CODE_GET_CONVERSATION_ROW_ID_FROM_SINGLE_RECIPIENT:I = 0x5b
.field public static final ACTION_CODE_GET_EDITIONS:I = 0x46
.field public static final ACTION_CODE_GET_FOLLOWERS:I = 0x16
.field public static final ACTION_CODE_GET_FOLLOWING:I = 0x17
.field public static final ACTION_CODE_GET_FRIENDS:I = 0x52
.field public static final ACTION_CODE_GET_INBOX:I = 0x4a
.field public static final ACTION_CODE_GET_NOTIFICATION_SETTINGS:I = 0x71
.field public static final ACTION_CODE_GET_NOTIFICATION_USERS:I = 0x6e
.field public static final ACTION_CODE_GET_NOTIF_COUNT:I = 0x41
.field public static final ACTION_CODE_GET_POSTS:I = 0xd
.field public static final ACTION_CODE_GET_POST_ID:I = 0x24
.field public static final ACTION_CODE_GET_POST_LIKERS:I = 0xb
.field public static final ACTION_CODE_GET_POST_SINGLE:I = 0x1c
.field public static final ACTION_CODE_GET_REVINERS:I = 0x38
.field public static final ACTION_CODE_GET_TAGS_TYPEAHEAD:I = 0x28
.field public static final ACTION_CODE_GET_TWITTER_AUTH:I = 0x5
.field public static final ACTION_CODE_GET_TWITTER_FRIENDS:I = 0xf
.field public static final ACTION_CODE_GET_TWITTER_USER:I = 0x7
.field public static final ACTION_CODE_GET_USER:I = 0x15
.field public static final ACTION_CODE_GET_USERS_ME:I = 0xa
.field public static final ACTION_CODE_GET_USER_ID:I = 0x56
.field public static final ACTION_CODE_IGNORE_CONVERSATION:I = 0x4f
.field public static final ACTION_CODE_LIKE_POST:I = 0x18
.field public static final ACTION_CODE_LOGIN:I = 0x2
.field public static final ACTION_CODE_LOGOUT:I = 0x3
.field public static final ACTION_CODE_MARK_MESSAGE_UPLOAD_FAILED:I = 0x64
.field public static final ACTION_CODE_MERGE_PUSH_NOTIFICATION:I = 0x61
.field public static final ACTION_CODE_MERGE_SINGLE_POST:I = 0x39
.field public static final ACTION_CODE_MESSAGE_LOOP_VIEWED:I = 0x54
.field public static final ACTION_CODE_MESSAGE_LOOP_VIEWED_BATCH:I = 0x55
.field public static final ACTION_CODE_POST:I = 0x62
.field public static final ACTION_CODE_POST_COMMENT:I = 0xe
.field public static final ACTION_CODE_PRE_MERGE_MESSAGE:I = 0x5d
.field public static final ACTION_CODE_REFRESH_SESSION_KEY:I = 0x3e8
.field public static final ACTION_CODE_REMOVE_FOLLOW_POSTS:I = 0x22
.field public static final ACTION_CODE_REMOVE_USERS_BY_GROUP:I = 0x11
.field public static final ACTION_CODE_REPORT_POST:I = 0x1b
.field public static final ACTION_CODE_REPORT_USER:I = 0x31
.field public static final ACTION_CODE_REQUEST_EMAIL_VERIFICATION:I = 0x5c
.field public static final ACTION_CODE_REQUEST_PHONE_VERIFICATION:I = 0x59
.field public static final ACTION_CODE_RESET_PASSWORD:I = 0x9
.field public static final ACTION_CODE_RESPOND_FOLLOW_REQUEST:I = 0x32
.field public static final ACTION_CODE_RESTART_CONNECTION_MANAGER:I = 0x1
.field public static final ACTION_CODE_RETRY_ALL_IN_CONVERSATION:I = 0x67
.field public static final ACTION_CODE_REVINE:I = 0x36
.field public static final ACTION_CODE_SAVE_NOTIFICATION_SETTINGS:I = 0x72
.field public static final ACTION_CODE_SAVE_POSTS:I = 0x2b
.field public static final ACTION_CODE_SEARCH_TAGS:I = 0x2a
.field public static final ACTION_CODE_SEARCH_USERS:I = 0x29
.field public static final ACTION_CODE_SEND_ADDRESS_BOOK:I = 0x65
.field public static final ACTION_CODE_SEND_FACEBOOK_TOKEN:I = 0x25
.field public static final ACTION_CODE_SEND_GCM_REG_ID:I = 0x3c
.field public static final ACTION_CODE_SEND_LOOP_COUNTS:I = 0x42
.field public static final ACTION_CODE_SET_BLOCK_PROFILE_REPOSTS:I = 0x57
.field public static final ACTION_CODE_SHARE_AS_VM:I = 0x60
.field public static final ACTION_CODE_SHARE_POST:I = 0x3f
.field public static final ACTION_CODE_SIGNUP:I = 0x4
.field public static final ACTION_CODE_TWITTER_XAUTH:I = 0x8
.field public static final ACTION_CODE_UNBLOCK_USER:I = 0x30
.field public static final ACTION_CODE_UNFOLLOW:I = 0x13
.field public static final ACTION_CODE_UNLIKE_POST:I = 0x19
.field public static final ACTION_CODE_UNREVINE:I = 0x37
.field public static final ACTION_CODE_UPDATE_ACCEPT_OON:I = 0x69
.field public static final ACTION_CODE_UPDATE_DISCOVERABILITY:I = 0x6c
.field public static final ACTION_CODE_UPDATE_EDITION:I = 0x47
.field public static final ACTION_CODE_UPDATE_ENABLE_ADDRESS_BOOK:I = 0x6a
.field public static final ACTION_CODE_UPDATE_EXPLICIT:I = 0x33
.field public static final ACTION_CODE_UPDATE_PRIVATE:I = 0x34
.field public static final ACTION_CODE_UPDATE_PROFILE:I = 0x1a
.field public static final ACTION_CODE_UPDATE_PROFILE_PHOTO:I = 0x58
.field public static final ACTION_CODE_VERIFY_EMAIL:I = 0x6d
.field public static final ACTION_CODE_VERIFY_PHONE_NUMBER:I = 0x5a
.field public static final ACTION_LOGIN:Ljava/lang/String; = "LOGIN"
.field public static final ACTION_PROFILE_COLOR_CHANGED:Ljava/lang/String; = "co.vine.android.profileColor"
.field public static final ACTION_RESTART_CONNECTION_MANAGER:Ljava/lang/String; = "RESTART_CM"
.field public static final ACTION_SESSION_LOGIN:Ljava/lang/String; = "co.vine.android.session.login"
.field public static final ACTION_SESSION_LOGOUT:Ljava/lang/String; = "co.vine.android.session.logout"
.field public static final AMAZON_ERROR_CODE:I = 0x384
.field private static final BADGER_ARGS:[Ljava/lang/String; = null
.field private static final BADGER_SELECTION:Ljava/lang/String; = "package=?"
.field private static final BADGE_COUNT:Ljava/lang/String; = "badgecount"
.field public static final BC_ACTION_ALERT_RTC_NEW_MESSAGE:Ljava/lang/String; = "co.vine.android.service.mergeSelfNewMessage"
.field public static final BC_ACTION_FETCH_AND_MERGE_POST:Ljava/lang/String; = "co.vine.android.service.mergePost"
.field public static final BC_ACTION_MERGE_POST_INTO_FEED:Ljava/lang/String; = "co.vine.android.service.mergePostFeed"
.field public static final BC_ACTIVITY_COUNTS:Ljava/lang/String; = "co.vine.android.service.activityCounts"
.field private static final CLASS:Ljava/lang/String; = "class"
.field public static final ERROR_CODE_UNKNOWN:I = -0x1
.field public static final ERROR_CODE_UPLOAD_FAILED:I = -0x2
.field private static final EXECUTION_CAPTCHA_REQUIRED:I = 0x4
.field private static final EXECUTION_CODE:Ljava/lang/String; = "executionCode"
.field private static final EXECUTION_COMPLETE:I = 0x1
.field private static final EXECUTION_LOGGED_OUT:I = 0x3
.field private static final EXECUTION_SESSION_KEY_INVALID:I = 0x2
.field public static final EXTRA_ABORT_REQUESTS:Ljava/lang/String; = "abort_requests"
.field public static final EXTRA_ACCEPT:Ljava/lang/String; = "accept"
.field public static final EXTRA_ACCEPT_OON:Ljava/lang/String; = "accept_oon"
.field public static final EXTRA_ACCOUNT_EXISTS:Ljava/lang/String; = "a_exists"
.field public static final EXTRA_ACCOUNT_NAME:Ljava/lang/String; = "a_name"
.field public static final EXTRA_ACTION_CODE:Ljava/lang/String; = "action_code"
.field public static final EXTRA_ALSO_FETCH_POSTS:Ljava/lang/String; = "also_fetch_posts"
.field public static final EXTRA_AM_FOLLOWING:Ljava/lang/String; = "am_following"
.field public static final EXTRA_ANCHOR:Ljava/lang/String; = "time"
.field public static final EXTRA_AVATAR_URL:Ljava/lang/String; = "avatar_url"
.field public static final EXTRA_BLOCKED_USERS:Ljava/lang/String; = "blocked_users"
.field public static final EXTRA_BLOCK_USER_ID:Ljava/lang/String; = "block_user_id"
.field public static final EXTRA_CALLBACK:Ljava/lang/String; = "ibinder"
.field public static final EXTRA_CAPTCHA_URL:Ljava/lang/String; = "captcha_url"
.field public static final EXTRA_CHANNELS:Ljava/lang/String; = "channels"
.field public static final EXTRA_CLEAR:Ljava/lang/String; = "clear"
.field public static final EXTRA_CLIENT_FLAGS:Ljava/lang/String; = "client_flags"
.field public static final EXTRA_COLOR_INT:Ljava/lang/String; = "color_int"
.field public static final EXTRA_COMMENT:Ljava/lang/String; = "comment"
.field public static final EXTRA_COMMENTS:Ljava/lang/String; = "comments"
.field public static final EXTRA_COMMENT_ID:Ljava/lang/String; = "comment_id"
.field public static final EXTRA_COMMENT_OBJ:Ljava/lang/String; = "comment_obj"
.field public static final EXTRA_CONVERSATION_ID:Ljava/lang/String; = "conversation_id"
.field public static final EXTRA_CONVERSATION_ROW_ID:Ljava/lang/String; = "conversation_row_id"
.field public static final EXTRA_COUNT:Ljava/lang/String; = "count"
.field public static final EXTRA_DATA:Ljava/lang/String; = "data"
.field public static final EXTRA_DESCRIPTION:Ljava/lang/String; = "desc"
.field public static final EXTRA_DIRECT_USER_ID:Ljava/lang/String; = "direct_user_id"
.field public static final EXTRA_EDITIONS_LIST:Ljava/lang/String; = "editions"
.field public static final EXTRA_EDITION_CODE:Ljava/lang/String; = "edition"
.field public static final EXTRA_EMAIL:Ljava/lang/String; = "email"
.field public static final EXTRA_EMPTY:Ljava/lang/String; = "empty"
.field public static final EXTRA_ENABLE:Ljava/lang/String; = "enable"
.field public static final EXTRA_ENTITIES:Ljava/lang/String; = "entities"
.field public static final EXTRA_ERROR_CODE:Ljava/lang/String; = "error_code"
.field public static final EXTRA_EXPLICIT:Ljava/lang/String; = "explicit"
.field public static final EXTRA_FACEBOOK_TOKEN:Ljava/lang/String; = "facebook_token"
.field public static final EXTRA_FOLLOWING:Ljava/lang/String; = "following"
.field public static final EXTRA_FOLLOW_ID:Ljava/lang/String; = "follow_id"
.field public static final EXTRA_FOLLOW_IDS:Ljava/lang/String; = "follow_ids"
.field public static final EXTRA_FOLLOW_REQUESTS:Ljava/lang/String; = "follow_requests"
.field public static final EXTRA_FOLLOW_REQUEST_COUNT:Ljava/lang/String; = "follow_reqs_c"
.field public static final EXTRA_GCM_REG_ID:Ljava/lang/String; = "gcmRegId"
.field public static final EXTRA_GET_FOLLOW_REQUESTS:Ljava/lang/String; = "follow_reqs"
.field public static final EXTRA_HIDE_PROFILE_REPOSTS:Ljava/lang/String; = "block_profile_reposts"
.field public static final EXTRA_HIDE_REPOSTS:Ljava/lang/String; = "hide_reposts"
.field public static final EXTRA_IN_MEMORY:Ljava/lang/String; = "in_memory"
.field public static final EXTRA_KEEP_UPLOAD:Ljava/lang/String; = "should_delete_upload"
.field public static final EXTRA_KEY:Ljava/lang/String; = "key"
.field public static final EXTRA_LOAD_URL:Ljava/lang/String; = "load_url"
.field public static final EXTRA_LOCATION:Ljava/lang/String; = "location"
.field public static final EXTRA_LOGGED_OUT:Ljava/lang/String; = "logged_out"
.field public static final EXTRA_LOGIN:Ljava/lang/String; = "login"
.field public static final EXTRA_LOOPS:Ljava/lang/String; = "loops"
.field public static final EXTRA_LOOP_SUBMISSION_RESULT:Ljava/lang/String; = "loop_submission"
.field public static final EXTRA_MESSAGE:Ljava/lang/String; = "message"
.field public static final EXTRA_MESSAGES_COUNT:Ljava/lang/String; = "messages_count"
.field public static final EXTRA_MESSAGE_ID:Ljava/lang/String; = "message_id"
.field public static final EXTRA_NETWORK:Ljava/lang/String; = "network"
.field public static final EXTRA_NEXT_PAGE:Ljava/lang/String; = "next_page"
.field public static final EXTRA_NOTIFICATION:Ljava/lang/String; = "notification"
.field public static final EXTRA_NOTIFICATIONS:Ljava/lang/String; = "notifications"
.field public static final EXTRA_NOTIFICATIONS_COUNT:Ljava/lang/String; = "notifications_count"
.field public static final EXTRA_NOTIFICATION_DISPLAY_ID:Ljava/lang/String; = "notification_display_id"
.field public static final EXTRA_NOTIFICATION_ID:Ljava/lang/String; = "notification_id"
.field public static final EXTRA_NOTIFICATION_SETTINGS:Ljava/lang/String; = "notificationSettings"
.field public static final EXTRA_NOTIFY:Ljava/lang/String; = "notify"
.field public static final EXTRA_PAGE:Ljava/lang/String; = "page"
.field public static final EXTRA_PAGE_TYPE:Ljava/lang/String; = "page_type"
.field public static final EXTRA_PASSWORD:Ljava/lang/String; = "pass"
.field public static final EXTRA_PHONE:Ljava/lang/String; = "phone"
.field public static final EXTRA_POST:Ljava/lang/String; = "post"
.field public static final EXTRA_POSTS:Ljava/lang/String; = "posts"
.field public static final EXTRA_POST_ID:Ljava/lang/String; = "post_id"
.field public static final EXTRA_POST_SHARE_ID:Ljava/lang/String; = "post_share_id"
.field public static final EXTRA_PREFETCH:Ljava/lang/String; = "prefetch"
.field public static final EXTRA_PREMERGED_MESSAGE_ID:Ljava/lang/String; = "premerged_message_id"
.field public static final EXTRA_PREVIOUS_PAGE:Ljava/lang/String; = "previous_page"
.field public static final EXTRA_PRIVATE:Ljava/lang/String; = "priv"
.field public static final EXTRA_PROFILE_ID:Ljava/lang/String; = "profile_id"
.field public static final EXTRA_QUERY:Ljava/lang/String; = "q"
.field public static final EXTRA_REACTIVATE:Ljava/lang/String; = "reactivate"
.field public static final EXTRA_REASON_PHRASE:Ljava/lang/String; = "reason_phrase"
.field public static final EXTRA_RECIPIENT:Ljava/lang/String; = "recipient"
.field public static final EXTRA_RECIPIENTS:Ljava/lang/String; = "recipients"
.field public static final EXTRA_RECIPIENT_ID:Ljava/lang/String; = "recipient_id"
.field public static final EXTRA_REFRESH_SESSION:Ljava/lang/String; = "refresh_session"
.field public static final EXTRA_REPOST:Ljava/lang/String; = "repost"
.field public static final EXTRA_REPOST_ID:Ljava/lang/String; = "repost_id"
.field public static final EXTRA_REQUEST_ID:Ljava/lang/String; = "rid"
.field public static final EXTRA_RESPONSE_CODE:Ljava/lang/String; = "resp_code"
.field public static final EXTRA_RESPONSE_SUCCESS:Ljava/lang/String; = "response_success"
.field public static final EXTRA_SECRET:Ljava/lang/String; = "secret"
.field public static final EXTRA_SERVER_STATUS:Ljava/lang/String; = "server_status"
.field public static final EXTRA_SESSION_KEY:Ljava/lang/String; = "s_key"
.field public static final EXTRA_SESSION_OWNER_ID:Ljava/lang/String; = "s_owner_id"
.field public static final EXTRA_SHOULD_FOLLOW_EDITORS_PICKS:Ljava/lang/String; = "should_follow_editors_picks"
.field public static final EXTRA_SIZE:Ljava/lang/String; = "size"
.field public static final EXTRA_SORT:Ljava/lang/String; = "sort"
.field public static final EXTRA_TAGS:Ljava/lang/String; = "tags"
.field public static final EXTRA_TAG_NAME:Ljava/lang/String; = "tag_name"
.field public static final EXTRA_THUMBNAIL_URL:Ljava/lang/String; = "thumbnail_url"
.field public static final EXTRA_TITLE:Ljava/lang/String; = "title"
.field public static final EXTRA_TWITTER_ID:Ljava/lang/String; = "t_id"
.field public static final EXTRA_TWITTER_USER:Ljava/lang/String; = "t_user"
.field public static final EXTRA_TYPE:Ljava/lang/String; = "type"
.field public static final EXTRA_UPLOAD:Ljava/lang/String; = "upload"
.field public static final EXTRA_UPLOAD_PATH:Ljava/lang/String; = "upload_path"
.field public static final EXTRA_URI:Ljava/lang/String; = "uri"
.field public static final EXTRA_USER:Ljava/lang/String; = "user"
.field public static final EXTRA_USERNAME:Ljava/lang/String; = "username"
.field public static final EXTRA_USERS:Ljava/lang/String; = "users"
.field public static final EXTRA_USER_ID:Ljava/lang/String; = "user_id"
.field public static final EXTRA_USER_INITIATED:Ljava/lang/String; = "user_init"
.field public static final EXTRA_VANITY_URL:Ljava/lang/String; = "vanity_url"
.field public static final EXTRA_VIDEO_URL:Ljava/lang/String; = "post_url"
.field private static final LOGGABLE:Z = false
.field private static final PACKAGE:Ljava/lang/String; = "package"
.field private static final PAGE_SIZE_SEARCH:I = 0x32
.field private static final PARAM_ACCEPTS_OUT_OF_NETWORK_CONVERSATIONS:Ljava/lang/String; = "acceptsOutOfNetworkConversations"
.field private static final PARAM_ADDRESS_BOOK:Ljava/lang/String; = "addressBook"
.field private static final PARAM_ANCHOR:Ljava/lang/String; = "anchor"
.field private static final PARAM_AUTHENTICATE:Ljava/lang/String; = "authenticate"
.field private static final PARAM_AVATAR:Ljava/lang/String; = "avatarUrl"
.field private static final PARAM_COLOR:Ljava/lang/String; = "profileBackground"
.field private static final PARAM_COMMENT_MAX:Ljava/lang/String; = "c_max"
.field private static final PARAM_COMMENT_OVERFLOW:Ljava/lang/String; = "c_overflow"
.field private static final PARAM_CREATED:Ljava/lang/String; = "created"
.field private static final PARAM_DATE:Ljava/lang/String; = "date"
.field private static final PARAM_DESCRIPTION:Ljava/lang/String; = "description"
.field private static final PARAM_DEVICE_TOKEN:Ljava/lang/String; = "deviceToken"
.field private static final PARAM_DISABLE_ADDRESS_BOOK:Ljava/lang/String; = "disableAddressBook"
.field private static final PARAM_EDITION:Ljava/lang/String; = "edition"
.field private static final PARAM_EMAIL:Ljava/lang/String; = "email"
.field private static final PARAM_FACEBOOK_AUTH_TOKEN:Ljava/lang/String; = "facebookOauthToken"
.field private static final PARAM_HIDDEN_EMAIL:Ljava/lang/String; = "hiddenEmail"
.field private static final PARAM_HIDDEN_PHONE_NUMBER:Ljava/lang/String; = "hiddenPhoneNumber"
.field private static final PARAM_INBOX:Ljava/lang/String; = "inbox"
.field private static final PARAM_INCLUDE_PROMOTED:Ljava/lang/String; = "includePromoted"
.field private static final PARAM_LAST_MESSAGE_ID:Ljava/lang/String; = "lastMessageId"
.field private static final PARAM_LIKE_MAX:Ljava/lang/String; = "l_max"
.field private static final PARAM_LOCALE:Ljava/lang/String; = "locale"
.field private static final PARAM_LOCATION:Ljava/lang/String; = "location"
.field private static final PARAM_MESSAGE:Ljava/lang/String; = "message"
.field private static final PARAM_NAME:Ljava/lang/String; = "username"
.field private static final PARAM_PAGE:Ljava/lang/String; = "page"
.field private static final PARAM_PASSWORD:Ljava/lang/String; = "password"
.field private static final PARAM_PHONE:Ljava/lang/String; = "phoneNumber"
.field private static final PARAM_PREFETCH:Ljava/lang/String; = "prefetch"
.field private static final PARAM_PREINSTALL_TARGET:Ljava/lang/String; = "preinstallTarget"
.field private static final PARAM_REPOSTS:Ljava/lang/String; = "reposts"
.field private static final PARAM_SEARCH_TERM:Ljava/lang/String; = "st"
.field private static final PARAM_SIZE:Ljava/lang/String; = "size"
.field private static final PARAM_TWITTER_ID:Ljava/lang/String; = "twitterId"
.field private static final PARAM_TWITTER_SECRET:Ljava/lang/String; = "twitterOauthSecret"
.field private static final PARAM_TWITTER_TOKEN:Ljava/lang/String; = "twitterOauthToken"
.field private static final PARAM_USERNAME:Ljava/lang/String; = "username"
.field private static final PARAM_USER_IDS:Ljava/lang/String; = "userIds[]"
.field private static final PARAM_VERIFY_EMAIL:Ljava/lang/String; = "verifyEmail"
.field private static final PARAM_VERIFY_PHONE_NUMBER:Ljava/lang/String; = "verifyPhoneNumber"
.field private static final PARAM_WITH_FAVORITES:Ljava/lang/String; = "withFavorites"
.field private static final REASON_PHRASE:Ljava/lang/String; = "reasonPhrase"
.field private static final SAMSUNG_BADGER_URI:Landroid/net/Uri; = null
.field public static final SERVICE_INTENT_FILTER:Landroid/content/IntentFilter; = null
.field public static final SHOW_POST_FILTER:Landroid/content/IntentFilter; = null
.field private static final START_CLASS_NAME:Ljava/lang/String; = null
.field private static final STATUS_CODE:Ljava/lang/String; = "statusCode"
.field private static final TAG:Ljava/lang/String; = "VineService"
.field private static final sActionMap:Ljava/util/HashMap;
.field private mAmazonBucket:Ljava/lang/String;
.field private mApi:Lco/vine/android/client/VineAPI;
.field private mExecutor:Ljava/util/concurrent/ExecutorService;
.field private final mHttpRequests:Ljava/util/concurrent/ConcurrentHashMap;
.field private final mMainHandler:Landroid/os/Handler;
.field private mMediaUtility:Lco/vine/android/util/MediaUtility;
.field private final mMessenger:Landroid/os/Messenger;
.field private final mServiceBroadCastReceiver:Landroid/content/BroadcastReceiver;
.field private mStartIds:Ljava/util/LinkedHashMap;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x3
const/4 v1, 0x0
const/4 v2, 0x1
new-instance v0, Landroid/content/IntentFilter;
const-string v3, "co.vine.android.service.mergePost"
invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
sput-object v0, Lco/vine/android/service/VineService;->SERVICE_INTENT_FILTER:Landroid/content/IntentFilter;
new-instance v0, Landroid/content/IntentFilter;
const-string v3, "co.vine.android.service.mergePostFeed"
invoke-direct {v0, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
sput-object v0, Lco/vine/android/service/VineService;->SHOW_POST_FILTER:Landroid/content/IntentFilter;
invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z
move-result v0
if-nez v0, :cond_23
const-string v0, "VineService"
invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_5d
:cond_23
move v0, v2
:goto_24
sput-boolean v0, Lco/vine/android/service/VineService;->LOGGABLE:Z
const-string v0, "content://com.sec.badge/apps"
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lco/vine/android/service/VineService;->SAMSUNG_BADGER_URI:Landroid/net/Uri;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0, v4}, Ljava/util/HashMap;-><init>(I)V
sput-object v0, Lco/vine/android/service/VineService;->sActionMap:Ljava/util/HashMap;
sget-object v0, Lco/vine/android/service/VineService;->sActionMap:Ljava/util/HashMap;
const-string v3, "RESTART_CM"
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
sget-object v0, Lco/vine/android/service/VineService;->sActionMap:Ljava/util/HashMap;
const-string v3, "co.vine.android.session.login"
const/4 v4, 0x2
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-virtual {v0, v3, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-class v0, Lco/vine/android/StartActivity;
invoke-virtual {v0}, Ljava/lang/Class;->getCanonicalName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lco/vine/android/service/VineService;->START_CLASS_NAME:Ljava/lang/String;
new-array v0, v2, [Ljava/lang/String;
const-string v2, "co.vine.android"
aput-object v2, v0, v1
sput-object v0, Lco/vine/android/service/VineService;->BADGER_ARGS:[Ljava/lang/String;
return-void
:cond_5d
move v0, v1
goto :goto_24
.end method
.method public constructor <init>()V
.registers 3
invoke-direct {p0}, Landroid/app/Service;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v1
invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
iput-object v0, p0, Lco/vine/android/service/VineService;->mMainHandler:Landroid/os/Handler;
new-instance v0, Landroid/os/Messenger;
new-instance v1, Lco/vine/android/service/VineService$VineServiceHandler;
invoke-direct {v1, p0}, Lco/vine/android/service/VineService$VineServiceHandler;-><init>(Lco/vine/android/service/VineService;)V
invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V
iput-object v0, p0, Lco/vine/android/service/VineService;->mMessenger:Landroid/os/Messenger;
new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V
iput-object v0, p0, Lco/vine/android/service/VineService;->mHttpRequests:Ljava/util/concurrent/ConcurrentHashMap;
new-instance v0, Lco/vine/android/service/VineService$1;
invoke-direct {v0, p0}, Lco/vine/android/service/VineService$1;-><init>(Lco/vine/android/service/VineService;)V
iput-object v0, p0, Lco/vine/android/service/VineService;->mServiceBroadCastReceiver:Landroid/content/BroadcastReceiver;
return-void
.end method
.method static synthetic access$000(Lco/vine/android/service/VineService;)Ljava/util/concurrent/ExecutorService;
.registers 2
iget-object v0, p0, Lco/vine/android/service/VineService;->mExecutor:Ljava/util/concurrent/ExecutorService;
return-object v0
.end method
.method static synthetic access$100()Z
.registers 1
sget-boolean v0, Lco/vine/android/service/VineService;->LOGGABLE:Z
return v0
.end method
.method static synthetic access$200(Lco/vine/android/service/VineService;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lco/vine/android/service/VineService;->mMainHandler:Landroid/os/Handler;
return-object v0
.end method
.method private deleteComment(JLjava/lang/String;Lco/vine/android/provider/VineDatabaseHelper;)Lco/vine/android/network/HttpOperation;
.registers 12
iget-object v3, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v3}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x4
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
const-string v6, "posts"
aput-object v6, v4, v5
const/4 v5, 0x1
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
aput-object v6, v4, v5
const/4 v5, 0x2
const-string v6, "comments"
aput-object v6, v4, v5
const/4 v5, 0x3
aput-object p3, v4, v5
invoke-static {v3, v4}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const/4 v3, 0x7
invoke-static {v3}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v2
invoke-virtual {p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v3
iget-object v4, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-static {v3, v1, v4, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v3
invoke-virtual {v3}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v0
return-object v0
.end method
.method private getClientProfile()Lco/vine/android/network/HttpOperation;
.registers 10
const/4 v8, 0x1
const/4 v5, 0x0
iget-object v4, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v4}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v4
new-array v6, v8, [Ljava/lang/Object;
const-string v7, "clientprofiles"
aput-object v7, v6, v5
invoke-static {v4, v6}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v4, "Updating device profile for {} {} {}."
const/4 v6, 0x3
new-array v6, v6, [Ljava/lang/Object;
sget-object v7, Landroid/os/Build;->MODEL:Ljava/lang/String;
aput-object v7, v6, v5
sget-object v7, Landroid/os/Build;->DEVICE:Ljava/lang/String;
aput-object v7, v6, v8
const/4 v7, 0x2
sget v8, Landroid/os/Build$VERSION;->SDK_INT:I
invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v8
aput-object v8, v6, v7
invoke-static {v4, v6}, Lcom/edisonwang/android/slog/SLog;->w(Ljava/lang/String;[Ljava/lang/Object;)V
const-string v4, "model"
sget-object v6, Landroid/os/Build;->MODEL:Ljava/lang/String;
invoke-static {v2, v4, v6}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v4, "device"
sget-object v6, Landroid/os/Build;->DEVICE:Ljava/lang/String;
invoke-static {v2, v4, v6}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const-string v4, "sdkVersion"
sget v6, Landroid/os/Build$VERSION;->SDK_INT:I
invoke-static {v2, v4, v6}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const-string v6, "memory"
const-string v4, "activity"
invoke-virtual {p0, v4}, Lco/vine/android/service/VineService;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v4
check-cast v4, Landroid/app/ActivityManager;
invoke-virtual {v4}, Landroid/app/ActivityManager;->getLargeMemoryClass()I
move-result v4
invoke-static {v2, v6, v4}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const/16 v4, 0xd
invoke-static {v4}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v3
invoke-virtual {p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;
move-result-object v4
invoke-static {v4}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v4
iget-object v6, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-static {v4, v2, v3, v6}, Lco/vine/android/network/HttpOperation;->createGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;
move-result-object v1
invoke-virtual {v1}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v4
if-eqz v4, :cond_8a
invoke-virtual {v3}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lorg/json/JSONObject;
if-eqz v0, :cond_84
const-string v4, "Got client profile {}."
invoke-static {v4, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
invoke-static {}, Lco/vine/android/AppImpl;->getInstance()Lco/vine/android/AppImpl;
move-result-object v4
invoke-virtual {p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;
move-result-object v5
invoke-virtual {v4, v5, v0}, Lco/vine/android/AppImpl;->updateRecordConfigs(Landroid/content/Context;Lorg/json/JSONObject;)V
:goto_83
return-object v1
:cond_84
const-string v4, "Error getting client profile."
invoke-static {v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
goto :goto_83
:cond_8a
const-string v6, "Failed to update client profile: {}."
if-eqz v1, :cond_98
iget v4, v1, Lco/vine/android/network/HttpOperation;->statusCode:I
:goto_90
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
invoke-static {v6, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
goto :goto_83
:cond_98
move v4, v5
goto :goto_90
.end method
.method private getComments(JIJILjava/lang/String;Landroid/os/Bundle;Lco/vine/android/provider/VineDatabaseHelper;)Lco/vine/android/network/HttpOperation;
.registers 19
iget-object v5, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v5
const/4 v6, 0x3
new-array v6, v6, [Ljava/lang/Object;
const/4 v7, 0x0
const-string v8, "posts"
aput-object v8, v6, v7
const/4 v7, 0x1
invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v8
aput-object v8, v6, v7
const/4 v7, 0x2
const-string v8, "comments"
aput-object v8, v6, v7
invoke-static {v5, v6}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v5, "page"
invoke-static {v3, v5, p3}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const-wide/16 v5, 0x0
cmp-long v5, p4, v5
if-lez v5, :cond_2e
const-string v5, "anchor"
invoke-static {v3, v5, p4, p5}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
:cond_2e
const-string v5, "size"
invoke-static {v3, v5, p6}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const/4 v5, 0x6
invoke-static {v5}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v4
invoke-virtual {p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;
move-result-object v5
invoke-static {v5}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v5
iget-object v6, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-static {v5, v3, v6, v4}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v5
invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v2
invoke-virtual {v2}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v5
if-eqz v5, :cond_7a
invoke-virtual {v4}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lco/vine/android/api/VinePagedData;
const-string v5, "next_page"
iget v6, v1, Lco/vine/android/api/VinePagedData;->nextPage:I
move-object/from16 v0, p8
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v5, "time"
iget-wide v6, v1, Lco/vine/android/api/VinePagedData;->anchor:J
move-object/from16 v0, p8
invoke-virtual {v0, v5, v6, v7}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v5, "previous_page"
iget v6, v1, Lco/vine/android/api/VinePagedData;->previousPage:I
move-object/from16 v0, p8
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v5, "comments"
iget-object v6, v1, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v0, p8
invoke-virtual {v0, v5, v6}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
:cond_7a
return-object v2
.end method
.method private getConversationWithRemoteId(JJILco/vine/android/provider/VineDatabaseHelper;ZI)Lco/vine/android/api/VineConversation;
.registers 31
move-object/from16 v0, p0
iget-object v4, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v4}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
const/4 v6, 0x0
const-string v7, "conversations"
aput-object v7, v5, v6
const/4 v6, 0x1
invoke-static/range {p3 .. p4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v7
aput-object v7, v5, v6
invoke-static {v4, v5}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v20
packed-switch p5, :pswitch_data_c2
:goto_1e
:cond_1e
const-string v5, "prefetch"
if-eqz p7, :cond_b4
const/4 v4, 0x1
:goto_23
move-object/from16 v0, v20
invoke-static {v0, v5, v4}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const/16 v4, 0x16
invoke-static {v4}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v21
invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;
move-result-object v4
invoke-static {v4}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v4
move-object/from16 v0, p0
iget-object v5, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v20
move-object/from16 v1, v21
invoke-static {v4, v0, v5, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v4
invoke-virtual {v4}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v17
invoke-virtual/range {v17 .. v17}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v4
if-eqz v4, :cond_bf
invoke-virtual/range {v21 .. v21}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v15
check-cast v15, Lco/vine/android/api/VineParsers$VinePagedConversation;
if-eqz v15, :cond_bf
iget-object v4, v15, Lco/vine/android/api/VineParsers$VinePagedConversation;->items:Ljava/util/ArrayList;
if-eqz v4, :cond_bf
iget-object v4, v15, Lco/vine/android/api/VineParsers$VinePagedConversation;->items:Ljava/util/ArrayList;
invoke-virtual {v4}, Ljava/util/ArrayList;->size()I
move-result v4
if-lez v4, :cond_bf
new-instance v3, Lco/vine/android/api/VineConversation;
iget-wide v6, v15, Lco/vine/android/api/VineParsers$VinePagedConversation;->lastMessage:J
iget-object v8, v15, Lco/vine/android/api/VineParsers$VinePagedConversation;->items:Ljava/util/ArrayList;
iget-wide v9, v15, Lco/vine/android/api/VineParsers$VinePagedConversation;->unreadMessageCount:J
move-wide/from16 v4, p3
invoke-direct/range {v3 .. v10}, Lco/vine/android/api/VineConversation;-><init>(JJLjava/util/ArrayList;J)V
:try_start_6d
iget v9, v15, Lco/vine/android/api/VineParsers$VinePagedConversation;->nextPage:I
iget v10, v15, Lco/vine/android/api/VineParsers$VinePagedConversation;->previousPage:I
iget-wide v11, v15, Lco/vine/android/api/VineParsers$VinePagedConversation;->anchor:J
move-object/from16 v4, p6
move-wide/from16 v5, p1
move-object v7, v3
move/from16 v8, p8
invoke-virtual/range {v4 .. v12}, Lco/vine/android/provider/VineDatabaseHelper;->mergeConversation(JLco/vine/android/api/VineConversation;IIIJ)J
move-result-wide v13
iget v4, v15, Lco/vine/android/api/VineParsers$VinePagedConversation;->nextPage:I
if-gtz v4, :cond_87
move-object/from16 v0, p6
invoke-virtual {v0, v13, v14}, Lco/vine/android/provider/VineDatabaseHelper;->markLastMessage(J)V
:cond_87
iput-wide v13, v3, Lco/vine/android/api/VineConversation;->conversationObjectId:J
:try_end_89
.catch Ljava/io/IOException; {:try_start_6d .. :try_end_89} :catch_b7
:goto_89
return-object v3
:pswitch_8a
const-string v4, "page"
const/4 v5, 0x1
move-object/from16 v0, v20
invoke-static {v0, v4, v5}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
goto :goto_1e
:pswitch_93
const/4 v4, 0x7
const/4 v5, 0x0
invoke-static/range {p3 .. p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v6
const/4 v7, 0x0
move-object/from16 v0, p6
invoke-virtual {v0, v4, v5, v6, v7}, Lco/vine/android/provider/VineDatabaseHelper;->getNextPageCursor(IILjava/lang/String;Z)I
move-result v4
int-to-long v0, v4
move-wide/from16 v18, v0
const-wide/16 v4, 0x0
cmp-long v4, v18, v4
if-lez v4, :cond_1e
const-string v4, "page"
move-object/from16 v0, v20
move-wide/from16 v1, v18
invoke-static {v0, v4, v1, v2}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
goto/16 :goto_1e
:cond_b4
const/4 v4, 0x0
goto/16 :goto_23
:catch_b7
move-exception v16
sget-boolean v4, Lco/vine/android/service/VineService;->LOGGABLE:Z
if-eqz v4, :cond_bf
invoke-virtual/range {v16 .. v16}, Ljava/io/IOException;->printStackTrace()V
:cond_bf
const/4 v3, 0x0
goto :goto_89
nop
:pswitch_data_c2
.packed-switch 0x1
:pswitch_8a
:pswitch_8a
:pswitch_93
.end packed-switch
.end method
.method private getInbox(JIILjava/lang/String;Lco/vine/android/provider/VineDatabaseHelper;Landroid/os/Bundle;)Lco/vine/android/network/HttpOperation;
.registers 24
const-string v1, "network"
const/4 v2, -0x1
move-object/from16 v0, p7
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v9
const/4 v12, 0x1
packed-switch p3, :pswitch_data_ae
:cond_d
:goto_d
move-object/from16 v0, p0
iget-object v1, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v1}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
const-string v5, "conversations"
aput-object v5, v2, v3
invoke-static {v1, v2}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v14
const/4 v1, -0x1
if-ne v9, v1, :cond_3b
new-instance v1, Ljava/lang/IllegalArgumentException;
const-string v2, "Invalid network type."
invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v1
:pswitch_2c
const/4 v12, 0x1
goto :goto_d
:pswitch_2e
const/4 v1, 0x6
const/4 v2, 0x0
const/4 v3, 0x1
move-object/from16 v0, p6
invoke-virtual {v0, v1, v9, v2, v3}, Lco/vine/android/provider/VineDatabaseHelper;->getPreviousPageCursor(IILjava/lang/String;Z)I
move-result v13
if-lez v13, :cond_d
move v12, v13
goto :goto_d
:cond_3b
const/16 v1, 0x19
invoke-static {v1}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v15
const/4 v1, 0x1
if-ne v1, v9, :cond_a4
const/16 v10, 0xa
:goto_46
const-string v1, "page"
invoke-static {v14, v1, v12}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const-string v1, "size"
const/16 v2, 0xa
invoke-static {v14, v1, v2}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-static {v1}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v1
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, p5
invoke-static {v1, v14, v2, v15, v0}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v1
invoke-virtual {v1}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v11
invoke-virtual {v11}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v1
if-eqz v1, :cond_a3
invoke-virtual {v15}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v4
check-cast v4, Lco/vine/android/api/VineParsers$VinePagedInbox;
iget-object v1, v4, Lco/vine/android/api/VineParsers$VinePagedInbox;->items:Ljava/util/ArrayList;
if-eqz v1, :cond_a3
iget-object v1, v4, Lco/vine/android/api/VineParsers$VinePagedInbox;->items:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->isEmpty()Z
move-result v1
if-nez v1, :cond_a3
iget v5, v4, Lco/vine/android/api/VineParsers$VinePagedInbox;->nextPage:I
iget v6, v4, Lco/vine/android/api/VineParsers$VinePagedInbox;->previousPage:I
iget-wide v7, v4, Lco/vine/android/api/VineParsers$VinePagedInbox;->anchor:J
move-object/from16 v1, p6
move-wide/from16 v2, p1
invoke-virtual/range {v1 .. v10}, Lco/vine/android/provider/VineDatabaseHelper;->mergeInbox(JLco/vine/android/api/VineParsers$VinePagedInbox;IIJII)V
const-string v1, "count"
iget-object v2, v4, Lco/vine/android/api/VineParsers$VinePagedInbox;->items:Ljava/util/ArrayList;
invoke-virtual {v2}, Ljava/util/ArrayList;->size()I
move-result v2
move-object/from16 v0, p7
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
iget v1, v4, Lco/vine/android/api/VineParsers$VinePagedInbox;->nextPage:I
if-gtz v1, :cond_a3
move-object/from16 v0, p6
invoke-virtual {v0, v9}, Lco/vine/android/provider/VineDatabaseHelper;->markLastConversation(I)V
:cond_a3
return-object v11
:cond_a4
const-string v1, "inbox"
const-string v2, "other"
invoke-static {v14, v1, v2}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const/16 v10, 0xb
goto :goto_46
:pswitch_data_ae
.packed-switch 0x1
:pswitch_2c
:pswitch_2c
:pswitch_2e
.end packed-switch
.end method
.method private getPosts(JIILco/vine/android/provider/VineDatabaseHelper;JIJLandroid/os/Bundle;)Lco/vine/android/network/HttpOperation;
.registers 35
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v20, v0
invoke-virtual/range {v20 .. v20}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v4
const-string v20, "tag_name"
move-object/from16 v0, p11
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v17
if-nez v17, :cond_2d
const/16 v20, 0x6
move/from16 v0, p3
move/from16 v1, v20
if-eq v0, v1, :cond_2d
invoke-static/range {p1 .. p2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v17
const-string v20, "tag_name"
move-object/from16 v0, p11
move-object/from16 v1, v20
move-object/from16 v2, v17
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_2d
packed-switch p3, :pswitch_data_30a
:pswitch_30
new-instance v20, Ljava/lang/IllegalArgumentException;
new-instance v21, Ljava/lang/StringBuilder;
invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V
const-string v22, "Tried to fetch timeline with unsupported type "
invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v21
move-object/from16 v0, v21
move/from16 v1, p3
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v21
invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v21
invoke-direct/range {v20 .. v21}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v20
:pswitch_4d
const/16 v20, 0x2
move/from16 v0, v20
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v20, v0
const/16 v21, 0x0
const-string v22, "timelines"
aput-object v22, v20, v21
const/16 v21, 0x1
const-string v22, "graph"
aput-object v22, v20, v21
move-object/from16 v0, v20
invoke-static {v4, v0}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v18
const/4 v13, 0x2
:goto_68
const-string v20, "page"
move-object/from16 v0, v18
move-object/from16 v1, v20
move/from16 v2, p8
invoke-static {v0, v1, v2}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const-string v20, "anchor"
move-object/from16 v0, v18
move-object/from16 v1, v20
move-wide/from16 v2, p9
invoke-static {v0, v1, v2, v3}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
const-string v20, "size"
move-object/from16 v0, v18
move-object/from16 v1, v20
move/from16 v2, p4
invoke-static {v0, v1, v2}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
move-object/from16 v0, p0
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Lco/vine/android/service/VineService;->limitCommentAndLikesIfNeeded(Ljava/lang/StringBuilder;)V
const/16 v20, 0x8
invoke-static/range {v20 .. v20}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v19
invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;
move-result-object v20
invoke-static/range {v20 .. v20}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v20
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v21, v0
move-object/from16 v0, v20
move-object/from16 v1, v18
move-object/from16 v2, v21
move-object/from16 v3, v19
invoke-static {v0, v1, v2, v3}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v20
invoke-virtual/range {v20 .. v20}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v12
invoke-virtual {v12}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v20
if-eqz v20, :cond_308
invoke-virtual/range {v19 .. v19}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v10
check-cast v10, Lco/vine/android/api/VinePagedData;
invoke-static/range {p3 .. p3}, Lco/vine/android/util/Util;->isPopularTimeline(I)Z
move-result v20
if-eqz v20, :cond_28e
const/4 v7, 0x1
move-object/from16 v0, p5
move/from16 v1, p3
invoke-virtual {v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getOldestSortId(I)Landroid/database/Cursor;
move-result-object v5
if-eqz v5, :cond_e4
invoke-interface {v5}, Landroid/database/Cursor;->moveToFirst()Z
move-result v20
if-eqz v20, :cond_e1
const/16 v20, 0x0
move/from16 v0, v20
invoke-interface {v5, v0}, Landroid/database/Cursor;->getInt(I)I
move-result v20
add-int/lit8 v7, v20, 0x1
:cond_e1
invoke-interface {v5}, Landroid/database/Cursor;->close()V
:cond_e4
iget-object v0, v10, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v20, v0
invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v11
:goto_ec
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v20
if-eqz v20, :cond_28e
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v15
check-cast v15, Lco/vine/android/api/VinePost;
add-int/lit8 v8, v7, 0x1
invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v20
move-object/from16 v0, v20
iput-object v0, v15, Lco/vine/android/api/VinePost;->orderId:Ljava/lang/String;
move v7, v8
goto :goto_ec
:pswitch_104
const/16 v20, 0x3
move/from16 v0, v20
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v20, v0
const/16 v21, 0x0
const-string v22, "timelines"
aput-object v22, v20, v21
const/16 v21, 0x1
const-string v22, "users"
aput-object v22, v20, v21
const/16 v21, 0x2
invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v22
aput-object v22, v20, v21
move-object/from16 v0, v20
invoke-static {v4, v0}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v18
const/4 v13, 0x2
const-string v20, "reposts"
const/16 v21, 0x1
move-object/from16 v0, v18
move-object/from16 v1, v20
move/from16 v2, v21
invoke-static {v0, v1, v2}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const-string v20, "c_overflow"
const-string v21, "trunc"
move-object/from16 v0, v18
move-object/from16 v1, v20
move-object/from16 v2, v21
invoke-static {v0, v1, v2}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_68
:pswitch_143
const/16 v20, 0x3
move/from16 v0, v20
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v20, v0
const/16 v21, 0x0
const-string v22, "timelines"
aput-object v22, v20, v21
const/16 v21, 0x1
const-string v22, "users"
aput-object v22, v20, v21
const/16 v21, 0x2
invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v22
aput-object v22, v20, v21
move-object/from16 v0, v20
invoke-static {v4, v0}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v18
const/4 v13, 0x2
const-string v20, "reposts"
const/16 v21, 0x0
move-object/from16 v0, v18
move-object/from16 v1, v20
move/from16 v2, v21
invoke-static {v0, v1, v2}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
goto/16 :goto_68
:pswitch_175
const/16 v20, 0x4
move/from16 v0, v20
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v20, v0
const/16 v21, 0x0
const-string v22, "timelines"
aput-object v22, v20, v21
const/16 v21, 0x1
const-string v22, "users"
aput-object v22, v20, v21
const/16 v21, 0x2
invoke-static/range {p6 .. p7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v22
aput-object v22, v20, v21
const/16 v21, 0x3
const-string v22, "likes"
aput-object v22, v20, v21
move-object/from16 v0, v20
invoke-static {v4, v0}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v18
const/4 v13, 0x1
goto/16 :goto_68
:pswitch_1a0
const/16 v20, 0x3
move/from16 v0, v20
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v20, v0
const/16 v21, 0x0
const-string v22, "timelines"
aput-object v22, v20, v21
const/16 v21, 0x1
const-string v22, "users"
aput-object v22, v20, v21
const/16 v21, 0x2
const-string v22, "trending"
aput-object v22, v20, v21
move-object/from16 v0, v20
invoke-static {v4, v0}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v18
const/4 v13, 0x2
goto/16 :goto_68
:pswitch_1c3
const/16 v20, 0x2
move/from16 v0, v20
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v20, v0
const/16 v21, 0x0
const-string v22, "timelines"
aput-object v22, v20, v21
const/16 v21, 0x1
const-string v22, "popular"
aput-object v22, v20, v21
move-object/from16 v0, v20
invoke-static {v4, v0}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v18
const/4 v13, 0x2
goto/16 :goto_68
:pswitch_1e0
const/16 v20, 0x3
move/from16 v0, v20
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v20, v0
const/16 v21, 0x0
const-string v22, "timelines"
aput-object v22, v20, v21
const/16 v21, 0x1
const-string v22, "tags"
aput-object v22, v20, v21
const/16 v21, 0x2
aput-object v17, v20, v21
move-object/from16 v0, v20
invoke-static {v4, v0}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v18
const/4 v13, 0x2
goto/16 :goto_68
:pswitch_201
const-string v20, "tag_name"
move-object/from16 v0, p11
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string v20, "sort"
move-object/from16 v0, p11
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v16
const/16 v20, 0x4
move/from16 v0, v20
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v20, v0
const/16 v21, 0x0
const-string v22, "timelines"
aput-object v22, v20, v21
const/16 v21, 0x1
const-string v22, "channels"
aput-object v22, v20, v21
const/16 v21, 0x2
aput-object v6, v20, v21
const/16 v21, 0x3
aput-object v16, v20, v21
move-object/from16 v0, v20
invoke-static {v4, v0}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v18
const/4 v13, 0x2
goto/16 :goto_68
:pswitch_23a
const/16 v20, 0x1
move/from16 v0, v20
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v20, v0
const/16 v21, 0x0
const-string v22, "timelines"
aput-object v22, v20, v21
move-object/from16 v0, v20
invoke-static {v4, v0}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v18
const-string v20, "data"
move-object/from16 v0, p11
move-object/from16 v1, v20
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v9
check-cast v9, Landroid/net/Uri;
invoke-virtual {v9}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;
move-result-object v20
invoke-interface/range {v20 .. v20}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v11
:goto_262
invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z
move-result v20
if-eqz v20, :cond_283
invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v14
check-cast v14, Ljava/lang/String;
invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
const/16 v21, 0x1
move/from16 v0, v21
new-array v0, v0, [Ljava/lang/Object;
move-object/from16 v21, v0
const/16 v22, 0x0
aput-object v14, v21, v22
invoke-static/range {v20 .. v21}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v18
goto :goto_262
:cond_283
invoke-virtual {v9}, Landroid/net/Uri;->getPath()Ljava/lang/String;
move-result-object v20
invoke-static/range {v20 .. v20}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v17
const/4 v13, 0x2
goto/16 :goto_68
:cond_28e
const-string v20, "count"
iget-object v0, v10, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v21, v0
invoke-virtual/range {v21 .. v21}, Ljava/util/ArrayList;->size()I
move-result v21
move-object/from16 v0, p11
move-object/from16 v1, v20
move/from16 v2, v21
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v20, "size"
iget v0, v10, Lco/vine/android/api/VinePagedData;->count:I
move/from16 v21, v0
move-object/from16 v0, p11
move-object/from16 v1, v20
move/from16 v2, v21
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v20, "posts"
iget-object v0, v10, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v21, v0
move-object/from16 v0, p11
move-object/from16 v1, v20
move-object/from16 v2, v21
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
const-string v20, "in_memory"
const/16 v21, 0x1
move-object/from16 v0, p11
move-object/from16 v1, v20
move/from16 v2, v21
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v20, "next_page"
iget v0, v10, Lco/vine/android/api/VinePagedData;->nextPage:I
move/from16 v21, v0
move-object/from16 v0, p11
move-object/from16 v1, v20
move/from16 v2, v21
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v20, "previous_page"
iget v0, v10, Lco/vine/android/api/VinePagedData;->previousPage:I
move/from16 v21, v0
move-object/from16 v0, p11
move-object/from16 v1, v20
move/from16 v2, v21
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v20, "time"
iget-wide v0, v10, Lco/vine/android/api/VinePagedData;->anchor:J
move-wide/from16 v21, v0
move-object/from16 v0, p11
move-object/from16 v1, v20
move-wide/from16 v2, v21
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v20, "title"
iget-object v0, v10, Lco/vine/android/api/VinePagedData;->title:Ljava/lang/String;
move-object/from16 v21, v0
move-object/from16 v0, p11
move-object/from16 v1, v20
move-object/from16 v2, v21
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_308
return-object v12
nop
:pswitch_data_30a
.packed-switch 0x1
:pswitch_4d
:pswitch_104
:pswitch_175
:pswitch_1a0
:pswitch_1c3
:pswitch_1e0
:pswitch_30
:pswitch_201
:pswitch_201
:pswitch_143
:pswitch_23a
.end packed-switch
.end method
.method private getUsersMe(Ljava/lang/String;Landroid/os/Bundle;)Lco/vine/android/network/HttpOperation;
.registers 13
const/4 v9, 0x2
iget-object v5, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v5}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v5
new-array v6, v9, [Ljava/lang/Object;
const/4 v7, 0x0
const-string v8, "users"
aput-object v8, v6, v7
const/4 v7, 0x1
const-string v8, "me"
aput-object v8, v6, v7
invoke-static {v5, v6}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-static {v9}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v4
invoke-virtual {p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;
move-result-object v5
invoke-static {v5}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v5
iget-object v6, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-static {v5, v2, v6, v4}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v5
invoke-virtual {v5}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v1
invoke-virtual {v1}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v5
if-eqz v5, :cond_48
invoke-virtual {v4}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v3
check-cast v3, Lco/vine/android/api/VineUser;
invoke-static {p0}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
move-result-object v0
invoke-virtual {v0, v3}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUserAndGetResultingRowId(Lco/vine/android/api/VineUser;)J
move-result-wide v5
iput-wide v5, v3, Lco/vine/android/api/VineUser;->id:J
const-string v5, "user"
invoke-virtual {p2, v5, v3}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_48
return-object v1
.end method
.method private handleSingleVinePrivateMessageResponse(Landroid/content/Context;Lco/vine/android/provider/VineDatabaseHelper;Lco/vine/android/api/VinePrivateMessageResponse;Lco/vine/android/api/VineUpload$PostInfo;JJ)V
.registers 40
invoke-static/range {p1 .. p1}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;
move-result-object v3
invoke-virtual {v3}, Lco/vine/android/client/AppController;->getActiveSessionReadOnly()Lco/vine/android/client/Session;
move-result-object v3
invoke-virtual {v3}, Lco/vine/android/client/Session;->getUserId()J
move-result-wide v6
move-object/from16 v0, p2
invoke-virtual {v0, v6, v7}, Lco/vine/android/provider/VineDatabaseHelper;->getUserRowIdForUserRemoteId(J)J
move-result-wide v9
move-object/from16 v0, p3
iget-object v3, v0, Lco/vine/android/api/VinePrivateMessageResponse;->error:Lco/vine/android/api/VineError;
if-eqz v3, :cond_bc
move-object/from16 v0, p3
iget-object v3, v0, Lco/vine/android/api/VinePrivateMessageResponse;->error:Lco/vine/android/api/VineError;
iget v0, v3, Lco/vine/android/api/VineError;->errorCode:I
move/from16 v27, v0
move-object/from16 v0, p3
iget-object v3, v0, Lco/vine/android/api/VinePrivateMessageResponse;->error:Lco/vine/android/api/VineError;
iget-object v0, v3, Lco/vine/android/api/VineError;->message:Ljava/lang/String;
move-object/from16 v28, v0
:goto_28
new-instance v2, Lco/vine/android/api/VinePrivateMessage;
const-wide/16 v3, -0x1
move-object/from16 v0, p3
iget-wide v5, v0, Lco/vine/android/api/VinePrivateMessageResponse;->conversationId:J
move-object/from16 v0, p3
iget-wide v7, v0, Lco/vine/android/api/VinePrivateMessageResponse;->messageId:J
move-object/from16 v0, p4
iget-wide v11, v0, Lco/vine/android/api/VineUpload$PostInfo;->created:J
move-object/from16 v0, p4
iget-object v13, v0, Lco/vine/android/api/VineUpload$PostInfo;->message:Ljava/lang/String;
move-object/from16 v0, p3
iget-object v14, v0, Lco/vine/android/api/VinePrivateMessageResponse;->videoUrl:Ljava/lang/String;
move-object/from16 v0, p3
iget-object v15, v0, Lco/vine/android/api/VinePrivateMessageResponse;->thumbnailUrl:Ljava/lang/String;
const/16 v16, 0x1
const/16 v17, 0x0
const/16 v18, 0x0
move-object/from16 v0, p4
iget v0, v0, Lco/vine/android/api/VineUpload$PostInfo;->maxLoops:I
move/from16 v19, v0
const-wide/16 v20, 0x0
move-object/from16 v0, p4
iget v0, v0, Lco/vine/android/api/VineUpload$PostInfo;->maxLoops:I
move/from16 v22, v0
if-lez v22, :cond_c2
move-object/from16 v0, p4
iget v0, v0, Lco/vine/android/api/VineUpload$PostInfo;->maxLoops:I
move/from16 v22, v0
const v23, 0x7fffffff
move/from16 v0, v22
move/from16 v1, v23
if-ge v0, v1, :cond_c2
const/16 v22, 0x1
:goto_6b
const-wide/16 v23, 0x0
move-object/from16 v0, p4
iget-wide v0, v0, Lco/vine/android/api/VineUpload$PostInfo;->postId:J
move-wide/from16 v25, v0
invoke-direct/range {v2 .. v28}, Lco/vine/android/api/VinePrivateMessage;-><init>(JJJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZIJZJJILjava/lang/String;)V
const-wide/16 v6, 0x0
cmp-long v3, p5, v6
if-lez v3, :cond_c5
move-object/from16 v3, p2
move-wide/from16 v4, p5
move-wide/from16 v6, p7
move-object v8, v2
invoke-virtual/range {v3 .. v8}, Lco/vine/android/provider/VineDatabaseHelper;->mergeMessageWithMessageRow(JJLco/vine/android/api/VinePrivateMessage;)J
move-result-wide v14
iget-wide v0, v2, Lco/vine/android/api/VinePrivateMessage;->created:J
move-wide/from16 v16, v0
move-object/from16 v11, p2
move-wide/from16 v12, p7
invoke-virtual/range {v11 .. v17}, Lco/vine/android/provider/VineDatabaseHelper;->updateConversationWithLastMessage(JJJ)V
:goto_92
const-string v3, "VM post successful, sending merge broadcast now"
invoke-static {v3}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
new-instance v29, Landroid/content/Intent;
const-string v3, "co.vine.android.service.mergeSelfNewMessage"
move-object/from16 v0, v29
invoke-direct {v0, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v3, "conversation_id"
iget-wide v6, v2, Lco/vine/android/api/VinePrivateMessage;->conversationId:J
move-object/from16 v0, v29
invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v3, "message_id"
iget-wide v6, v2, Lco/vine/android/api/VinePrivateMessage;->messageId:J
move-object/from16 v0, v29
invoke-virtual {v0, v3, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;
const-string v3, "co.vine.android.BROADCAST"
move-object/from16 v0, p1
move-object/from16 v1, v29
invoke-virtual {v0, v1, v3}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
return-void
:cond_bc
const/16 v27, 0x0
const/16 v28, 0x0
goto/16 :goto_28
:cond_c2
const/16 v22, 0x0
goto :goto_6b
:cond_c5
new-instance v30, Ljava/util/HashSet;
invoke-direct/range {v30 .. v30}, Ljava/util/HashSet;-><init>()V
move-object/from16 v0, p3
iget-object v3, v0, Lco/vine/android/api/VinePrivateMessageResponse;->recipient:Lco/vine/android/api/VineRecipient;
iget-wide v6, v3, Lco/vine/android/api/VineRecipient;->recipientId:J
invoke-static {v6, v7}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
move-object/from16 v0, v30
invoke-virtual {v0, v3}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z
const-wide/16 v4, -0x1
move-object/from16 v0, p3
iget-wide v6, v0, Lco/vine/android/api/VinePrivateMessageResponse;->conversationId:J
const-wide/16 v11, 0x0
cmp-long v3, v6, v11
if-lez v3, :cond_11b
move-object/from16 v0, p3
iget-wide v6, v0, Lco/vine/android/api/VinePrivateMessageResponse;->conversationId:J
move-object/from16 v0, p2
invoke-virtual {v0, v6, v7}, Lco/vine/android/provider/VineDatabaseHelper;->getConversationRowId(J)J
move-result-wide v4
:goto_ef
const-wide/16 v6, 0x0
cmp-long v3, v4, v6
if-gtz v3, :cond_108
const/4 v3, 0x1
move-object/from16 v0, p2
move-object/from16 v1, v30
invoke-virtual {v0, v1, v3}, Lco/vine/android/provider/VineDatabaseHelper;->createConversationRowId(Ljava/util/HashSet;I)J
move-result-wide v4
move-object/from16 v0, p3
iget-wide v6, v0, Lco/vine/android/api/VinePrivateMessageResponse;->conversationId:J
const/4 v8, 0x1
move-object/from16 v3, p2
invoke-virtual/range {v3 .. v8}, Lco/vine/android/provider/VineDatabaseHelper;->mergeConversationWithLocalId(JJI)J
:cond_108
move-object/from16 v0, p2
invoke-virtual {v0, v4, v5, v2}, Lco/vine/android/provider/VineDatabaseHelper;->mergeMessage(JLco/vine/android/api/VinePrivateMessage;)J
move-result-wide v19
iget-wide v0, v2, Lco/vine/android/api/VinePrivateMessage;->created:J
move-wide/from16 v21, v0
move-object/from16 v16, p2
move-wide/from16 v17, v4
invoke-virtual/range {v16 .. v22}, Lco/vine/android/provider/VineDatabaseHelper;->updateConversationWithLastMessage(JJJ)V
goto/16 :goto_92
:cond_11b
move-object/from16 v0, p3
iget-object v3, v0, Lco/vine/android/api/VinePrivateMessageResponse;->recipient:Lco/vine/android/api/VineRecipient;
iget-wide v6, v3, Lco/vine/android/api/VineRecipient;->recipientId:J
move-object/from16 v0, p2
invoke-virtual {v0, v6, v7}, Lco/vine/android/provider/VineDatabaseHelper;->determineBestConversationRowIdForUserRowId(J)J
move-result-wide v4
goto :goto_ef
.end method
.method private handleVinePrivateMessageResponses(Landroid/content/Context;Lco/vine/android/api/VineUpload;Lco/vine/android/api/VineUpload$PostInfo;Lco/vine/android/api/VineParserReader;Landroid/os/Bundle;)V
.registers 29
invoke-virtual/range {p4 .. p4}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v16
check-cast v16, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;
move-object/from16 v0, v16
iget-object v13, v0, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;->responses:Ljava/util/ArrayList;
move-object/from16 v0, v16
iget-object v0, v0, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;->users:Ljava/util/ArrayList;
move-object/from16 v21, v0
move-object/from16 v0, v16
iget-object v15, v0, Lco/vine/android/api/VinePrivateMessagePostResponseWithUsers;->recipients:Ljava/util/ArrayList;
invoke-static/range {p1 .. p1}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
move-result-object v2
move-object/from16 v0, p2
iget-wide v3, v0, Lco/vine/android/api/VineUpload;->mergedMessageId:J
invoke-virtual {v2, v3, v4}, Lco/vine/android/provider/VineDatabaseHelper;->getMessageFromMessageRow(J)Lco/vine/android/api/VinePrivateMessage;
move-result-object v14
move-object/from16 v0, p2
iget-wide v3, v0, Lco/vine/android/api/VineUpload;->mergedMessageId:J
const-wide/16 v10, 0x0
cmp-long v3, v3, v10
if-lez v3, :cond_2c
if-nez v14, :cond_32
:cond_2c
const-string v3, "No local message to merge with."
invoke-static {v3}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;)V
:goto_31
return-void
:cond_32
if-eqz v21, :cond_3b
iget-wide v3, v14, Lco/vine/android/api/VinePrivateMessage;->conversationRowId:J
move-object/from16 v0, v21
invoke-virtual {v2, v3, v4, v15, v0}, Lco/vine/android/provider/VineDatabaseHelper;->mergeRecipientsWithUsersAndRemoveUnusedRecipients(JLjava/util/ArrayList;Ljava/util/ArrayList;)V
:cond_3b
const-wide/16 v8, -0x1
if-eqz v13, :cond_46
invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
move-result v3
const/4 v4, 0x1
if-ge v3, v4, :cond_62
:cond_46
const-string v4, "No vine private message responses, deleting the conversation and bailing. Response is null: {}"
const/4 v3, 0x1
new-array v5, v3, [Ljava/lang/Object;
const/4 v7, 0x0
if-nez v13, :cond_60
const/4 v3, 0x1
:goto_4f
invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v5, v7
invoke-static {v4, v5}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
const-wide/16 v3, -0x1
iget-wide v10, v14, Lco/vine/android/api/VinePrivateMessage;->conversationRowId:J
invoke-virtual {v2, v3, v4, v10, v11}, Lco/vine/android/provider/VineDatabaseHelper;->deleteConversation(JJ)V
goto :goto_31
:cond_60
const/4 v3, 0x0
goto :goto_4f
:cond_62
invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
move-result v3
const/4 v4, 0x1
if-ne v3, v4, :cond_13d
iget-wide v3, v14, Lco/vine/android/api/VinePrivateMessage;->conversationId:J
const-wide/16 v10, 0x0
cmp-long v3, v3, v10
if-gtz v3, :cond_84
iget-wide v3, v14, Lco/vine/android/api/VinePrivateMessage;->conversationRowId:J
const/4 v5, 0x0
invoke-virtual {v13, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v5
check-cast v5, Lco/vine/android/api/VinePrivateMessageResponse;
iget-wide v5, v5, Lco/vine/android/api/VinePrivateMessageResponse;->conversationId:J
iget v7, v14, Lco/vine/android/api/VinePrivateMessage;->networkType:I
invoke-virtual/range {v2 .. v7}, Lco/vine/android/provider/VineDatabaseHelper;->mergeConversationWithLocalId(JJI)J
move-result-wide v3
iput-wide v3, v14, Lco/vine/android/api/VinePrivateMessage;->conversationRowId:J
:cond_84
move-object/from16 v0, p2
iget-wide v8, v0, Lco/vine/android/api/VineUpload;->mergedMessageId:J
:goto_88
const/16 v18, 0x0
const/16 v17, 0x0
const/16 v22, 0x0
const/16 v20, 0x0
invoke-virtual {v13}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v12
:cond_94
:goto_94
invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_164
invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v6
check-cast v6, Lco/vine/android/api/VinePrivateMessageResponse;
if-eqz v6, :cond_94
iget-object v3, v6, Lco/vine/android/api/VinePrivateMessageResponse;->recipient:Lco/vine/android/api/VineRecipient;
if-eqz v3, :cond_113
iget-object v3, v6, Lco/vine/android/api/VinePrivateMessageResponse;->recipient:Lco/vine/android/api/VineRecipient;
iget-object v3, v3, Lco/vine/android/api/VineRecipient;->key:Ljava/lang/String;
const-string v4, "phoneNumber"
invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_113
iget-object v3, v6, Lco/vine/android/api/VinePrivateMessageResponse;->shareUrl:Ljava/lang/String;
if-eqz v3, :cond_113
if-nez v18, :cond_c1
const v3, 0x7f0e0229
move-object/from16 v0, p0
invoke-virtual {v0, v3}, Lco/vine/android/service/VineService;->getString(I)Ljava/lang/String;
move-result-object v18
:cond_c1
if-nez v17, :cond_cc
const v3, 0x7f0e0228
move-object/from16 v0, p0
invoke-virtual {v0, v3}, Lco/vine/android/service/VineService;->getString(I)Ljava/lang/String;
move-result-object v17
:cond_cc
move-object/from16 v0, p3
iget-object v3, v0, Lco/vine/android/api/VineUpload$PostInfo;->message:Ljava/lang/String;
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_dc
move-object/from16 v0, p3
iget v3, v0, Lco/vine/android/api/VineUpload$PostInfo;->maxLoops:I
if-lez v3, :cond_146
:cond_dc
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
iget-object v5, v6, Lco/vine/android/api/VinePrivateMessageResponse;->shareUrl:Ljava/lang/String;
aput-object v5, v3, v4
move-object/from16 v0, v18
invoke-static {v0, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v19
:goto_ea
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, v17
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
const-string v3, "Send SMS to {} with text {}"
iget-object v4, v6, Lco/vine/android/api/VinePrivateMessageResponse;->recipient:Lco/vine/android/api/VineRecipient;
iget-object v4, v4, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;
move-object/from16 v0, v19
invoke-static {v3, v4, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
iget-object v3, v6, Lco/vine/android/api/VinePrivateMessageResponse;->recipient:Lco/vine/android/api/VineRecipient;
iget-object v3, v3, Lco/vine/android/api/VineRecipient;->value:Ljava/lang/String;
move-object/from16 v0, v19
invoke-static {v3, v0}, Lco/vine/android/util/SMSUtil;->sendSMS(Ljava/lang/String;Ljava/lang/String;)Z
:cond_113
iget-object v3, v6, Lco/vine/android/api/VinePrivateMessageResponse;->videoUrl:Ljava/lang/String;
if-eqz v3, :cond_11b
iget-object v0, v6, Lco/vine/android/api/VinePrivateMessageResponse;->videoUrl:Ljava/lang/String;
move-object/from16 v22, v0
:cond_11b
iget-object v3, v6, Lco/vine/android/api/VinePrivateMessageResponse;->thumbnailUrl:Ljava/lang/String;
if-eqz v3, :cond_123
iget-object v0, v6, Lco/vine/android/api/VinePrivateMessageResponse;->thumbnailUrl:Ljava/lang/String;
move-object/from16 v20, v0
:cond_123
iget-wide v10, v14, Lco/vine/android/api/VinePrivateMessage;->conversationRowId:J
move-object/from16 v3, p0
move-object/from16 v4, p1
move-object v5, v2
move-object/from16 v7, p3
invoke-direct/range {v3 .. v11}, Lco/vine/android/service/VineService;->handleSingleVinePrivateMessageResponse(Landroid/content/Context;Lco/vine/android/provider/VineDatabaseHelper;Lco/vine/android/api/VinePrivateMessageResponse;Lco/vine/android/api/VineUpload$PostInfo;JJ)V
iget-object v3, v6, Lco/vine/android/api/VinePrivateMessageResponse;->error:Lco/vine/android/api/VineError;
if-eqz v3, :cond_94
const-string v3, "should_delete_upload"
const/4 v4, 0x1
move-object/from16 v0, p5
invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
goto/16 :goto_94
:cond_13d
const-wide/16 v3, -0x1
iget-wide v10, v14, Lco/vine/android/api/VinePrivateMessage;->conversationRowId:J
invoke-virtual {v2, v3, v4, v10, v11}, Lco/vine/android/provider/VineDatabaseHelper;->deleteConversation(JJ)V
goto/16 :goto_88
:cond_146
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p3
iget-object v4, v0, Lco/vine/android/api/VineUpload$PostInfo;->message:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ": "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v4, v6, Lco/vine/android/api/VinePrivateMessageResponse;->shareUrl:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
goto :goto_ea
:cond_164
const-string v3, "post_url"
move-object/from16 v0, p5
move-object/from16 v1, v22
invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v3, "thumbnail_url"
move-object/from16 v0, p5
move-object/from16 v1, v20
invoke-virtual {v0, v3, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_31
.end method
.method private declared-synchronized init()V
.registers 2
monitor-enter p0
:try_start_1
iget-object v0, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
if-nez v0, :cond_b
invoke-static {p0}, Lco/vine/android/client/VineAPI;->getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;
move-result-object v0
iput-object v0, p0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
:cond_b
iget-object v0, p0, Lco/vine/android/service/VineService;->mMediaUtility:Lco/vine/android/util/MediaUtility;
if-nez v0, :cond_16
new-instance v0, Lco/vine/android/util/MediaUtility;
invoke-direct {v0, p0}, Lco/vine/android/util/MediaUtility;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lco/vine/android/service/VineService;->mMediaUtility:Lco/vine/android/util/MediaUtility;
:cond_16
iget-object v0, p0, Lco/vine/android/service/VineService;->mAmazonBucket:Ljava/lang/String;
if-nez v0, :cond_20
invoke-static {p0}, Lco/vine/android/client/Amazon;->getBucket(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lco/vine/android/service/VineService;->mAmazonBucket:Ljava/lang/String;
:cond_20
:try_end_20
.catchall {:try_start_1 .. :try_end_20} :catchall_22
monitor-exit p0
return-void
:catchall_22
move-exception v0
monitor-exit p0
throw v0
.end method
.method private insertVineMessageBody(Ljava/util/HashMap;Lco/vine/android/api/VineUpload$PostInfo;J)V
.registers 10
const-wide/16 v3, 0x0
if-eqz p2, :cond_5c
iget-object v0, p2, Lco/vine/android/api/VineUpload$PostInfo;->message:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_13
const-string v0, "message"
iget-object v1, p2, Lco/vine/android/api/VineUpload$PostInfo;->message:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_13
iget-wide v0, p2, Lco/vine/android/api/VineUpload$PostInfo;->postId:J
cmp-long v0, v0, v3
if-lez v0, :cond_24
const-string v0, "postId"
iget-wide v1, p2, Lco/vine/android/api/VineUpload$PostInfo;->postId:J
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_24
const-string v0, "created"
iget-wide v1, p2, Lco/vine/android/api/VineUpload$PostInfo;->created:J
invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v1
invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget v0, p2, Lco/vine/android/api/VineUpload$PostInfo;->maxLoops:I
if-lez v0, :cond_45
iget v0, p2, Lco/vine/android/api/VineUpload$PostInfo;->maxLoops:I
const v1, 0x7fffffff
if-ge v0, v1, :cond_45
const-string v0, "maxLoops"
iget v1, p2, Lco/vine/android/api/VineUpload$PostInfo;->maxLoops:I
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_45
iget-object v0, p2, Lco/vine/android/api/VineUpload$PostInfo;->recipients:Ljava/util/ArrayList;
if-eqz v0, :cond_5d
iget-object v0, p2, Lco/vine/android/api/VineUpload$PostInfo;->recipients:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_5d
const-string v0, "to"
iget-object v1, p2, Lco/vine/android/api/VineUpload$PostInfo;->recipients:Ljava/util/ArrayList;
invoke-static {v1}, Lco/vine/android/api/VineUpload$PostInfo;->recipientsToMaps(Ljava/util/ArrayList;)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_5c
:cond_5c
return-void
:cond_5d
cmp-long v0, p3, v3
if-gtz v0, :cond_5c
const-string v0, "VineService"
const-string v1, "VM post failed: The recipients array is empty and no conversation id"
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_5c
.end method
.method private insertVinePostBody(Ljava/util/HashMap;Lco/vine/android/api/VineUpload$PostInfo;)V
.registers 7
if-eqz p2, :cond_5c
iget-object v0, p2, Lco/vine/android/api/VineUpload$PostInfo;->caption:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_5d
const-string v0, "Added description: {}."
iget-object v1, p2, Lco/vine/android/api/VineUpload$PostInfo;->caption:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
const-string v0, "description"
iget-object v1, p2, Lco/vine/android/api/VineUpload$PostInfo;->caption:Ljava/lang/String;
invoke-static {v1}, Lco/vine/android/util/Util;->cleanse(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v0, p2, Lco/vine/android/api/VineUpload$PostInfo;->entities:Ljava/util/ArrayList;
if-eqz v0, :cond_33
iget-object v0, p2, Lco/vine/android/api/VineUpload$PostInfo;->entities:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z
move-result v0
if-nez v0, :cond_33
const-string v0, "entities"
iget-object v1, p2, Lco/vine/android/api/VineUpload$PostInfo;->entities:Ljava/util/ArrayList;
invoke-static {v1}, Lco/vine/android/api/VineUpload$PostInfo;->entitiesToMaps(Ljava/util/ArrayList;)Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_33
:cond_33
iget-wide v0, p2, Lco/vine/android/api/VineUpload$PostInfo;->channelId:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-lez v0, :cond_46
const-string v0, "channelId"
iget-wide v1, p2, Lco/vine/android/api/VineUpload$PostInfo;->channelId:J
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_46
const-string v1, "postToTwitter"
iget-boolean v0, p2, Lco/vine/android/api/VineUpload$PostInfo;->postToTwitter:Z
if-eqz v0, :cond_63
const-string v0, "1"
:goto_4e
invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v1, "postToFacebook"
iget-boolean v0, p2, Lco/vine/android/api/VineUpload$PostInfo;->postToFacebook:Z
if-eqz v0, :cond_66
const-string v0, "1"
:goto_59
invoke-virtual {p1, v1, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_5c
return-void
:cond_5d
const-string v0, "empty description."
invoke-static {v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
goto :goto_33
:cond_63
const-string v0, "0"
goto :goto_4e
:cond_66
const-string v0, "0"
goto :goto_59
.end method
.method private postComment(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lco/vine/android/provider/VineDatabaseHelper;Landroid/os/Bundle;)Lco/vine/android/network/HttpOperation;
.registers 27
move-object/from16 v0, p0
iget-object v12, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v12}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v12
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/4 v14, 0x0
const-string v15, "posts"
aput-object v15, v13, v14
const/4 v14, 0x1
invoke-static/range {p1 .. p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v15
aput-object v15, v13, v14
const/4 v14, 0x2
const-string v15, "comments"
aput-object v15, v13, v14
invoke-static {v12, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v9
new-instance v4, Ljava/util/ArrayList;
invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V
invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_29
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v12
if-eqz v12, :cond_3d
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/api/VineEntity;
invoke-virtual {v2}, Lco/vine/android/api/VineEntity;->toMap()Ljava/util/HashMap;
move-result-object v12
invoke-virtual {v4, v12}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_29
:cond_3d
new-instance v8, Ljava/util/HashMap;
invoke-direct {v8}, Ljava/util/HashMap;-><init>()V
const-string v12, "comment"
move-object/from16 v0, p6
invoke-virtual {v8, v12, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z
move-result v12
if-nez v12, :cond_54
const-string v12, "entities"
invoke-virtual {v8, v12, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_54
const/4 v12, 0x7
invoke-static {v12}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v11
invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;
move-result-object v12
invoke-static {v12}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v12
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-static {v12, v9, v13, v8, v11}, Lco/vine/android/network/HttpOperation;->createBasicAuthJsonPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/HashMap;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v12
invoke-virtual {v12}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v12
if-eqz v12, :cond_e2
invoke-virtual {v11}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v10
check-cast v10, Lco/vine/android/api/VineComment;
move-wide/from16 v0, p1
iput-wide v0, v10, Lco/vine/android/api/VineComment;->postId:J
move-wide/from16 v0, p3
iput-wide v0, v10, Lco/vine/android/api/VineComment;->userId:J
move-object/from16 v0, p5
iput-object v0, v10, Lco/vine/android/api/VineComment;->username:Ljava/lang/String;
move-object/from16 v0, p7
iput-object v0, v10, Lco/vine/android/api/VineComment;->avatarUrl:Ljava/lang/String;
const/4 v5, 0x0
invoke-virtual/range {p8 .. p8}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v3
:goto_8e
invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z
move-result v12
if-eqz v12, :cond_cd
invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Lco/vine/android/api/VineEntity;
iget v12, v2, Lco/vine/android/api/VineEntity;->start:I
sub-int/2addr v12, v5
iput v12, v2, Lco/vine/android/api/VineEntity;->start:I
const-string v12, "tag"
iget-object v13, v2, Lco/vine/android/api/VineEntity;->type:Ljava/lang/String;
invoke-virtual {v12, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v12
if-eqz v12, :cond_c7
add-int/lit8 v5, v5, 0x1
iget-object v12, v2, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;
invoke-static {v12}, Lco/vine/android/api/VineTypeAhead;->getPlainTag(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
iget-object v12, v2, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;
move-object/from16 v0, p6
invoke-virtual {v0, v12, v7}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object p6
iput-object v7, v2, Lco/vine/android/api/VineEntity;->title:Ljava/lang/String;
new-instance v12, Lco/vine/android/api/VineTag;
iget-wide v13, v2, Lco/vine/android/api/VineEntity;->id:J
invoke-direct {v12, v7, v13, v14}, Lco/vine/android/api/VineTag;-><init>(Ljava/lang/String;J)V
move-object/from16 v0, p9
invoke-virtual {v0, v12}, Lco/vine/android/provider/VineDatabaseHelper;->mergeSuggestedTag(Lco/vine/android/api/VineTag;)Landroid/net/Uri;
:cond_c7
iget v12, v2, Lco/vine/android/api/VineEntity;->end:I
sub-int/2addr v12, v5
iput v12, v2, Lco/vine/android/api/VineEntity;->end:I
goto :goto_8e
:cond_cd
move-object/from16 v0, p6
iput-object v0, v10, Lco/vine/android/api/VineComment;->comment:Ljava/lang/String;
move-object/from16 v0, p8
iput-object v0, v10, Lco/vine/android/api/VineComment;->entities:Ljava/util/ArrayList;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v12
iput-wide v12, v10, Lco/vine/android/api/VineComment;->timestamp:J
const-string v12, "comment_obj"
move-object/from16 v0, p10
invoke-virtual {v0, v12, v10}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_e2
return-object v6
.end method
.method private updateBadgeCount(I)V
.registers 11
invoke-virtual {p0}, Lco/vine/android/service/VineService;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v0
:try_start_4
sget-object v1, Lco/vine/android/service/VineService;->SAMSUNG_BADGER_URI:Landroid/net/Uri;
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/String;
const/4 v3, 0x0
const-string v4, "package"
aput-object v4, v2, v3
const/4 v3, 0x1
const-string v4, "badgecount"
aput-object v4, v2, v3
const/4 v3, 0x0
const/4 v4, 0x0
const/4 v5, 0x0
invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v6
if-eqz v6, :cond_4b
new-instance v7, Landroid/content/ContentValues;
invoke-direct {v7}, Landroid/content/ContentValues;-><init>()V
const-string v1, "package"
const-string v2, "co.vine.android"
invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "class"
sget-object v2, Lco/vine/android/service/VineService;->START_CLASS_NAME:Ljava/lang/String;
invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "badgecount"
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v7, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V
invoke-interface {v6}, Landroid/database/Cursor;->getCount()I
move-result v1
if-lez v1, :cond_4c
invoke-virtual {p0}, Lco/vine/android/service/VineService;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
sget-object v2, Lco/vine/android/service/VineService;->SAMSUNG_BADGER_URI:Landroid/net/Uri;
const-string v3, "package=?"
sget-object v4, Lco/vine/android/service/VineService;->BADGER_ARGS:[Ljava/lang/String;
invoke-virtual {v1, v2, v7, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
:goto_4b
:cond_4b
return-void
:cond_4c
invoke-virtual {p0}, Lco/vine/android/service/VineService;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
sget-object v2, Lco/vine/android/service/VineService;->SAMSUNG_BADGER_URI:Landroid/net/Uri;
invoke-virtual {v1, v2, v7}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
:try_end_55
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_55} :catch_56
goto :goto_4b
:catch_56
move-exception v8
const-string v1, "Ignore samsung error."
invoke-static {v1, v8}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_4b
.end method
.method public addCountryParam(Ljava/util/ArrayList;)V
.registers 5
new-instance v0, Lorg/apache/http/message/BasicNameValuePair;
const-string v1, "locale"
invoke-static {}, Lco/vine/android/util/Util;->getCountryCode()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public addCountryParam(Ljava/util/HashMap;)V
.registers 4
const-string v0, "locale"
invoke-static {}, Lco/vine/android/util/Util;->getCountryCode()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
return-void
.end method
.method  attemptStop(I)V
.registers 8
iget-object v3, p0, Lco/vine/android/service/VineService;->mStartIds:Ljava/util/LinkedHashMap;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
const/4 v5, 0x1
invoke-static {v5}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v5
invoke-virtual {v3, v4, v5}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iget-object v3, p0, Lco/vine/android/service/VineService;->mStartIds:Ljava/util/LinkedHashMap;
invoke-virtual {v3}, Ljava/util/LinkedHashMap;->entrySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_18
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_31
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v3
check-cast v3, Ljava/lang/Boolean;
invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z
move-result v3
if-nez v3, :cond_18
:goto_30
return-void
:cond_31
iget-object v3, p0, Lco/vine/android/service/VineService;->mStartIds:Ljava/util/LinkedHashMap;
invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;
move-result-object v3
invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_3b
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v3
if-eqz v3, :cond_4f
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v2
check-cast v2, Ljava/lang/Integer;
invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I
move-result v3
invoke-virtual {p0, v3}, Lco/vine/android/service/VineService;->stopSelf(I)V
goto :goto_3b
:cond_4f
iget-object v3, p0, Lco/vine/android/service/VineService;->mStartIds:Ljava/util/LinkedHashMap;
invoke-virtual {v3}, Ljava/util/LinkedHashMap;->clear()V
goto :goto_30
.end method
.method  executeAction(ILandroid/os/Bundle;)Landroid/os/Bundle;
.registers 285
sget-boolean v6, Lco/vine/android/service/VineService;->LOGGABLE:Z
if-eqz v6, :cond_20
const-string v6, "VineService"
new-instance v13, Ljava/lang/StringBuilder;
invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
const-string v16, "Running VineService action: "
move-object/from16 v0, v16
invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
move/from16 v0, p1
invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-static {v6, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_20
invoke-direct/range {p0 .. p0}, Lco/vine/android/service/VineService;->init()V
const-string v6, "s_key"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v43
const-string v6, "a_name"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v107
const-string v6, "s_owner_id"
const-wide/16 v16, 0x0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v34
invoke-static/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
move-result-object v12
invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;
move-result-object v127
const/16 v245, 0x0
const/16 v221, 0x0
const/16 v202, 0x0
const/16 v148, 0x0
const/16 v29, 0x0
move/from16 v0, p1
sparse-switch v0, :sswitch_data_3c50
:cond_56
:goto_56
new-instance v239, Landroid/os/Bundle;
invoke-direct/range {v239 .. v239}, Landroid/os/Bundle;-><init>()V
if-eqz v202, :cond_3c14
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->getHttpRequest()Lorg/apache/http/client/methods/HttpRequestBase;
move-result-object v231
if-eqz v231, :cond_7a
invoke-virtual/range {v231 .. v231}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z
move-result v6
if-nez v6, :cond_7a
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mHttpRequests:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual/range {v231 .. v231}, Ljava/lang/Object;->hashCode()I
move-result v13
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
move-object/from16 v0, v231
invoke-virtual {v6, v13, v0}, Ljava/util/concurrent/ConcurrentHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:cond_7a
move-object/from16 v0, v202
iget v0, v0, Lco/vine/android/network/HttpOperation;->statusCode:I
move/from16 v245, v0
const-string v6, "statusCode"
move-object/from16 v0, v239
move/from16 v1, v245
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-nez v6, :cond_99
if-eqz v29, :cond_99
if-nez v148, :cond_99
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v148
check-cast v148, Lco/vine/android/api/VineError;
:cond_99
if-eqz v148, :cond_3c2c
move-object/from16 v0, v148
iget-object v0, v0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;
move-object/from16 v221, v0
const-string v6, "reasonPhrase"
move-object/from16 v0, v239
move-object/from16 v1, v221
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v148
iget v0, v0, Lco/vine/android/api/VineError;->errorCode:I
move/from16 v89, v0
sget-object v6, Lco/vine/android/api/VineError$VineKnownErrors;->BAD_CREDENTIALS:Lco/vine/android/api/VineError$VineKnownErrors;
iget v6, v6, Lco/vine/android/api/VineError$VineKnownErrors;->code:I
move/from16 v0, v89
if-eq v0, v6, :cond_c0
sget-object v6, Lco/vine/android/api/VineError$VineKnownErrors;->REQUIRES_LOGIN:Lco/vine/android/api/VineError$VineKnownErrors;
iget v6, v6, Lco/vine/android/api/VineError$VineKnownErrors;->code:I
move/from16 v0, v89
if-ne v0, v6, :cond_3bdd
:cond_c0
const-string v6, "executionCode"
const/4 v13, 0x3
move-object/from16 v0, v239
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:goto_c8
return-object v239
:sswitch_c9
const-string v6, "login"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v5
check-cast v5, Lco/vine/android/api/VineLogin;
const-string v6, "pass"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v209
invoke-static {}, Lco/vine/android/api/VineParserReader;->createLoginReader()Lco/vine/android/api/VineParserReader;
move-result-object v29
new-instance v28, Ljava/util/ArrayList;
invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V
iget-object v6, v5, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;
invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_112
invoke-static/range {v209 .. v209}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_112
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "username"
iget-object v0, v5, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "password"
move-object/from16 v0, v209
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_112
iget-object v6, v5, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;
invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_242
iget-object v6, v5, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;
invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_242
iget-wide v0, v5, Lco/vine/android/api/VineLogin;->twitterUserId:J
move-wide/from16 v16, v0
const-wide/16 v19, 0x0
cmp-long v6, v16, v19
if-lez v6, :cond_242
const/16 v166, 0x1
:goto_12e
if-eqz v166, :cond_16a
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "twitterOauthToken"
iget-object v0, v5, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "twitterOauthSecret"
iget-object v0, v5, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "twitterId"
iget-wide v0, v5, Lco/vine/android/api/VineLogin;->twitterUserId:J
move-wide/from16 v16, v0
invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_16a
const-string v6, "reactivate"
const/4 v13, 0x0
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v6
if-eqz v6, :cond_246
const-string v174, "reactivate"
:goto_177
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
aput-object v174, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v1, v2, v13}, Lco/vine/android/network/HttpOperation;->createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_24a
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v0
move-object/16 v279, v0
move-object/from16 v0, v279
check-cast v0, Lco/vine/android/api/VineLogin;
move-object/16 v279, v0
move-object/from16 v0, v279
iget-object v6, v0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;
move-object/from16 v0, v279
iput-object v6, v0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;
iget-object v6, v5, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;
move-object/from16 v0, v279
iput-object v6, v0, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;
const-string v6, "a_name"
move-object/from16 v0, v279
iget-object v13, v0, Lco/vine/android/api/VineLogin;->name:Ljava/lang/String;
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v6, "login"
move-object/from16 v0, p2
move-object/from16 v1, v279
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
invoke-static/range {v166 .. v166}, Lco/vine/android/util/FlurryUtils;->trackLoginSuccess(Z)V
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
const-string v17, "me"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
move-object/16 v275, v0
const/4 v6, 0x2
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v279
iget-object v0, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v275
move-object/from16 v1, v29
move-object/from16 v2, v16
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v181
check-cast v181, Lco/vine/android/api/VineUser;
const-string v6, "avatar_url"
move-object/from16 v0, v181
iget-object v13, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v6, "desc"
move-object/from16 v0, v181
iget-object v13, v0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_56
:cond_242
const/16 v166, 0x0
goto/16 :goto_12e
:cond_246
const-string v174, "authenticate"
goto/16 :goto_177
:cond_24a
new-instance v239, Landroid/os/Bundle;
invoke-direct/range {v239 .. v239}, Landroid/os/Bundle;-><init>()V
const-string v6, "statusCode"
move-object/from16 v0, v202
iget v13, v0, Lco/vine/android/network/HttpOperation;->statusCode:I
move-object/from16 v0, v239
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
move-object/from16 v0, v202
iget v6, v0, Lco/vine/android/network/HttpOperation;->statusCode:I
move/from16 v0, v166
invoke-static {v0, v6}, Lco/vine/android/util/FlurryUtils;->trackLoginFailure(ZI)V
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v148
check-cast v148, Lco/vine/android/api/VineError;
if-eqz v148, :cond_28b
const-string v6, "reasonPhrase"
move-object/from16 v0, v148
iget-object v13, v0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;
move-object/from16 v0, v239
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v6, "error_code"
move-object/from16 v0, v148
iget v13, v0, Lco/vine/android/api/VineError;->errorCode:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:goto_281
const-string v6, "executionCode"
const/4 v13, 0x1
move-object/from16 v0, v239
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
goto/16 :goto_c8
:cond_28b
const-string v6, "reasonPhrase"
const v13, 0x7f0e00cf
move-object/from16 v0, p0
invoke-virtual {v0, v13}, Lco/vine/android/service/VineService;->getString(I)Ljava/lang/String;
move-result-object v13
move-object/from16 v0, v239
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_281
:sswitch_29c
invoke-virtual {v12}, Lco/vine/android/provider/VineDatabaseHelper;->clearAllData()V
goto/16 :goto_56
:sswitch_2a1
const-string v6, "a_name"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v189
const-string v6, "login"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v143
const-string v6, "pass"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v209
const-string v6, "phone"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v211
const-string v6, "t_user"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v254
check-cast v254, Lco/vine/android/api/TwitterUser;
new-instance v6, Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v13}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v13
invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v13, "/users"
invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x5
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
new-instance v28, Ljava/util/ArrayList;
invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V
if-eqz v254, :cond_49f
const/16 v253, 0x1
:goto_2ec
const-string v6, "key"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v249
const-string v6, "secret"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v240
invoke-static/range {p0 .. p0}, Lco/vine/android/util/CrossAnalytics;->getInstance(Landroid/content/Context;)Lco/vine/android/util/CrossAnalytics;
move-result-object v6
const-string v13, "pre_install_sign up"
invoke-virtual {v6, v13}, Lco/vine/android/util/CrossAnalytics;->get(Ljava/lang/String;)Ljava/lang/String;
move-result-object v217
if-eqz v253, :cond_4a3
move-object/from16 v0, v254
iget-object v6, v0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;
invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_326
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "username"
move-object/from16 v0, v254
iget-object v0, v0, Lco/vine/android/api/TwitterUser;->name:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_326
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "location"
move-object/from16 v0, v254
iget-object v0, v0, Lco/vine/android/api/TwitterUser;->location:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "description"
move-object/from16 v0, v254
iget-object v0, v0, Lco/vine/android/api/TwitterUser;->description:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "twitterId"
move-object/from16 v0, v254
iget-wide v0, v0, Lco/vine/android/api/TwitterUser;->userId:J
move-wide/from16 v16, v0
invoke-static/range {v16 .. v17}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "twitterOauthToken"
move-object/from16 v0, v249
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "twitterOauthSecret"
move-object/from16 v0, v240
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static/range {v211 .. v211}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_396
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "phoneNumber"
move-object/from16 v0, v211
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:goto_396
:cond_396
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "authenticate"
const-string v16, "true"
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
if-eqz v217, :cond_3b6
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "preinstallTarget"
move-object/from16 v0, v217
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_3b6
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v1, v2, v13}, Lco/vine/android/network/HttpOperation;->createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_4eb
invoke-static/range {v253 .. v253}, Lco/vine/android/util/FlurryUtils;->onSignupSuccess(Z)V
if-eqz v217, :cond_3e3
invoke-static/range {v217 .. v217}, Lco/vine/android/util/FlurryUtils;->onSignupWithPreinstallSuccess(Ljava/lang/String;)V
invoke-static/range {p0 .. p0}, Lco/vine/android/util/CrossAnalytics;->getInstance(Landroid/content/Context;)Lco/vine/android/util/CrossAnalytics;
move-result-object v6
const-string v13, "pre_install_sign up"
invoke-virtual {v6, v13}, Lco/vine/android/util/CrossAnalytics;->clear(Ljava/lang/String;)V
:cond_3e3
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v0
move-object/16 v279, v0
move-object/from16 v0, v279
check-cast v0, Lco/vine/android/api/VineLogin;
move-object/16 v279, v0
if-eqz v253, :cond_4e3
move-object/from16 v0, v249
move-object/from16 v1, v279
iput-object v0, v1, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;
move-object/from16 v0, v240
move-object/from16 v1, v279
iput-object v0, v1, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;
move-object/from16 v0, v254
iget-wide v0, v0, Lco/vine/android/api/TwitterUser;->userId:J
move-wide/from16 v16, v0
move-wide/from16 v0, v16
move-object/from16 v2, v279
iput-wide v0, v2, Lco/vine/android/api/VineLogin;->twitterUserId:J
const/4 v6, 0x2
move-object/from16 v0, v279
iput v6, v0, Lco/vine/android/api/VineLogin;->loginType:I
:goto_410
const-string v6, "login"
move-object/from16 v0, p2
move-object/from16 v1, v279
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v6, "a_name"
move-object/from16 v0, p2
move-object/from16 v1, v189
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
const-string v17, "me"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
move-object/16 v275, v0
const/4 v6, 0x2
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v279
iget-object v0, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v275
move-object/from16 v1, v29
move-object/from16 v2, v16
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v181
check-cast v181, Lco/vine/android/api/VineUser;
const-string v6, "avatar_url"
move-object/from16 v0, v181
iget-object v13, v0, Lco/vine/android/api/VineUser;->avatarUrl:Ljava/lang/String;
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v6, "desc"
move-object/from16 v0, v181
iget-object v13, v0, Lco/vine/android/api/VineUser;->description:Ljava/lang/String;
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v6, "s_key"
move-object/from16 v0, v279
iget-object v13, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v6, "s_owner_id"
move-object/from16 v0, v279
iget-wide v0, v0, Lco/vine/android/api/VineLogin;->userId:J
move-wide/from16 v16, v0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
goto/16 :goto_56
:cond_49f
const/16 v253, 0x0
goto/16 :goto_2ec
:cond_4a3
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "username"
move-object/from16 v0, v189
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "email"
move-object/from16 v0, v143
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "password"
move-object/from16 v0, v209
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static/range {v211 .. v211}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_396
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "phoneNumber"
move-object/from16 v0, v211
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto/16 :goto_396
:cond_4e3
move-object/from16 v0, v143
move-object/from16 v1, v279
iput-object v0, v1, Lco/vine/android/api/VineLogin;->username:Ljava/lang/String;
goto/16 :goto_410
:cond_4eb
new-instance v239, Landroid/os/Bundle;
invoke-direct/range {v239 .. v239}, Landroid/os/Bundle;-><init>()V
const-string v6, "statusCode"
move-object/from16 v0, v202
iget v13, v0, Lco/vine/android/network/HttpOperation;->statusCode:I
move-object/from16 v0, v239
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v148
check-cast v148, Lco/vine/android/api/VineError;
move-object/from16 v0, v202
iget v6, v0, Lco/vine/android/network/HttpOperation;->statusCode:I
move/from16 v0, v253
move-object/from16 v1, v148
invoke-static {v0, v1, v6}, Lco/vine/android/util/FlurryUtils;->onSignupFailure(ZLco/vine/android/api/VineError;I)V
if-eqz v148, :cond_523
const-string v6, "reasonPhrase"
move-object/from16 v0, v148
iget-object v13, v0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;
move-object/from16 v0, v239
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:goto_519
const-string v6, "executionCode"
const/4 v13, 0x1
move-object/from16 v0, v239
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
goto/16 :goto_c8
:cond_523
const-string v6, "reasonPhrase"
const v13, 0x7f0e00cf
move-object/from16 v0, p0
invoke-virtual {v0, v13}, Lco/vine/android/service/VineService;->getString(I)Ljava/lang/String;
move-result-object v13
move-object/from16 v0, v239
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_519
:sswitch_534
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v6, "uri"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v116
check-cast v116, Landroid/net/Uri;
const/16 v150, 0x0
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mAmazonBucket:Ljava/lang/String;
if-eqz v6, :cond_5cd
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/service/VineService;->mAmazonBucket:Ljava/lang/String;
move-object/from16 v212, v0
:goto_569
if-eqz v116, :cond_579
:try_start_56b
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mMediaUtility:Lco/vine/android/util/MediaUtility;
move-object/from16 v0, v116
move-object/from16 v1, v212
move-object/from16 v2, v127
invoke-virtual {v6, v0, v1, v2}, Lco/vine/android/util/MediaUtility;->getPhotoUri(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
:try_end_578
.catch Ljava/lang/Exception; {:try_start_56b .. :try_end_578} :catch_5d2
move-result-object v150
:cond_579
if-eqz v116, :cond_5db
invoke-virtual/range {v116 .. v116}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_5db
const-string v151, ""
:goto_587
new-instance v28, Ljava/util/ArrayList;
const/4 v6, 0x1
move-object/from16 v0, v28
invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
if-eqz v116, :cond_59f
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "avatarUrl"
move-object/from16 v0, v151
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_59f
const/4 v6, 0x2
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
if-nez v116, :cond_614
const-string v6, "avatar_url"
const-string v13, ""
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_56
:cond_5cd
invoke-static/range {v127 .. v127}, Lco/vine/android/client/Amazon;->getBucket(Landroid/content/Context;)Ljava/lang/String;
move-result-object v212
goto :goto_569
:catch_5d2
move-exception v139
const/16 v245, 0x384
invoke-virtual/range {v139 .. v139}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v221
goto/16 :goto_56
:cond_5db
invoke-static/range {v127 .. v127}, Lco/vine/android/util/MediaUtility;->getUploadType(Landroid/content/Context;)I
move-result v186
packed-switch v186, :pswitch_data_3e06
move-object/from16 v151, v150
goto :goto_587
:pswitch_5e5
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v13}, Lco/vine/android/client/VineAPI;->getAmazonUrl()Ljava/lang/String;
move-result-object v13
invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v13, "/"
invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object/from16 v0, v212
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v13, "/"
invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object/from16 v0, v150
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v151
goto/16 :goto_587
:cond_614
const-string v6, "avatar_url"
move-object/from16 v0, p2
move-object/from16 v1, v151
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_56
:sswitch_61f
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x4
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "notifications"
aput-object v17, v13, v16
const/16 v16, 0x3
const-string v17, "settings"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v6, "notificationSettings"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getSerializable(Ljava/lang/String;)Ljava/io/Serializable;
move-result-object v208
check-cast v208, Ljava/util/HashMap;
new-instance v206, Ljava/util/ArrayList;
invoke-direct/range {v206 .. v206}, Ljava/util/ArrayList;-><init>()V
invoke-virtual/range {v208 .. v208}, Ljava/util/HashMap;->entrySet()Ljava/util/Set;
move-result-object v6
invoke-interface {v6}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v162
:goto_65f
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_686
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v147
check-cast v147, Ljava/util/Map$Entry;
new-instance v205, Lorg/apache/http/message/BasicNameValuePair;
invoke-interface/range {v147 .. v147}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/String;
invoke-interface/range {v147 .. v147}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v13
check-cast v13, Ljava/lang/String;
move-object/from16 v0, v205
invoke-direct {v0, v6, v13}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v206
move-object/from16 v1, v205
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_65f
:cond_686
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v206
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_6a3
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x4
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "notifications"
aput-object v17, v13, v16
const/16 v16, 0x3
const-string v17, "settings"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/16 v6, 0x1e
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v195
check-cast v195, Lco/vine/android/api/VinePagedData;
const-string v6, "notificationSettings"
move-object/from16 v0, v195
iget-object v13, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
goto/16 :goto_56
:sswitch_6ff
const-string v6, "network"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v191
const-string v6, "recipient"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v222
check-cast v222, Lco/vine/android/api/VineRecipient;
if-nez v222, :cond_71c
new-instance v6, Ljava/lang/IllegalArgumentException;
const-string v13, "You must provide a recipient if you want to get the conversation id for it"
invoke-direct {v6, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v6
:cond_71c
const-wide/16 v67, -0x1
invoke-virtual/range {v222 .. v222}, Lco/vine/android/api/VineRecipient;->isFromUser()Z
move-result v6
if-eqz v6, :cond_7cf
move-object/from16 v0, v222
iget-wide v0, v0, Lco/vine/android/api/VineRecipient;->recipientId:J
move-wide/from16 v16, v0
const-wide/16 v19, 0x0
cmp-long v6, v16, v19
if-gtz v6, :cond_7af
move-object/from16 v0, v222
iget-wide v0, v0, Lco/vine/android/api/VineRecipient;->userId:J
move-wide/from16 v16, v0
move-wide/from16 v0, v16
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getUserRowIdForUserRemoteId(J)J
move-result-wide v16
move-wide/from16 v0, v16
move-object/from16 v2, v222
iput-wide v0, v2, Lco/vine/android/api/VineRecipient;->recipientId:J
:cond_742
:goto_742
move-object/from16 v0, v222
iget-wide v0, v0, Lco/vine/android/api/VineRecipient;->userId:J
move-wide/from16 v16, v0
move-wide/from16 v0, v16
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->determineBestConversationRowIdForUserRemoteId(J)J
move-result-wide v67
:goto_74e
const-wide/16 v16, 0x0
cmp-long v6, v67, v16
if-gtz v6, :cond_768
new-instance v223, Ljava/util/ArrayList;
invoke-direct/range {v223 .. v223}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, v223
move-object/from16 v1, v222
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, v223
move/from16 v1, v191
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->createPreMergeConversationIdAndRecipientsIfNecessary(Ljava/util/List;I)J
move-result-wide v67
:cond_768
move-object/from16 v0, v222
iget-object v6, v0, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;
invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_782
move-object/from16 v0, v222
iget-wide v0, v0, Lco/vine/android/api/VineRecipient;->recipientId:J
move-wide/from16 v16, v0
move-wide/from16 v0, v16
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getDisplayForUser(J)Ljava/lang/String;
move-result-object v6
move-object/from16 v0, v222
iput-object v6, v0, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;
:cond_782
move-object/from16 v0, v222
iget-wide v0, v0, Lco/vine/android/api/VineRecipient;->recipientId:J
move-wide/from16 v16, v0
move-wide/from16 v0, v16
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->amFollowingUser(J)Z
move-result v113
const-string v6, "conversation_row_id"
move-object/from16 v0, p2
move-wide/from16 v1, v67
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v6, "am_following"
move-object/from16 v0, p2
move/from16 v1, v113
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v6, "username"
move-object/from16 v0, v222
iget-object v13, v0, Lco/vine/android/api/VineRecipient;->display:Ljava/lang/String;
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v239, p2
goto/16 :goto_c8
:cond_7af
move-object/from16 v0, v222
iget-wide v0, v0, Lco/vine/android/api/VineRecipient;->userId:J
move-wide/from16 v16, v0
const-wide/16 v19, 0x0
cmp-long v6, v16, v19
if-gez v6, :cond_742
move-object/from16 v0, v222
iget-wide v0, v0, Lco/vine/android/api/VineRecipient;->recipientId:J
move-wide/from16 v16, v0
move-wide/from16 v0, v16
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getUserRemoteIdForUserRowId(J)J
move-result-wide v16
move-wide/from16 v0, v16
move-object/from16 v2, v222
iput-wide v0, v2, Lco/vine/android/api/VineRecipient;->userId:J
goto/16 :goto_742
:cond_7cf
new-instance v223, Ljava/util/ArrayList;
invoke-direct/range {v223 .. v223}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, v223
move-object/from16 v1, v222
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, v223
move/from16 v1, v191
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->determineOrCreateBestConversationRowIdForRecipients(Ljava/util/List;I)J
move-result-wide v67
goto/16 :goto_74e
:sswitch_7e5
new-instance v28, Ljava/util/ArrayList;
invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "includePromoted"
const-string v16, "should_follow_editors_picks"
move-object/from16 v0, p2
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v16
invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "preferences"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
const-string v6, "should_follow_editors_picks"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v6
const/4 v13, 0x1
if-ne v6, v13, :cond_866
const/16 v242, 0x1
:goto_851
const-string v6, "should_follow_editors_picks"
move-object/from16 v0, p2
move/from16 v1, v242
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
if-nez v242, :cond_56
const-string v6, "also_fetch_posts"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
goto/16 :goto_56
:cond_866
const/16 v242, 0x0
goto :goto_851
:sswitch_869
const-string v6, "type"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v255
move/from16 v0, v255
invoke-virtual {v12, v0}, Lco/vine/android/provider/VineDatabaseHelper;->expireTimeline(I)V
goto/16 :goto_56
:sswitch_878
move-object/from16 v0, v127
move-object/from16 v1, v107
invoke-static {v0, v1}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
move-result-object v106
if-nez v106, :cond_892
const-string v6, "email"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
move-object/from16 v0, v127
invoke-static {v0, v6}, Lco/vine/android/client/VineAccountHelper;->getAccount(Landroid/content/Context;Ljava/lang/String;)Landroid/accounts/Account;
move-result-object v106
if-eqz v106, :cond_56
:cond_892
invoke-static/range {v127 .. v127}, Landroid/accounts/AccountManager;->get(Landroid/content/Context;)Landroid/accounts/AccountManager;
move-result-object v112
move-object/from16 v0, v112
move-object/from16 v1, v106
invoke-static {v0, v1}, Lco/vine/android/client/VineAccountHelper;->getLoginType(Landroid/accounts/AccountManager;Landroid/accounts/Account;)I
move-result v178
packed-switch v178, :pswitch_data_3e0c
goto/16 :goto_56
:pswitch_8a3
move-object/from16 v0, v106
iget-object v0, v0, Landroid/accounts/Account;->name:Ljava/lang/String;
move-object/from16 v143, v0
move-object/from16 v0, v112
move-object/from16 v1, v106
invoke-static {v0, v1}, Lco/vine/android/client/VineAccountHelper;->getPassword(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;
move-result-object v209
invoke-static {}, Lco/vine/android/api/VineParserReader;->createLoginReader()Lco/vine/android/api/VineParserReader;
move-result-object v29
new-instance v28, Ljava/util/ArrayList;
invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "username"
move-object/from16 v0, v143
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "password"
move-object/from16 v0, v209
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Ljava/lang/StringBuilder;
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v13}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v13
invoke-direct {v6, v13}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const-string v13, "/users/authenticate"
invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v1, v2, v13}, Lco/vine/android/network/HttpOperation;->createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v0
move-object/16 v279, v0
move-object/from16 v0, v279
check-cast v0, Lco/vine/android/api/VineLogin;
move-object/16 v279, v0
move-object/from16 v0, v279
iget-object v6, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;
move-object/from16 v0, v112
move-object/from16 v1, v106
invoke-static {v0, v1, v6}, Lco/vine/android/client/VineAccountHelper;->setSessionKey(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V
const-string v6, "s_key"
move-object/from16 v0, v279
iget-object v13, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-static/range {v127 .. v127}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;
move-result-object v6
move-object/from16 v0, v279
iget-object v13, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;
invoke-virtual {v6, v13}, Lco/vine/android/client/AppController;->setSessionKey(Ljava/lang/String;)V
goto/16 :goto_56
:pswitch_936
move-object/from16 v0, v112
move-object/from16 v1, v106
invoke-static {v0, v1}, Lco/vine/android/client/VineAccountHelper;->getTwitterToken(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;
move-result-object v249
move-object/from16 v0, v112
move-object/from16 v1, v106
invoke-static {v0, v1}, Lco/vine/android/client/VineAccountHelper;->getTwitterSecret(Landroid/accounts/AccountManager;Landroid/accounts/Account;)Ljava/lang/String;
move-result-object v240
invoke-static {}, Lco/vine/android/api/VineParserReader;->createLoginReader()Lco/vine/android/api/VineParserReader;
move-result-object v29
new-instance v28, Ljava/util/ArrayList;
invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "twitterOauthToken"
move-object/from16 v0, v249
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "twitterOauthSecret"
move-object/from16 v0, v240
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const-string v6, "reactivate"
const/4 v13, 0x0
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v6
if-eqz v6, :cond_9e4
const-string v210, "reactivate"
:goto_978
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
aput-object v210, v13, v16
const/16 v16, 0x2
const-string v17, "twitter"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v1, v2, v13}, Lco/vine/android/network/HttpOperation;->createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v0
move-object/16 v279, v0
move-object/from16 v0, v279
check-cast v0, Lco/vine/android/api/VineLogin;
move-object/16 v279, v0
move-object/from16 v0, v279
iget-object v6, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;
move-object/from16 v0, v112
move-object/from16 v1, v106
invoke-static {v0, v1, v6}, Lco/vine/android/client/VineAccountHelper;->setSessionKey(Landroid/accounts/AccountManager;Landroid/accounts/Account;Ljava/lang/String;)V
const-string v6, "s_key"
move-object/from16 v0, v279
iget-object v13, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
invoke-static/range {v127 .. v127}, Lco/vine/android/client/AppController;->getInstance(Landroid/content/Context;)Lco/vine/android/client/AppController;
move-result-object v6
move-object/from16 v0, v279
iget-object v13, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;
invoke-virtual {v6, v13}, Lco/vine/android/client/AppController;->setSessionKey(Ljava/lang/String;)V
goto/16 :goto_56
:cond_9e4
const-string v210, "authenticate"
goto :goto_978
:sswitch_9e7
const-string v6, "key"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
const-string v6, "secret"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
const-string v6, "uri"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v121
new-instance v6, Lorg/scribe/builder/ServiceBuilder;
invoke-direct {v6}, Lorg/scribe/builder/ServiceBuilder;-><init>()V
const-class v13, Lorg/scribe/builder/api/TwitterApi;
invoke-virtual {v6, v13}, Lorg/scribe/builder/ServiceBuilder;->provider(Ljava/lang/Class;)Lorg/scribe/builder/ServiceBuilder;
move-result-object v6
invoke-virtual {v6, v8}, Lorg/scribe/builder/ServiceBuilder;->apiKey(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
move-result-object v6
invoke-virtual {v6, v9}, Lorg/scribe/builder/ServiceBuilder;->apiSecret(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
move-result-object v6
move-object/from16 v0, v121
invoke-virtual {v6, v0}, Lorg/scribe/builder/ServiceBuilder;->callback(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
move-result-object v6
invoke-virtual {v6}, Lorg/scribe/builder/ServiceBuilder;->build()Lorg/scribe/oauth/OAuthService;
move-result-object v241
invoke-interface/range {v241 .. v241}, Lorg/scribe/oauth/OAuthService;->getRequestToken()Lorg/scribe/model/Token;
move-result-object v249
move-object/from16 v0, v241
move-object/from16 v1, v249
invoke-interface {v0, v1}, Lorg/scribe/oauth/OAuthService;->getAuthorizationUrl(Lorg/scribe/model/Token;)Ljava/lang/String;
move-result-object v115
const-string v6, "load_url"
move-object/from16 v0, p2
move-object/from16 v1, v115
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_56
:sswitch_a33
const-string v6, "username"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
const-string v6, "key"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
const-string v6, "secret"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
const-string v6, "t_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v10
invoke-static {v8}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_56
invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_56
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v123
const-string v6, "reactivate"
const/4 v13, 0x0
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v6
if-eqz v6, :cond_b63
const-string v210, "reactivate"
:goto_a70
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
aput-object v210, v13, v16
const/16 v16, 0x2
const-string v17, "twitter"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
new-instance v28, Ljava/util/ArrayList;
const/4 v6, 0x2
move-object/from16 v0, v28
invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "twitterOauthToken"
invoke-direct {v6, v13, v8}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "twitterOauthSecret"
invoke-direct {v6, v13, v9}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v6, 0x5
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v123
move-object/from16 v1, v26
move-object/from16 v2, v28
move-object/from16 v3, v29
invoke-static {v0, v1, v2, v3, v6}, Lco/vine/android/network/HttpOperation;->createPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_b67
const-string v6, "a_exists"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v0
move-object/16 v279, v0
move-object/from16 v0, v279
check-cast v0, Lco/vine/android/api/VineLogin;
move-object/16 v279, v0
move-object/from16 v0, v279
iput-object v7, v0, Lco/vine/android/api/VineLogin;->twitterUsername:Ljava/lang/String;
move-object/from16 v0, v279
iput-object v8, v0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;
move-object/from16 v0, v279
iput-object v9, v0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;
move-object/from16 v0, v279
iput-wide v10, v0, Lco/vine/android/api/VineLogin;->twitterUserId:J
const/4 v6, 0x2
move-object/from16 v0, v279
iput v6, v0, Lco/vine/android/api/VineLogin;->loginType:I
const-string v6, "login"
move-object/from16 v0, p2
move-object/from16 v1, v279
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v13}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v13
invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v13, "/users/me"
invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
move-object/16 v274, v0
const/4 v6, 0x2
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
new-instance v6, Ljava/lang/StringBuilder;
move-object/from16 v0, v274
invoke-direct {v6, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v279
iget-object v0, v0, Lco/vine/android/api/VineLogin;->key:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v123
move-object/from16 v1, v29
move-object/from16 v2, v16
invoke-static {v0, v6, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v0
move-object/16 v261, v0
move-object/from16 v0, v261
check-cast v0, Lco/vine/android/api/VineUser;
move-object/16 v261, v0
const-string v6, "user"
move-object/from16 v0, p2
move-object/from16 v1, v261
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
goto/16 :goto_56
:cond_b63
const-string v210, "authenticate"
goto/16 :goto_a70
:cond_b67
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v148
check-cast v148, Lco/vine/android/api/VineError;
if-nez v148, :cond_b7a
const v6, 0x7f0e00cb
move-object/from16 v0, p0
invoke-virtual {v0, v6}, Lco/vine/android/service/VineService;->getString(I)Ljava/lang/String;
move-result-object v221
goto/16 :goto_56
:cond_b7a
const-string v6, "Got error: {} {}"
move-object/from16 v0, v148
iget v13, v0, Lco/vine/android/api/VineError;->errorCode:I
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
move-object/from16 v0, v148
iget-object v0, v0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v16
invoke-static {v6, v13, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
move-object/from16 v0, v148
iget v0, v0, Lco/vine/android/api/VineError;->errorCode:I
move/from16 v125, v0
sget-object v6, Lco/vine/android/api/VineError$VineKnownErrors;->BAD_CREDENTIALS:Lco/vine/android/api/VineError$VineKnownErrors;
iget v6, v6, Lco/vine/android/api/VineError$VineKnownErrors;->code:I
move/from16 v0, v125
if-eq v6, v0, :cond_bad
sget-object v6, Lco/vine/android/api/VineError$VineKnownErrors;->RECORD_DOES_NOT_EXIST:Lco/vine/android/api/VineError$VineKnownErrors;
iget v6, v6, Lco/vine/android/api/VineError$VineKnownErrors;->code:I
move/from16 v0, v125
if-eq v6, v0, :cond_bad
sget-object v6, Lco/vine/android/api/VineError$VineKnownErrors;->ACCOUNT_DEACTIVATED:Lco/vine/android/api/VineError$VineKnownErrors;
iget v6, v6, Lco/vine/android/api/VineError$VineKnownErrors;->code:I
move/from16 v0, v125
if-ne v6, v0, :cond_bd0
:cond_bad
new-instance v5, Lco/vine/android/api/VineLogin;
const/4 v6, 0x0
const/4 v12, 0x0
invoke-direct/range {v5 .. v12}, Lco/vine/android/api/VineLogin;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
const-string v6, "login"
move-object/from16 v0, p2
invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v6, "a_exists"
const/4 v13, 0x0
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v6, "error_code"
move-object/from16 v0, v148
iget v13, v0, Lco/vine/android/api/VineError;->errorCode:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
goto/16 :goto_56
:cond_bd0
move-object/from16 v0, v148
iget-object v0, v0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;
move-object/from16 v221, v0
goto/16 :goto_56
:sswitch_bd8
const-string v6, "login"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
move-object/16 v276, v0
move-object/from16 v0, v276
check-cast v0, Lco/vine/android/api/VineLogin;
move-object/16 v276, v0
new-instance v6, Lorg/scribe/builder/ServiceBuilder;
invoke-direct {v6}, Lorg/scribe/builder/ServiceBuilder;-><init>()V
const-class v13, Lorg/scribe/builder/api/TwitterApi;
invoke-virtual {v6, v13}, Lorg/scribe/builder/ServiceBuilder;->provider(Ljava/lang/Class;)Lorg/scribe/builder/ServiceBuilder;
move-result-object v6
sget-object v13, Lco/vine/android/client/TwitterVineApp;->API_KEY:Ljava/lang/String;
invoke-virtual {v6, v13}, Lorg/scribe/builder/ServiceBuilder;->apiKey(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
move-result-object v6
sget-object v13, Lco/vine/android/client/TwitterVineApp;->API_SECRET:Ljava/lang/String;
invoke-virtual {v6, v13}, Lorg/scribe/builder/ServiceBuilder;->apiSecret(Ljava/lang/String;)Lorg/scribe/builder/ServiceBuilder;
move-result-object v6
invoke-virtual {v6}, Lorg/scribe/builder/ServiceBuilder;->build()Lorg/scribe/oauth/OAuthService;
move-result-object v241
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v13}, Lco/vine/android/client/VineAPI;->getTwitterUrl()Ljava/lang/String;
move-result-object v13
invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v13, "/users/show.json?id="
invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object/from16 v0, v276
iget-wide v0, v0, Lco/vine/android/api/VineLogin;->twitterUserId:J
move-wide/from16 v16, v0
move-wide/from16 v0, v16
invoke-virtual {v6, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
new-instance v231, Lorg/scribe/model/OAuthRequest;
sget-object v6, Lorg/scribe/model/Verb;->GET:Lorg/scribe/model/Verb;
move-object/from16 v0, v231
move-object/from16 v1, v26
invoke-direct {v0, v6, v1}, Lorg/scribe/model/OAuthRequest;-><init>(Lorg/scribe/model/Verb;Ljava/lang/String;)V
new-instance v249, Lorg/scribe/model/Token;
move-object/from16 v0, v276
iget-object v6, v0, Lco/vine/android/api/VineLogin;->twitterToken:Ljava/lang/String;
move-object/from16 v0, v276
iget-object v13, v0, Lco/vine/android/api/VineLogin;->twitterSecret:Ljava/lang/String;
move-object/from16 v0, v249
invoke-direct {v0, v6, v13}, Lorg/scribe/model/Token;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v241
move-object/from16 v1, v249
move-object/from16 v2, v231
invoke-interface {v0, v1, v2}, Lorg/scribe/oauth/OAuthService;->signRequest(Lorg/scribe/model/Token;Lorg/scribe/model/OAuthRequest;)V
:try_start_c4f
invoke-virtual/range {v231 .. v231}, Lorg/scribe/model/OAuthRequest;->send()Lorg/scribe/model/Response;
move-result-object v235
invoke-virtual/range {v235 .. v235}, Lorg/scribe/model/Response;->isSuccessful()Z
:try_end_c56
.catch Lorg/scribe/exceptions/OAuthException; {:try_start_c4f .. :try_end_c56} :catch_c86
move-result v6
if-eqz v6, :cond_56
:try_start_c59
new-instance v6, Lcom/fasterxml/jackson/core/JsonFactory;
invoke-direct {v6}, Lcom/fasterxml/jackson/core/JsonFactory;-><init>()V
invoke-virtual/range {v235 .. v235}, Lorg/scribe/model/Response;->getBody()Ljava/lang/String;
move-result-object v13
invoke-virtual {v6, v13}, Lcom/fasterxml/jackson/core/JsonFactory;->createJsonParser(Ljava/lang/String;)Lcom/fasterxml/jackson/core/JsonParser;
move-result-object v203
invoke-virtual/range {v203 .. v203}, Lcom/fasterxml/jackson/core/JsonParser;->nextToken()Lcom/fasterxml/jackson/core/JsonToken;
invoke-static/range {v203 .. v203}, Lco/vine/android/api/VineParsers;->parseTwitterUser(Lcom/fasterxml/jackson/core/JsonParser;)Lco/vine/android/api/TwitterUser;
move-result-object v247
const-string v6, "t_user"
move-object/from16 v0, p2
move-object/from16 v1, v247
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:try_end_c76
.catch Ljava/io/IOException; {:try_start_c59 .. :try_end_c76} :catch_c78
.catch Lorg/scribe/exceptions/OAuthException; {:try_start_c59 .. :try_end_c76} :catch_c86
goto/16 :goto_56
:catch_c78
move-exception v139
:try_start_c79
sget-boolean v6, Lco/vine/android/service/VineService;->LOGGABLE:Z
if-eqz v6, :cond_56
const-string v6, "Failed to parse."
move-object/from16 v0, v139
invoke-static {v6, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_c84
.catch Lorg/scribe/exceptions/OAuthException; {:try_start_c79 .. :try_end_c84} :catch_c86
goto/16 :goto_56
:catch_c86
move-exception v200
const-string v6, "Failed to connect."
move-object/from16 v0, v200
invoke-static {v6, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_56
:sswitch_c90
const-string v6, "conversation_row_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v67
move-wide/from16 v0, v67
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getMessagesForConversationRowId(J)Landroid/database/Cursor;
move-result-object v119
if-eqz v119, :cond_56
:goto_ca0
:try_start_ca0
invoke-interface/range {v119 .. v119}, Landroid/database/Cursor;->moveToNext()Z
move-result v6
if-eqz v6, :cond_cef
new-instance v64, Lco/vine/android/api/VinePrivateMessage;
move-object/from16 v0, v64
move-object/from16 v1, v119
invoke-direct {v0, v1}, Lco/vine/android/api/VinePrivateMessage;-><init>(Landroid/database/Cursor;)V
move-object/from16 v0, v64
iget-object v13, v0, Lco/vine/android/api/VinePrivateMessage;->uploadPath:Ljava/lang/String;
const/4 v14, 0x1
move-object/from16 v0, v64
iget-wide v15, v0, Lco/vine/android/api/VinePrivateMessage;->messageRowId:J
move-object/from16 v0, v64
iget-wide v0, v0, Lco/vine/android/api/VinePrivateMessage;->conversationRowId:J
move-wide/from16 v17, v0
const/16 v19, 0x0
move-object/from16 v0, v64
iget-object v0, v0, Lco/vine/android/api/VinePrivateMessage;->message:Ljava/lang/String;
move-object/from16 v20, v0
move-object/from16 v0, v64
iget-wide v0, v0, Lco/vine/android/api/VinePrivateMessage;->postId:J
move-wide/from16 v21, v0
move-object/from16 v0, v64
iget-object v0, v0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
move-object/from16 v23, v0
move-object/from16 v0, v64
iget-object v0, v0, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;
move-object/from16 v24, v0
move-object/from16 v0, v64
iget v0, v0, Lco/vine/android/api/VinePrivateMessage;->maxLoops:I
move/from16 v25, v0
move-object/from16 v12, p0
invoke-static/range {v12 .. v25}, Lco/vine/android/service/VineUploadService;->getVMPostIntent(Landroid/content/Context;Ljava/lang/String;ZJJLjava/util/ArrayList;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;I)Landroid/content/Intent;
move-result-object v6
move-object/from16 v0, p0
invoke-virtual {v0, v6}, Lco/vine/android/service/VineService;->startService(Landroid/content/Intent;)Landroid/content/ComponentName;
:try_end_ce9
.catchall {:try_start_ca0 .. :try_end_ce9} :catchall_cea
goto :goto_ca0
:catchall_cea
move-exception v6
invoke-interface/range {v119 .. v119}, Landroid/database/Cursor;->close()V
throw v6
:cond_cef
invoke-interface/range {v119 .. v119}, Landroid/database/Cursor;->close()V
goto/16 :goto_56
:sswitch_cf4
const-string v6, "username"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
const-string v6, "pass"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v209
new-instance v118, Ltwitter4j/conf/ConfigurationBuilder;
invoke-direct/range {v118 .. v118}, Ltwitter4j/conf/ConfigurationBuilder;-><init>()V
sget-object v6, Lco/vine/android/client/TwitterVineApp;->API_KEY:Ljava/lang/String;
move-object/from16 v0, v118
invoke-virtual {v0, v6}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerKey(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
sget-object v6, Lco/vine/android/client/TwitterVineApp;->API_SECRET:Ljava/lang/String;
move-object/from16 v0, v118
invoke-virtual {v0, v6}, Ltwitter4j/conf/ConfigurationBuilder;->setOAuthConsumerSecret(Ljava/lang/String;)Ltwitter4j/conf/ConfigurationBuilder;
new-instance v6, Ltwitter4j/VineTwitterFactory;
invoke-virtual/range {v118 .. v118}, Ltwitter4j/conf/ConfigurationBuilder;->build()Ltwitter4j/conf/Configuration;
move-result-object v13
invoke-direct {v6, v13}, Ltwitter4j/VineTwitterFactory;-><init>(Ltwitter4j/conf/Configuration;)V
new-instance v13, Ltwitter4j/auth/BasicAuthorization;
move-object/from16 v0, v209
invoke-direct {v13, v7, v0}, Ltwitter4j/auth/BasicAuthorization;-><init>(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v6, v13}, Ltwitter4j/VineTwitterFactory;->getInstance(Ltwitter4j/auth/Authorization;)Ltwitter4j/Twitter;
move-result-object v250
:try_start_d2b
invoke-interface/range {v250 .. v250}, Ltwitter4j/Twitter;->getOAuthAccessToken()Ltwitter4j/auth/AccessToken;
move-result-object v103
new-instance v5, Lco/vine/android/api/VineLogin;
const/4 v13, 0x0
invoke-virtual/range {v103 .. v103}, Ltwitter4j/auth/AccessToken;->getScreenName()Ljava/lang/String;
move-result-object v14
invoke-virtual/range {v103 .. v103}, Ltwitter4j/auth/AccessToken;->getToken()Ljava/lang/String;
move-result-object v15
invoke-virtual/range {v103 .. v103}, Ltwitter4j/auth/AccessToken;->getTokenSecret()Ljava/lang/String;
move-result-object v16
invoke-virtual/range {v103 .. v103}, Ltwitter4j/auth/AccessToken;->getUserId()J
move-result-wide v17
const/16 v19, 0x0
move-object v12, v5
invoke-direct/range {v12 .. v19}, Lco/vine/android/api/VineLogin;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;)V
const-string v6, "login"
move-object/from16 v0, p2
invoke-virtual {v0, v6, v5}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:try_end_d4f
.catchall {:try_start_d2b .. :try_end_d4f} :catchall_dab
.catch Ltwitter4j/TwitterException; {:try_start_d2b .. :try_end_d4f} :catch_d5b
const/16 v245, 0xc8
const-string v6, "pass"
const/4 v13, 0x0
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_56
:catch_d5b
move-exception v139
:try_start_d5c
invoke-virtual/range {v127 .. v127}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v232
invoke-virtual/range {v139 .. v139}, Ltwitter4j/TwitterException;->getStatusCode()I
move-result v6
const/16 v13, 0x191
if-ne v6, v13, :cond_d8d
const/16 v245, 0x191
invoke-static/range {v139 .. v139}, Lco/vine/android/util/Util;->isXauth2FactorError(Ltwitter4j/TwitterException;)Z
move-result v6
if-eqz v6, :cond_d83
const v6, 0x7f0e00c7
move-object/from16 v0, v232
invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
:try_end_d78
.catchall {:try_start_d5c .. :try_end_d78} :catchall_dab
move-result-object v221
:goto_d79
const-string v6, "pass"
const/4 v13, 0x0
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_56
:cond_d83
const v6, 0x7f0e00c9
:try_start_d86
move-object/from16 v0, v232
invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v221
goto :goto_d79
:cond_d8d
invoke-virtual/range {v139 .. v139}, Ltwitter4j/TwitterException;->isCausedByNetworkIssue()Z
move-result v6
if-eqz v6, :cond_d9f
const/16 v245, 0x1f4
const v6, 0x7f0e00c8
move-object/from16 v0, v232
invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v221
goto :goto_d79
:cond_d9f
const/16 v245, 0x1f4
const v6, 0x7f0e00d0
move-object/from16 v0, v232
invoke-virtual {v0, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
:try_end_da9
.catchall {:try_start_d86 .. :try_end_da9} :catchall_dab
move-result-object v221
goto :goto_d79
:catchall_dab
move-exception v6
const-string v13, "pass"
const/16 v16, 0x0
move-object/from16 v0, p2
move-object/from16 v1, v16
invoke-virtual {v0, v13, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
throw v6
:sswitch_db8
invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackResetPassword()V
const-string v6, "login"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v143
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
const-string v17, "forgotPassword"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v6, "email"
move-object/from16 v0, v26
move-object/from16 v1, v143
invoke-static {v0, v6, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v1, v13}, Lco/vine/android/network/HttpOperation;->createGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_e02
const-string v6, "post_id"
const-wide/16 v16, 0x0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v14
const-string v6, "page"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v204
const-string v6, "time"
const-wide/16 v16, 0x0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v60
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "posts"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "likes"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v6, "page"
move-object/from16 v0, v26
move/from16 v1, v204
invoke-static {v0, v6, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const-wide/16 v16, 0x0
cmp-long v6, v60, v16
if-lez v6, :cond_e5e
const-string v6, "anchor"
move-object/from16 v0, v26
move-wide/from16 v1, v60
invoke-static {v0, v6, v1, v2}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
:cond_e5e
const-string v6, "size"
const/16 v13, 0x14
move-object/from16 v0, v26
invoke-static {v0, v6, v13}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const/16 v6, 0xb
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v177
check-cast v177, Lco/vine/android/api/VinePagedData;
move-object/from16 v0, v177
iget-object v13, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v0, v177
iget v0, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
move/from16 v16, v0
move-object/from16 v0, v177
iget v0, v0, Lco/vine/android/api/VinePagedData;->previousPage:I
move/from16 v17, v0
invoke-virtual/range {v12 .. v17}, Lco/vine/android/provider/VineDatabaseHelper;->mergeLikes(Ljava/util/Collection;JII)I
const-string v6, "count"
move-object/from16 v0, v177
iget v13, v0, Lco/vine/android/api/VinePagedData;->count:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "next_page"
move-object/from16 v0, v177
iget v13, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "previous_page"
move-object/from16 v0, v177
iget v13, v0, Lco/vine/android/api/VinePagedData;->previousPage:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "time"
move-object/from16 v0, v177
iget-wide v0, v0, Lco/vine/android/api/VinePagedData;->anchor:J
move-wide/from16 v16, v0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
new-instance v24, Ljava/util/ArrayList;
invoke-direct/range {v24 .. v24}, Ljava/util/ArrayList;-><init>()V
move-object/from16 v0, v177
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v162
:goto_edd
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_ef3
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v175
check-cast v175, Lco/vine/android/api/VineLike;
move-object/from16 v0, v175
iget-object v6, v0, Lco/vine/android/api/VineLike;->user:Lco/vine/android/api/VineUser;
move-object/from16 v0, v24
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_edd
:cond_ef3
const-string v6, "users"
move-object/from16 v0, p2
move-object/from16 v1, v24
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
move-object/from16 v0, v177
iget v6, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
if-gtz v6, :cond_56
const/4 v6, 0x5
invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v13
invoke-virtual {v12, v6, v13}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;)V
goto/16 :goto_56
:sswitch_f0c
const/16 v18, 0x2
const-string v233, "followers"
const/16 v6, 0x17
move/from16 v0, p1
if-ne v0, v6, :cond_f1a
const/16 v18, 0x1
const-string v233, "following"
:cond_f1a
const-string v6, "profile_id"
const-wide/16 v16, 0x0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v10
const-string v6, "page"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v204
const-string v6, "time"
const-wide/16 v16, 0x0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v60
const-wide/16 v16, 0x0
cmp-long v6, v10, v16
if-lez v6, :cond_56
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
aput-object v233, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v6, "page"
move-object/from16 v0, v26
move/from16 v1, v204
invoke-static {v0, v6, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const-wide/16 v16, 0x0
cmp-long v6, v60, v16
if-lez v6, :cond_f7a
const-string v6, "anchor"
move-object/from16 v0, v26
move-wide/from16 v1, v60
invoke-static {v0, v6, v1, v2}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
:cond_f7a
const-string v6, "size"
const/16 v13, 0xa
move-object/from16 v0, v26
invoke-static {v0, v6, v13}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const/4 v6, 0x3
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v0
move-object/16 v273, v0
move-object/from16 v0, v273
check-cast v0, Lco/vine/android/api/VinePagedData;
move-object/16 v273, v0
move-object/from16 v0, v273
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
if-eqz v6, :cond_104f
new-instance v22, Lco/vine/android/util/LongSparseArray;
move-object/from16 v0, v273
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v6
move-object/from16 v0, v22
invoke-direct {v0, v6}, Lco/vine/android/util/LongSparseArray;-><init>(I)V
move-object/from16 v0, v273
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v162
:goto_fcd
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_ff9
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
move-object/16 v256, v0
move-object/from16 v0, v256
check-cast v0, Lco/vine/android/api/VineUser;
move-object/16 v256, v0
move-object/from16 v0, v256
iget-wide v0, v0, Lco/vine/android/api/VineUser;->userId:J
move-wide/from16 v16, v0
move-object/from16 v0, v256
iget-wide v0, v0, Lco/vine/android/api/VineUser;->orderId:J
move-wide/from16 v19, v0
invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
move-object/from16 v0, v22
move-wide/from16 v1, v16
invoke-virtual {v0, v1, v2, v6}, Lco/vine/android/util/LongSparseArray;->put(JLjava/lang/Object;)V
goto :goto_fcd
:cond_ff9
move-object/from16 v0, v273
iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v17, v0
invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v273
iget v0, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
move/from16 v20, v0
move-object/from16 v0, v273
iget v0, v0, Lco/vine/android/api/VinePagedData;->previousPage:I
move/from16 v21, v0
move-object/from16 v16, v12
invoke-virtual/range {v16 .. v22}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILco/vine/android/util/LongSparseArray;)I
const-string v6, "count"
move-object/from16 v0, v273
iget v13, v0, Lco/vine/android/api/VinePagedData;->count:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "next_page"
move-object/from16 v0, v273
iget v13, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "previous_page"
move-object/from16 v0, v273
iget v13, v0, Lco/vine/android/api/VinePagedData;->previousPage:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "time"
move-object/from16 v0, v273
iget-wide v0, v0, Lco/vine/android/api/VinePagedData;->anchor:J
move-wide/from16 v16, v0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v6, "users"
move-object/from16 v0, v273
iget-object v13, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
:cond_104f
move-object/from16 v0, v273
iget v6, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
if-gtz v6, :cond_56
invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v6
const-string v13, "_id DESC"
move/from16 v0, v18
invoke-virtual {v12, v0, v6, v13}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;Ljava/lang/String;)V
goto/16 :goto_56
:sswitch_1062
const/16 v18, 0xc
move-wide/from16 v10, v34
const-string v6, "page"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v204
const-string v6, "time"
const-wide/16 v16, 0x0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v60
const-string v6, "notification_id"
const-wide/16 v16, 0x0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v197
const-wide/16 v16, 0x0
cmp-long v6, v10, v16
if-lez v6, :cond_56
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x6
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "notifications"
aput-object v17, v13, v16
const/16 v16, 0x3
const-string v17, "grouped"
aput-object v17, v13, v16
const/16 v16, 0x4
invoke-static/range {v197 .. v198}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x5
const-string v17, "users"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v6, "page"
move-object/from16 v0, v26
move/from16 v1, v204
invoke-static {v0, v6, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const-wide/16 v16, 0x0
cmp-long v6, v60, v16
if-lez v6, :cond_10dc
const-string v6, "anchor"
move-object/from16 v0, v26
move-wide/from16 v1, v60
invoke-static {v0, v6, v1, v2}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
:cond_10dc
const-string v6, "size"
const/16 v13, 0xa
move-object/from16 v0, v26
invoke-static {v0, v6, v13}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const/4 v6, 0x3
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v0
move-object/16 v273, v0
move-object/from16 v0, v273
check-cast v0, Lco/vine/android/api/VinePagedData;
move-object/16 v273, v0
move-object/from16 v0, v273
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
if-eqz v6, :cond_11b1
new-instance v22, Lco/vine/android/util/LongSparseArray;
move-object/from16 v0, v273
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v6
move-object/from16 v0, v22
invoke-direct {v0, v6}, Lco/vine/android/util/LongSparseArray;-><init>(I)V
move-object/from16 v0, v273
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v162
:goto_112f
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_115b
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
move-object/16 v256, v0
move-object/from16 v0, v256
check-cast v0, Lco/vine/android/api/VineUser;
move-object/16 v256, v0
move-object/from16 v0, v256
iget-wide v0, v0, Lco/vine/android/api/VineUser;->userId:J
move-wide/from16 v16, v0
move-object/from16 v0, v256
iget-wide v0, v0, Lco/vine/android/api/VineUser;->orderId:J
move-wide/from16 v19, v0
invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
move-object/from16 v0, v22
move-wide/from16 v1, v16
invoke-virtual {v0, v1, v2, v6}, Lco/vine/android/util/LongSparseArray;->put(JLjava/lang/Object;)V
goto :goto_112f
:cond_115b
move-object/from16 v0, v273
iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v17, v0
invoke-static/range {v197 .. v198}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v19
move-object/from16 v0, v273
iget v0, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
move/from16 v20, v0
move-object/from16 v0, v273
iget v0, v0, Lco/vine/android/api/VinePagedData;->previousPage:I
move/from16 v21, v0
move-object/from16 v16, v12
invoke-virtual/range {v16 .. v22}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILco/vine/android/util/LongSparseArray;)I
const-string v6, "count"
move-object/from16 v0, v273
iget v13, v0, Lco/vine/android/api/VinePagedData;->count:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "next_page"
move-object/from16 v0, v273
iget v13, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "previous_page"
move-object/from16 v0, v273
iget v13, v0, Lco/vine/android/api/VinePagedData;->previousPage:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "time"
move-object/from16 v0, v273
iget-wide v0, v0, Lco/vine/android/api/VinePagedData;->anchor:J
move-wide/from16 v16, v0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v6, "users"
move-object/from16 v0, v273
iget-object v13, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
:cond_11b1
move-object/from16 v0, v273
iget v6, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
if-gtz v6, :cond_56
invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v6
const-string v13, "_id DESC"
move/from16 v0, v18
invoke-virtual {v12, v0, v6, v13}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;Ljava/lang/String;)V
goto/16 :goto_56
:sswitch_11c4
const-string v6, "s_owner_id"
const-wide/16 v16, 0x0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v10
const-string v6, "type"
const/4 v13, 0x0
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v32
const-string v6, "page_type"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v57
const-wide/16 v225, -0x1
const/16 v60, 0x0
move-object/from16 v0, p0
move/from16 v1, v32
invoke-static {v0, v1}, Lco/vine/android/provider/Vine;->getUserSectionsAnchorManager(Landroid/content/Context;I)Lco/vine/android/util/StringAnchorManager;
move-result-object v243
packed-switch v57, :pswitch_data_3e14
:goto_11f1
:cond_11f1
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "friends"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
move/from16 v0, v32
if-ne v0, v6, :cond_1225
const-string v6, "withFavorites"
const/4 v13, 0x0
invoke-static {v13}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v13
move-object/from16 v0, v26
invoke-static {v0, v6, v13}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
:cond_1225
if-eqz v60, :cond_133f
const-string v6, "anchor"
move-object/from16 v0, v26
move-object/from16 v1, v60
invoke-static {v0, v6, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
:cond_1230
const-string v6, "size"
const/16 v13, 0xa
move-object/from16 v0, v26
invoke-static {v0, v6, v13}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const/4 v6, 0x3
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v0
move-object/16 v280, v0
invoke-virtual/range {v280 .. v280}, Lco/vine/android/api/VineParserReader;->getExtraBundle()Landroid/os/Bundle;
move-result-object v6
const-string v13, "friend_index"
invoke-virtual/range {v243 .. v243}, Lco/vine/android/util/StringAnchorManager;->getIndex()J
move-result-wide v16
move-wide/from16 v0, v16
invoke-virtual {v6, v13, v0, v1}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;
move-result-object v6
invoke-static {v6}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v280
move-object/from16 v2, v43
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_3c4b
invoke-virtual/range {v243 .. v243}, Lco/vine/android/util/StringAnchorManager;->edit()Lco/vine/android/util/StringAnchorManager$Editor;
move-result-object v140
if-nez v60, :cond_1282
move/from16 v0, v32
invoke-virtual {v12, v0}, Lco/vine/android/provider/VineDatabaseHelper;->removeUserSectionsWithType(I)V
move-object/from16 v0, v140
move-wide/from16 v1, v225
invoke-virtual {v0, v1, v2}, Lco/vine/android/util/StringAnchorManager$Editor;->setRefreshTime(J)V
:cond_1282
invoke-virtual/range {v280 .. v280}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v0
move-object/16 v273, v0
move-object/from16 v0, v273
check-cast v0, Lco/vine/android/api/VinePagedData;
move-object/16 v273, v0
move-object/from16 v0, v273
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->stringAnchor:Ljava/lang/String;
if-eqz v6, :cond_12ce
move-object/from16 v0, v273
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->stringAnchor:Ljava/lang/String;
move-object/from16 v0, v140
invoke-virtual {v0, v6}, Lco/vine/android/util/StringAnchorManager$Editor;->setAnchor(Ljava/lang/String;)V
move-object/from16 v0, v273
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
if-eqz v6, :cond_12ce
move-object/from16 v0, v273
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z
move-result v6
if-nez v6, :cond_12ce
move-object/from16 v0, v273
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v0, v273
iget-object v13, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
move-result v13
add-int/lit8 v13, v13, -0x1
invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lco/vine/android/api/VineUser;
iget-wide v0, v6, Lco/vine/android/api/VineUser;->friendIndex:J
move-wide/from16 v16, v0
move-object/from16 v0, v140
move-wide/from16 v1, v16
invoke-virtual {v0, v1, v2}, Lco/vine/android/util/StringAnchorManager$Editor;->setIndex(J)V
:cond_12ce
move-object/from16 v0, v273
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
if-eqz v6, :cond_13ce
const-wide/16 v171, 0x0
move-object/from16 v0, v273
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z
move-result v6
if-nez v6, :cond_13bf
new-instance v22, Lco/vine/android/util/LongSparseArray;
move-object/from16 v0, v273
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->size()I
move-result v6
move-object/from16 v0, v22
invoke-direct {v0, v6}, Lco/vine/android/util/LongSparseArray;-><init>(I)V
move-object/from16 v0, v273
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v162
:goto_12f7
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_1354
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
move-object/16 v256, v0
move-object/from16 v0, v256
check-cast v0, Lco/vine/android/api/VineUser;
move-object/16 v256, v0
move-object/from16 v0, v256
iget-wide v0, v0, Lco/vine/android/api/VineUser;->userId:J
move-wide/from16 v16, v0
move-object/from16 v0, v256
iget-wide v0, v0, Lco/vine/android/api/VineUser;->orderId:J
move-wide/from16 v19, v0
invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
move-object/from16 v0, v22
move-wide/from16 v1, v16
invoke-virtual {v0, v1, v2, v6}, Lco/vine/android/util/LongSparseArray;->put(JLjava/lang/Object;)V
goto :goto_12f7
:pswitch_1323
const/16 v60, 0x0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v225
goto/16 :goto_11f1
:pswitch_132b
new-instance v6, Ljava/lang/IllegalArgumentException;
const-string v13, "Invalid page type."
invoke-direct {v6, v13}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v6
:pswitch_1333
invoke-virtual/range {v243 .. v243}, Lco/vine/android/util/StringAnchorManager;->getStringAnchor()Ljava/lang/String;
move-result-object v60
if-eqz v60, :cond_11f1
invoke-virtual/range {v243 .. v243}, Lco/vine/android/util/StringAnchorManager;->getRefreshTime()J
move-result-wide v225
goto/16 :goto_11f1
:cond_133f
const/4 v6, 0x1
move/from16 v0, v57
if-eq v0, v6, :cond_1230
const-wide/16 v16, -0x1
cmp-long v6, v225, v16
if-nez v6, :cond_1230
const-string v6, "empty"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
goto/16 :goto_56
:cond_1354
move-object/from16 v0, v273
iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v24, v0
const/16 v25, 0xa
invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v26
move-object/from16 v0, v273
iget v0, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
move/from16 v27, v0
move-object/from16 v0, v273
iget v0, v0, Lco/vine/android/api/VinePagedData;->previousPage:I
move/from16 v28, v0
const-wide/16 v16, -0x1
cmp-long v6, v225, v16
if-eqz v6, :cond_13d5
move-wide/from16 v30, v225
:goto_1374
move-object/from16 v23, v12
move-object/from16 v29, v22
invoke-virtual/range {v23 .. v32}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILco/vine/android/util/LongSparseArray;JI)I
const-string v6, "count"
move-object/from16 v0, v273
iget v13, v0, Lco/vine/android/api/VinePagedData;->count:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "next_page"
move-object/from16 v0, v273
iget v13, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "previous_page"
move-object/from16 v0, v273
iget v13, v0, Lco/vine/android/api/VinePagedData;->previousPage:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "users"
move-object/from16 v0, v273
iget-object v13, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
move-object/from16 v0, v273
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v0, v273
iget-object v13, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v13}, Ljava/util/ArrayList;->size()I
move-result v13
add-int/lit8 v13, v13, -0x1
invoke-virtual {v6, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lco/vine/android/api/VineUser;
iget-wide v0, v6, Lco/vine/android/api/VineUser;->userId:J
move-wide/from16 v171, v0
:cond_13bf
move-object/from16 v0, v273
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->stringAnchor:Ljava/lang/String;
if-nez v6, :cond_13c7
const-wide/16 v171, 0x0
:cond_13c7
move-object/from16 v0, v140
move-wide/from16 v1, v171
invoke-virtual {v0, v1, v2}, Lco/vine/android/util/StringAnchorManager$Editor;->setLastId(J)V
:cond_13ce
invoke-virtual/range {v140 .. v140}, Lco/vine/android/util/StringAnchorManager$Editor;->commit()V
move-object/from16 v29, v280
goto/16 :goto_56
:cond_13d5
const-wide/16 v30, -0x1
goto :goto_1374
:sswitch_13d8
const-string v6, "type"
const/4 v13, -0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v36
const-string v6, "size"
const/16 v13, 0xa
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v37
const-string v6, "profile_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v39
const-string v6, "page"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v41
const-string v6, "time"
const-wide/16 v16, 0x0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v42
move-object/from16 v33, p0
move-object/from16 v38, v12
move-object/from16 v44, p2
invoke-direct/range {v33 .. v44}, Lco/vine/android/service/VineService;->getPosts(JIILco/vine/android/provider/VineDatabaseHelper;JIJLandroid/os/Bundle;)Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->getReader()Lco/vine/android/network/HttpOperationReader;
move-result-object v29
check-cast v29, Lco/vine/android/api/VineParserReader;
goto/16 :goto_56
:sswitch_141a
const-string v6, "post_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v14
const-wide/16 v16, 0x0
cmp-long v6, v14, v16
if-lez v6, :cond_56
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "timelines"
aput-object v17, v13, v16
const/16 v16, 0x1
const-string v17, "posts"
aput-object v17, v13, v16
const/16 v16, 0x2
invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
move-object/from16 v0, p0
move-object/from16 v1, v26
invoke-virtual {v0, v1}, Lco/vine/android/service/VineService;->limitCommentAndLikesIfNeeded(Ljava/lang/StringBuilder;)V
const/16 v6, 0x8
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v236
check-cast v236, Lco/vine/android/api/VinePagedData;
:try_start_1478
move-object/from16 v0, v236
iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v37, v0
const/16 v38, 0x7
const-string v39, ""
const/16 v40, 0x0
const/16 v41, 0x0
const/16 v42, 0x0
const-wide/16 v43, 0x0
const/16 v45, 0x1
move-object/from16 v36, v12
invoke-virtual/range {v36 .. v45}, Lco/vine/android/provider/VineDatabaseHelper;->mergePosts(Ljava/util/Collection;ILjava/lang/String;IIIJZ)Lco/vine/android/provider/DbResponse;
move-result-object v234
if-eqz v236, :cond_56
move-object/from16 v0, v236
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
if-eqz v6, :cond_56
const-string v13, "post"
move-object/from16 v0, v236
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
const/16 v16, 0x0
move/from16 v0, v16
invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/os/Parcelable;
move-object/from16 v0, p2
invoke-virtual {v0, v13, v6}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:try_end_14af
.catch Ljava/io/IOException; {:try_start_1478 .. :try_end_14af} :catch_14b1
goto/16 :goto_56
:catch_14b1
move-exception v139
sget-boolean v6, Lco/vine/android/service/VineService;->LOGGABLE:Z
if-eqz v6, :cond_56
invoke-virtual/range {v139 .. v139}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_56
:sswitch_14bb
const-string v6, "post_id"
const-wide/16 v16, 0x0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v37
const-string v6, "page"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v39
const-string v6, "time"
const-wide/16 v16, 0x0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v40
const-string v6, "size"
const/16 v13, 0xa
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v42
move-object/from16 v36, p0
move-object/from16 v44, p2
move-object/from16 v45, v12
invoke-direct/range {v36 .. v45}, Lco/vine/android/service/VineService;->getComments(JIJILjava/lang/String;Landroid/os/Bundle;Lco/vine/android/provider/VineDatabaseHelper;)Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->getReader()Lco/vine/android/network/HttpOperationReader;
move-result-object v29
check-cast v29, Lco/vine/android/api/VineParserReader;
invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackGetComments()V
goto/16 :goto_56
:sswitch_14fb
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x1
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "editions"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/16 v6, 0x14
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_1544
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v142
check-cast v142, Ljava/util/ArrayList;
move-object/from16 v0, v142
invoke-virtual {v12, v0}, Lco/vine/android/provider/VineDatabaseHelper;->mergeEditions(Ljava/util/ArrayList;)V
const-string v6, "editions"
move-object/from16 v0, p2
move-object/from16 v1, v142
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
:cond_1544
invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackGetEditions()V
goto/16 :goto_56
:sswitch_1549
const-string v6, "entities"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v52
const-string v6, "post_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v45
const-string v6, "user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v47
const-string v6, "username"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v49
const-string v6, "comment"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v50
const-string v6, "avatar_url"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v51
move-object/from16 v44, p0
move-object/from16 v53, v12
move-object/from16 v54, p2
invoke-direct/range {v44 .. v54}, Lco/vine/android/service/VineService;->postComment(JJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Lco/vine/android/provider/VineDatabaseHelper;Landroid/os/Bundle;)Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->getReader()Lco/vine/android/network/HttpOperationReader;
move-result-object v29
check-cast v29, Lco/vine/android/api/VineParserReader;
invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackPostComment()V
goto/16 :goto_56
:sswitch_158e
const-string v6, "post_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v16
const-string v6, "comment_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
move-object/from16 v0, p0
move-wide/from16 v1, v16
invoke-direct {v0, v1, v2, v6, v12}, Lco/vine/android/service/VineService;->deleteComment(JLjava/lang/String;Lco/vine/android/provider/VineDatabaseHelper;)Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->getReader()Lco/vine/android/network/HttpOperationReader;
move-result-object v29
check-cast v29, Lco/vine/android/api/VineParserReader;
invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackDeleteComment()V
goto/16 :goto_56
:sswitch_15b1
move-object/from16 v0, p0
move-object/from16 v1, v43
move-object/from16 v2, p2
invoke-direct {v0, v1, v2}, Lco/vine/android/service/VineService;->getUsersMe(Ljava/lang/String;Landroid/os/Bundle;)Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->getReader()Lco/vine/android/network/HttpOperationReader;
move-result-object v29
check-cast v29, Lco/vine/android/api/VineParserReader;
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/util/FlurryUtils;->trackGetUser(Z)V
goto/16 :goto_56
:sswitch_15c7
const-string v6, "key"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v251
const-string v6, "secret"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v252
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x5
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "following"
aput-object v17, v13, v16
const/16 v16, 0x3
const-string v17, "suggested"
aput-object v17, v13, v16
const/16 v16, 0x4
const-string v17, "twitter"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x3
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v0
move-object/16 v280, v0
new-instance v28, Ljava/util/ArrayList;
const/4 v6, 0x2
move-object/from16 v0, v28
invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "twitterOauthToken"
move-object/from16 v0, v251
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "twitterOauthSecret"
move-object/from16 v0, v252
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v280
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_3c4b
invoke-virtual/range {v280 .. v280}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v24
check-cast v24, Ljava/util/ArrayList;
if-eqz v24, :cond_1681
invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z
move-result v6
if-nez v6, :cond_1681
const/16 v25, 0x6
invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v26
const/16 v27, 0x0
const/16 v28, 0x0
const/16 v29, 0x0
move-object/from16 v23, v12
invoke-virtual/range {v23 .. v29}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILco/vine/android/util/LongSparseArray;)I
const-string v6, "count"
invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I
move-result v13
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "users"
move-object/from16 v0, p2
move-object/from16 v1, v24
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
:cond_1681
move-object/from16 v29, v280
goto/16 :goto_56
:sswitch_1685
const/16 v111, 0x0
:try_start_1687
invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v6
invoke-static {v6}, Lco/vine/android/util/Util;->getAddressBookJson(Landroid/content/ContentResolver;)Ljava/lang/String;
:try_end_168e
.catch Ljava/io/IOException; {:try_start_1687 .. :try_end_168e} :catch_16a6
move-result-object v111
:goto_168f
if-nez v111, :cond_16ab
if-eqz v202, :cond_16ab
const/16 v6, 0x3e8
move-object/from16 v0, v202
iput v6, v0, Lco/vine/android/network/HttpOperation;->statusCode:I
new-instance v148, Lco/vine/android/api/VineError;
const/16 v6, 0x3e8
const-string v13, "Could not create json."
move-object/from16 v0, v148
invoke-direct {v0, v6, v13}, Lco/vine/android/api/VineError;-><init>(ILjava/lang/String;)V
goto/16 :goto_56
:catch_16a6
move-exception v139
invoke-virtual/range {v139 .. v139}, Ljava/io/IOException;->printStackTrace()V
goto :goto_168f
:cond_16ab
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x5
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "following"
aput-object v17, v13, v16
const/16 v16, 0x3
const-string v17, "suggested"
aput-object v17, v13, v16
const/16 v16, 0x4
const-string v17, "contacts"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x3
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
new-instance v28, Ljava/util/ArrayList;
invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "addressBook"
move-object/from16 v0, v111
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p0
move-object/from16 v1, v28
invoke-virtual {v0, v1}, Lco/vine/android/service/VineService;->addCountryParam(Ljava/util/ArrayList;)V
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v25
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v27, v0
const/4 v6, 0x0
new-array v0, v6, [Ljava/lang/String;
move-object/from16 v30, v0
invoke-static/range {v25 .. v30}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;[Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v24
check-cast v24, Ljava/util/ArrayList;
if-eqz v24, :cond_56
invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->isEmpty()Z
move-result v6
if-nez v6, :cond_56
const/16 v38, 0x7
invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v39
const/16 v40, 0x0
const/16 v41, 0x0
const/16 v42, 0x0
move-object/from16 v36, v12
move-object/from16 v37, v24
invoke-virtual/range {v36 .. v42}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILco/vine/android/util/LongSparseArray;)I
const-string v6, "count"
invoke-virtual/range {v24 .. v24}, Ljava/util/ArrayList;->size()I
move-result v13
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "users"
move-object/from16 v0, p2
move-object/from16 v1, v24
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
goto/16 :goto_56
:sswitch_174d
const/16 v111, 0x0
:try_start_174f
invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v6
invoke-static {v6}, Lco/vine/android/util/Util;->getAddressBookJson(Landroid/content/ContentResolver;)Ljava/lang/String;
:try_end_1756
.catch Ljava/io/IOException; {:try_start_174f .. :try_end_1756} :catch_176e
move-result-object v111
:goto_1757
if-nez v111, :cond_1773
if-eqz v202, :cond_1773
const/16 v6, 0x3e8
move-object/from16 v0, v202
iput v6, v0, Lco/vine/android/network/HttpOperation;->statusCode:I
new-instance v148, Lco/vine/android/api/VineError;
const/16 v6, 0x3e8
const-string v13, "Could not create json."
move-object/from16 v0, v148
invoke-direct {v0, v6, v13}, Lco/vine/android/api/VineError;-><init>(ILjava/lang/String;)V
goto/16 :goto_56
:catch_176e
move-exception v139
invoke-virtual/range {v139 .. v139}, Ljava/io/IOException;->printStackTrace()V
goto :goto_1757
:cond_1773
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x5
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "following"
aput-object v17, v13, v16
const/16 v16, 0x3
const-string v17, "suggested"
aput-object v17, v13, v16
const/16 v16, 0x4
const-string v17, "contacts"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x3
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
new-instance v28, Ljava/util/ArrayList;
invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "addressBook"
move-object/from16 v0, v111
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static {}, Lco/vine/android/util/Util;->getLocale()Ljava/lang/String;
move-result-object v170
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "locale"
move-object/from16 v0, v170
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v25
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v27, v0
const/4 v6, 0x0
new-array v0, v6, [Ljava/lang/String;
move-object/from16 v30, v0
invoke-static/range {v25 .. v30}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;[Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_17e5
const-string v6, "type"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v6
invoke-virtual {v12, v6}, Lco/vine/android/provider/VineDatabaseHelper;->removeUsersByGroup(I)V
goto/16 :goto_56
:sswitch_17f2
const-string v6, "follow_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v45
const-string v6, "notify"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v51
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v45 .. v46}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "followers"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v36
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v38, v0
const/16 v39, 0x0
const/4 v6, 0x0
new-array v0, v6, [Ljava/lang/String;
move-object/from16 v41, v0
move-object/from16 v37, v26
move-object/from16 v40, v29
invoke-static/range {v36 .. v41}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;[Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
const/4 v6, 0x1
move-wide/from16 v0, v45
invoke-virtual {v12, v0, v1, v6}, Lco/vine/android/provider/VineDatabaseHelper;->updateUserFollowingFlag(JZ)V
const-wide/16 v49, 0x0
move-object/from16 v44, v12
move-wide/from16 v47, v34
invoke-virtual/range {v44 .. v51}, Lco/vine/android/provider/VineDatabaseHelper;->addFollow(JJJZ)I
const/4 v6, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v13
const-string v16, "order_id ASC"
move-object/from16 v0, v16
invoke-virtual {v12, v6, v13, v0}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;Ljava/lang/String;)V
goto/16 :goto_56
:sswitch_186a
const-string v6, "follow_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v0
move-wide/16 v270, v0
const-string v6, "profile_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v133
const-string v6, "user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v108
const-string v6, "notify"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v51
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v270 .. v271}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "followers"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
cmp-long v6, v133, v108
if-nez v6, :cond_18f2
const/16 v138, 0x1
:goto_18d5
const/4 v6, 0x0
move-wide/from16 v0, v270
invoke-virtual {v12, v0, v1, v6}, Lco/vine/android/provider/VineDatabaseHelper;->updateUserFollowingFlag(JZ)V
move-wide/from16 v0, v270
move/from16 v2, v138
move/from16 v3, v51
invoke-virtual {v12, v0, v1, v2, v3}, Lco/vine/android/provider/VineDatabaseHelper;->removeFollow(JZZ)I
const/4 v6, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v13
const-string v16, "order_id ASC"
move-object/from16 v0, v16
invoke-virtual {v12, v6, v13, v0}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;Ljava/lang/String;)V
goto/16 :goto_56
:cond_18f2
const/16 v138, 0x0
goto :goto_18d5
:sswitch_18f5
const-string v6, "follow_ids"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
move-object/16 v263, v0
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
const-string v17, "followers"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
new-instance v28, Ljava/util/ArrayList;
invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V
invoke-virtual/range {v263 .. v263}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v162
:goto_1924
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_193d
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v10
check-cast v10, Ljava/lang/String;
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "userIds[]"
invoke-direct {v6, v13, v10}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_1924
:cond_193d
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v25
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v27, v0
const/4 v6, 0x0
new-array v0, v6, [Ljava/lang/String;
move-object/from16 v30, v0
invoke-static/range {v25 .. v30}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;[Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_195b
const-string v6, "post_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v14
const-string v6, "notify"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v51
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "posts"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "likes"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/16 v6, 0xa
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v36
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v38, v0
const/16 v39, 0x0
const/4 v6, 0x0
new-array v0, v6, [Ljava/lang/String;
move-object/from16 v41, v0
move-object/from16 v37, v26
move-object/from16 v40, v29
invoke-static/range {v36 .. v41}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;[Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v176
check-cast v176, Ljava/lang/Long;
const-string v6, "user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v182
const-string v6, "username"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
new-instance v175, Lco/vine/android/api/VineLike;
invoke-direct/range {v175 .. v175}, Lco/vine/android/api/VineLike;-><init>()V
invoke-virtual/range {v176 .. v176}, Ljava/lang/Long;->longValue()J
move-result-wide v16
move-wide/from16 v0, v16
move-object/from16 v2, v175
iput-wide v0, v2, Lco/vine/android/api/VineLike;->likeId:J
move-wide/from16 v0, v182
move-object/from16 v2, v175
iput-wide v0, v2, Lco/vine/android/api/VineLike;->userId:J
move-object/from16 v0, v175
iput-object v7, v0, Lco/vine/android/api/VineLike;->username:Ljava/lang/String;
move-object/from16 v0, v175
iput-wide v14, v0, Lco/vine/android/api/VineLike;->postId:J
move-object/from16 v0, v175
move/from16 v1, v51
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->addLike(Lco/vine/android/api/VineLike;Z)I
goto/16 :goto_56
:sswitch_19f4
const-string v6, "post_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v14
const-string v6, "notify"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v51
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "posts"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "likes"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/16 v6, 0xa
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
move-object/from16 v36, v12
move-wide/from16 v37, v14
move-wide/from16 v39, v34
move/from16 v41, v51
invoke-virtual/range {v36 .. v41}, Lco/vine/android/provider/VineDatabaseHelper;->removeLike(JJZ)I
goto/16 :goto_56
:sswitch_1a55
const-string v6, "post_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v14
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "posts"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "repost"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/16 v6, 0x13
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v36
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v38, v0
const/16 v39, 0x0
const/4 v6, 0x0
new-array v0, v6, [Ljava/lang/String;
move-object/from16 v41, v0
move-object/from16 v37, v26
move-object/from16 v40, v29
invoke-static/range {v36 .. v41}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;[Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v228
check-cast v228, Lco/vine/android/api/VineRepost;
const-string v6, "username"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
move-wide/from16 v0, v34
move-object/from16 v2, v228
iput-wide v0, v2, Lco/vine/android/api/VineRepost;->userId:J
move-object/from16 v0, v228
iput-object v7, v0, Lco/vine/android/api/VineRepost;->username:Ljava/lang/String;
const-string v6, "repost"
move-object/from16 v0, p2
move-object/from16 v1, v228
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putSerializable(Ljava/lang/String;Ljava/io/Serializable;)V
const/4 v6, 0x0
move-object/from16 v0, v228
move-wide/from16 v1, v34
invoke-virtual {v12, v0, v1, v2, v6}, Lco/vine/android/provider/VineDatabaseHelper;->revine(Lco/vine/android/api/VineRepost;JZ)I
goto/16 :goto_56
:sswitch_1ad4
const-string v6, "following"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v41
const-string v6, "post_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v14
const-string v6, "repost_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v229
const-string v6, "notify"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v51
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x4
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "posts"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "repost"
aput-object v17, v13, v16
const/16 v16, 0x3
invoke-static/range {v229 .. v230}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
move-object/from16 v36, v12
move-wide/from16 v37, v14
move-wide/from16 v39, v34
move/from16 v42, v51
invoke-virtual/range {v36 .. v42}, Lco/vine/android/provider/VineDatabaseHelper;->unRevine(JJZZ)I
goto/16 :goto_56
:sswitch_1b4c
const-string v6, "post_id"
const-wide/16 v16, 0x0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v14
const-string v6, "page"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v204
const-string v6, "time"
const-wide/16 v16, 0x0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v60
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "posts"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "reposts"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v6, "page"
move-object/from16 v0, v26
move/from16 v1, v204
invoke-static {v0, v6, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const-wide/16 v16, 0x0
cmp-long v6, v60, v16
if-lez v6, :cond_1ba8
const-string v6, "anchor"
move-object/from16 v0, v26
move-wide/from16 v1, v60
invoke-static {v0, v6, v1, v2}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
:cond_1ba8
const-string v6, "size"
const/16 v13, 0x14
move-object/from16 v0, v26
invoke-static {v0, v6, v13}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const/4 v6, 0x3
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v0
move-object/16 v273, v0
move-object/from16 v0, v273
check-cast v0, Lco/vine/android/api/VinePagedData;
move-object/16 v273, v0
move-object/from16 v0, v273
iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v54, v0
const/16 v55, 0x9
invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v56
move-object/from16 v0, v273
iget v0, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
move/from16 v57, v0
move-object/from16 v0, v273
iget v0, v0, Lco/vine/android/api/VinePagedData;->previousPage:I
move/from16 v58, v0
const/16 v59, 0x0
move-object/from16 v53, v12
invoke-virtual/range {v53 .. v59}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILco/vine/android/util/LongSparseArray;)I
const-string v6, "count"
move-object/from16 v0, v273
iget v13, v0, Lco/vine/android/api/VinePagedData;->count:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "next_page"
move-object/from16 v0, v273
iget v13, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "previous_page"
move-object/from16 v0, v273
iget v13, v0, Lco/vine/android/api/VinePagedData;->previousPage:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "time"
move-object/from16 v0, v273
iget-wide v0, v0, Lco/vine/android/api/VinePagedData;->anchor:J
move-wide/from16 v16, v0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v6, "users"
move-object/from16 v0, v273
iget-object v13, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
move-object/from16 v0, v273
iget v6, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
if-gtz v6, :cond_56
const/16 v6, 0x9
invoke-static {v14, v15}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v13
invoke-virtual {v12, v6, v13}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;)V
goto/16 :goto_56
:sswitch_1c49
const-string v6, "page"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v204
const-string v6, "time"
const-wide/16 v16, 0x0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v60
const-string v6, "follow_reqs"
const/4 v13, 0x0
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v158
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x4
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "notifications"
aput-object v17, v13, v16
const/16 v16, 0x3
const-string v17, "grouped"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v13, "clear"
const-string v6, "clear"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_1d5f
const/4 v6, 0x1
:goto_1c9d
move-object/from16 v0, v26
invoke-static {v0, v13, v6}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const-string v6, "page"
move-object/from16 v0, v26
move/from16 v1, v204
invoke-static {v0, v6, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const-wide/16 v16, 0x0
cmp-long v6, v60, v16
if-lez v6, :cond_1cba
const-string v6, "anchor"
move-object/from16 v0, v26
move-wide/from16 v1, v60
invoke-static {v0, v6, v1, v2}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
:cond_1cba
const-string v6, "size"
const/16 v13, 0x14
move-object/from16 v0, v26
invoke-static {v0, v6, v13}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const/16 v6, 0x1c
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_1cf2
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v238
check-cast v238, Lco/vine/android/api/VinePagedData;
const-string v6, "notifications"
move-object/from16 v0, p2
move-object/from16 v1, v238
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_1cf2
if-eqz v158, :cond_56
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x4
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "notifications"
aput-object v17, v13, v16
const/16 v16, 0x3
const-string v17, "followRequests"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v154
const-string v6, "page"
const/4 v13, 0x1
move-object/from16 v0, v154
invoke-static {v0, v6, v13}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const-string v6, "size"
const/16 v13, 0x14
move-object/from16 v0, v154
invoke-static {v0, v6, v13}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const/16 v6, 0x9
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v155
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v154
move-object/from16 v1, v155
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v153
invoke-virtual/range {v153 .. v153}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v155 .. v155}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v152
check-cast v152, Lco/vine/android/api/VinePagedData;
const-string v6, "follow_requests"
move-object/from16 v0, p2
move-object/from16 v1, v152
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
goto/16 :goto_56
:cond_1d5f
const/4 v6, 0x0
goto/16 :goto_1c9d
:sswitch_1d62
const-string v6, "s_owner_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v10
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "activityCounts"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v6, "grouped"
const/4 v13, 0x1
move-object/from16 v0, v26
invoke-static {v0, v6, v13}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const/16 v6, 0x1a
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v110
check-cast v110, Lco/vine/android/api/VineActivityCounts;
const-string v6, "messages_count"
move-object/from16 v0, v110
iget v13, v0, Lco/vine/android/api/VineActivityCounts;->messages:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "notifications_count"
move-object/from16 v0, v110
iget v13, v0, Lco/vine/android/api/VineActivityCounts;->notifications:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
new-instance v132, Landroid/content/Intent;
invoke-direct/range {v132 .. v132}, Landroid/content/Intent;-><init>()V
const-string v6, "messages_count"
move-object/from16 v0, v110
iget v13, v0, Lco/vine/android/api/VineActivityCounts;->messages:I
move-object/from16 v0, v132
invoke-virtual {v0, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v6, "notifications_count"
move-object/from16 v0, v110
iget v13, v0, Lco/vine/android/api/VineActivityCounts;->notifications:I
move-object/from16 v0, v132
invoke-virtual {v0, v6, v13}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;
const-string v6, "co.vine.android.service.activityCounts"
move-object/from16 v0, v132
invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string v6, "co.vine.android.BROADCAST"
move-object/from16 v0, p0
move-object/from16 v1, v132
invoke-virtual {v0, v1, v6}, Lco/vine/android/service/VineService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
move-object/from16 v0, v110
iget v6, v0, Lco/vine/android/api/VineActivityCounts;->messages:I
move-object/from16 v0, v110
iget v13, v0, Lco/vine/android/api/VineActivityCounts;->notifications:I
add-int/2addr v6, v13
move-object/from16 v0, p0
invoke-direct {v0, v6}, Lco/vine/android/service/VineService;->updateBadgeCount(I)V
goto/16 :goto_56
:sswitch_1e0c
const-string v6, "user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v10
cmp-long v6, v10, v34
if-eqz v6, :cond_1e77
const/4 v6, 0x1
:goto_1e19
invoke-static {v6}, Lco/vine/android/util/FlurryUtils;->trackGetUser(Z)V
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
const-string v17, "profiles"
aput-object v17, v13, v16
const/16 v16, 0x2
invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x2
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v0
move-object/16 v261, v0
move-object/from16 v0, v261
check-cast v0, Lco/vine/android/api/VineUser;
move-object/16 v261, v0
const-string v6, "user"
move-object/from16 v0, p2
move-object/from16 v1, v261
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
goto/16 :goto_56
:cond_1e77
const/4 v6, 0x0
goto :goto_1e19
:sswitch_1e79
new-instance v28, Ljava/util/ArrayList;
const/4 v6, 0x1
move-object/from16 v0, v28
invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "edition"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v6, "edition"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v141
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "edition"
move-object/from16 v0, v141
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {p0 .. p0}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_1ed7
const-string v6, "uri"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v116
check-cast v116, Landroid/net/Uri;
const/16 v150, 0x0
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mAmazonBucket:Ljava/lang/String;
if-eqz v6, :cond_202c
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/service/VineService;->mAmazonBucket:Ljava/lang/String;
move-object/from16 v212, v0
:goto_1eef
if-eqz v116, :cond_1eff
:try_start_1ef1
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mMediaUtility:Lco/vine/android/util/MediaUtility;
move-object/from16 v0, v116
move-object/from16 v1, v212
move-object/from16 v2, v127
invoke-virtual {v6, v0, v1, v2}, Lco/vine/android/util/MediaUtility;->getPhotoUri(Landroid/net/Uri;Ljava/lang/String;Landroid/content/Context;)Ljava/lang/String;
:try_end_1efe
.catch Ljava/lang/Exception; {:try_start_1ef1 .. :try_end_1efe} :catch_2032
move-result-object v150
:cond_1eff
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
new-instance v28, Ljava/util/ArrayList;
if-nez v116, :cond_203b
const/4 v6, 0x5
:goto_1f21
move-object/from16 v0, v28
invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "username"
const-string v16, "a_name"
move-object/from16 v0, p2
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "description"
const-string v16, "desc"
move-object/from16 v0, p2
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "location"
const-string v16, "location"
move-object/from16 v0, p2
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
if-eqz v116, :cond_203e
invoke-virtual/range {v116 .. v116}, Landroid/net/Uri;->toString()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_203e
const-string v151, ""
:goto_1f7c
if-eqz v116, :cond_1f8c
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "avatarUrl"
move-object/from16 v0, v151
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_1f8c
const-string v6, "email"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v143
invoke-static/range {v143 .. v143}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_1fa8
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "email"
move-object/from16 v0, v143
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_1fa8
const-string v6, "phone"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v211
invoke-static/range {v211 .. v211}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_1fce
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "phoneNumber"
const-string v16, "phone"
move-object/from16 v0, p2
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_1fce
const-string v6, "color_int"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_1ffe
const-string v6, "color_int"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v126
if-lez v126, :cond_1ffe
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "profileBackground"
const-string v16, "color_int"
move-object/from16 v0, p2
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v16
invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_1ffe
const/4 v6, 0x2
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
if-nez v116, :cond_2078
const-string v6, "avatar_url"
const-string v13, ""
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_56
:cond_202c
invoke-static/range {v127 .. v127}, Lco/vine/android/client/Amazon;->getBucket(Landroid/content/Context;)Ljava/lang/String;
move-result-object v212
goto/16 :goto_1eef
:catch_2032
move-exception v139
const/16 v245, 0x384
invoke-virtual/range {v139 .. v139}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;
move-result-object v221
goto/16 :goto_56
:cond_203b
const/4 v6, 0x6
goto/16 :goto_1f21
:cond_203e
invoke-static/range {v127 .. v127}, Lco/vine/android/util/MediaUtility;->getUploadType(Landroid/content/Context;)I
move-result v186
packed-switch v186, :pswitch_data_3e1e
move-object/from16 v151, v150
goto/16 :goto_1f7c
:pswitch_2049
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v13}, Lco/vine/android/client/VineAPI;->getAmazonUrl()Ljava/lang/String;
move-result-object v13
invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v13, "/"
invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object/from16 v0, v212
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
const-string v13, "/"
invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object/from16 v0, v150
invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v151
goto/16 :goto_1f7c
:cond_2078
const-string v6, "avatar_url"
move-object/from16 v0, p2
move-object/from16 v1, v151
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_56
:sswitch_2083
invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackReportPost()V
const-string v6, "post_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v14
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "posts"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "complaints"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v53
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v55, v0
const/16 v56, 0x0
const/4 v6, 0x0
new-array v0, v6, [Ljava/lang/String;
move-object/from16 v58, v0
move-object/from16 v54, v26
move-object/from16 v57, v29
invoke-static/range {v53 .. v58}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;[Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_20d5
const-string v6, "time"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v16
move-wide/from16 v0, v16
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->cleanUp(J)I
goto/16 :goto_56
:sswitch_20e4
const-string v6, "post_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v14
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "posts"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual {v12, v14, v15}, Lco/vine/android/provider/VineDatabaseHelper;->deletePost(J)I
goto/16 :goto_56
:sswitch_212d
invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackConnectTwitter()V
const-string v6, "key"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v249
const-string v6, "secret"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v240
const-string v6, "user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v10
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
new-instance v28, Ljava/util/ArrayList;
const/4 v6, 0x3
move-object/from16 v0, v28
invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "twitterOauthToken"
move-object/from16 v0, v249
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "twitterOauthSecret"
move-object/from16 v0, v240
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "twitterId"
invoke-static {v10, v11}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_21b8
invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackDisConnectTwitter()V
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
new-instance v28, Ljava/util/ArrayList;
const/4 v6, 0x3
move-object/from16 v0, v28
invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "twitterOauthToken"
const-string v16, ""
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "twitterOauthSecret"
const-string v16, ""
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "twitterId"
const-string v16, ""
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_222d
const-string v6, "user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v10
const/4 v6, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v13
invoke-virtual {v12, v10, v11, v6, v13}, Lco/vine/android/provider/VineDatabaseHelper;->removePostsFromGroupByUser(JILjava/lang/String;)I
goto/16 :goto_56
:sswitch_223f
invoke-direct/range {p0 .. p0}, Lco/vine/android/service/VineService;->getClientProfile()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_2245
const-string v6, "post_share_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v214
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x4
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "timelines"
aput-object v17, v13, v16
const/16 v16, 0x1
const-string v17, "posts"
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "s"
aput-object v17, v13, v16
const/16 v16, 0x3
aput-object v214, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/16 v6, 0x8
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v236
check-cast v236, Lco/vine/android/api/VinePagedData;
move-object/from16 v0, v236
iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v168, v0
invoke-virtual/range {v168 .. v168}, Ljava/util/ArrayList;->isEmpty()Z
move-result v6
if-nez v6, :cond_56
const-string v13, "post_id"
const/4 v6, 0x0
move-object/from16 v0, v168
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Lco/vine/android/api/VinePost;
iget-wide v0, v6, Lco/vine/android/api/VinePost;->postId:J
move-wide/from16 v16, v0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v13, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
goto/16 :goto_56
:sswitch_22bc
invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackConnectFacebook()V
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
new-instance v28, Ljava/util/ArrayList;
const/4 v6, 0x3
move-object/from16 v0, v28
invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "facebookOauthToken"
const-string v16, "facebook_token"
move-object/from16 v0, p2
move-object/from16 v1, v16
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
const-string v13, "Send facebook token result {}."
if-eqz v202, :cond_2336
move-object/from16 v0, v202
iget v6, v0, Lco/vine/android/network/HttpOperation;->statusCode:I
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
:goto_2323
invoke-static {v13, v6}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
if-eqz v202, :cond_56
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
const/4 v6, 0x0
move-object/from16 v0, p0
invoke-static {v0, v6}, Lco/vine/android/client/AppController;->setPendingFacebookToken(Landroid/content/Context;Ljava/lang/String;)V
goto/16 :goto_56
:cond_2336
move-object/from16 v6, v202
goto :goto_2323
:sswitch_2339
new-instance v26, Ljava/lang/StringBuilder;
invoke-static/range {v127 .. v127}, Lco/vine/android/util/BuildUtil;->getStatusUrl(Landroid/content/Context;)Ljava/lang/String;
move-result-object v6
move-object/from16 v0, v26
invoke-direct {v0, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
const/16 v6, 0xf
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v1, v13}, Lco/vine/android/network/HttpOperation;->createGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/network/HttpOperationReader;Lco/vine/android/client/VineAPI;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v244
check-cast v244, Lco/vine/android/api/ServerStatus;
const-string v6, "server_status"
move-object/from16 v0, p2
move-object/from16 v1, v244
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
goto/16 :goto_56
:sswitch_2375
const-string v6, "q"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v219
const-string v6, "page_type"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v57
const-string v6, "page"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v204
packed-switch v57, :pswitch_data_3e24
:goto_2392
:cond_2392
invoke-static/range {v219 .. v219}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_56
invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackSearchUsers()V
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
const-string v17, "search"
aput-object v17, v13, v16
const/16 v16, 0x2
aput-object v219, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v6, "page"
move-object/from16 v0, v26
move/from16 v1, v204
invoke-static {v0, v6, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const-string v6, "size"
const/16 v13, 0x32
move-object/from16 v0, v26
invoke-static {v0, v6, v13}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const/4 v6, 0x3
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;
move-result-object v6
invoke-static {v6}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
move-object/from16 v2, v43
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v0
move-object/16 v273, v0
move-object/from16 v0, v273
check-cast v0, Lco/vine/android/api/VinePagedData;
move-object/16 v273, v0
move-object/from16 v0, v273
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
if-eqz v6, :cond_2443
move-object/from16 v0, v273
iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v54, v0
const/16 v55, 0x8
const/16 v56, 0x0
move-object/from16 v0, v273
iget v0, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
move/from16 v57, v0
move-object/from16 v0, v273
iget v0, v0, Lco/vine/android/api/VinePagedData;->previousPage:I
move/from16 v58, v0
const/16 v59, 0x0
move-object/from16 v53, v12
invoke-virtual/range {v53 .. v59}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILco/vine/android/util/LongSparseArray;)I
const-string v6, "count"
move-object/from16 v0, v273
iget v13, v0, Lco/vine/android/api/VinePagedData;->count:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "next_page"
move-object/from16 v0, v273
iget v13, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "previous_page"
move-object/from16 v0, v273
iget v13, v0, Lco/vine/android/api/VinePagedData;->previousPage:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:cond_2443
move-object/from16 v0, v273
iget v6, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
if-gtz v6, :cond_56
const/16 v6, 0x8
const/4 v13, 0x0
const-string v16, "_id DESC"
move-object/from16 v0, v16
invoke-virtual {v12, v6, v13, v0}, Lco/vine/android/provider/VineDatabaseHelper;->markLastUser(ILjava/lang/String;Ljava/lang/String;)V
goto/16 :goto_56
:pswitch_2455
const/16 v204, 0x1
goto/16 :goto_2392
:pswitch_2459
const/4 v6, 0x1
const/16 v13, 0x8
const/16 v16, 0x0
const/16 v17, 0x1
move-object/from16 v0, v16
move/from16 v1, v17
invoke-virtual {v12, v6, v13, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getNextPageCursor(IILjava/lang/String;Z)I
move-result v193
if-lez v193, :cond_2392
move/from16 v204, v193
goto/16 :goto_2392
:pswitch_246e
const/4 v6, 0x1
const/16 v13, 0x8
const/16 v16, 0x0
const/16 v17, 0x1
move-object/from16 v0, v16
move/from16 v1, v17
invoke-virtual {v12, v6, v13, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getPreviousPageCursor(IILjava/lang/String;Z)I
move-result v59
if-lez v59, :cond_2392
move/from16 v204, v59
goto/16 :goto_2392
:sswitch_2483
const-string v6, "posts"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v54
const-string v6, "type"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v55
const-string v6, "tag_name"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v56
const-string v6, "page_type"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v57
const-string v6, "next_page"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v58
const-string v6, "previous_page"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v59
const-string v6, "time"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v60
const-string v6, "user_init"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v62
if-eqz v54, :cond_56
move-object/from16 v53, v12
:try_start_24c7
invoke-virtual/range {v53 .. v62}, Lco/vine/android/provider/VineDatabaseHelper;->mergePosts(Ljava/util/Collection;ILjava/lang/String;IIIJZ)Lco/vine/android/provider/DbResponse;
if-gtz v58, :cond_56
move/from16 v0, v55
move-object/from16 v1, v56
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->markLastPost(ILjava/lang/String;)V
:try_end_24d3
.catch Ljava/io/IOException; {:try_start_24c7 .. :try_end_24d3} :catch_24d5
goto/16 :goto_56
:catch_24d5
move-exception v139
invoke-virtual/range {v139 .. v139}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_56
:sswitch_24db
const-string v6, "q"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v219
const-string v6, "page_type"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v57
const-string v6, "page"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v204
packed-switch v57, :pswitch_data_3e2e
:goto_24f8
:cond_24f8
invoke-static/range {v219 .. v219}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_56
invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackSearchTags()V
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "tags"
aput-object v17, v13, v16
const/16 v16, 0x1
const-string v17, "search"
aput-object v17, v13, v16
const/16 v16, 0x2
aput-object v219, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v6, "page"
move-object/from16 v0, v26
move/from16 v1, v204
invoke-static {v0, v6, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const-string v6, "size"
const/16 v13, 0x32
move-object/from16 v0, v26
invoke-static {v0, v6, v13}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const/16 v6, 0xe
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;
move-result-object v6
invoke-static {v6}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
move-object/from16 v2, v43
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v248
check-cast v248, Lco/vine/android/api/VinePagedData;
move-object/from16 v0, v248
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
if-eqz v6, :cond_2598
move-object/from16 v0, v248
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v0, v248
iget v13, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
move-object/from16 v0, v248
iget v0, v0, Lco/vine/android/api/VinePagedData;->previousPage:I
move/from16 v16, v0
move/from16 v0, v16
invoke-virtual {v12, v6, v13, v0}, Lco/vine/android/provider/VineDatabaseHelper;->mergeSearchedTags(Ljava/util/Collection;II)I
const-string v6, "count"
move-object/from16 v0, v248
iget v13, v0, Lco/vine/android/api/VinePagedData;->count:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "next_page"
move-object/from16 v0, v248
iget v13, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "previous_page"
move-object/from16 v0, v248
iget v13, v0, Lco/vine/android/api/VinePagedData;->previousPage:I
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:cond_2598
move-object/from16 v0, v248
iget v6, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
if-gtz v6, :cond_56
invoke-virtual {v12}, Lco/vine/android/provider/VineDatabaseHelper;->markLastTag()V
goto/16 :goto_56
:pswitch_25a3
const/16 v204, 0x1
goto/16 :goto_24f8
:pswitch_25a7
const/4 v6, 0x4
const/4 v13, 0x0
const/16 v16, 0x0
const/16 v17, 0x1
move-object/from16 v0, v16
move/from16 v1, v17
invoke-virtual {v12, v6, v13, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getNextPageCursor(IILjava/lang/String;Z)I
move-result v193
if-lez v193, :cond_24f8
move/from16 v204, v193
goto/16 :goto_24f8
:pswitch_25bb
const/4 v6, 0x4
const/4 v13, 0x0
const/16 v16, 0x0
const/16 v17, 0x1
move-object/from16 v0, v16
move/from16 v1, v17
invoke-virtual {v12, v6, v13, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getPreviousPageCursor(IILjava/lang/String;Z)I
move-result v59
if-lez v59, :cond_24f8
move/from16 v204, v59
goto/16 :goto_24f8
:sswitch_25cf
const-string v6, "notify"
const/4 v13, 0x0
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v51
move/from16 v0, v51
invoke-virtual {v12, v0}, Lco/vine/android/provider/VineDatabaseHelper;->clearCachedData(Z)V
const/16 v245, 0xc8
goto/16 :goto_56
:sswitch_25e1
invoke-virtual {v12}, Lco/vine/android/provider/VineDatabaseHelper;->clearAllData()V
const/16 v245, 0xc8
goto/16 :goto_56
:sswitch_25e8
const-string v6, "user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v10
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "blocked"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/16 v6, 0x11
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;
move-result-object v6
invoke-static {v6}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
move-object/from16 v2, v43
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v117
check-cast v117, Ljava/util/ArrayList;
const-string v6, "blocked_users"
move-object/from16 v0, p2
move-object/from16 v1, v117
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
goto/16 :goto_56
:sswitch_264a
invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackBlockUser()V
const-string v6, "user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v135
const-string v6, "block_user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v0
move-wide/16 v264, v0
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x4
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v135 .. v136}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "blocked"
aput-object v17, v13, v16
const/16 v16, 0x3
invoke-static/range {v264 .. v265}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v63
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v65, v0
const/16 v66, 0x0
const/4 v6, 0x0
new-array v0, v6, [Ljava/lang/String;
move-object/from16 v68, v0
move-object/from16 v64, v26
move-object/from16 v67, v29
invoke-static/range {v63 .. v68}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;[Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
sget-object v6, Lco/vine/android/api/VineParsers$API_RESPONSE;->SUCCESS:Lco/vine/android/api/VineParsers$API_RESPONSE;
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v13
invoke-virtual {v6, v13}, Lco/vine/android/api/VineParsers$API_RESPONSE;->equals(Ljava/lang/Object;)Z
move-result v0
move/16 v262, v0
const-string v6, "response_success"
move-object/from16 v0, p2
move/from16 v1, v262
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
goto/16 :goto_56
:sswitch_26cb
invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackUnBlockUser()V
const-string v6, "user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v135
const-string v6, "block_user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v0
move-wide/16 v268, v0
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x4
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v135 .. v136}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "blocked"
aput-object v17, v13, v16
const/16 v16, 0x3
invoke-static/range {v268 .. v269}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;
move-result-object v6
invoke-static {v6}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
sget-object v6, Lco/vine/android/api/VineParsers$API_RESPONSE;->SUCCESS:Lco/vine/android/api/VineParsers$API_RESPONSE;
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v13
invoke-virtual {v6, v13}, Lco/vine/android/api/VineParsers$API_RESPONSE;->equals(Ljava/lang/Object;)Z
move-result v0
move/16 v272, v0
const-string v6, "response_success"
move-object/from16 v0, p2
move/from16 v1, v272
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
goto/16 :goto_56
:sswitch_2747
invoke-static {}, Lco/vine/android/util/FlurryUtils;->trackReportUser()V
const-string v6, "user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v0
move-wide/16 v266, v0
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v266 .. v267}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "complaints"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v63
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v65, v0
const/16 v66, 0x0
const/4 v6, 0x0
new-array v0, v6, [Ljava/lang/String;
move-object/from16 v68, v0
move-object/from16 v64, v26
move-object/from16 v67, v29
invoke-static/range {v63 .. v68}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;[Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_279c
const-string v6, "user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v156
const-string v6, "accept"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v104
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x5
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "followers"
aput-object v17, v13, v16
const/16 v16, 0x3
const-string v17, "requests"
aput-object v17, v13, v16
const/16 v16, 0x4
invoke-static/range {v156 .. v157}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
if-eqz v104, :cond_27fe
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
const/16 v16, 0x0
move-object/from16 v0, v26
move-object/from16 v1, v16
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:cond_27fe
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_2814
const-string v6, "explicit"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v149
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "explicit"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
if-eqz v149, :cond_2864
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v63
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v65, v0
const/16 v66, 0x0
const/4 v6, 0x0
new-array v0, v6, [Ljava/lang/String;
move-object/from16 v68, v0
move-object/from16 v64, v26
move-object/from16 v67, v29
invoke-static/range {v63 .. v68}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;[Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v202
:goto_285f
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
goto/16 :goto_56
:cond_2864
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v202
goto :goto_285f
:sswitch_2875
const-string v6, "priv"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v218
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
new-instance v28, Ljava/util/ArrayList;
const/4 v6, 0x1
move-object/from16 v0, v28
invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
new-instance v13, Lorg/apache/http/message/BasicNameValuePair;
const-string v16, "private"
if-eqz v218, :cond_28d1
const-string v6, "1"
:goto_28af
move-object/from16 v0, v16
invoke-direct {v13, v0, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static/range {p0 .. p0}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:cond_28d1
const-string v6, "0"
goto :goto_28af
:sswitch_28d4
const-string v6, "page_type"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v57
const/16 v204, 0x1
packed-switch v57, :pswitch_data_3e38
:goto_28e2
:cond_28e2
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "channels"
aput-object v17, v13, v16
const/16 v16, 0x1
const-string v17, "featured"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v6, "page"
move-object/from16 v0, v26
move/from16 v1, v204
invoke-static {v0, v6, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const/16 v6, 0x12
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v237
check-cast v237, Lco/vine/android/api/VinePagedData;
move-object/from16 v0, v237
iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v122, v0
move-object/from16 v0, v237
iget v6, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
move-object/from16 v0, v237
iget v13, v0, Lco/vine/android/api/VinePagedData;->previousPage:I
move-object/from16 v0, v122
invoke-virtual {v12, v0, v6, v13}, Lco/vine/android/provider/VineDatabaseHelper;->mergeChannels(Ljava/util/Collection;II)I
move-object/from16 v0, v237
iget v6, v0, Lco/vine/android/api/VinePagedData;->nextPage:I
if-gtz v6, :cond_2948
invoke-virtual {v12}, Lco/vine/android/provider/VineDatabaseHelper;->markLastChannel()V
:cond_2948
const-string v6, "channels"
move-object/from16 v0, p2
move-object/from16 v1, v122
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
goto/16 :goto_56
:pswitch_2953
const/16 v204, 0x1
goto :goto_28e2
:pswitch_2956
const/4 v6, 0x2
const/4 v13, 0x0
const/16 v16, 0x0
const/16 v17, 0x1
move-object/from16 v0, v16
move/from16 v1, v17
invoke-virtual {v12, v6, v13, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getPreviousPageCursor(IILjava/lang/String;Z)I
move-result v59
if-lez v59, :cond_28e2
move/from16 v204, v59
goto/16 :goto_28e2
:sswitch_296a
const-string v6, "post"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
move-object/16 v281, v0
move-object/from16 v0, v281
check-cast v0, Lco/vine/android/api/VinePostResponse;
move-object/16 v281, v0
invoke-static/range {p0 .. p0}, Lco/vine/android/client/VineAPI;->getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;
move-result-object v114
invoke-virtual/range {v114 .. v114}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "timelines"
aput-object v17, v13, v16
const/16 v16, 0x1
const-string v17, "posts"
aput-object v17, v13, v16
const/16 v16, 0x2
move-object/from16 v0, v281
iget-wide v0, v0, Lco/vine/android/api/VinePostResponse;->postId:J
move-wide/from16 v19, v0
invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v159
invoke-static/range {p0 .. p0}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v123
const/16 v6, 0x8
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
move-object/from16 v0, v123
move-object/from16 v1, v159
move-object/from16 v2, v114
move-object/from16 v3, v29
move-object/from16 v4, v43
invoke-static {v0, v1, v2, v3, v4}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_2a44
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v215
check-cast v215, Lco/vine/android/api/VinePagedData;
if-eqz v215, :cond_56
move-object/from16 v0, v215
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z
move-result v6
if-nez v6, :cond_56
invoke-static/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
move-result-object v63
:try_start_29dd
move-object/from16 v0, v215
iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v64, v0
const/16 v65, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v66
const/16 v67, 0x0
const/16 v68, 0x0
const/16 v69, 0x0
const-wide/16 v70, 0x0
const/16 v72, 0x1
invoke-virtual/range {v63 .. v72}, Lco/vine/android/provider/VineDatabaseHelper;->mergePosts(Ljava/util/Collection;ILjava/lang/String;IIIJZ)Lco/vine/android/provider/DbResponse;
move-object/from16 v0, v215
iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v64, v0
const/16 v65, 0x2
invoke-static/range {v34 .. v35}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v66
const/16 v67, 0x0
const/16 v68, 0x0
const/16 v69, 0x0
const-wide/16 v70, 0x0
const/16 v72, 0x1
invoke-virtual/range {v63 .. v72}, Lco/vine/android/provider/VineDatabaseHelper;->mergePosts(Ljava/util/Collection;ILjava/lang/String;IIIJZ)Lco/vine/android/provider/DbResponse;
:try_end_2a0f
.catch Ljava/io/IOException; {:try_start_29dd .. :try_end_2a0f} :catch_2a3b
:goto_2a0f
new-instance v161, Landroid/content/Intent;
invoke-direct/range {v161 .. v161}, Landroid/content/Intent;-><init>()V
const-string v6, "co.vine.android.service.mergePostFeed"
move-object/from16 v0, v161
invoke-virtual {v0, v6}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;
const-string v13, "post"
move-object/from16 v0, v215
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
const/16 v16, 0x0
move/from16 v0, v16
invoke-virtual {v6, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v6
check-cast v6, Landroid/os/Parcelable;
move-object/from16 v0, v161
invoke-virtual {v0, v13, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const-string v6, "co.vine.android.BROADCAST"
move-object/from16 v0, p0
move-object/from16 v1, v161
invoke-virtual {v0, v1, v6}, Lco/vine/android/service/VineService;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
goto/16 :goto_56
:catch_2a3b
move-exception v139
const-string v6, "Error writing uploaded post to db"
move-object/from16 v0, v139
invoke-static {v6, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_2a0f
:cond_2a44
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v148
check-cast v148, Lco/vine/android/api/VineError;
if-eqz v202, :cond_56
if-eqz v148, :cond_56
const-string v6, "Error retrieving uploaded post from server: {} {}"
move-object/from16 v0, v202
iget v13, v0, Lco/vine/android/network/HttpOperation;->statusCode:I
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
move-object/from16 v0, v148
iget-object v0, v0, Lco/vine/android/api/VineError;->message:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v16
invoke-static {v6, v13, v0}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
goto/16 :goto_56
:sswitch_2a65
const-string v6, "gcmRegId"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v227
if-nez v227, :cond_2a71
const-string v227, ""
:cond_2a71
const-string v6, "user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v10
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
new-instance v28, Ljava/util/ArrayList;
invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "deviceToken"
move-object/from16 v0, v227
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_2ac6
const-string v6, "gcmRegId"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v227
if-nez v227, :cond_2ad2
const-string v227, ""
:cond_2ad2
const-string v6, "user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v10
const-string v6, "s_key"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v120
if-nez v120, :cond_2ae6
const-string v120, ""
:cond_2ae6
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "deviceToken"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v6, "deviceToken"
move-object/from16 v0, v26
move-object/from16 v1, v227
invoke-static {v0, v6, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
move-object/from16 v2, v120
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_2b2f
const-string v6, "notification_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v197
const-string v6, "conversation_row_id"
const-wide/16 v16, -0x1
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v67
const-wide/16 v16, 0x0
cmp-long v6, v67, v16
if-ltz v6, :cond_2b50
move-wide/from16 v0, v67
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->removeNotificationForConversation(J)V
goto/16 :goto_56
:cond_2b50
move/from16 v0, v197
invoke-virtual {v12, v0}, Lco/vine/android/provider/VineDatabaseHelper;->removeNotificationsForNotificationId(I)V
goto/16 :goto_56
:sswitch_2b57
const-string v6, "notification"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v196
check-cast v196, Lco/vine/android/api/VineSingleNotification;
invoke-virtual/range {v196 .. v196}, Lco/vine/android/api/VineSingleNotification;->isMessaging()Z
move-result v6
if-eqz v6, :cond_2bcb
const/16 v6, 0x12
move-object/from16 v0, v196
iput v6, v0, Lco/vine/android/api/VineSingleNotification;->notificationType:I
move-object/from16 v0, v196
iget-wide v0, v0, Lco/vine/android/api/VineSingleNotification;->conversationId:J
move-wide/from16 v67, v0
const/16 v69, 0x1
const/16 v71, 0x1
const/16 v72, 0x1
move-object/from16 v64, p0
move-wide/from16 v65, v34
move-object/from16 v70, v12
invoke-direct/range {v64 .. v72}, Lco/vine/android/service/VineService;->getConversationWithRemoteId(JJILco/vine/android/provider/VineDatabaseHelper;ZI)Lco/vine/android/api/VineConversation;
move-result-object v91
if-eqz v91, :cond_2bcb
move-object/from16 v0, v91
iget-wide v0, v0, Lco/vine/android/api/VineConversation;->conversationObjectId:J
move-wide/from16 v16, v0
move-wide/from16 v0, v16
move-object/from16 v2, v196
iput-wide v0, v2, Lco/vine/android/api/VineSingleNotification;->conversationRowId:J
invoke-virtual/range {v91 .. v91}, Lco/vine/android/api/VineConversation;->lastMessage()Lco/vine/android/api/VinePrivateMessage;
move-result-object v184
if-eqz v184, :cond_2bcb
move-object/from16 v0, v184
iget-object v6, v0, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;
if-eqz v6, :cond_2bcb
move-object/from16 v0, v184
iget-object v6, v0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
if-eqz v6, :cond_2bcb
move-object/from16 v0, v196
iget-object v6, v0, Lco/vine/android/api/VineSingleNotification;->imageKeys:Ljava/util/ArrayList;
new-instance v13, Lco/vine/android/util/image/ImageKey;
move-object/from16 v0, v184
iget-object v0, v0, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v16
invoke-direct {v13, v0}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, v196
iget-object v6, v0, Lco/vine/android/api/VineSingleNotification;->videoKeys:Ljava/util/ArrayList;
new-instance v13, Lco/vine/android/util/video/VideoKey;
move-object/from16 v0, v184
iget-object v0, v0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v16
invoke-direct {v13, v0}, Lco/vine/android/util/video/VideoKey;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_2bcb
const-string v6, "message"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v184
move-object/from16 v0, v196
iget v6, v0, Lco/vine/android/api/VineSingleNotification;->notificationType:I
move-object/from16 v0, v196
move-object/from16 v1, v184
invoke-virtual {v12, v0, v1, v6}, Lco/vine/android/provider/VineDatabaseHelper;->mergePushNotification(Lco/vine/android/api/VineSingleNotification;Ljava/lang/String;I)Ljava/util/ArrayList;
move-result-object v199
if-eqz v199, :cond_2d25
invoke-virtual/range {v196 .. v196}, Lco/vine/android/api/VineSingleNotification;->isMessaging()Z
move-result v6
if-eqz v6, :cond_2d25
new-instance v0, Ljava/util/ArrayList;
move-object/16 v257, v0
move-object/from16 v0, v257
move-object/from16 v1, v199
invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
new-instance v0, Lco/vine/android/util/LongSparseArray;
move-object/16 v258, v0
invoke-direct/range {v258 .. v258}, Lco/vine/android/util/LongSparseArray;-><init>()V
invoke-virtual/range {v257 .. v257}, Ljava/util/ArrayList;->size()I
move-result v6
const/4 v13, 0x1
if-le v6, v13, :cond_2d11
invoke-virtual/range {v257 .. v257}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v162
:goto_2c06
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_2c44
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v188
check-cast v188, Lco/vine/android/api/VineSingleNotification;
move-object/from16 v0, v188
iget-wide v0, v0, Lco/vine/android/api/VineSingleNotification;->conversationRowId:J
move-wide/from16 v16, v0
move-object/from16 v0, v258
move-wide/from16 v1, v16
invoke-virtual {v0, v1, v2}, Lco/vine/android/util/LongSparseArray;->get(J)Ljava/lang/Object;
move-result-object v194
check-cast v194, Lco/vine/android/api/VineSingleNotification;
if-eqz v194, :cond_2c2f
move-object/from16 v0, v194
iget v6, v0, Lco/vine/android/api/VineSingleNotification;->messageCount:I
add-int/lit8 v6, v6, 0x1
move-object/from16 v0, v194
iput v6, v0, Lco/vine/android/api/VineSingleNotification;->messageCount:I
goto :goto_2c06
:cond_2c2f
move-object/from16 v0, v188
iget-wide v0, v0, Lco/vine/android/api/VineSingleNotification;->conversationRowId:J
move-wide/from16 v16, v0
move-object/from16 v0, v258
move-wide/from16 v1, v16
move-object/from16 v3, v188
invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/util/LongSparseArray;->put(JLjava/lang/Object;)V
const/4 v6, 0x1
move-object/from16 v0, v188
iput v6, v0, Lco/vine/android/api/VineSingleNotification;->messageCount:I
goto :goto_2c06
:cond_2c44
invoke-virtual/range {v257 .. v257}, Ljava/util/ArrayList;->clear()V
invoke-virtual/range {v258 .. v258}, Lco/vine/android/util/LongSparseArray;->size()I
move-result v188
const/16 v161, 0x0
:goto_2c4d
move/from16 v0, v161
move/from16 v1, v188
if-ge v0, v1, :cond_2d11
move-object/from16 v0, v258
move/from16 v1, v161
invoke-virtual {v0, v1}, Lco/vine/android/util/LongSparseArray;->valueAt(I)Ljava/lang/Object;
move-result-object v194
check-cast v194, Lco/vine/android/api/VineSingleNotification;
move-object/from16 v0, v194
iget v6, v0, Lco/vine/android/api/VineSingleNotification;->messageCount:I
const/4 v13, 0x1
if-le v6, v13, :cond_2c90
const v6, 0x7f0e013f
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
move-object/from16 v0, v194
iget-object v0, v0, Lco/vine/android/api/VineSingleNotification;->comment:Ljava/lang/String;
move-object/from16 v17, v0
invoke-static/range {v17 .. v17}, Lco/vine/android/util/Util;->getUsernameFromActivity(Ljava/lang/String;)Ljava/lang/String;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x1
move-object/from16 v0, v194
iget v0, v0, Lco/vine/android/api/VineSingleNotification;->messageCount:I
move/from16 v17, v0
invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v17
aput-object v17, v13, v16
move-object/from16 v0, p0
invoke-virtual {v0, v6, v13}, Lco/vine/android/service/VineService;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
move-object/from16 v0, v194
iput-object v6, v0, Lco/vine/android/api/VineSingleNotification;->comment:Ljava/lang/String;
:cond_2c90
move-object/from16 v0, v257
move-object/from16 v1, v194
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, v194
iget-wide v0, v0, Lco/vine/android/api/VineSingleNotification;->conversationRowId:J
move-wide/from16 v16, v0
move-object/from16 v0, v196
iget-wide v0, v0, Lco/vine/android/api/VineSingleNotification;->conversationRowId:J
move-wide/from16 v19, v0
cmp-long v6, v16, v19
if-nez v6, :cond_2caf
move-object/from16 v0, v194
iget v6, v0, Lco/vine/android/api/VineSingleNotification;->messageCount:I
move-object/from16 v0, v196
iput v6, v0, Lco/vine/android/api/VineSingleNotification;->messageCount:I
:cond_2caf
if-lez v161, :cond_2d0d
const-string v6, "Prefetching message headers..."
invoke-static {v6}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;)V
move-object/from16 v0, v196
iget-wide v0, v0, Lco/vine/android/api/VineSingleNotification;->conversationId:J
move-wide/from16 v67, v0
const/16 v69, 0x1
const/16 v71, 0x1
const/16 v72, 0x1
move-object/from16 v64, p0
move-wide/from16 v65, v34
move-object/from16 v70, v12
invoke-direct/range {v64 .. v72}, Lco/vine/android/service/VineService;->getConversationWithRemoteId(JJILco/vine/android/provider/VineDatabaseHelper;ZI)Lco/vine/android/api/VineConversation;
move-result-object v91
if-eqz v91, :cond_2d0d
invoke-virtual/range {v91 .. v91}, Lco/vine/android/api/VineConversation;->lastMessage()Lco/vine/android/api/VinePrivateMessage;
move-result-object v173
if-eqz v184, :cond_2d0d
const/4 v6, 0x4
move/from16 v0, v161
if-ge v0, v6, :cond_2d0d
move-object/from16 v0, v173
iget-object v6, v0, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;
if-eqz v6, :cond_2d0d
move-object/from16 v0, v173
iget-object v6, v0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
if-eqz v6, :cond_2d0d
move-object/from16 v0, v196
iget-object v6, v0, Lco/vine/android/api/VineSingleNotification;->imageKeys:Ljava/util/ArrayList;
new-instance v13, Lco/vine/android/util/image/ImageKey;
move-object/from16 v0, v173
iget-object v0, v0, Lco/vine/android/api/VinePrivateMessage;->thumbnailUrl:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v16
invoke-direct {v13, v0}, Lco/vine/android/util/image/ImageKey;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, v196
iget-object v6, v0, Lco/vine/android/api/VineSingleNotification;->videoKeys:Ljava/util/ArrayList;
new-instance v13, Lco/vine/android/util/video/VideoKey;
move-object/from16 v0, v173
iget-object v0, v0, Lco/vine/android/api/VinePrivateMessage;->videoUrl:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v16
invoke-direct {v13, v0}, Lco/vine/android/util/video/VideoKey;-><init>(Ljava/lang/String;)V
invoke-virtual {v6, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_2d0d
add-int/lit8 v161, v161, 0x1
goto/16 :goto_2c4d
:cond_2d11
const-string v6, "notifications"
move-object/from16 v0, p2
move-object/from16 v1, v257
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
:cond_2d1a
:goto_2d1a
const-string v6, "notification"
move-object/from16 v0, p2
move-object/from16 v1, v196
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
goto/16 :goto_56
:cond_2d25
move-object/from16 v0, v184
move-object/from16 v1, v196
iput-object v0, v1, Lco/vine/android/api/VineSingleNotification;->comment:Ljava/lang/String;
if-eqz v199, :cond_2d1a
const-string v6, "notifications"
move-object/from16 v0, p2
move-object/from16 v1, v199
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
goto :goto_2d1a
:sswitch_2d37
const-string v6, "notification_display_id"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v6
invoke-virtual {v12, v6}, Lco/vine/android/provider/VineDatabaseHelper;->deletePushNotifications(I)I
const/16 v245, 0xc8
goto/16 :goto_56
:sswitch_2d47
const-string v6, "post_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v14
const-string v6, "network"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v190
const-string v6, "message"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v184
move-object/from16 v0, v190
invoke-static {v0, v14, v15}, Lco/vine/android/util/FlurryUtils;->trackSharePost(Ljava/lang/String;J)V
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x4
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "posts"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "share"
aput-object v17, v13, v16
const/16 v16, 0x3
aput-object v190, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
new-instance v28, Ljava/util/ArrayList;
invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "message"
move-object/from16 v0, v184
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v25
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v27, v0
const/4 v6, 0x0
new-array v0, v6, [Ljava/lang/String;
move-object/from16 v30, v0
invoke-static/range {v25 .. v30}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;[Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_2dbc
const-string v6, "post_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v14
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v73
new-instance v213, Ljava/util/HashMap;
invoke-direct/range {v213 .. v213}, Ljava/util/HashMap;-><init>()V
const-string v6, "recipients"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v223
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x1
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "conversations"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const-string v6, "postId"
invoke-static {v14, v15}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v13
move-object/from16 v0, v213
invoke-virtual {v0, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v6, "to"
invoke-static/range {v223 .. v223}, Lco/vine/android/api/VineUpload$PostInfo;->recipientsToMaps(Ljava/util/ArrayList;)Ljava/util/ArrayList;
move-result-object v13
move-object/from16 v0, v213
invoke-virtual {v0, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v6, "created"
invoke-static/range {v73 .. v74}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v13
move-object/from16 v0, v213
invoke-virtual {v0, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object/from16 v0, p0
move-object/from16 v1, v213
invoke-virtual {v0, v1}, Lco/vine/android/service/VineService;->addCountryParam(Ljava/util/HashMap;)V
const/16 v6, 0xc
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;
move-result-object v6
invoke-static {v6}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v213
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthJsonPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/HashMap;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_2e34
const-string v6, "s_key"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v120
if-nez v120, :cond_2e40
const-string v120, ""
:cond_2e40
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
const-string v17, "authenticate"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
move-object/from16 v2, v120
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_2e78
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "pendingNotificationsCount"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/16 v6, 0x15
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
const-string v13, "count"
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v6
check-cast v6, Ljava/lang/Integer;
invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I
move-result v6
move-object/from16 v0, p2
invoke-virtual {v0, v13, v6}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
goto/16 :goto_56
:sswitch_2ece
const-string v6, "q"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v219
invoke-virtual/range {v219 .. v219}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v6
invoke-static {v6}, Lco/vine/android/client/VineAPI;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v146
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
const-string v17, "search"
aput-object v17, v13, v16
const/16 v16, 0x2
aput-object v146, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
move/from16 v0, p1
sparse-switch v0, :sswitch_data_3e42
:goto_2f02
const/4 v6, 0x3
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;
move-result-object v6
invoke-static {v6}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
move-object/from16 v2, v43
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v0
move-object/16 v273, v0
move-object/from16 v0, v273
check-cast v0, Lco/vine/android/api/VinePagedData;
move-object/16 v273, v0
move-object/from16 v0, v273
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
if-eqz v6, :cond_56
move-object/from16 v0, v273
iget-object v0, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v65, v0
const/16 v66, 0x0
const/16 v67, 0x0
const/16 v68, 0x0
const/16 v69, 0x0
const/16 v70, 0x0
move-object/from16 v64, v12
invoke-virtual/range {v64 .. v70}, Lco/vine/android/provider/VineDatabaseHelper;->mergeUsers(Ljava/util/Collection;ILjava/lang/String;IILco/vine/android/util/LongSparseArray;)I
const-string v6, "q"
move-object/from16 v0, p2
move-object/from16 v1, v219
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v6, "users"
move-object/from16 v0, v273
iget-object v13, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
goto/16 :goto_56
:sswitch_2f66
const-string v6, "st"
const-string v13, "message"
move-object/from16 v0, v26
invoke-static {v0, v6, v13}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2f02
:sswitch_2f70
const-string v6, "st"
const-string v13, "mention"
move-object/from16 v0, v26
invoke-static {v0, v6, v13}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;)V
goto :goto_2f02
:sswitch_2f7a
const-string v6, "q"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v219
invoke-static/range {v219 .. v219}, Lco/vine/android/client/VineAPI;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v146
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "tags"
aput-object v17, v13, v16
const/16 v16, 0x1
const-string v17, "search"
aput-object v17, v13, v16
const/16 v16, 0x2
aput-object v146, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/16 v6, 0xe
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;
move-result-object v6
invoke-static {v6}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
move-object/from16 v2, v43
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v248
check-cast v248, Lco/vine/android/api/VinePagedData;
move-object/from16 v0, v248
iget-object v6, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
if-eqz v6, :cond_56
const-string v6, "q"
move-object/from16 v0, p2
move-object/from16 v1, v219
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v6, "tags"
move-object/from16 v0, v248
iget-object v13, v0, Lco/vine/android/api/VinePagedData;->items:Ljava/util/ArrayList;
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
goto/16 :goto_56
:sswitch_2fed
const-string v6, "loops"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v224
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x1
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "loops"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
new-instance v180, Ljava/util/LinkedList;
invoke-direct/range {v180 .. v180}, Ljava/util/LinkedList;-><init>()V
new-instance v213, Ljava/util/HashMap;
invoke-direct/range {v213 .. v213}, Ljava/util/HashMap;-><init>()V
const-string v6, "loops"
move-object/from16 v0, v213
move-object/from16 v1, v180
invoke-virtual {v0, v6, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
invoke-interface/range {v224 .. v224}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v162
:goto_3021
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_3077
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v220
check-cast v220, Lco/vine/android/util/LoopManager$Record;
new-instance v179, Ljava/util/HashMap;
invoke-direct/range {v179 .. v179}, Ljava/util/HashMap;-><init>()V
const-string v6, "postId"
move-object/from16 v0, v220
iget-wide v0, v0, Lco/vine/android/util/LoopManager$Record;->postId:J
move-wide/from16 v16, v0
invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v13
move-object/from16 v0, v179
invoke-virtual {v0, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v6, "count"
move-object/from16 v0, v220
iget v13, v0, Lco/vine/android/util/LoopManager$Record;->loopCount:I
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
move-object/from16 v0, v179
invoke-virtual {v0, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v6, "ts"
move-object/from16 v0, v220
iget-wide v0, v0, Lco/vine/android/util/LoopManager$Record;->timeStamp:J
move-wide/from16 v16, v0
move-wide/from16 v0, v16
long-to-double v0, v0
move-wide/from16 v16, v0
const-wide v19, 0x408f400000000000L
div-double v16, v16, v19
invoke-static/range {v16 .. v17}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;
move-result-object v13
move-object/from16 v0, v179
invoke-virtual {v0, v6, v13}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
move-object/from16 v0, v180
move-object/from16 v1, v179
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
goto :goto_3021
:cond_3077
const/16 v6, 0x1b
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v213
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthJsonPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/HashMap;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v235
check-cast v235, Lco/vine/android/api/VineLoopSubmissionResponse;
const-string v6, "loop_submission"
move-object/from16 v0, p2
move-object/from16 v1, v235
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
goto/16 :goto_56
:sswitch_30aa
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
const-string v17, "me"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
sget-object v6, Lco/vine/android/api/VineParsers$API_RESPONSE;->SUCCESS:Lco/vine/android/api/VineParsers$API_RESPONSE;
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v13
invoke-virtual {v6, v13}, Lco/vine/android/api/VineParsers$API_RESPONSE;->equals(Ljava/lang/Object;)Z
move-result v246
const-string v6, "response_success"
move-object/from16 v0, p2
move/from16 v1, v246
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
goto/16 :goto_56
:sswitch_30f9
const-string v6, "user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v10
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x4
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "followers"
aput-object v17, v13, v16
const/16 v16, 0x3
const-string v17, "reposts"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v64
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v66, v0
const/16 v67, 0x0
const/4 v6, 0x0
new-array v0, v6, [Ljava/lang/String;
move-object/from16 v69, v0
move-object/from16 v65, v26
move-object/from16 v68, v29
invoke-static/range {v64 .. v69}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;[Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
sget-object v6, Lco/vine/android/api/VineParsers$API_RESPONSE;->SUCCESS:Lco/vine/android/api/VineParsers$API_RESPONSE;
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v13
invoke-virtual {v6, v13}, Lco/vine/android/api/VineParsers$API_RESPONSE;->equals(Ljava/lang/Object;)Z
move-result v246
const-string v6, "response_success"
move-object/from16 v0, p2
move/from16 v1, v246
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
goto/16 :goto_56
:sswitch_3167
const-string v6, "user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v10
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x4
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "followers"
aput-object v17, v13, v16
const/16 v16, 0x3
const-string v17, "reposts"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual {v12, v10, v11}, Lco/vine/android/provider/VineDatabaseHelper;->removePostsByReposterId(J)V
sget-object v6, Lco/vine/android/api/VineParsers$API_RESPONSE;->SUCCESS:Lco/vine/android/api/VineParsers$API_RESPONSE;
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v13
invoke-virtual {v6, v13}, Lco/vine/android/api/VineParsers$API_RESPONSE;->equals(Ljava/lang/Object;)Z
move-result v246
const-string v6, "response_success"
move-object/from16 v0, p2
move/from16 v1, v246
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
goto/16 :goto_56
:sswitch_31cf
const-string v6, "page_type"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v57
move-object/from16 v33, p0
move/from16 v36, v57
move/from16 v37, p1
move-object/from16 v38, v43
move-object/from16 v39, v12
move-object/from16 v40, p2
:try_start_31e4
invoke-direct/range {v33 .. v40}, Lco/vine/android/service/VineService;->getInbox(JIILjava/lang/String;Lco/vine/android/provider/VineDatabaseHelper;Landroid/os/Bundle;)Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->getReader()Lco/vine/android/network/HttpOperationReader;
move-result-object v6
move-object v0, v6
check-cast v0, Lco/vine/android/api/VineParserReader;
move-object/from16 v29, v0
:try_end_31f1
.catch Ljava/io/IOException; {:try_start_31e4 .. :try_end_31f1} :catch_31f3
goto/16 :goto_56
:catch_31f3
move-exception v139
sget-boolean v6, Lco/vine/android/service/VineService;->LOGGABLE:Z
if-eqz v6, :cond_56
invoke-virtual/range {v139 .. v139}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_56
:sswitch_31fd
const/16 v65, 0x6
const/16 v66, 0x1
const/16 v67, 0x0
const/16 v68, 0x0
const/16 v69, 0x0
const-wide/16 v70, 0x0
const/16 v72, 0x1
move-object/from16 v64, v12
invoke-virtual/range {v64 .. v72}, Lco/vine/android/provider/VineDatabaseHelper;->savePageCursor(IILjava/lang/String;IIJZ)I
const/16 v65, 0x6
const/16 v66, 0x2
const/16 v67, 0x0
const/16 v68, 0x0
const/16 v69, 0x0
const-wide/16 v70, 0x0
const/16 v72, 0x1
move-object/from16 v64, v12
invoke-virtual/range {v64 .. v72}, Lco/vine/android/provider/VineDatabaseHelper;->savePageCursor(IILjava/lang/String;IIJZ)I
goto/16 :goto_56
:sswitch_3225
const-string v6, "network"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v191
const-string v6, "upload"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
move-object/16 v259, v0
move-object/from16 v0, v259
check-cast v0, Lco/vine/android/api/VineUpload;
move-object/16 v259, v0
invoke-virtual/range {v259 .. v259}, Lco/vine/android/api/VineUpload;->getPostInfo()Lco/vine/android/api/VineUpload$PostInfo;
move-result-object v165
move-object/from16 v0, v165
iget-object v0, v0, Lco/vine/android/api/VineUpload$PostInfo;->recipients:Ljava/util/ArrayList;
move-object/from16 v223, v0
move-object/from16 v0, v259
iget-wide v0, v0, Lco/vine/android/api/VineUpload;->conversationRowId:J
move-wide/from16 v67, v0
if-nez v223, :cond_325d
const-wide/16 v16, 0x0
cmp-long v6, v67, v16
if-lez v6, :cond_325d
move-wide/from16 v0, v67
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getConversationRecipientsFromConversationRowId(J)Ljava/util/ArrayList;
:cond_325d
if-eqz v223, :cond_32b3
invoke-virtual/range {v223 .. v223}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v162
:goto_3263
:cond_3263
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_32b3
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v222
check-cast v222, Lco/vine/android/api/VineRecipient;
invoke-virtual/range {v222 .. v222}, Lco/vine/android/api/VineRecipient;->isFromUser()Z
move-result v6
if-eqz v6, :cond_3263
move-object/from16 v0, v222
iget-wide v0, v0, Lco/vine/android/api/VineRecipient;->recipientId:J
move-wide/from16 v16, v0
const-wide/16 v19, 0x0
cmp-long v6, v16, v19
if-gtz v6, :cond_3294
move-object/from16 v0, v222
iget-wide v0, v0, Lco/vine/android/api/VineRecipient;->userId:J
move-wide/from16 v16, v0
move-wide/from16 v0, v16
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getUserRowIdForUserRemoteId(J)J
move-result-wide v16
move-wide/from16 v0, v16
move-object/from16 v2, v222
iput-wide v0, v2, Lco/vine/android/api/VineRecipient;->recipientId:J
goto :goto_3263
:cond_3294
move-object/from16 v0, v222
iget-wide v0, v0, Lco/vine/android/api/VineRecipient;->userId:J
move-wide/from16 v16, v0
const-wide/16 v19, 0x0
cmp-long v6, v16, v19
if-gez v6, :cond_3263
move-object/from16 v0, v222
iget-wide v0, v0, Lco/vine/android/api/VineRecipient;->recipientId:J
move-wide/from16 v16, v0
move-wide/from16 v0, v16
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getUserRemoteIdForUserRowId(J)J
move-result-wide v16
move-wide/from16 v0, v16
move-object/from16 v2, v222
iput-wide v0, v2, Lco/vine/android/api/VineRecipient;->userId:J
goto :goto_3263
:cond_32b3
move-wide/from16 v0, v34
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getUserRowIdForUserRemoteId(J)J
move-result-wide v71
const-wide/16 v16, 0x0
cmp-long v6, v67, v16
if-gtz v6, :cond_32c7
move-object/from16 v0, v223
move/from16 v1, v191
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->determineOrCreateBestConversationRowIdForRecipients(Ljava/util/List;I)J
move-result-wide v67
:cond_32c7
move-wide/from16 v0, v67
move-object/from16 v2, v259
iput-wide v0, v2, Lco/vine/android/api/VineUpload;->conversationRowId:J
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v73
const/16 v76, 0x0
const/16 v77, 0x0
const/16 v90, 0x0
const/16 v89, 0x0
move-object/from16 v0, v259
iget-object v6, v0, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;
if-eqz v6, :cond_3362
move-object/from16 v0, v259
iget-object v6, v0, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;
invoke-static {v6}, Lco/vine/android/util/UploadManager;->getVersionFromPath(Ljava/lang/String;)Lco/vine/android/recorder/RecordSessionVersion;
move-result-object v0
move-object/16 v278, v0
new-instance v6, Ljava/io/File;
new-instance v13, Ljava/lang/StringBuilder;
invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v259
iget-object v0, v0, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v16
invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
move-object/from16 v0, v278
iget-object v0, v0, Lco/vine/android/recorder/RecordSessionVersion;->videoOutputExtension:Ljava/lang/String;
move-object/from16 v16, v0
move-object/from16 v0, v16
invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v13
invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v13
invoke-direct {v6, v13}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v6}, Ljava/io/File;->exists()Z
move-result v6
if-eqz v6, :cond_33d9
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v13, "file://"
invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object/from16 v0, v259
iget-object v13, v0, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;
invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object/from16 v0, v278
iget-object v13, v0, Lco/vine/android/recorder/RecordSessionVersion;->videoOutputExtension:Ljava/lang/String;
invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v76
:goto_3335
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v13, "file://"
invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object/from16 v0, v259
iget-object v13, v0, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;
invoke-static {v13}, Lco/vine/android/recorder/RecordConfigUtils;->getThumbnailPath(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v77
move-object/from16 v0, v259
iget v6, v0, Lco/vine/android/api/VineUpload;->status:I
const/4 v13, 0x2
if-ne v6, v13, :cond_3362
const v6, 0x7f0e013b
move-object/from16 v0, p0
invoke-virtual {v0, v6}, Lco/vine/android/service/VineService;->getString(I)Ljava/lang/String;
move-result-object v90
const/16 v89, -0x2
:cond_3362
invoke-virtual {v12}, Lco/vine/android/provider/VineDatabaseHelper;->getNewMessageId()J
move-result-wide v69
move-object/from16 v0, v165
iget-wide v0, v0, Lco/vine/android/api/VineUpload$PostInfo;->postId:J
move-wide/from16 v16, v0
const-wide/16 v19, 0x0
cmp-long v6, v16, v19
if-lez v6, :cond_337e
move-object/from16 v0, v165
iget-object v0, v0, Lco/vine/android/api/VineUpload$PostInfo;->sharedPostVideoUrl:Ljava/lang/String;
move-object/from16 v76, v0
move-object/from16 v0, v165
iget-object v0, v0, Lco/vine/android/api/VineUpload$PostInfo;->sharedPostThumbUrl:Ljava/lang/String;
move-object/from16 v77, v0
:cond_337e
new-instance v64, Lco/vine/android/api/VinePrivateMessage;
const-wide/16 v65, -0x1
move-object/from16 v0, v165
iget-object v0, v0, Lco/vine/android/api/VineUpload$PostInfo;->message:Ljava/lang/String;
move-object/from16 v75, v0
const/16 v78, 0x1
const/16 v79, 0x0
const/16 v80, 0x0
const v81, 0x7fffffff
const-wide/16 v82, 0x0
move-object/from16 v0, v165
iget v6, v0, Lco/vine/android/api/VineUpload$PostInfo;->maxLoops:I
if-lez v6, :cond_33f2
const/16 v84, 0x1
:goto_339b
const-wide/16 v85, 0x0
move-object/from16 v0, v165
iget-wide v0, v0, Lco/vine/android/api/VineUpload$PostInfo;->postId:J
move-wide/from16 v87, v0
move-object/from16 v0, v259
iget-object v0, v0, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;
move-object/from16 v91, v0
invoke-direct/range {v64 .. v91}, Lco/vine/android/api/VinePrivateMessage;-><init>(JJJJJLjava/lang/String;Ljava/lang/String;Ljava/lang/String;IZZIJZJJILjava/lang/String;Ljava/lang/String;)V
move-wide/from16 v0, v67
move-object/from16 v2, v64
invoke-virtual {v12, v0, v1, v2}, Lco/vine/android/provider/VineDatabaseHelper;->mergeMessage(JLco/vine/android/api/VinePrivateMessage;)J
move-result-wide v81
move-object/from16 v78, v12
move-wide/from16 v79, v67
move-wide/from16 v83, v73
invoke-virtual/range {v78 .. v84}, Lco/vine/android/provider/VineDatabaseHelper;->updateConversationWithLastMessage(JJJ)V
invoke-virtual/range {v165 .. v165}, Lco/vine/android/api/VineUpload$PostInfo;->toString()Ljava/lang/String;
move-result-object v6
move-object/from16 v0, v259
iput-object v6, v0, Lco/vine/android/api/VineUpload;->postInfo:Ljava/lang/String;
const-string v6, "upload"
move-object/from16 v0, p2
move-object/from16 v1, v259
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v6, "premerged_message_id"
move-object/from16 v0, p2
move-wide/from16 v1, v81
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
goto/16 :goto_56
:cond_33d9
new-instance v6, Ljava/lang/StringBuilder;
invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V
const-string v13, "file://"
invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
move-object/from16 v0, v259
iget-object v13, v0, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;
invoke-virtual {v6, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v6
invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v76
goto/16 :goto_3335
:cond_33f2
const/16 v84, 0x0
goto :goto_339b
:sswitch_33f5
const-string v6, "upload_path"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
move-object/16 v260, v0
invoke-static/range {v260 .. v260}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_56
const/4 v6, -0x2
const v13, 0x7f0e013b
move-object/from16 v0, p0
invoke-virtual {v0, v13}, Lco/vine/android/service/VineService;->getString(I)Ljava/lang/String;
move-result-object v13
move-object/from16 v0, v260
invoke-virtual {v12, v0, v6, v13}, Lco/vine/android/provider/VineDatabaseHelper;->setMessageError(Ljava/lang/String;ILjava/lang/String;)V
goto/16 :goto_56
:sswitch_3417
const-string v6, "message_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v69
move-wide/from16 v0, v69
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->deleteMessage(J)V
goto/16 :goto_56
:sswitch_3426
const-string v6, "conversation_row_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v130
move-wide/from16 v0, v130
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getConversationRemoteId(J)J
move-result-wide v92
const-string v6, "conversation_id"
move-object/from16 v0, p2
move-wide/from16 v1, v92
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
goto/16 :goto_56
:sswitch_343f
const-string v6, "conversation_row_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v67
const-wide/16 v16, 0x0
cmp-long v6, v67, v16
if-lez v6, :cond_3516
move-wide/from16 v0, v67
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getConversationRemoteId(J)J
move-result-wide v92
:goto_3453
const-wide/16 v16, -0x1
cmp-long v6, v92, v16
if-eqz v6, :cond_56
const-string v6, "prefetch"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v216
const-string v6, "page_type"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v57
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "conversations"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v92 .. v93}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/16 v204, 0x1
packed-switch v57, :pswitch_data_3e4c
:cond_348b
:pswitch_348b
:goto_348b
const-string v13, "prefetch"
if-eqz v216, :cond_354c
const/4 v6, 0x1
:goto_3490
move-object/from16 v0, v26
invoke-static {v0, v13, v6}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const-string v6, "page"
move-object/from16 v0, v26
move/from16 v1, v204
invoke-static {v0, v6, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const/16 v6, 0x16
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-virtual/range {p0 .. p0}, Lco/vine/android/service/VineService;->getApplicationContext()Landroid/content/Context;
move-result-object v6
invoke-static {v6}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v137
check-cast v137, Lco/vine/android/api/VineParsers$VinePagedConversation;
if-eqz v137, :cond_3595
move-object/from16 v0, v137
iget-object v6, v0, Lco/vine/android/api/VineParsers$VinePagedConversation;->items:Ljava/util/ArrayList;
if-eqz v6, :cond_3595
move-object/from16 v0, v137
iget-object v6, v0, Lco/vine/android/api/VineParsers$VinePagedConversation;->items:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->isEmpty()Z
move-result v6
if-nez v6, :cond_3595
new-instance v91, Lco/vine/android/api/VineConversation;
move-object/from16 v0, v137
iget-wide v0, v0, Lco/vine/android/api/VineParsers$VinePagedConversation;->lastMessage:J
move-wide/from16 v94, v0
move-object/from16 v0, v137
iget-object v0, v0, Lco/vine/android/api/VineParsers$VinePagedConversation;->items:Ljava/util/ArrayList;
move-object/from16 v96, v0
move-object/from16 v0, v137
iget-wide v0, v0, Lco/vine/android/api/VineParsers$VinePagedConversation;->unreadMessageCount:J
move-wide/from16 v97, v0
invoke-direct/range {v91 .. v98}, Lco/vine/android/api/VineConversation;-><init>(JJLjava/util/ArrayList;J)V
move-object/from16 v0, v137
iget v6, v0, Lco/vine/android/api/VineParsers$VinePagedConversation;->networkType:I
move-object/from16 v0, v91
iput v6, v0, Lco/vine/android/api/VineConversation;->networkType:I
move-object/from16 v0, v137
iget-object v6, v0, Lco/vine/android/api/VineParsers$VinePagedConversation;->items:Ljava/util/ArrayList;
invoke-virtual {v6}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v162
:goto_3501
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_354f
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v167
check-cast v167, Lco/vine/android/api/VinePrivateMessage;
move-object/from16 v0, v137
iget v6, v0, Lco/vine/android/api/VineParsers$VinePagedConversation;->networkType:I
move-object/from16 v0, v167
iput v6, v0, Lco/vine/android/api/VinePrivateMessage;->networkType:I
goto :goto_3501
:cond_3516
const-string v6, "conversation_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v92
goto/16 :goto_3453
:pswitch_3520
const/4 v6, 0x7
const/4 v13, 0x0
invoke-static/range {v67 .. v68}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v16
const/16 v17, 0x0
move-object/from16 v0, v16
move/from16 v1, v17
invoke-virtual {v12, v6, v13, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getPreviousPageCursor(IILjava/lang/String;Z)I
move-result v192
if-lez v192, :cond_348b
move/from16 v204, v192
goto/16 :goto_348b
:pswitch_3536
const/4 v6, 0x7
const/4 v13, 0x0
invoke-static/range {v67 .. v68}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v16
const/16 v17, 0x0
move-object/from16 v0, v16
move/from16 v1, v17
invoke-virtual {v12, v6, v13, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getNextPageCursor(IILjava/lang/String;Z)I
move-result v201
if-lez v201, :cond_348b
move/from16 v204, v201
goto/16 :goto_348b
:cond_354c
const/4 v6, 0x0
goto/16 :goto_3490
:cond_354f
const-string v6, "empty"
const/4 v13, 0x0
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
:try_start_3557
move-object/from16 v0, v91
iget v0, v0, Lco/vine/android/api/VineConversation;->networkType:I
move/from16 v98, v0
move-object/from16 v0, v137
iget v0, v0, Lco/vine/android/api/VineParsers$VinePagedConversation;->nextPage:I
move/from16 v99, v0
move-object/from16 v0, v137
iget v0, v0, Lco/vine/android/api/VineParsers$VinePagedConversation;->previousPage:I
move/from16 v100, v0
move-object/from16 v0, v137
iget-wide v0, v0, Lco/vine/android/api/VineParsers$VinePagedConversation;->anchor:J
move-wide/from16 v101, v0
move-object/from16 v94, v12
move-wide/from16 v95, v34
move-object/from16 v97, v91
invoke-virtual/range {v94 .. v102}, Lco/vine/android/provider/VineDatabaseHelper;->mergeConversation(JLco/vine/android/api/VineConversation;IIIJ)J
move-result-wide v128
move-object/from16 v0, v137
iget v6, v0, Lco/vine/android/api/VineParsers$VinePagedConversation;->nextPage:I
if-gtz v6, :cond_3584
move-wide/from16 v0, v128
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->markLastMessage(J)V
:cond_3584
move-wide/from16 v0, v67
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->clearUnreadCount(J)V
:try_end_3589
.catch Ljava/io/IOException; {:try_start_3557 .. :try_end_3589} :catch_358b
goto/16 :goto_56
:catch_358b
move-exception v139
sget-boolean v6, Lco/vine/android/service/VineService;->LOGGABLE:Z
if-eqz v6, :cond_56
invoke-virtual/range {v139 .. v139}, Ljava/io/IOException;->printStackTrace()V
goto/16 :goto_56
:cond_3595
const-string v6, "empty"
const/4 v13, 0x1
move-object/from16 v0, p2
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
goto/16 :goto_56
:sswitch_359f
const-string v6, "conversation_row_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v130
move-wide/from16 v0, v130
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getConversationRemoteId(J)J
move-result-wide v92
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "conversations"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v92 .. v93}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "ignored"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v83
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v85, v0
const/16 v86, 0x0
const/4 v6, 0x0
new-array v0, v6, [Ljava/lang/String;
move-object/from16 v88, v0
move-object/from16 v84, v26
move-object/from16 v87, v29
invoke-static/range {v83 .. v88}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;[Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
move-wide/from16 v0, v92
move-wide/from16 v2, v130
invoke-virtual {v12, v0, v1, v2, v3}, Lco/vine/android/provider/VineDatabaseHelper;->deleteConversation(JJ)V
goto/16 :goto_56
:sswitch_35fb
const-string v6, "conversation_row_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v130
move-wide/from16 v0, v130
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getConversationRemoteId(J)J
move-result-wide v92
move-wide/from16 v0, v130
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->getLastMessageIdInConversation(J)J
move-result-wide v69
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "conversations"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v92 .. v93}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const-wide/16 v16, 0x0
cmp-long v6, v69, v16
if-lez v6, :cond_363b
const-string v6, "lastMessageId"
move-object/from16 v0, v26
move-wide/from16 v1, v69
invoke-static {v0, v6, v1, v2}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;J)V
:cond_363b
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthDeleteRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
move-wide/from16 v0, v92
move-wide/from16 v2, v130
invoke-virtual {v12, v0, v1, v2, v3}, Lco/vine/android/provider/VineDatabaseHelper;->deleteConversation(JJ)V
goto/16 :goto_56
:sswitch_365d
const-string v6, "user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v10
const-string v6, "block_profile_reposts"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v160
move/from16 v0, v160
invoke-virtual {v12, v10, v11, v0}, Lco/vine/android/provider/VineDatabaseHelper;->setShouldHideProfileRevines(JZ)Z
goto/16 :goto_56
:sswitch_3674
const-string v6, "message"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v64
check-cast v64, Lco/vine/android/api/VinePrivateMessage;
new-instance v28, Ljava/util/ArrayList;
invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "date"
move-object/from16 v0, v64
iget-wide v0, v0, Lco/vine/android/api/VinePrivateMessage;->localStartTime:J
move-wide/from16 v16, v0
const-string v19, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"
move-wide/from16 v0, v16
move-object/from16 v2, v19
invoke-static {v0, v1, v2}, Lco/vine/android/util/DateTimeUtil;->getTimeInStringFromMs(JLjava/lang/String;)Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x5
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "conversations"
aput-object v17, v13, v16
const/16 v16, 0x1
move-object/from16 v0, v64
iget-wide v0, v0, Lco/vine/android/api/VinePrivateMessage;->conversationId:J
move-wide/from16 v19, v0
invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "messages"
aput-object v17, v13, v16
const/16 v16, 0x3
move-object/from16 v0, v64
iget-wide v0, v0, Lco/vine/android/api/VinePrivateMessage;->messageId:J
move-wide/from16 v19, v0
invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x4
const-string v17, "viewed"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-nez v6, :cond_56
const-string v6, "Failed to send view receipt for {}."
move-object/from16 v0, v64
iget-wide v0, v0, Lco/vine/android/api/VinePrivateMessage;->messageId:J
move-wide/from16 v16, v0
invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v13
invoke-static {v6, v13}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;)V
move-object/from16 v0, v64
iget-wide v0, v0, Lco/vine/android/api/VinePrivateMessage;->localStartTime:J
move-wide/from16 v16, v0
move-object/from16 v0, v64
iget-wide v0, v0, Lco/vine/android/api/VinePrivateMessage;->messageId:J
move-wide/from16 v19, v0
move-wide/from16 v0, v16
move-wide/from16 v2, v19
invoke-virtual {v12, v0, v1, v2, v3}, Lco/vine/android/provider/VineDatabaseHelper;->updateMessageLoopStartTime(JJ)V
goto/16 :goto_56
:sswitch_3723
invoke-virtual {v12}, Lco/vine/android/provider/VineDatabaseHelper;->getMessagesThatWereViewed()Ljava/util/ArrayList;
move-result-object v185
new-instance v28, Ljava/util/ArrayList;
invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V
invoke-virtual/range {v185 .. v185}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v162
:goto_3730
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_56
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v187
check-cast v187, Lco/vine/android/provider/VineDatabaseHelper$VineViewedMessage;
invoke-virtual/range {v28 .. v28}, Ljava/util/ArrayList;->clear()V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "date"
move-object/from16 v0, v187
iget-wide v0, v0, Lco/vine/android/provider/VineDatabaseHelper$VineViewedMessage;->localStartTime:J
move-wide/from16 v16, v0
const-string v19, "yyyy-MM-dd\'T\'HH:mm:ss.SSSSSS"
move-wide/from16 v0, v16
move-object/from16 v2, v19
invoke-static {v0, v1, v2}, Lco/vine/android/util/DateTimeUtil;->getTimeInStringFromMs(JLjava/lang/String;)Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x5
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "conversations"
aput-object v17, v13, v16
const/16 v16, 0x1
move-object/from16 v0, v187
iget-wide v0, v0, Lco/vine/android/provider/VineDatabaseHelper$VineViewedMessage;->conversationId:J
move-wide/from16 v19, v0
invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "messages"
aput-object v17, v13, v16
const/16 v16, 0x3
move-object/from16 v0, v187
iget-wide v0, v0, Lco/vine/android/provider/VineDatabaseHelper$VineViewedMessage;->messageId:J
move-wide/from16 v19, v0
invoke-static/range {v19 .. v20}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x4
const-string v17, "viewed"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_37cc
const-wide/16 v16, 0x0
move-object/from16 v0, v187
iget-wide v0, v0, Lco/vine/android/provider/VineDatabaseHelper$VineViewedMessage;->messageId:J
move-wide/from16 v19, v0
move-wide/from16 v0, v16
move-wide/from16 v2, v19
invoke-virtual {v12, v0, v1, v2, v3}, Lco/vine/android/provider/VineDatabaseHelper;->updateMessageLoopStartTime(JJ)V
goto/16 :goto_3730
:cond_37cc
const-string v6, "Failed to send view receipt for {}."
move-object/from16 v0, v187
iget-wide v0, v0, Lco/vine/android/provider/VineDatabaseHelper$VineViewedMessage;->messageId:J
move-wide/from16 v16, v0
invoke-static/range {v16 .. v17}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v13
invoke-static {v6, v13}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;)V
goto/16 :goto_3730
:sswitch_37dd
const-string v6, "vanity_url"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getStringArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
move-object/16 v277, v0
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
const-string v17, "profiles"
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "vanity"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
invoke-virtual/range {v277 .. v277}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v162
:goto_380d
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_3837
invoke-interface/range {v162 .. v162}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v210
check-cast v210, Ljava/lang/String;
invoke-virtual/range {v26 .. v26}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x1
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, " "
const-string v19, "%20"
move-object/from16 v0, v210
move-object/from16 v1, v17
move-object/from16 v2, v19
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
goto :goto_380d
:cond_3837
const/4 v6, 0x2
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v0
move-object/16 v261, v0
move-object/from16 v0, v261
check-cast v0, Lco/vine/android/api/VineUser;
move-object/16 v261, v0
const-string v6, "user_id"
move-object/from16 v0, v261
iget-wide v0, v0, Lco/vine/android/api/VineUser;->userId:J
move-wide/from16 v16, v0
move-object/from16 v0, p2
move-wide/from16 v1, v16
invoke-virtual {v0, v6, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
goto/16 :goto_56
:sswitch_3875
const-string v6, "phone"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v211
const-string v6, "user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v163
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v163 .. v164}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
new-instance v28, Ljava/util/ArrayList;
const/4 v6, 0x2
move-object/from16 v0, v28
invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "phoneNumber"
move-object/from16 v0, v211
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "verifyPhoneNumber"
const/16 v16, 0x1
invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_38e9
const-string v6, "key"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v125
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
const-string v17, "verifyPhoneNumber"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
new-instance v28, Ljava/util/ArrayList;
const/4 v6, 0x1
move-object/from16 v0, v28
invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "t"
move-object/from16 v0, v125
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v25
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v27, v0
const/4 v6, 0x0
new-array v0, v6, [Ljava/lang/String;
move-object/from16 v30, v0
invoke-static/range {v25 .. v30}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;[Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_3940
const-string v6, "key"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v125
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
const-string v17, "verifyEmail"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
new-instance v28, Ljava/util/ArrayList;
const/4 v6, 0x1
move-object/from16 v0, v28
invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "t"
move-object/from16 v0, v125
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v25
move-object/from16 v0, p0
iget-object v0, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v27, v0
const/4 v6, 0x0
new-array v0, v6, [Ljava/lang/String;
move-object/from16 v30, v0
invoke-static/range {v25 .. v30}, Lco/vine/android/network/HttpOperation;->createBasicAuthPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;[Ljava/lang/String;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_3997
const-string v6, "email"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v143
const-string v6, "user_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v163
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v163 .. v164}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
new-instance v28, Ljava/util/ArrayList;
const/4 v6, 0x2
move-object/from16 v0, v28
invoke-direct {v0, v6}, Ljava/util/ArrayList;-><init>(I)V
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "email"
move-object/from16 v0, v143
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v6, Lorg/apache/http/message/BasicNameValuePair;
const-string v13, "verifyEmail"
const/16 v16, 0x1
invoke-static/range {v16 .. v16}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v16
move-object/from16 v0, v16
invoke-direct {v6, v13, v0}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:sswitch_3a0b
const-string v6, "conversation_row_id"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getLong(Ljava/lang/String;)J
move-result-wide v16
move-wide/from16 v0, v16
invoke-virtual {v12, v0, v1}, Lco/vine/android/provider/VineDatabaseHelper;->clearUnreadCount(J)V
goto/16 :goto_56
:sswitch_3a1a
const-string v6, "upload"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
move-object/16 v259, v0
move-object/from16 v0, v259
check-cast v0, Lco/vine/android/api/VineUpload;
move-object/16 v259, v0
move-object/from16 v0, p0
move-object/from16 v1, v127
move-object/from16 v2, v259
move-object/from16 v3, p2
invoke-virtual {v0, v1, v2, v3}, Lco/vine/android/service/VineService;->post(Landroid/content/Context;Lco/vine/android/api/VineUpload;Landroid/os/Bundle;)Lco/vine/android/network/HttpOperation;
move-result-object v202
const-string v6, "upload"
move-object/from16 v0, p2
move-object/from16 v1, v259
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
goto/16 :goto_56
:sswitch_3a43
const-string v6, "accept_oon"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v105
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x2
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
new-instance v28, Ljava/util/ArrayList;
invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V
new-instance v13, Lorg/apache/http/message/BasicNameValuePair;
const-string v16, "acceptsOutOfNetworkConversations"
if-eqz v105, :cond_3a9c
const-string v6, "1"
:goto_3a75
move-object/from16 v0, v16
invoke-direct {v13, v0, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:cond_3a9c
const-string v6, "0"
goto :goto_3a75
:sswitch_3a9f
const-string v6, "enable"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v145
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "preferences"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
new-instance v28, Ljava/util/ArrayList;
invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V
new-instance v13, Lorg/apache/http/message/BasicNameValuePair;
const-string v16, "disableAddressBook"
if-eqz v145, :cond_3afe
const-string v6, "0"
:goto_3ad7
move-object/from16 v0, v16
invoke-direct {v13, v0, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:cond_3afe
const-string v6, "1"
goto :goto_3ad7
:sswitch_3b01
const-string v6, "enable"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v144
const-string v6, "type"
move-object/from16 v0, p2
invoke-virtual {v0, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v255
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x3
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "users"
aput-object v17, v13, v16
const/16 v16, 0x1
invoke-static/range {v34 .. v35}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v17
aput-object v17, v13, v16
const/16 v16, 0x2
const-string v17, "preferences"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
if-nez v255, :cond_3b6a
const-string v207, "hiddenEmail"
:goto_3b38
new-instance v28, Ljava/util/ArrayList;
invoke-direct/range {v28 .. v28}, Ljava/util/ArrayList;-><init>()V
new-instance v13, Lorg/apache/http/message/BasicNameValuePair;
if-eqz v144, :cond_3b6d
const-string v6, "0"
:goto_3b43
move-object/from16 v0, v207
invoke-direct {v13, v0, v6}, Lorg/apache/http/message/BasicNameValuePair;-><init>(Ljava/lang/String;Ljava/lang/String;)V
move-object/from16 v0, v28
invoke-virtual {v0, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const/4 v6, 0x1
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v28
move-object/from16 v2, v29
invoke-static {v6, v0, v13, v1, v2}, Lco/vine/android/network/HttpOperation;->createBasicAuthPutRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/ArrayList;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
goto/16 :goto_56
:cond_3b6a
const-string v207, "hiddenPhoneNumber"
goto :goto_3b38
:cond_3b6d
const-string v6, "1"
goto :goto_3b43
:sswitch_3b70
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
invoke-virtual {v6}, Lco/vine/android/client/VineAPI;->getConfigUrl()Ljava/lang/String;
move-result-object v6
const/4 v13, 0x1
new-array v13, v13, [Ljava/lang/Object;
const/16 v16, 0x0
const-string v17, "clientflags"
aput-object v17, v13, v16
invoke-static {v6, v13}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v26
const/16 v6, 0x1d
invoke-static {v6}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v29
invoke-static/range {v127 .. v127}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v6
move-object/from16 v0, p0
iget-object v13, v0, Lco/vine/android/service/VineService;->mApi:Lco/vine/android/client/VineAPI;
move-object/from16 v0, v26
move-object/from16 v1, v29
invoke-static {v6, v0, v13, v1}, Lco/vine/android/network/HttpOperation;->createBasicAuthGetRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v202
invoke-virtual/range {v202 .. v202}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v6
if-eqz v6, :cond_56
invoke-virtual/range {v29 .. v29}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v124
check-cast v124, Lco/vine/android/api/VineClientFlags;
const-string v6, "client_flags"
move-object/from16 v0, p2
move-object/from16 v1, v124
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
goto/16 :goto_56
:sswitch_3bb6
move-object/from16 v0, p0
iget-object v6, v0, Lco/vine/android/service/VineService;->mHttpRequests:Ljava/util/concurrent/ConcurrentHashMap;
invoke-virtual {v6}, Ljava/util/concurrent/ConcurrentHashMap;->values()Ljava/util/Collection;
move-result-object v6
invoke-interface {v6}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;
move-result-object v169
:goto_3bc2
invoke-interface/range {v169 .. v169}, Ljava/util/Iterator;->hasNext()Z
move-result v6
if-eqz v6, :cond_56
invoke-interface/range {v169 .. v169}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v231
check-cast v231, Lorg/apache/http/client/methods/HttpRequestBase;
if-eqz v231, :cond_3bd9
invoke-virtual/range {v231 .. v231}, Lorg/apache/http/client/methods/HttpRequestBase;->isAborted()Z
move-result v6
if-nez v6, :cond_3bd9
invoke-virtual/range {v231 .. v231}, Lorg/apache/http/client/methods/HttpRequestBase;->abort()V
:cond_3bd9
invoke-interface/range {v169 .. v169}, Ljava/util/Iterator;->remove()V
goto :goto_3bc2
:cond_3bdd
sget-object v6, Lco/vine/android/api/VineError$VineKnownErrors;->INVALID_SESSION:Lco/vine/android/api/VineError$VineKnownErrors;
iget v6, v6, Lco/vine/android/api/VineError$VineKnownErrors;->code:I
move/from16 v0, v89
if-eq v0, v6, :cond_3bed
sget-object v6, Lco/vine/android/api/VineError$VineKnownErrors;->EXPIRED_SESSION:Lco/vine/android/api/VineError$VineKnownErrors;
iget v6, v6, Lco/vine/android/api/VineError$VineKnownErrors;->code:I
move/from16 v0, v89
if-ne v0, v6, :cond_3bf7
:cond_3bed
const-string v6, "executionCode"
const/4 v13, 0x2
move-object/from16 v0, v239
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
goto/16 :goto_c8
:cond_3bf7
sget-object v6, Lco/vine/android/api/VineError$VineKnownErrors;->CAPTCHA:Lco/vine/android/api/VineError$VineKnownErrors;
iget v6, v6, Lco/vine/android/api/VineError$VineKnownErrors;->code:I
move/from16 v0, v89
if-ne v0, v6, :cond_3c2c
const-string v6, "executionCode"
const/4 v13, 0x4
move-object/from16 v0, v239
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v6, "captcha_url"
move-object/from16 v0, v148
iget-object v13, v0, Lco/vine/android/api/VineError;->data:Ljava/lang/String;
move-object/from16 v0, v239
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_c8
:cond_3c14
const-string v6, "statusCode"
move-object/from16 v0, v239
move/from16 v1, v245
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
invoke-static/range {v221 .. v221}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_3c2c
const-string v6, "reasonPhrase"
move-object/from16 v0, v239
move-object/from16 v1, v221
invoke-virtual {v0, v6, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_3c2c
sget-boolean v6, Lco/vine/android/service/VineService;->LOGGABLE:Z
if-eqz v6, :cond_3c41
const-string v6, "{} complete {}, {}"
invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
invoke-static/range {v245 .. v245}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v16
move-object/from16 v0, v16
move-object/from16 v1, v221
invoke-static {v6, v13, v0, v1}, Lcom/edisonwang/android/slog/SLog;->i(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)V
:cond_3c41
const-string v6, "executionCode"
const/4 v13, 0x1
move-object/from16 v0, v239
invoke-virtual {v0, v6, v13}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
goto/16 :goto_c8
:cond_3c4b
move-object/from16 v29, v280
goto/16 :goto_56
nop
:sswitch_data_3e42
.sparse-switch
0x27 -> :sswitch_2f70
0x63 -> :sswitch_2f66
.end sparse-switch
:pswitch_data_3e24
.packed-switch 0x1
:pswitch_2455
:pswitch_2459
:pswitch_246e
.end packed-switch
:pswitch_data_3e2e
.packed-switch 0x1
:pswitch_25a3
:pswitch_25a7
:pswitch_25bb
.end packed-switch
:pswitch_data_3e38
.packed-switch 0x1
:pswitch_2953
:pswitch_2953
:pswitch_2956
.end packed-switch
:pswitch_data_3e06
.packed-switch 0x1
:pswitch_5e5
.end packed-switch
:pswitch_data_3e0c
.packed-switch 0x1
:pswitch_8a3
:pswitch_936
.end packed-switch
:sswitch_data_3c50
.sparse-switch
0x2 -> :sswitch_c9
0x3 -> :sswitch_29c
0x4 -> :sswitch_2a1
0x5 -> :sswitch_9e7
0x6 -> :sswitch_a33
0x7 -> :sswitch_bd8
0x8 -> :sswitch_cf4
0x9 -> :sswitch_db8
0xa -> :sswitch_15b1
0xb -> :sswitch_e02
0xc -> :sswitch_14bb
0xd -> :sswitch_13d8
0xe -> :sswitch_1549
0xf -> :sswitch_15c7
0x10 -> :sswitch_1685
0x11 -> :sswitch_17e5
0x12 -> :sswitch_17f2
0x13 -> :sswitch_186a
0x14 -> :sswitch_1c49
0x15 -> :sswitch_1e0c
0x16 -> :sswitch_f0c
0x17 -> :sswitch_f0c
0x18 -> :sswitch_195b
0x19 -> :sswitch_19f4
0x1a -> :sswitch_1ed7
0x1b -> :sswitch_2083
0x1c -> :sswitch_141a
0x1d -> :sswitch_20d5
0x1e -> :sswitch_158e
0x1f -> :sswitch_20e4
0x20 -> :sswitch_212d
0x21 -> :sswitch_21b8
0x22 -> :sswitch_222d
0x23 -> :sswitch_223f
0x24 -> :sswitch_2245
0x25 -> :sswitch_22bc
0x26 -> :sswitch_2339
0x27 -> :sswitch_2ece
0x28 -> :sswitch_2f7a
0x29 -> :sswitch_2375
0x2a -> :sswitch_24db
0x2b -> :sswitch_2483
0x2c -> :sswitch_7e5
0x2d -> :sswitch_869
0x2e -> :sswitch_25e8
0x2f -> :sswitch_264a
0x30 -> :sswitch_26cb
0x31 -> :sswitch_2747
0x32 -> :sswitch_279c
0x33 -> :sswitch_2814
0x34 -> :sswitch_2875
0x35 -> :sswitch_28d4
0x36 -> :sswitch_1a55
0x37 -> :sswitch_1ad4
0x38 -> :sswitch_1b4c
0x39 -> :sswitch_296a
0x3a -> :sswitch_25cf
0x3b -> :sswitch_25e1
0x3c -> :sswitch_2a65
0x3d -> :sswitch_2ac6
0x3e -> :sswitch_2d37
0x3f -> :sswitch_2d47
0x40 -> :sswitch_2e34
0x41 -> :sswitch_2e78
0x42 -> :sswitch_2fed
0x43 -> :sswitch_30aa
0x44 -> :sswitch_30f9
0x45 -> :sswitch_3167
0x46 -> :sswitch_14fb
0x47 -> :sswitch_1e79
0x4a -> :sswitch_31cf
0x4c -> :sswitch_343f
0x4d -> :sswitch_3426
0x4f -> :sswitch_359f
0x50 -> :sswitch_35fb
0x51 -> :sswitch_1d62
0x52 -> :sswitch_11c4
0x54 -> :sswitch_3674
0x55 -> :sswitch_3723
0x56 -> :sswitch_37dd
0x57 -> :sswitch_365d
0x58 -> :sswitch_534
0x59 -> :sswitch_3875
0x5a -> :sswitch_38e9
0x5b -> :sswitch_6ff
0x5c -> :sswitch_3997
0x5d -> :sswitch_3225
0x5e -> :sswitch_3a0b
0x5f -> :sswitch_3417
0x60 -> :sswitch_2dbc
0x61 -> :sswitch_2b57
0x62 -> :sswitch_3a1a
0x63 -> :sswitch_2ece
0x64 -> :sswitch_33f5
0x65 -> :sswitch_174d
0x66 -> :sswitch_2b2f
0x67 -> :sswitch_c90
0x68 -> :sswitch_31fd
0x69 -> :sswitch_3a43
0x6a -> :sswitch_3a9f
0x6b -> :sswitch_18f5
0x6c -> :sswitch_3b01
0x6d -> :sswitch_3940
0x6e -> :sswitch_1062
0x6f -> :sswitch_3b70
0x70 -> :sswitch_3bb6
0x71 -> :sswitch_6a3
0x72 -> :sswitch_61f
0x3e8 -> :sswitch_878
.end sparse-switch
:pswitch_data_3e4c
.packed-switch 0x1
:pswitch_348b
:pswitch_3520
:pswitch_3536
.end packed-switch
:pswitch_data_3e1e
.packed-switch 0x1
:pswitch_2049
.end packed-switch
:pswitch_data_3e14
.packed-switch 0x1
:pswitch_1323
:pswitch_132b
:pswitch_1333
.end packed-switch
.end method
.method public limitCommentAndLikesIfNeeded(Ljava/lang/StringBuilder;)V
.registers 4
const/4 v1, 0x0
invoke-static {p0}, Lco/vine/android/util/BuildUtil;->isOldDeviceOrLowEndDevice(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_11
const-string v0, "c_max"
invoke-static {p1, v0, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
const-string v0, "l_max"
invoke-static {p1, v0, v1}, Lco/vine/android/client/VineAPI;->addParam(Ljava/lang/StringBuilder;Ljava/lang/String;I)V
:cond_11
return-void
.end method
.method public onBind(Landroid/content/Intent;)Landroid/os/IBinder;
.registers 3
iget-object v0, p0, Lco/vine/android/service/VineService;->mMessenger:Landroid/os/Messenger;
invoke-virtual {v0}, Landroid/os/Messenger;->getBinder()Landroid/os/IBinder;
move-result-object v0
return-object v0
.end method
.method public onCreate()V
.registers 5
const-string v1, " + Lco/vine/android/service/VineService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onCreate()V
invoke-static {}, Ljava/util/concurrent/Executors;->newCachedThreadPool()Ljava/util/concurrent/ExecutorService;
move-result-object v0
iput-object v0, p0, Lco/vine/android/service/VineService;->mExecutor:Ljava/util/concurrent/ExecutorService;
new-instance v0, Ljava/util/LinkedHashMap;
const/16 v1, 0x32
const/high16 v2, 0x4248
invoke-direct {v0, v1, v2}, Ljava/util/LinkedHashMap;-><init>(IF)V
iput-object v0, p0, Lco/vine/android/service/VineService;->mStartIds:Ljava/util/LinkedHashMap;
iget-object v0, p0, Lco/vine/android/service/VineService;->mServiceBroadCastReceiver:Landroid/content/BroadcastReceiver;
sget-object v1, Lco/vine/android/service/VineService;->SERVICE_INTENT_FILTER:Landroid/content/IntentFilter;
const-string v2, "co.vine.android.BROADCAST"
const/4 v3, 0x0
invoke-virtual {p0, v0, v1, v2, v3}, Lco/vine/android/service/VineService;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;
const-string v1, " - Lco/vine/android/service/VineService; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onDestroy()V
.registers 3
const-string v1, " + Lco/vine/android/service/VineService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Service;->onDestroy()V
iget-object v0, p0, Lco/vine/android/service/VineService;->mServiceBroadCastReceiver:Landroid/content/BroadcastReceiver;
invoke-virtual {p0, v0}, Lco/vine/android/service/VineService;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
const-string v1, " - Lco/vine/android/service/VineService; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStartCommand(Landroid/content/Intent;II)I
.registers 14
invoke-direct {p0}, Lco/vine/android/service/VineService;->init()V
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v4
const-string v0, "ibinder"
invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v8
check-cast v8, Lco/vine/android/service/VineServiceCallback;
if-eqz v8, :cond_45
invoke-virtual {v8}, Lco/vine/android/service/VineServiceCallback;->getResponder()Lco/vine/android/service/VineServiceResponder;
move-result-object v5
:goto_15
sget-object v0, Lco/vine/android/service/VineService;->sActionMap:Ljava/util/HashMap;
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v7
check-cast v7, Ljava/lang/Integer;
if-nez v7, :cond_47
sget-boolean v0, Lco/vine/android/service/VineService;->LOGGABLE:Z
if-eqz v0, :cond_43
const-string v0, "VineService"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unknown action: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:goto_43
:cond_43
const/4 v0, 0x2
return v0
:cond_45
const/4 v5, 0x0
goto :goto_15
:cond_47
if-nez v4, :cond_62
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Intent must contain extras: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:cond_62
iget-object v9, p0, Lco/vine/android/service/VineService;->mExecutor:Ljava/util/concurrent/ExecutorService;
new-instance v0, Lco/vine/android/service/VineService$ExecutionRunnable;
invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I
move-result v3
const/4 v6, 0x0
move-object v1, p0
move v2, p3
invoke-direct/range {v0 .. v6}, Lco/vine/android/service/VineService$ExecutionRunnable;-><init>(Lco/vine/android/service/VineService;IILandroid/os/Bundle;Lco/vine/android/service/VineServiceResponder;Landroid/os/Messenger;)V
invoke-interface {v9, v0}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
iget-object v0, p0, Lco/vine/android/service/VineService;->mStartIds:Ljava/util/LinkedHashMap;
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
goto :goto_43
.end method
.method public declared-synchronized post(Landroid/content/Context;Lco/vine/android/api/VineUpload;Landroid/os/Bundle;)Lco/vine/android/network/HttpOperation;
.registers 33
monitor-enter p0
:try_start_1
invoke-static/range {p1 .. p1}, Lco/vine/android/client/VineAPI;->getInstance(Landroid/content/Context;)Lco/vine/android/client/VineAPI;
move-result-object v8
new-instance v18, Ljava/util/HashMap;
invoke-direct/range {v18 .. v18}, Ljava/util/HashMap;-><init>()V
invoke-virtual/range {p2 .. p2}, Lco/vine/android/api/VineUpload;->getPostInfo()Lco/vine/android/api/VineUpload$PostInfo;
move-result-object v5
move-object/from16 v0, p2
iget-object v0, v0, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;
move-object/from16 v17, v0
move-object/from16 v0, p2
iget-boolean v15, v0, Lco/vine/android/api/VineUpload;->isPrivate:Z
if-nez p2, :cond_38
const-string v2, "VineService"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Post failed: UploadManager returned a null upload for path="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, v17
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
:try_end_34
.catchall {:try_start_1 .. :try_end_34} :catchall_155
const/16 v16, 0x0
:goto_36
:cond_36
monitor-exit p0
return-object v16
:cond_38
:try_start_38
invoke-virtual/range {p2 .. p2}, Lco/vine/android/api/VineUpload;->getUris()[Ljava/lang/String;
move-result-object v22
invoke-static/range {p1 .. p1}, Lco/vine/android/util/MediaUtility;->getUploadType(Landroid/content/Context;)I
move-result v21
packed-switch v21, :pswitch_data_28a
const-string v19, ""
:goto_45
move-object/from16 v0, p2
iget-object v2, v0, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;
if-eqz v2, :cond_c3
move-object/from16 v0, p2
iget-object v2, v0, Lco/vine/android/api/VineUpload;->path:Ljava/lang/String;
invoke-static {v2}, Lco/vine/android/util/UploadManager;->getVersionFromPath(Ljava/lang/String;)Lco/vine/android/recorder/RecordSessionVersion;
move-result-object v24
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const/4 v3, 0x0
aget-object v3, v22, v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v25
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
move-object/from16 v0, v19
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const/4 v3, 0x1
aget-object v3, v22, v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v20
sget-object v2, Lco/vine/android/recorder/RecordSessionVersion;->SW_WEBM:Lco/vine/android/recorder/RecordSessionVersion;
move-object/from16 v0, v24
if-ne v0, v2, :cond_14a
const-string v2, "videoWebmUrl"
move-object/from16 v0, v18
move-object/from16 v1, v25
invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:goto_8e
const-string v2, "thumbnailUrl"
move-object/from16 v0, v18
move-object/from16 v1, v20
invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "model"
sget-object v3, Landroid/os/Build;->MODEL:Ljava/lang/String;
move-object/from16 v0, v18
invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v2, "device"
sget-object v3, Landroid/os/Build;->DEVICE:Ljava/lang/String;
move-object/from16 v0, v18
invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_a9
.catchall {:try_start_38 .. :try_end_a9} :catchall_155
:try_start_a9
const-string v2, "version"
invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v3
invoke-virtual/range {p1 .. p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v4
const/4 v7, 0x0
invoke-virtual {v3, v4, v7}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v3
iget v3, v3, Landroid/content/pm/PackageInfo;->versionCode:I
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
move-object/from16 v0, v18
invoke-virtual {v0, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_c3
.catchall {:try_start_a9 .. :try_end_c3} :catchall_155
.catch Ljava/lang/Exception; {:try_start_a9 .. :try_end_c3} :catch_286
:goto_c3
:cond_c3
if-nez v15, :cond_158
:try_start_c5
invoke-virtual {v8}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
const-string v7, "posts"
aput-object v7, v3, v4
invoke-static {v2, v3}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v23
const/16 v2, 0xc
invoke-static {v2}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v6
move-object/from16 v0, p0
move-object/from16 v1, v18
invoke-direct {v0, v1, v5}, Lco/vine/android/service/VineService;->insertVinePostBody(Ljava/util/HashMap;Lco/vine/android/api/VineUpload$PostInfo;)V
:goto_e2
const-string v2, "Prefix {}"
move-object/from16 v0, v19
invoke-static {v2, v0}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;)V
const-string v2, "Adding URI Params: {}, {}."
const/4 v3, 0x0
aget-object v3, v22, v3
const/4 v4, 0x1
aget-object v4, v22, v4
invoke-static {v2, v3, v4}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
invoke-static/range {p1 .. p1}, Lco/vine/android/network/ThreadedHttpOperationClient;->getInstance(Landroid/content/Context;)Lco/vine/android/network/ThreadedHttpOperationClient;
move-result-object v9
move-object/from16 v0, v23
move-object/from16 v1, v18
invoke-static {v9, v0, v8, v1, v6}, Lco/vine/android/network/HttpOperation;->createBasicAuthJsonPostRequest(Lco/vine/android/network/HttpOperationClient;Ljava/lang/StringBuilder;Lco/vine/android/client/VineAPI;Ljava/util/HashMap;Lco/vine/android/network/HttpOperationReader;)Lco/vine/android/network/HttpOperation;
move-result-object v2
invoke-virtual {v2}, Lco/vine/android/network/HttpOperation;->execute()Lco/vine/android/network/HttpOperation;
move-result-object v16
invoke-virtual/range {v16 .. v16}, Lco/vine/android/network/HttpOperation;->isOK()Z
move-result v2
if-eqz v2, :cond_1e4
if-nez v15, :cond_1d7
invoke-virtual {v6}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v26
check-cast v26, Lco/vine/android/api/VinePostResponse;
if-nez v26, :cond_1bb
const/16 v16, 0x0
goto/16 :goto_36
:pswitch_118
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v8}, Lco/vine/android/client/VineAPI;->getAmazonUrl()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/service/VineService;->mAmazonBucket:Ljava/lang/String;
if-eqz v2, :cond_145
move-object/from16 v0, p0
iget-object v2, v0, Lco/vine/android/service/VineService;->mAmazonBucket:Ljava/lang/String;
:goto_135
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "/"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v19
goto/16 :goto_45
:cond_145
invoke-static/range {p1 .. p1}, Lco/vine/android/client/Amazon;->getBucket(Landroid/content/Context;)Ljava/lang/String;
move-result-object v2
goto :goto_135
:cond_14a
const-string v2, "videoUrl"
move-object/from16 v0, v18
move-object/from16 v1, v25
invoke-virtual {v0, v2, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
:try_end_153
.catchall {:try_start_c5 .. :try_end_153} :catchall_155
goto/16 :goto_8e
:catchall_155
move-exception v2
monitor-exit p0
throw v2
:try_start_158
:cond_158
invoke-virtual {v8}, Lco/vine/android/client/VineAPI;->getBaseUrl()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
const-string v7, "conversations"
aput-object v7, v3, v4
invoke-static {v2, v3}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v23
invoke-static/range {p1 .. p1}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
move-result-object v12
move-object/from16 v0, p2
iget-wide v2, v0, Lco/vine/android/api/VineUpload;->conversationRowId:J
invoke-virtual {v12, v2, v3}, Lco/vine/android/provider/VineDatabaseHelper;->getConversationRemoteId(J)J
move-result-wide v10
const-wide/16 v2, 0x0
cmp-long v2, v10, v2
if-lez v2, :cond_1a2
invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {v10, v11}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v7
aput-object v7, v3, v4
invoke-static {v2, v3}, Lco/vine/android/client/VineAPI;->buildUponUrl(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v23
:cond_18c
:goto_18c
const/16 v2, 0x18
invoke-static {v2}, Lco/vine/android/api/VineParserReader;->createParserReader(I)Lco/vine/android/api/VineParserReader;
move-result-object v6
move-object/from16 v0, p0
move-object/from16 v1, v18
invoke-direct {v0, v1, v5, v10, v11}, Lco/vine/android/service/VineService;->insertVineMessageBody(Ljava/util/HashMap;Lco/vine/android/api/VineUpload$PostInfo;J)V
move-object/from16 v0, p0
move-object/from16 v1, v18
invoke-virtual {v0, v1}, Lco/vine/android/service/VineService;->addCountryParam(Ljava/util/HashMap;)V
goto/16 :goto_e2
:cond_1a2
iget-object v2, v5, Lco/vine/android/api/VineUpload$PostInfo;->recipients:Ljava/util/ArrayList;
if-nez v2, :cond_18c
move-object/from16 v0, p2
iget-wide v2, v0, Lco/vine/android/api/VineUpload;->conversationRowId:J
const-wide/16 v27, 0x0
cmp-long v2, v2, v27
if-lez v2, :cond_18c
move-object/from16 v0, p2
iget-wide v2, v0, Lco/vine/android/api/VineUpload;->conversationRowId:J
invoke-virtual {v12, v2, v3}, Lco/vine/android/provider/VineDatabaseHelper;->getConversationRecipientsFromConversationRowId(J)Ljava/util/ArrayList;
move-result-object v2
iput-object v2, v5, Lco/vine/android/api/VineUpload$PostInfo;->recipients:Ljava/util/ArrayList;
goto :goto_18c
:cond_1bb
new-instance v14, Landroid/content/Intent;
const-string v2, "co.vine.android.service.mergePost"
invoke-direct {v14, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V
const-string v2, "post"
move-object/from16 v0, v26
invoke-virtual {v14, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
const-string v2, "Regular video post successful, sending merge broadcast now"
invoke-static {v2}, Lcom/edisonwang/android/slog/SLog;->d(Ljava/lang/String;)V
const-string v2, "co.vine.android.BROADCAST"
move-object/from16 v0, p1
invoke-virtual {v0, v14, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V
goto/16 :goto_36
:cond_1d7
move-object/from16 v2, p0
move-object/from16 v3, p1
move-object/from16 v4, p2
move-object/from16 v7, p3
invoke-direct/range {v2 .. v7}, Lco/vine/android/service/VineService;->handleVinePrivateMessageResponses(Landroid/content/Context;Lco/vine/android/api/VineUpload;Lco/vine/android/api/VineUpload$PostInfo;Lco/vine/android/api/VineParserReader;Landroid/os/Bundle;)V
goto/16 :goto_36
:cond_1e4
invoke-virtual {v6}, Lco/vine/android/api/VineParserReader;->getParsedObject()Ljava/lang/Object;
move-result-object v13
check-cast v13, Lco/vine/android/api/VineError;
if-eqz v13, :cond_24b
const-string v2, "ERROR POSTING: {} {}"
move-object/from16 v0, v16
iget v3, v0, Lco/vine/android/network/HttpOperation;->statusCode:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
iget-object v4, v13, Lco/vine/android/api/VineError;->message:Ljava/lang/String;
invoke-static {v2, v3, v4}, Lcom/edisonwang/android/slog/SLog;->e(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Object;)V
iget v2, v13, Lco/vine/android/api/VineError;->errorCode:I
sget-object v3, Lco/vine/android/api/VineError$VineKnownErrors;->CAPTCHA:Lco/vine/android/api/VineError$VineKnownErrors;
iget v3, v3, Lco/vine/android/api/VineError$VineKnownErrors;->code:I
if-ne v2, v3, :cond_229
iget-object v2, v13, Lco/vine/android/api/VineError;->data:Ljava/lang/String;
move-object/from16 v0, p2
iput-object v2, v0, Lco/vine/android/api/VineUpload;->captchaUrl:Ljava/lang/String;
move-object/from16 v0, p2
iget-boolean v2, v0, Lco/vine/android/api/VineUpload;->isPrivate:Z
if-eqz v2, :cond_229
invoke-static/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
move-result-object v2
move-object/from16 v0, p2
iget-wide v3, v0, Lco/vine/android/api/VineUpload;->mergedMessageId:J
iget v7, v13, Lco/vine/android/api/VineError;->errorCode:I
const v27, 0x7f0e013b
move-object/from16 v0, p0
move/from16 v1, v27
invoke-virtual {v0, v1}, Lco/vine/android/service/VineService;->getString(I)Ljava/lang/String;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v2, v3, v4, v7, v0}, Lco/vine/android/provider/VineDatabaseHelper;->setMessageError(JILjava/lang/String;)V
:cond_229
move-object/from16 v0, p2
iget-boolean v2, v0, Lco/vine/android/api/VineUpload;->isPrivate:Z
if-eqz v2, :cond_36
invoke-static/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
move-result-object v2
move-object/from16 v0, p2
iget-wide v3, v0, Lco/vine/android/api/VineUpload;->mergedMessageId:J
iget v7, v13, Lco/vine/android/api/VineError;->errorCode:I
const v27, 0x7f0e013b
move-object/from16 v0, p0
move/from16 v1, v27
invoke-virtual {v0, v1}, Lco/vine/android/service/VineService;->getString(I)Ljava/lang/String;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v2, v3, v4, v7, v0}, Lco/vine/android/provider/VineDatabaseHelper;->setMessageError(JILjava/lang/String;)V
goto/16 :goto_36
:cond_24b
move-object/from16 v0, p2
iget-boolean v2, v0, Lco/vine/android/api/VineUpload;->isPrivate:Z
if-eqz v2, :cond_26a
invoke-static/range {p0 .. p0}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
move-result-object v2
move-object/from16 v0, p2
iget-wide v3, v0, Lco/vine/android/api/VineUpload;->mergedMessageId:J
const/4 v7, -0x1
const v27, 0x7f0e013b
move-object/from16 v0, p0
move/from16 v1, v27
invoke-virtual {v0, v1}, Lco/vine/android/service/VineService;->getString(I)Ljava/lang/String;
move-result-object v27
move-object/from16 v0, v27
invoke-virtual {v2, v3, v4, v7, v0}, Lco/vine/android/provider/VineDatabaseHelper;->setMessageError(JILjava/lang/String;)V
:cond_26a
const-string v2, "VineService"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "Post failed: Unknown error while posting path="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, v17
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/edisonwang/android/slog/SLog;->dWithTag(Ljava/lang/String;Ljava/lang/String;)V
:try_end_284
.catchall {:try_start_158 .. :try_end_284} :catchall_155
goto/16 :goto_36
:catch_286
move-exception v2
goto/16 :goto_c3
nop
:pswitch_data_28a
.packed-switch 0x1
:pswitch_118
.end packed-switch
.end method