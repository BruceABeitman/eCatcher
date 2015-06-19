.class public Lco/vine/android/provider/VineProvider;
.super Landroid/content/ContentProvider;
.source "VineProvider.java"
.field private static final ACTIVITY:I = 0x21
.field private static final ACTIVITY_WITH_FOLLOW_REQUESTS:I = 0x22
.field private static final ACTIVITY_WITH_FOLLOW_REQUESTS_ALL:I = 0x23
.field private static final CHANNELS:I = 0x8
.field private static final COMMENTS:I = 0x4
.field private static final CONVERSATION:I = 0x76
.field private static final CONVERSATION_MESSAGE_USER:I = 0x71
.field private static final CONVERSATION_RECIPIENTS:I = 0x72
.field private static final CONVERSATION_RECIPIENTS_USERS_VIEW:I = 0x78
.field private static final CONVERSATION_SINGLE:I = 0x77
.field private static final EDITIONS:I = 0x191
.field private static final FILTER_VINE_FRIENDS:I = 0x75
.field private static final HIDE_PROFILE_REPOSTS:I = 0x74
.field private static final INBOX:I = 0x73
.field private static final LIKES:I = 0x5
.field private static final LOGGABLE:Z = false
.field private static final MESSAGES:I = 0x6f
.field private static final MESSAGES_SINGLE:I = 0x70
.field private static final NOTIFICATIONS:I = 0x6d
.field private static final POSTS:I = 0x6
.field private static final POST_GROUPS_VIEW_ALL_TIMELINE:I = 0x17
.field private static final POST_GROUPS_VIEW_ALL_TIMELINE_ON_THE_RISE:I = 0x1a
.field private static final POST_GROUPS_VIEW_ALL_TIMELINE_POPULAR_NOW:I = 0x1b
.field private static final POST_GROUPS_VIEW_ALL_TIMELINE_SINGLE:I = 0x1d
.field private static final POST_GROUPS_VIEW_ALL_TIMELINE_TAG:I = 0x1c
.field private static final POST_GROUPS_VIEW_ALL_TIMELINE_USER:I = 0x18
.field private static final POST_GROUPS_VIEW_ALL_TIMELINE_USER_LIKES:I = 0x19
.field private static final POST_GROUPS_VIEW_ARBITRARY_TIMELINE:I = 0x20
.field private static final POST_GROUPS_VIEW_TIMELINE:I = 0x14
.field private static final POST_GROUPS_VIEW_TIMELINE_CHANNEL_POPULAR:I = 0x1e
.field private static final POST_GROUPS_VIEW_TIMELINE_CHANNEL_RECENT:I = 0x1f
.field private static final POST_GROUPS_VIEW_TIMELINE_USER:I = 0x15
.field private static final POST_GROUPS_VIEW_TIMELINE_USER_LIKES:I = 0x16
.field private static final PUT_RECENT_TAG:I = 0x12d
.field private static final RECENT_TAG:I = 0x6e
.field private static final SETTINGS:I = 0x3
.field private static final TAG:Ljava/lang/String; = "VineProvider"
.field private static final TAG_SEARCH_RESULTS:I = 0x7
.field private static final UPDATE_RECENT_TAG:I = 0x1f5
.field private static final USER:I = 0x1
.field private static final USER_GROUPS_VIEW_ALL_FOLLOW:I = 0x66
.field private static final USER_GROUPS_VIEW_FIND_FRIENDS_ADDRESS:I = 0x68
.field private static final USER_GROUPS_VIEW_FIND_FRIENDS_TWITTER:I = 0x69
.field private static final USER_GROUPS_VIEW_FOLLOWERS:I = 0x65
.field private static final USER_GROUPS_VIEW_FOLLOWING:I = 0x64
.field private static final USER_GROUPS_VIEW_FRIENDS:I = 0x67
.field private static final USER_GROUPS_VIEW_LIKERS:I = 0x6a
.field private static final USER_GROUPS_VIEW_REVINERS:I = 0x6c
.field private static final USER_GROUPS_VIEW_USER_SEARCH_RESULTS:I = 0x6b
.field private static final USER_ID:I = 0x2
.field private static final sUriMatcher:Landroid/content/UriMatcher;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x3
const/4 v1, 0x1
invoke-static {}, Lco/vine/android/util/BuildUtil;->isLogsOn()Z
move-result v0
if-nez v0, :cond_10
const-string v0, "VineProvider"
invoke-static {v0, v4}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z
move-result v0
if-eqz v0, :cond_1f7
:cond_10
move v0, v1
:goto_11
sput-boolean v0, Lco/vine/android/provider/VineProvider;->LOGGABLE:Z
new-instance v0, Landroid/content/UriMatcher;
const/4 v2, -0x1
invoke-direct {v0, v2}, Landroid/content/UriMatcher;-><init>(I)V
sput-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v2, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v3, "users"
invoke-virtual {v0, v2, v3, v1}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "users/id/#"
const/4 v3, 0x2
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "settings"
invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "comments"
const/4 v3, 0x4
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "likes"
const/4 v3, 0x5
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "posts"
const/4 v3, 0x6
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "user_groups_view/following/#"
const/16 v3, 0x64
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "user_groups_view/followers/#"
const/16 v3, 0x65
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "user_groups_view/all_follow/#"
const/16 v3, 0x66
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "user_groups_view/friends/#"
const/16 v3, 0x67
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "user_groups_view/find_friends_twitter/#"
const/16 v3, 0x69
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "user_groups_view/find_friends_address/#"
const/16 v3, 0x68
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "user_groups_view/likers/#"
const/16 v3, 0x6a
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "user_groups_view/reviners/#"
const/16 v3, 0x6c
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "user_groups_view/user_search_results"
const/16 v3, 0x6b
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "post_groups_view/timeline/#"
const/16 v3, 0x14
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "post_groups_view/user_profile/#"
const/16 v3, 0x15
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "post_groups_view/user_likes/#"
const/16 v3, 0x16
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "tag_search_results"
const/4 v3, 0x7
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "tag_recently_used"
const/16 v3, 0x6e
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "users/hide_profile_reposts/#"
const/16 v3, 0x74
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "channels"
const/16 v3, 0x8
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "post_comments_likes_view/all_timeline/#"
const/16 v3, 0x17
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "post_comments_likes_view/all_timeline_user/#"
const/16 v3, 0x18
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "post_comments_likes_view/all_timeline_user_likes/#"
const/16 v3, 0x19
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "post_comments_likes_view/all_timeline_on_the_rise/#"
const/16 v3, 0x1a
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "post_comments_likes_view/all_timeline_popular/#"
const/16 v3, 0x1b
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "post_comments_likes_view/all_timeline_tag/#"
const/16 v3, 0x1c
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "post_comments_likes_view/post/#"
const/16 v3, 0x1d
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "post_comments_likes_view/timeline_channel_popular/#"
const/16 v3, 0x1e
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "post_comments_likes_view/timeline_channel_recent/#"
const/16 v3, 0x1f
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "post_comments_likes_view/timelines/#"
const/16 v3, 0x20
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "conversations"
const/16 v3, 0x76
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "conversations/conversation"
const/16 v3, 0x77
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "messages"
const/16 v3, 0x6f
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "messages/message"
const/16 v3, 0x70
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "message_users_view/conversation"
const/16 v3, 0x71
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "conversation_recipients/conversation"
const/16 v3, 0x72
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "conversation_recipients_users_view/conversation"
const/16 v3, 0x78
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "inbox_view"
const/16 v3, 0x73
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "user_groups_view/friends/filter/#"
const/16 v3, 0x75
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "tag_recently_used/put_tag"
const/16 v3, 0x12d
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "tag_recently_used/update_tag"
const/16 v3, 0x1f5
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
sget-object v1, Lco/vine/android/provider/Vine;->AUTHORITY:Ljava/lang/String;
const-string v2, "editions"
const/16 v3, 0x191
invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V
return-void
:cond_1f7
const/4 v0, 0x0
goto/16 :goto_11
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V
return-void
.end method
.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.registers 5
const/4 v0, 0x0
return v0
.end method
.method public getType(Landroid/net/Uri;)Ljava/lang/String;
.registers 5
sget-object v0, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v0
sparse-switch v0, :sswitch_data_2e
new-instance v0, Ljava/lang/IllegalArgumentException;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Unknown URL "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:sswitch_22
const-string v0, "vnd.android.cursor.dir/vnd.vine.android.users"
:goto_24
return-object v0
:sswitch_25
const-string v0, "vnd.android.cursor.item/vnd.vine.android.users"
goto :goto_24
:sswitch_28
const-string v0, "vnd.android.cursor.item/vnd.vine.android.settings"
goto :goto_24
:sswitch_2b
const-string v0, "vnd.android.cursor.dir/vnd.vine.android.users.groups"
goto :goto_24
:sswitch_data_2e
.sparse-switch
0x1 -> :sswitch_22
0x2 -> :sswitch_25
0x3 -> :sswitch_28
0x64 -> :sswitch_2b
0x65 -> :sswitch_2b
.end sparse-switch
.end method
.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.registers 12
const/4 v5, 0x0
invoke-virtual {p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v6
invoke-static {v6}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
move-result-object v6
invoke-virtual {v6}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
sget-boolean v6, Lco/vine/android/provider/VineProvider;->LOGGABLE:Z
if-eqz v6, :cond_39
const-string v6, "VineProvider"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "INSERT: uri "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v7
const-string v8, " -> "
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
sget-object v8, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
invoke-virtual {v8, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v8
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_39
const-wide/16 v3, -0x1
const-string v1, ""
sget-object v6, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v2
packed-switch v2, :pswitch_data_82
:goto_46
:cond_46
const-wide/16 v6, 0x0
cmp-long v6, v3, v6
if-ltz v6, :cond_58
invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;
move-result-object v5
invoke-virtual {v5, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v5
invoke-virtual {v5}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;
move-result-object v5
:cond_58
return-object v5
:pswitch_59
const-string v6, "tag_id"
invoke-virtual {p2, v6}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v6, "tag_recently_used"
invoke-virtual {v0, v6, v5, p2}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J
move-result-wide v3
sget-boolean v6, Lco/vine/android/provider/VineProvider;->LOGGABLE:Z
if-eqz v6, :cond_46
const-string v6, "VineProvider"
new-instance v7, Ljava/lang/StringBuilder;
invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V
const-string v8, "Tag inserted to recently-used with rowId="
invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7, v3, v4}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v7
invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v7
invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
goto :goto_46
:pswitch_data_82
.packed-switch 0x12d
:pswitch_59
.end packed-switch
.end method
.method public onCreate()Z
.registers 4
const-string v1, " + Lco/vine/android/provider/VineProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lco/vine/android/provider/VineProvider; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method
.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.registers 34
const-string v3, "limit"
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
const/16 v20, 0x0
const/16 v16, 0x0
:try_start_c
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
move-result-object v3
invoke-virtual {v3}, Lco/vine/android/provider/VineDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;
:try_end_17
.catch Landroid/database/sqlite/SQLiteException; {:try_start_c .. :try_end_17} :catch_7e
move-result-object v2
:goto_18
new-instance v1, Landroid/database/sqlite/SQLiteQueryBuilder;
invoke-direct {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V
sget-boolean v3, Lco/vine/android/provider/VineProvider;->LOGGABLE:Z
if-eqz v3, :cond_4d
const-string v3, "VineProvider"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "QUERY: uri "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
move-object/from16 v0, p1
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " -> "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
sget-object v5, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
move-object/from16 v0, p1
invoke-virtual {v5, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_4d
sget-object v3, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
move-object/from16 v0, p1
invoke-virtual {v3, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v18
sparse-switch v18, :sswitch_data_c46
:cond_58
move-object/from16 v6, v16
move-object/from16 v8, v20
:goto_5c
invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_64
move-object/from16 v8, p5
:cond_64
const/4 v7, 0x0
move-object/from16 v3, p2
move-object/from16 v4, p3
move-object/from16 v5, p4
:try_start_6b
invoke-virtual/range {v1 .. v9}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v10
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-interface {v10, v3, v0}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
:try_end_7c
.catch Ljava/lang/Exception; {:try_start_6b .. :try_end_7c} :catch_c16
move-object v14, v10
:goto_7d
return-object v14
:catch_7e
move-exception v15
const-string v3, "Failed to get a readable database on query."
const/4 v4, 0x0
new-array v4, v4, [Ljava/lang/Object;
invoke-static {v15, v3, v4}, Lco/vine/android/util/CrashUtil;->logException(Ljava/lang/Throwable;Ljava/lang/String;[Ljava/lang/Object;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
move-result-object v3
invoke-virtual {v3}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
goto :goto_18
:sswitch_94
const-string v3, "users"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
const-string v8, "username ASC"
move-object/from16 v6, v16
goto :goto_5c
:sswitch_9e
const-string v3, "users"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "user_id="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
const-string v8, "username ASC"
move-object/from16 v6, v16
goto :goto_5c
:sswitch_c2
const-string v3, "settings"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto :goto_5c
:sswitch_cc
const-string v3, "posts"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto :goto_5c
:sswitch_d6
const-string v3, "editions"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_5c
:sswitch_e1
const-string v3, "likes"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_5c
:sswitch_ec
const-string v3, "comments"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
const-string v8, "comment_id ASC"
move-object/from16 v6, v16
goto/16 :goto_5c
:sswitch_f7
const-string v3, "user_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "tag="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " AND "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "type"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v4, 0x3d
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
const/4 v4, 0x1
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
const-string v6, "user_id"
const-string v8, "order_id DESC"
goto/16 :goto_5c
:sswitch_133
const-string v3, "user_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "tag="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " AND "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "type"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v4, 0x3d
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
const/4 v4, 0x2
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
const-string v6, "user_id"
const-string v8, "order_id DESC"
goto/16 :goto_5c
:sswitch_16f
const-string v3, "user_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "tag="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " AND ("
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "type"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v4, 0x3d
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
const/4 v4, 0x2
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " OR "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "type"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v4, 0x3d
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
const/4 v4, 0x1
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, ")"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
const-string v6, "user_id"
const-string v8, "_id ASC"
goto/16 :goto_5c
:sswitch_1c8
const-string v3, "user_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "tag="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " AND "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "type"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v4, 0x3d
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v4, 0xa
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
const-string v6, "user_id"
const-string v8, "_id ASC"
goto/16 :goto_5c
:sswitch_205
const-string v3, "user_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "tag="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " AND "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "type"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v4, 0x3d
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
const/4 v4, 0x6
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
const-string v6, "user_id"
const-string v8, "_id ASC"
goto/16 :goto_5c
:sswitch_241
const-string v3, "user_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "tag="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " AND "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "type"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v4, 0x3d
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
const/4 v4, 0x7
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
const-string v6, "user_id"
const-string v8, "_id ASC"
goto/16 :goto_5c
:sswitch_27d
const-string v3, "user_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "tag="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " AND "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "type"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v4, 0x3d
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
const/4 v4, 0x5
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
const-string v6, "user_id"
const-string v8, "order_id DESC"
goto/16 :goto_5c
:sswitch_2b9
const-string v3, "user_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "tag="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " AND "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "type"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v4, 0x3d
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v4, 0x9
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
const-string v6, "user_id"
const-string v8, "order_id DESC"
goto/16 :goto_5c
:sswitch_2f6
const-string v3, "user_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
const-string v3, "type=8"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
const-string v6, "user_id"
const-string v8, "_id ASC"
goto/16 :goto_5c
:sswitch_306
const-string v3, "post_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "tag="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " AND "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "post_type"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v4, 0x3d
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
const/4 v4, 0x1
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
const-string v8, "sort_id DESC"
move-object/from16 v6, v16
goto/16 :goto_5c
:sswitch_342
const-string v3, "post_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "tag="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " AND "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "post_type"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v4, 0x3d
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
const/4 v4, 0x2
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
const-string v8, "sort_id DESC"
move-object/from16 v6, v16
goto/16 :goto_5c
:sswitch_37e
const-string v3, "post_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "tag="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " AND "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "post_type"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v4, 0x3d
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
const/4 v4, 0x3
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
const-string v8, "sort_id DESC"
move-object/from16 v6, v16
goto/16 :goto_5c
:sswitch_3ba
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lco/vine/android/util/BuildUtil;->isOldDeviceOrLowEndDevice(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_40f
const-string v3, "post_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v14, Lco/vine/android/provider/HybridPostCursorExplore;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsViewQuery;->PROJECTION:[Ljava/lang/String;
const-string v4, "tag=? AND post_type = ?"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/String;
const/4 v7, 0x0
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v7, 0x1
const/16 v27, 0x1
invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id DESC"
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v4
if-eqz v9, :cond_40d
invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
:goto_3f0
invoke-direct {v14, v4, v3}, Lco/vine/android/provider/HybridPostCursorExplore;-><init>(Landroid/database/Cursor;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursorExplore;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursorExplore;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_7d
:cond_40d
const/4 v3, 0x0
goto :goto_3f0
:cond_40f
const-string v3, "post_comments_likes_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v14, Lco/vine/android/provider/HybridPostCursor;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;
const-string v4, "tag=? AND post_type = ?"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/String;
const/4 v7, 0x0
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v7, 0x1
const/16 v27, 0x1
invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id DESC, comment_id ASC, like_id"
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v4
if-eqz v9, :cond_458
invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
:goto_43b
invoke-direct {v14, v4, v3}, Lco/vine/android/provider/HybridPostCursor;-><init>(Landroid/database/Cursor;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursor;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_7d
:cond_458
const/4 v3, 0x0
goto :goto_43b
:sswitch_45a
const-string v3, "hide_profile_reposts"
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v17
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v25
const-string v3, "0"
move-object/from16 v0, v17
invoke-virtual {v3, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v3
if-eqz v3, :cond_4c0
const/4 v3, 0x2
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v24
:goto_475
const-string p3, "tag=? AND post_type=?"
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lco/vine/android/util/BuildUtil;->isOldDeviceOrLowEndDevice(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_4c9
const-string v3, "post_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v14, Lco/vine/android/provider/HybridPostCursorExplore;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsViewQuery;->PROJECTION:[Ljava/lang/String;
const/4 v4, 0x2
new-array v5, v4, [Ljava/lang/String;
const/4 v4, 0x0
aput-object v25, v5, v4
const/4 v4, 0x1
aput-object v24, v5, v4
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id DESC"
move-object/from16 v4, p3
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v4
if-eqz v9, :cond_4c7
invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
:goto_4a3
invoke-direct {v14, v4, v3}, Lco/vine/android/provider/HybridPostCursorExplore;-><init>(Landroid/database/Cursor;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursorExplore;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursorExplore;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_7d
:cond_4c0
const/16 v3, 0xa
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v24
goto :goto_475
:cond_4c7
const/4 v3, 0x0
goto :goto_4a3
:cond_4c9
const-string v3, "post_comments_likes_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v14, Lco/vine/android/provider/HybridPostCursor;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;
const/4 v4, 0x2
new-array v5, v4, [Ljava/lang/String;
const/4 v4, 0x0
aput-object v25, v5, v4
const/4 v4, 0x1
aput-object v24, v5, v4
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id DESC, comment_id ASC, like_id"
move-object/from16 v4, p3
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v4
if-eqz v9, :cond_508
invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
:goto_4eb
invoke-direct {v14, v4, v3}, Lco/vine/android/provider/HybridPostCursor;-><init>(Landroid/database/Cursor;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursor;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_7d
:cond_508
const/4 v3, 0x0
goto :goto_4eb
:sswitch_50a
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lco/vine/android/util/BuildUtil;->isOldDeviceOrLowEndDevice(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_55f
const-string v3, "post_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v14, Lco/vine/android/provider/HybridPostCursorExplore;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsViewQuery;->PROJECTION:[Ljava/lang/String;
const-string v4, "tag=? AND post_type = ?"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/String;
const/4 v7, 0x0
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v7, 0x1
const/16 v27, 0x3
invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id DESC"
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v4
if-eqz v9, :cond_55d
invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
:goto_540
invoke-direct {v14, v4, v3}, Lco/vine/android/provider/HybridPostCursorExplore;-><init>(Landroid/database/Cursor;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursorExplore;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursorExplore;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_7d
:cond_55d
const/4 v3, 0x0
goto :goto_540
:cond_55f
const-string v3, "post_comments_likes_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v14, Lco/vine/android/provider/HybridPostCursor;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;
const-string v4, "tag=? AND post_type = ?"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/String;
const/4 v7, 0x0
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v7, 0x1
const/16 v27, 0x3
invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id DESC, comment_id ASC, like_id"
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v4
if-eqz v9, :cond_5a8
invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
:goto_58b
invoke-direct {v14, v4, v3}, Lco/vine/android/provider/HybridPostCursor;-><init>(Landroid/database/Cursor;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursor;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_7d
:cond_5a8
const/4 v3, 0x0
goto :goto_58b
:sswitch_5aa
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lco/vine/android/util/BuildUtil;->isOldDeviceOrLowEndDevice(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_5ff
const-string v3, "post_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v14, Lco/vine/android/provider/HybridPostCursorExplore;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsViewQuery;->PROJECTION:[Ljava/lang/String;
const-string v4, "tag=? AND post_type = ?"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/String;
const/4 v7, 0x0
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v7, 0x1
const/16 v27, 0x4
invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id DESC"
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v4
if-eqz v9, :cond_5fd
invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
:goto_5e0
invoke-direct {v14, v4, v3}, Lco/vine/android/provider/HybridPostCursorExplore;-><init>(Landroid/database/Cursor;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursorExplore;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursorExplore;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_7d
:cond_5fd
const/4 v3, 0x0
goto :goto_5e0
:cond_5ff
const-string v3, "post_comments_likes_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v14, Lco/vine/android/provider/HybridPostCursor;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;
const-string v4, "tag=? AND post_type = ?"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/String;
const/4 v7, 0x0
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v7, 0x1
const/16 v27, 0x4
invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id ASC, post_id DESC, comment_id ASC, like_id"
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v4
if-eqz v9, :cond_648
invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
:goto_62b
invoke-direct {v14, v4, v3}, Lco/vine/android/provider/HybridPostCursor;-><init>(Landroid/database/Cursor;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursor;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_7d
:cond_648
const/4 v3, 0x0
goto :goto_62b
:sswitch_64a
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lco/vine/android/util/BuildUtil;->isOldDeviceOrLowEndDevice(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_698
const-string v3, "post_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v14, Lco/vine/android/provider/HybridPostCursorExplore;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsViewQuery;->PROJECTION:[Ljava/lang/String;
const-string v4, "post_type = ?"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/String;
const/4 v7, 0x0
const/16 v27, 0x5
invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id DESC"
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v4
if-eqz v9, :cond_696
invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
:goto_679
invoke-direct {v14, v4, v3}, Lco/vine/android/provider/HybridPostCursorExplore;-><init>(Landroid/database/Cursor;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursorExplore;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursorExplore;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_7d
:cond_696
const/4 v3, 0x0
goto :goto_679
:cond_698
const-string v3, "post_comments_likes_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v14, Lco/vine/android/provider/HybridPostCursor;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;
const-string v4, "post_type = ?"
const/4 v5, 0x1
new-array v5, v5, [Ljava/lang/String;
const/4 v7, 0x0
const/16 v27, 0x5
invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id ASC, post_id DESC, comment_id ASC, like_id"
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v4
if-eqz v9, :cond_6da
invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
:goto_6bd
invoke-direct {v14, v4, v3}, Lco/vine/android/provider/HybridPostCursor;-><init>(Landroid/database/Cursor;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursor;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_7d
:cond_6da
const/4 v3, 0x0
goto :goto_6bd
:sswitch_6dc
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lco/vine/android/util/BuildUtil;->isOldDeviceOrLowEndDevice(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_735
const-string v3, "post_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
const-string v3, "tag_name"
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v23
new-instance v14, Lco/vine/android/provider/HybridPostCursorExplore;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsViewQuery;->PROJECTION:[Ljava/lang/String;
const-string v4, "tag=? AND post_type = ?"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/String;
const/4 v7, 0x0
aput-object v23, v5, v7
const/4 v7, 0x1
const/16 v27, 0x6
invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id DESC"
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v4
if-eqz v9, :cond_733
invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
:goto_716
invoke-direct {v14, v4, v3}, Lco/vine/android/provider/HybridPostCursorExplore;-><init>(Landroid/database/Cursor;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursorExplore;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursorExplore;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_7d
:cond_733
const/4 v3, 0x0
goto :goto_716
:cond_735
const-string v3, "post_comments_likes_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
const-string v3, "tag_name"
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v23
new-instance v14, Lco/vine/android/provider/HybridPostCursor;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;
const-string v4, "tag=? AND post_type = ?"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/String;
const/4 v7, 0x0
aput-object v23, v5, v7
const/4 v7, 0x1
const/16 v27, 0x6
invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id DESC, comment_id ASC, like_id"
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v4
if-eqz v9, :cond_782
invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
:goto_765
invoke-direct {v14, v4, v3}, Lco/vine/android/provider/HybridPostCursor;-><init>(Landroid/database/Cursor;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursor;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_7d
:cond_782
const/4 v3, 0x0
goto :goto_765
:sswitch_784
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lco/vine/android/util/BuildUtil;->isOldDeviceOrLowEndDevice(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_7d1
const-string v3, "post_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v21
new-instance v14, Lco/vine/android/provider/HybridPostCursorExplore;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsViewQuery;->PROJECTION:[Ljava/lang/String;
const-string v4, "post_id=? AND post_type=?"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/String;
const/4 v7, 0x0
aput-object v21, v5, v7
const/4 v7, 0x1
const/16 v27, 0x7
invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id DESC"
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v3
invoke-direct {v14, v3}, Lco/vine/android/provider/HybridPostCursorExplore;-><init>(Landroid/database/Cursor;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursorExplore;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursorExplore;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_7d
:cond_7d1
const-string v3, "post_comments_likes_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v21
new-instance v14, Lco/vine/android/provider/HybridPostCursor;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;
const-string v4, "post_id=? AND post_type=?"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/String;
const/4 v7, 0x0
aput-object v21, v5, v7
const/4 v7, 0x1
const/16 v27, 0x7
invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id DESC, comment_id ASC, like_id"
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v3
invoke-direct {v14, v3}, Lco/vine/android/provider/HybridPostCursor;-><init>(Landroid/database/Cursor;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursor;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_7d
:sswitch_814
const-string v3, "tag_search_results"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
const-string v8, "_id ASC"
move-object/from16 v6, v16
goto/16 :goto_5c
:sswitch_81f
const-string v3, "channels"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_5c
:sswitch_82a
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lco/vine/android/util/BuildUtil;->isOldDeviceOrLowEndDevice(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_8d4
const-string v3, "post_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
const-string v3, "channel_id"
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
new-instance v14, Lco/vine/android/provider/HybridPostCursorExplore;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsViewQuery;->PROJECTION:[Ljava/lang/String;
const-string v4, "post_type = ? AND tag = ?"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/String;
const/4 v7, 0x0
const/16 v27, 0x8
invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v7, 0x1
aput-object v11, v5, v7
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id DESC"
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v4
if-eqz v9, :cond_8d2
invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
:goto_864
invoke-direct {v14, v4, v3}, Lco/vine/android/provider/HybridPostCursorExplore;-><init>(Landroid/database/Cursor;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursorExplore;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursorExplore;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
:sswitch_87b
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lco/vine/android/util/BuildUtil;->isOldDeviceOrLowEndDevice(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_925
const-string v3, "post_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
const-string v3, "channel_id"
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
new-instance v14, Lco/vine/android/provider/HybridPostCursorExplore;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsViewQuery;->PROJECTION:[Ljava/lang/String;
const-string v4, "post_type = ? AND tag = ?"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/String;
const/4 v7, 0x0
const/16 v27, 0x9
invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v7, 0x1
aput-object v11, v5, v7
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id DESC"
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v4
if-eqz v9, :cond_923
invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
:goto_8b5
invoke-direct {v14, v4, v3}, Lco/vine/android/provider/HybridPostCursorExplore;-><init>(Landroid/database/Cursor;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursorExplore;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursorExplore;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_7d
:cond_8d2
const/4 v3, 0x0
goto :goto_864
:cond_8d4
const-string v3, "post_comments_likes_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
const-string v3, "channel_id"
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
new-instance v14, Lco/vine/android/provider/HybridPostCursor;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;
const-string v4, "post_type = ? AND tag = ?"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/String;
const/4 v7, 0x0
const/16 v27, 0x8
invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v7, 0x1
aput-object v11, v5, v7
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id ASC, post_id DESC, comment_id ASC, like_id"
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v4
if-eqz v9, :cond_921
invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
:goto_904
invoke-direct {v14, v4, v3}, Lco/vine/android/provider/HybridPostCursor;-><init>(Landroid/database/Cursor;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursor;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_7d
:cond_921
const/4 v3, 0x0
goto :goto_904
:cond_923
const/4 v3, 0x0
goto :goto_8b5
:cond_925
const-string v3, "post_comments_likes_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
const-string v3, "channel_id"
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v11
new-instance v14, Lco/vine/android/provider/HybridPostCursor;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;
const-string v4, "post_type = ? AND tag = ?"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/String;
const/4 v7, 0x0
const/16 v27, 0x9
invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v7, 0x1
aput-object v11, v5, v7
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id DESC, comment_id ASC, like_id"
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v4
if-eqz v9, :cond_972
invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
:goto_955
invoke-direct {v14, v4, v3}, Lco/vine/android/provider/HybridPostCursor;-><init>(Landroid/database/Cursor;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursor;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_7d
:cond_972
const/4 v3, 0x0
goto :goto_955
:sswitch_974
const-string v3, "tag_name"
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v23
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lco/vine/android/util/BuildUtil;->isOldDeviceOrLowEndDevice(Landroid/content/Context;)Z
move-result v3
if-eqz v3, :cond_9d2
const-string v3, "post_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v14, Lco/vine/android/provider/HybridPostCursorExplore;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostGroupsViewQuery;->PROJECTION:[Ljava/lang/String;
const-string v4, "post_type = ? AND tag = ?"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/String;
const/4 v7, 0x0
const/16 v27, 0xb
invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v7, 0x1
aput-object v23, v5, v7
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id DESC"
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v4
if-eqz v9, :cond_9d0
invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
:goto_9ae
invoke-direct {v14, v4, v3}, Lco/vine/android/provider/HybridPostCursorExplore;-><init>(Landroid/database/Cursor;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursorExplore;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursorExplore;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
:sswitch_9c5
const-string v3, "notifications"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_5c
:cond_9d0
const/4 v3, 0x0
goto :goto_9ae
:cond_9d2
const-string v3, "post_comments_likes_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v14, Lco/vine/android/provider/HybridPostCursor;
sget-object v3, Lco/vine/android/provider/VineDatabaseSQL$PostCommentsLikesQuery;->PROJECTION:[Ljava/lang/String;
const-string v4, "post_type = ? AND tag = ?"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/String;
const/4 v7, 0x0
const/16 v27, 0xb
invoke-static/range {v27 .. v27}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v27
aput-object v27, v5, v7
const/4 v7, 0x1
aput-object v23, v5, v7
const/4 v6, 0x0
const/4 v7, 0x0
const-string v8, "sort_id ASC, post_id DESC, comment_id ASC, like_id"
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v4
if-eqz v9, :cond_a17
invoke-static {v9}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v3
:goto_9fa
invoke-direct {v14, v4, v3}, Lco/vine/android/provider/HybridPostCursor;-><init>(Landroid/database/Cursor;I)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v14, v3}, Lco/vine/android/provider/HybridPostCursor;->prepare(Landroid/content/Context;)V
invoke-virtual/range {p0 .. p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v3
move-object/from16 v0, p1
invoke-virtual {v14, v3, v0}, Lco/vine/android/provider/HybridPostCursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_7d
:cond_a17
const/4 v3, 0x0
goto :goto_9fa
:sswitch_a19
const-string v3, "tag_recently_used"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
const/4 v7, 0x0
move-object/from16 v3, p2
move-object/from16 v4, p3
move-object/from16 v5, p4
move-object/from16 v6, v16
move-object/from16 v8, p5
invoke-virtual/range {v1 .. v8}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
move-result-object v14
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_7d
:sswitch_a33
const-string v3, "messages"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_5c
:sswitch_a3e
const-string v3, "message_id"
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v19
const-string v3, "messages"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "message_id="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, v19
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_5c
:sswitch_a69
const-string v3, "conversations"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_5c
:sswitch_a74
const-string v3, "conversation_id"
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v12
const-string v3, "conversations"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "conversation_id="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_5c
:sswitch_a9d
const-string v3, "conversation_row_id"
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
const-string v3, "message_users_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "conversation_row_id="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
const-string p3, "deleted=0"
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_5c
:sswitch_ac8
const-string v3, "conversation_row_id"
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
const-string v3, "conversation_recipients"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "conversation_row_id="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
const-string v6, "user_row_id"
move-object/from16 v8, v20
goto/16 :goto_5c
:sswitch_af1
const-string v3, "conversation_row_id"
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v13
const-string v3, "conversation_recipients_users_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "conversation_row_id="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
const-string v6, "user_row_id"
move-object/from16 v8, v20
goto/16 :goto_5c
:sswitch_b1a
const-string v3, "inbox_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "is_hidden="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "hidden"
move-object/from16 v0, p1
invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " AND "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "network_type"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const/16 v4, 0x3d
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "network_type"
move-object/from16 v0, p1
invoke-virtual {v0, v4}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_5c
:sswitch_b61
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v25
const-string p3, "user_id=?"
const/4 v3, 0x1
new-array v0, v3, [Ljava/lang/String;
move-object/from16 p4, v0
const/4 v3, 0x0
invoke-static/range {v25 .. v25}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v4
aput-object v4, p4, v3
const-string v3, "users"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_5c
:sswitch_b7e
const-string v3, "user_groups_view"
invoke-virtual {v1, v3}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V
const-string v3, "filter"
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/net/Uri;->decode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v22
const-string v3, "group_type"
move-object/from16 v0, p1
invoke-virtual {v0, v3}, Landroid/net/Uri;->getQueryParameter(Ljava/lang/String;)Ljava/lang/String;
move-result-object v24
invoke-static/range {v22 .. v22}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_58
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "%"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, v22
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "%"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v26
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "tag="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " AND "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "type"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "="
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
move-object/from16 v0, v24
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " AND ("
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "username"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " LIKE ? OR "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "description"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, " LIKE ?)"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object p3
const/4 v3, 0x2
new-array v0, v3, [Ljava/lang/String;
move-object/from16 p4, v0
const/4 v3, 0x0
aput-object v26, p4, v3
const/4 v3, 0x1
aput-object v26, p4, v3
move-object/from16 v6, v16
move-object/from16 v8, v20
goto/16 :goto_5c
:catch_c16
move-exception v15
const-string v3, "Cannot execute {} - {}: {} {} {} {} {}."
const/4 v4, 0x7
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
aput-object p1, v4, v5
const/4 v5, 0x1
invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v7
aput-object v7, v4, v5
const/4 v5, 0x2
invoke-virtual {v2}, Landroid/database/sqlite/SQLiteDatabase;->toString()Ljava/lang/String;
move-result-object v7
aput-object v7, v4, v5
const/4 v5, 0x3
invoke-virtual {v1}, Landroid/database/sqlite/SQLiteQueryBuilder;->getTables()Ljava/lang/String;
move-result-object v7
aput-object v7, v4, v5
const/4 v5, 0x4
aput-object p3, v4, v5
const/4 v5, 0x5
aput-object v6, v4, v5
const/4 v5, 0x6
aput-object v8, v4, v5
invoke-static {v3, v4}, Lco/vine/android/util/CrashUtil;->log(Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v3, Ljava/lang/RuntimeException;
invoke-direct {v3, v15}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V
throw v3
:sswitch_data_c46
.sparse-switch
0x1 -> :sswitch_94
0x2 -> :sswitch_9e
0x3 -> :sswitch_c2
0x4 -> :sswitch_ec
0x5 -> :sswitch_e1
0x6 -> :sswitch_cc
0x7 -> :sswitch_814
0x8 -> :sswitch_81f
0x14 -> :sswitch_306
0x15 -> :sswitch_342
0x16 -> :sswitch_37e
0x17 -> :sswitch_3ba
0x18 -> :sswitch_45a
0x19 -> :sswitch_50a
0x1a -> :sswitch_5aa
0x1b -> :sswitch_64a
0x1c -> :sswitch_6dc
0x1d -> :sswitch_784
0x1e -> :sswitch_82a
0x1f -> :sswitch_87b
0x20 -> :sswitch_974
0x64 -> :sswitch_f7
0x65 -> :sswitch_133
0x66 -> :sswitch_16f
0x67 -> :sswitch_1c8
0x68 -> :sswitch_241
0x69 -> :sswitch_205
0x6a -> :sswitch_27d
0x6b -> :sswitch_2f6
0x6c -> :sswitch_2b9
0x6d -> :sswitch_9c5
0x6e -> :sswitch_a19
0x6f -> :sswitch_a33
0x70 -> :sswitch_a3e
0x71 -> :sswitch_a9d
0x72 -> :sswitch_ac8
0x73 -> :sswitch_b1a
0x74 -> :sswitch_b61
0x75 -> :sswitch_b7e
0x76 -> :sswitch_a69
0x77 -> :sswitch_a74
0x78 -> :sswitch_af1
0x191 -> :sswitch_d6
.end sparse-switch
.end method
.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.registers 11
invoke-virtual {p0}, Lco/vine/android/provider/VineProvider;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lco/vine/android/provider/VineDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lco/vine/android/provider/VineDatabaseHelper;
move-result-object v3
invoke-virtual {v3}, Lco/vine/android/provider/VineDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v0
sget-boolean v3, Lco/vine/android/provider/VineProvider;->LOGGABLE:Z
if-eqz v3, :cond_38
const-string v3, "VineProvider"
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "UPDATE: uri "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, " -> "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
sget-object v5, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
:cond_38
const/4 v2, 0x0
sget-object v3, Lco/vine/android/provider/VineProvider;->sUriMatcher:Landroid/content/UriMatcher;
invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I
move-result v1
packed-switch v1, :pswitch_data_4a
:goto_42
return v2
:pswitch_43
const-string v3, "tag_recently_used"
invoke-virtual {v0, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
goto :goto_42
nop
:pswitch_data_4a
.packed-switch 0x1f5
:pswitch_43
.end packed-switch
.end method