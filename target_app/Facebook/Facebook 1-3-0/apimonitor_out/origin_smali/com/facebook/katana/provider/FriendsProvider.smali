.class public Lcom/facebook/katana/provider/FriendsProvider;
.super Landroid/content/ContentProvider;
.source "FriendsProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/facebook/katana/provider/FriendsProvider$BirthdayColumns;,
        Lcom/facebook/katana/provider/FriendsProvider$ContactInfoColumns;,
        Lcom/facebook/katana/provider/FriendsProvider$DefaultUserImagesColumns;,
        Lcom/facebook/katana/provider/FriendsProvider$FriendColumns;,
        Lcom/facebook/katana/provider/FriendsProvider$SearchResultColumns;,
        Lcom/facebook/katana/provider/FriendsProvider$UserColumns;
    }
.end annotation


# static fields
.field private static final AUTHORITY:Ljava/lang/String; = "com.facebook.katana.provider.FriendsProvider"

.field private static final BASE_CONTENT_URI:Ljava/lang/String; = "content://com.facebook.katana.provider.FriendsProvider/"

.field private static final CONTACT_INFOS:I = 0xa

.field public static final CONTACT_INFO_CONTENT_URI:Landroid/net/Uri; = null

.field private static final CONTACT_INFO_ID:I = 0xb

.field private static final CONTACT_INFO_PROJECTION_MAP:Ljava/util/HashMap; = null
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

.field private static final CONTACT_INFO_TABLE:Ljava/lang/String; = "info_contacts"

.field private static final CONTACT_INFO_UID:I = 0xc

.field public static final CONTACT_INFO_UID_CONTENT_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_USER_IMAGE_CONTENT_URI:Landroid/net/Uri; = null

.field private static final DEFAULT_USER_IMAGE_PROJECTION_MAP:Ljava/util/HashMap; = null
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

.field private static final DEFAULT_USER_IMAGE_TABLE:Ljava/lang/String; = "default_user_images"

.field private static final FRIENDS:I = 0x1

.field public static final FRIENDS_BIRTHDAY_CONTENT_URI:Landroid/net/Uri; = null

.field public static final FRIENDS_CONTENT_URI:Landroid/net/Uri; = null

.field private static final FRIENDS_PROJECTION_MAP:Ljava/util/HashMap; = null
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

.field public static final FRIENDS_SEARCH_CONTENT_URI:Landroid/net/Uri; = null

.field private static final FRIENDS_TABLE:Ljava/lang/String; = "friends"

.field private static final FRIEND_BIRTHDAYS:I = 0x5

.field private static final FRIEND_ID:I = 0x2

.field private static final FRIEND_SEARCH:I = 0x4

.field private static final FRIEND_UID:I = 0x3

.field public static final FRIEND_UID_CONTENT_URI:Landroid/net/Uri; = null

.field public static final LIVE_FOLDERS_CONTENT_URI:Landroid/net/Uri; = null

.field private static final LIVE_FOLDER_FRIENDS:I = 0x28

.field private static final LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap; = null
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

.field private static final SEARCH_RESULTS:I = 0x1f

.field public static final SEARCH_RESULTS_CONTENT_URI:Landroid/net/Uri; = null

.field private static final SEARCH_RESULTS_PROJECTION_MAP:Ljava/util/HashMap; = null
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

.field private static final SEARCH_RESULTS_TABLE:Ljava/lang/String; = "search_results"

.field private static final SEARCH_RESULT_ID:I = 0x20

.field private static final SEARCH_RESULT_UID:I = 0x21

.field public static final SEARCH_RESULT_UID_CONTENT_URI:Landroid/net/Uri; = null

.field private static final SQL_CONTACT_INFO:Ljava/lang/String; = "CREATE TABLE info_contacts (_id INTEGER PRIMARY KEY,user_id INT,cell TEXT,other TEXT,email TEXT);"

.field private static final SQL_DEFAULT_USER_IMAGE:Ljava/lang/String; = "CREATE TABLE default_user_images (_id INTEGER PRIMARY KEY,user_image BLOB);"

.field private static final SQL_FRIENDS:Ljava/lang/String; = "CREATE TABLE friends (_id INTEGER PRIMARY KEY,user_id INT,first_name TEXT,last_name TEXT,display_name TEXT,user_image_url TEXT,user_image BLOB,intent TEXT,birthday_month INT,birthday_day INT,birthday_year INT,hash TEXT);"

.field private static final SQL_SEARCH_RESULTS:Ljava/lang/String; = "CREATE TABLE search_results (_id INTEGER PRIMARY KEY,user_id INT,first_name TEXT,last_name TEXT,display_name TEXT,user_image_url TEXT);"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;


# direct methods
.method static constructor <clinit>()V
    .registers 8

    const-string v7, "first_name"

    const-string v6, "display_name"

    const-string v5, "user_id"

    const-string v4, "_id"

    const-string v3, "com.facebook.katana.provider.FriendsProvider"

    const-string v0, "content://com.facebook.katana.provider.FriendsProvider/friends"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.facebook.katana.provider.FriendsProvider/friends/uid"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIEND_UID_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.facebook.katana.provider.FriendsProvider/friends/search"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_SEARCH_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.facebook.katana.provider.FriendsProvider/friends/birthdays"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_BIRTHDAY_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.facebook.katana.provider.FriendsProvider/info_contacts"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/provider/FriendsProvider;->CONTACT_INFO_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.facebook.katana.provider.FriendsProvider/info_contacts/uid"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/provider/FriendsProvider;->CONTACT_INFO_UID_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.facebook.katana.provider.FriendsProvider/live_folders/friends"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/provider/FriendsProvider;->LIVE_FOLDERS_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.facebook.katana.provider.FriendsProvider/default_user_images"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/provider/FriendsProvider;->DEFAULT_USER_IMAGE_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.facebook.katana.provider.FriendsProvider/search_results"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/provider/FriendsProvider;->SEARCH_RESULTS_CONTENT_URI:Landroid/net/Uri;

    const-string v0, "content://com.facebook.katana.provider.FriendsProvider/search_results/uid"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/facebook/katana/provider/FriendsProvider;->SEARCH_RESULT_UID_CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lcom/facebook/katana/provider/FriendsProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.facebook.katana.provider.FriendsProvider"

    const-string v1, "friends"

    const/4 v2, 0x1

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.facebook.katana.provider.FriendsProvider"

    const-string v1, "friends/#"

    const/4 v2, 0x2

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.facebook.katana.provider.FriendsProvider"

    const-string v1, "friends/uid/#"

    const/4 v2, 0x3

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.facebook.katana.provider.FriendsProvider"

    const-string v1, "friends/search/*"

    const/4 v2, 0x4

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.facebook.katana.provider.FriendsProvider"

    const-string v1, "friends/birthdays"

    const/4 v2, 0x5

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.facebook.katana.provider.FriendsProvider"

    const-string v1, "info_contacts"

    const/16 v2, 0xa

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.facebook.katana.provider.FriendsProvider"

    const-string v1, "info_contacts/#"

    const/16 v2, 0xb

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.facebook.katana.provider.FriendsProvider"

    const-string v1, "info_contacts/uid/#"

    const/16 v2, 0xc

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.facebook.katana.provider.FriendsProvider"

    const-string v1, "live_folders/friends"

    const/16 v2, 0x28

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.facebook.katana.provider.FriendsProvider"

    const-string v1, "search_results"

    const/16 v2, 0x1f

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.facebook.katana.provider.FriendsProvider"

    const-string v1, "search_results/#"

    const/16 v2, 0x20

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "com.facebook.katana.provider.FriendsProvider"

    const-string v1, "search_results/uid/#"

    const/16 v2, 0x21

    invoke-virtual {v0, v3, v1, v2}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_PROJECTION_MAP:Ljava/util/HashMap;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_id"

    const-string v1, "user_id"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "first_name"

    const-string v1, "first_name"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "last_name"

    const-string v2, "last_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "display_name"

    const-string v1, "display_name"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_image_url"

    const-string v2, "user_image_url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_image"

    const-string v2, "user_image"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "birthday_month"

    const-string v2, "birthday_month"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "birthday_day"

    const-string v2, "birthday_day"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "birthday_year"

    const-string v2, "birthday_year"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "hash"

    const-string v2, "hash"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/provider/FriendsProvider;->CONTACT_INFO_PROJECTION_MAP:Ljava/util/HashMap;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->CONTACT_INFO_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->CONTACT_INFO_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_id"

    const-string v1, "user_id"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->CONTACT_INFO_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "cell"

    const-string v2, "cell"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->CONTACT_INFO_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "other"

    const-string v2, "other"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->CONTACT_INFO_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "email"

    const-string v2, "email"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/provider/FriendsProvider;->DEFAULT_USER_IMAGE_PROJECTION_MAP:Ljava/util/HashMap;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->DEFAULT_USER_IMAGE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->DEFAULT_USER_IMAGE_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_image"

    const-string v2, "user_image"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/provider/FriendsProvider;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id AS _id"

    invoke-virtual {v0, v4, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "name"

    const-string v2, "display_name AS name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "intent"

    const-string v2, "intent AS intent"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "icon_bitmap"

    const-string v2, "user_image AS icon_bitmap"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "icon_package"

    const-string v2, "CASE WHEN friends.user_image IS NOT NULL THEN NULL ELSE (\'com.facebook.katana\') END AS icon_package"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "icon_resource"

    const-string v2, "CASE WHEN friends.user_image IS NOT NULL THEN NULL ELSE (\'com.facebook.katana:drawable/no_avatar\') END AS icon_resource"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/facebook/katana/provider/FriendsProvider;->SEARCH_RESULTS_PROJECTION_MAP:Ljava/util/HashMap;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->SEARCH_RESULTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "_id"

    const-string v1, "_id"

    invoke-virtual {v0, v4, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->SEARCH_RESULTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_id"

    const-string v1, "user_id"

    invoke-virtual {v0, v5, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->SEARCH_RESULTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "first_name"

    const-string v1, "first_name"

    invoke-virtual {v0, v7, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->SEARCH_RESULTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "last_name"

    const-string v2, "last_name"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->SEARCH_RESULTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "display_name"

    const-string v1, "display_name"

    invoke-virtual {v0, v6, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->SEARCH_RESULTS_PROJECTION_MAP:Ljava/util/HashMap;

    const-string v1, "user_image_url"

    const-string v2, "user_image_url"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    return-void
.end method

.method private static bitmapToJpgBytes(Landroid/graphics/Bitmap;)[B
    .registers 9

    const/4 v5, 0x0

    move-object v0, v5

    check-cast v0, [B

    move-object v1, v0

    :try_start_5
    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v6

    invoke-virtual {p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v7

    mul-int/2addr v6, v7

    mul-int/lit8 v4, v6, 0x4

    new-instance v3, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v3, v4}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    sget-object v6, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v7, 0x64

    invoke-virtual {p0, v6, v7, v3}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v3}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B
    :try_end_25
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_25} :catch_28

    move-result-object v1

    move-object v5, v1

    :goto_27
    return-object v5

    :catch_28
    move-exception v6

    move-object v2, v6

    goto :goto_27
.end method

.method public static getTableNames()[Ljava/lang/String;
    .registers 3

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "friends"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "info_contacts"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "default_user_images"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "search_results"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static getTableSQLs()[Ljava/lang/String;
    .registers 3

    const/4 v1, 0x4

    new-array v0, v1, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "CREATE TABLE friends (_id INTEGER PRIMARY KEY,user_id INT,first_name TEXT,last_name TEXT,display_name TEXT,user_image_url TEXT,user_image BLOB,intent TEXT,birthday_month INT,birthday_day INT,birthday_year INT,hash TEXT);"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "CREATE TABLE info_contacts (_id INTEGER PRIMARY KEY,user_id INT,cell TEXT,other TEXT,email TEXT);"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "CREATE TABLE default_user_images (_id INTEGER PRIMARY KEY,user_image BLOB);"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "CREATE TABLE search_results (_id INTEGER PRIMARY KEY,user_id INT,first_name TEXT,last_name TEXT,display_name TEXT,user_image_url TEXT);"

    aput-object v2, v0, v1

    return-object v0
.end method

.method public static updateImage(Landroid/content/Context;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;)Lcom/facebook/katana/binding/UserImage;
    .registers 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    new-instance v0, Landroid/graphics/BitmapFactory$Options;

    invoke-direct {v0}, Landroid/graphics/BitmapFactory$Options;-><init>()V

    invoke-static {p5, v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;Landroid/graphics/BitmapFactory$Options;)Landroid/graphics/Bitmap;

    move-result-object p1

    if-nez p1, :cond_13

    new-instance p0, Ljava/io/IOException;

    const-string p1, "Cannot decode bitmap"

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_13
    const/4 v1, 0x0

    iget-object v2, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    if-eqz v2, :cond_7f

    iget-object v0, v0, Landroid/graphics/BitmapFactory$Options;->outMimeType:Ljava/lang/String;

    const-string v2, "image/jpeg"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_7f

    const/4 v0, 0x1

    :goto_23
    if-eqz v0, :cond_7a

    new-instance v1, Ljava/io/ByteArrayOutputStream;

    const/16 v0, 0x1000

    invoke-direct {v1, v0}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, p5}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    const/16 p5, 0x1000

    new-array p5, p5, [B

    :goto_35
    invoke-virtual {v0, p5}, Ljava/io/FileInputStream;->read([B)I

    move-result v2

    if-gtz v2, :cond_75

    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->flush()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->close()V

    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object p5

    :goto_48
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    const-string v0, "user_image"

    invoke-virtual {v1, v0, p5}, Landroid/content/ContentValues;->put(Ljava/lang/String;[B)V

    const-string v0, "user_image_url"

    invoke-virtual {v1, v0, p4}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->FRIEND_UID_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p2, p3}, Landroid/content/ContentUris;->withAppendedId(Landroid/net/Uri;J)Landroid/net/Uri;

    move-result-object v0

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-virtual {v2, v0, v1, v3, v4}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    invoke-static {p0}, Lcom/facebook/katana/util/PlatformUtils;->platformStorageSupported(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_6f

    invoke-static {p0, p2, p3, p5}, Lcom/facebook/katana/platform/PlatformStorage;->updateContactPhoto(Landroid/content/Context;J[B)V

    :cond_6f
    new-instance p0, Lcom/facebook/katana/binding/UserImage;

    invoke-direct {p0, p2, p3, p4, p1}, Lcom/facebook/katana/binding/UserImage;-><init>(JLjava/lang/String;Landroid/graphics/Bitmap;)V

    return-object p0

    :cond_75
    const/4 v3, 0x0

    invoke-virtual {v1, p5, v3, v2}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_35

    :cond_7a
    invoke-static {p1}, Lcom/facebook/katana/provider/FriendsProvider;->bitmapToJpgBytes(Landroid/graphics/Bitmap;)[B

    move-result-object p5

    goto :goto_48

    :cond_7f
    move v0, v1

    goto :goto_23
.end method


# virtual methods
.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .registers 13

    const-wide/16 v8, 0x0

    const-string v7, "user_id"

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/facebook/katana/provider/FriendsProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v5}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v5, Lcom/facebook/katana/provider/FriendsProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v5, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v5

    sparse-switch v5, :sswitch_data_92

    new-instance v5, Ljava/lang/IllegalArgumentException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Unknown URL "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    :sswitch_29
    const/4 v1, 0x0

    :goto_2a
    array-length v5, p2

    if-lt v1, v5, :cond_3c

    :cond_2d
    if-lez v4, :cond_7d

    invoke-virtual {p0}, Lcom/facebook/katana/provider/FriendsProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const/4 v6, 0x0

    invoke-virtual {v5, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    return v4

    :cond_3c
    const-string v5, "friends"

    const-string v6, "display_name"

    aget-object v7, p2, v1

    invoke-virtual {v0, v5, v6, v7}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    cmp-long v5, v2, v8

    if-lez v5, :cond_4c

    add-int/lit8 v4, v4, 0x1

    :cond_4c
    add-int/lit8 v1, v1, 0x1

    goto :goto_2a

    :sswitch_4f
    const/4 v1, 0x0

    :goto_50
    array-length v5, p2

    if-ge v1, v5, :cond_2d

    const-string v5, "info_contacts"

    const-string v6, "user_id"

    aget-object v6, p2, v1

    invoke-virtual {v0, v5, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    cmp-long v5, v2, v8

    if-lez v5, :cond_63

    add-int/lit8 v4, v4, 0x1

    :cond_63
    add-int/lit8 v1, v1, 0x1

    goto :goto_50

    :sswitch_66
    const/4 v1, 0x0

    :goto_67
    array-length v5, p2

    if-ge v1, v5, :cond_2d

    const-string v5, "search_results"

    const-string v6, "user_id"

    aget-object v6, p2, v1

    invoke-virtual {v0, v5, v7, v6}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v2

    cmp-long v5, v2, v8

    if-lez v5, :cond_7a

    add-int/lit8 v4, v4, 0x1

    :cond_7a
    add-int/lit8 v1, v1, 0x1

    goto :goto_67

    :cond_7d
    new-instance v5, Landroid/database/SQLException;

    new-instance v6, Ljava/lang/StringBuilder;

    const-string v7, "Failed to insert rows into "

    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v5

    :sswitch_data_92
    .sparse-switch
        0x1 -> :sswitch_29
        0xa -> :sswitch_4f
        0x1f -> :sswitch_66
    .end sparse-switch
.end method

.method public delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 13

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v8, "friends"

    const-string v7, "_id="

    iget-object v3, p0, Lcom/facebook/katana/provider/FriendsProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v3}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v3, Lcom/facebook/katana/provider/FriendsProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    sparse-switch v3, :sswitch_data_112

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown URL "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_2b
    const-string v3, "friends"

    invoke-virtual {v1, v8, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_31
    if-lez v0, :cond_3e

    invoke-virtual {p0}, Lcom/facebook/katana/provider/FriendsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_3e
    return v0

    :sswitch_3f
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "friends"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_31

    :sswitch_5f
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "friends"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "user_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_31

    :sswitch_7f
    const-string v3, "info_contacts"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_31

    :sswitch_86
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "info_contacts"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_31

    :sswitch_a6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "info_contacts"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "user_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_31

    :sswitch_c7
    const-string v3, "search_results"

    invoke-virtual {v1, v3, p2, p3}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_31

    :sswitch_cf
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "search_results"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_31

    :sswitch_f0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "search_results"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "user_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->delete(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_31

    nop

    :sswitch_data_112
    .sparse-switch
        0x1 -> :sswitch_2b
        0x2 -> :sswitch_3f
        0x3 -> :sswitch_5f
        0xa -> :sswitch_7f
        0xb -> :sswitch_86
        0xc -> :sswitch_a6
        0x1f -> :sswitch_c7
        0x20 -> :sswitch_cf
        0x21 -> :sswitch_f0
    .end sparse-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .registers 5

    sget-object v0, Lcom/facebook/katana/provider/FriendsProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    sparse-switch v0, :sswitch_data_28

    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "Unknown URL "

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :sswitch_1e
    const-string v0, "vnd.android.cursor.item/vnd.com.facebook.katana.provider.friends"

    :goto_20
    return-object v0

    :sswitch_21
    const-string v0, "vnd.android.cursor.dir/vnd.facebook.katana.provider.contactinfo"

    goto :goto_20

    :sswitch_24
    const-string v0, "vnd.android.cursor.item/vnd.com.facebook.katana.provider.search_results"

    goto :goto_20

    nop

    :sswitch_data_28
    .sparse-switch
        0x1 -> :sswitch_1e
        0x2 -> :sswitch_1e
        0x3 -> :sswitch_1e
        0x4 -> :sswitch_1e
        0xa -> :sswitch_21
        0xb -> :sswitch_21
        0xc -> :sswitch_21
        0x1f -> :sswitch_24
        0x20 -> :sswitch_24
        0x21 -> :sswitch_24
    .end sparse-switch
.end method

.method public insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .registers 15

    const-wide/16 v9, 0x0

    const/4 v8, 0x0

    const-string v11, "display_name"

    if-eqz p2, :cond_30

    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5, p2}, Landroid/content/ContentValues;-><init>(Landroid/content/ContentValues;)V

    :goto_c
    iget-object v6, p0, Lcom/facebook/katana/provider/FriendsProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v6}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    sget-object v6, Lcom/facebook/katana/provider/FriendsProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v6, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v6

    sparse-switch v6, :sswitch_data_c0

    new-instance v6, Ljava/lang/IllegalArgumentException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Unknown URL "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    :cond_30
    new-instance v5, Landroid/content/ContentValues;

    invoke-direct {v5}, Landroid/content/ContentValues;-><init>()V

    goto :goto_c

    :sswitch_36
    const-string v6, "friends"

    const-string v7, "display_name"

    invoke-virtual {v0, v6, v11, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    cmp-long v6, v1, v9

    if-lez v6, :cond_ab

    sget-object v6, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/katana/provider/FriendsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v4, v3

    :goto_5c
    return-object v4

    :sswitch_5d
    const-string v6, "info_contacts"

    const-string v7, "user_id"

    invoke-virtual {v0, v6, v7, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    cmp-long v6, v1, v9

    if-lez v6, :cond_ab

    sget-object v6, Lcom/facebook/katana/provider/FriendsProvider;->CONTACT_INFO_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/katana/provider/FriendsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v4, v3

    goto :goto_5c

    :sswitch_84
    const-string v6, "search_results"

    const-string v7, "display_name"

    invoke-virtual {v0, v6, v11, v5}, Landroid/database/sqlite/SQLiteDatabase;->insert(Ljava/lang/String;Ljava/lang/String;Landroid/content/ContentValues;)J

    move-result-wide v1

    cmp-long v6, v1, v9

    if-lez v6, :cond_ab

    sget-object v6, Lcom/facebook/katana/provider/FriendsProvider;->SEARCH_RESULTS_CONTENT_URI:Landroid/net/Uri;

    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Long;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    invoke-virtual {p0}, Lcom/facebook/katana/provider/FriendsProvider;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    invoke-virtual {v6, p1, v8}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object v4, v3

    goto :goto_5c

    :cond_ab
    new-instance v6, Landroid/database/SQLException;

    new-instance v7, Ljava/lang/StringBuilder;

    const-string v8, "Failed to insert row into "

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-direct {v6, v7}, Landroid/database/SQLException;-><init>(Ljava/lang/String;)V

    throw v6

    :sswitch_data_c0
    .sparse-switch
        0x1 -> :sswitch_36
        0xa -> :sswitch_5d
        0x1f -> :sswitch_84
    .end sparse-switch
.end method

.method public onCreate()Z
    .registers 2

    invoke-virtual {p0}, Lcom/facebook/katana/provider/FriendsProvider;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getDatabaseHelper(Landroid/content/Context;)Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    move-result-object v0

    iput-object v0, p0, Lcom/facebook/katana/provider/FriendsProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    iget-object v0, p0, Lcom/facebook/katana/provider/FriendsProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v0}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v0

    if-eqz v0, :cond_14

    const/4 v0, 0x1

    :goto_13
    return v0

    :cond_14
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .registers 24

    new-instance v3, Landroid/database/sqlite/SQLiteQueryBuilder;

    invoke-direct {v3}, Landroid/database/sqlite/SQLiteQueryBuilder;-><init>()V

    const/4 v11, 0x0

    sget-object v4, Lcom/facebook/katana/provider/FriendsProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object v0, v4

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v17

    sparse-switch v17, :sswitch_data_222

    new-instance v4, Ljava/lang/IllegalArgumentException;

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Unknown URL "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v5

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    :sswitch_2a
    const-string v4, "friends"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v4, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string v14, "display_name ASC"

    :goto_36
    invoke-static/range {p5 .. p5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-eqz v4, :cond_21e

    move-object v10, v14

    :goto_3d
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/facebook/katana/provider/FriendsProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getReadableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v4

    const/4 v8, 0x0

    const/4 v9, 0x0

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move-object/from16 v7, p4

    invoke-virtual/range {v3 .. v11}, Landroid/database/sqlite/SQLiteQueryBuilder;->query(Landroid/database/sqlite/SQLiteDatabase;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v13

    invoke-virtual/range {p0 .. p0}, Lcom/facebook/katana/provider/FriendsProvider;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    move-object v0, v13

    move-object v1, v4

    move-object/from16 v2, p1

    invoke-interface {v0, v1, v2}, Landroid/database/Cursor;->setNotificationUri(Landroid/content/ContentResolver;Landroid/net/Uri;)V

    return-object v13

    :sswitch_62
    const-string v4, "friends"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string v14, "display_name ASC"

    goto :goto_36

    :sswitch_8c
    const-string v4, "friends"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v4, "user_id="

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string v14, "display_name ASC"

    goto :goto_36

    :sswitch_b6
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    const-string v4, "friends"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v4, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string v4, "display_name LIKE "

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "%"

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v0, v4

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "%"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhereEscapeString(Ljava/lang/String;)V

    const-string v11, "15"

    const-string v14, "display_name ASC"

    goto/16 :goto_36

    :sswitch_f1
    new-instance v12, Ljava/util/HashMap;

    sget-object v4, Lcom/facebook/katana/provider/FriendsProvider;->FRIENDS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-direct {v12, v4}, Ljava/util/HashMap;-><init>(Ljava/util/Map;)V

    new-instance v13, Ljava/util/GregorianCalendar;

    invoke-direct {v13}, Ljava/util/GregorianCalendar;-><init>()V

    const/4 v15, 0x0

    const/4 v4, 0x2

    invoke-virtual {v13, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    const/4 v5, 0x1

    if-gt v4, v5, :cond_12c

    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    invoke-virtual {v13, v4}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v4

    if-nez v4, :cond_112

    const/4 v15, 0x1

    :cond_112
    :goto_112
    if-eqz v15, :cond_13b

    const-string v4, "normalized_birthday_day"

    const-string v5, "CASE WHEN (friends.birthday_month=2 AND            friends.birthday_day=29) THEN 28      ELSE friends.birthday_day END AS normalized_birthday_day"

    invoke-interface {v12, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :goto_11b
    const-string v4, "friends"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v4, "birthday_month!=-1 AND birthday_day!=-1"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    invoke-virtual {v3, v12}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string v14, "display_name ASC"

    goto/16 :goto_36

    :cond_12c
    const/4 v4, 0x1

    invoke-virtual {v13, v4}, Ljava/util/GregorianCalendar;->get(I)I

    move-result v4

    add-int/lit8 v4, v4, 0x1

    invoke-virtual {v13, v4}, Ljava/util/GregorianCalendar;->isLeapYear(I)Z

    move-result v4

    if-nez v4, :cond_112

    const/4 v15, 0x1

    goto :goto_112

    :cond_13b
    const-string v4, "normalized_birthday_day"

    const-string v5, "birthday_day"

    invoke-interface {v12, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_11b

    :sswitch_143
    const-string v4, "info_contacts"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v4, Lcom/facebook/katana/provider/FriendsProvider;->CONTACT_INFO_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string v14, "user_id DESC"

    goto/16 :goto_36

    :sswitch_151
    const-string v4, "info_contacts"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/facebook/katana/provider/FriendsProvider;->CONTACT_INFO_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string v14, "user_id DESC"

    goto/16 :goto_36

    :sswitch_17c
    const-string v4, "info_contacts"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v4, "user_id="

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/facebook/katana/provider/FriendsProvider;->CONTACT_INFO_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string v14, "user_id DESC"

    goto/16 :goto_36

    :sswitch_1a7
    const-string v4, "friends"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    const-string v4, "intent IS NOT NULL"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/facebook/katana/provider/FriendsProvider;->LIVE_FOLDER_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string v14, "display_name ASC"

    goto/16 :goto_36

    :sswitch_1ba
    const-string v4, "search_results"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    sget-object v4, Lcom/facebook/katana/provider/FriendsProvider;->SEARCH_RESULTS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string v14, "_id ASC"

    goto/16 :goto_36

    :sswitch_1c8
    const-string v4, "search_results"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x1

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/facebook/katana/provider/FriendsProvider;->SEARCH_RESULTS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string v14, "_id ASC"

    goto/16 :goto_36

    :sswitch_1f3
    const-string v4, "search_results"

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setTables(Ljava/lang/String;)V

    new-instance v5, Ljava/lang/StringBuilder;

    const-string v4, "user_id="

    invoke-direct {v5, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v4

    const/4 v6, 0x2

    invoke-interface {v4, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->appendWhere(Ljava/lang/CharSequence;)V

    sget-object v4, Lcom/facebook/katana/provider/FriendsProvider;->SEARCH_RESULTS_PROJECTION_MAP:Ljava/util/HashMap;

    invoke-virtual {v3, v4}, Landroid/database/sqlite/SQLiteQueryBuilder;->setProjectionMap(Ljava/util/Map;)V

    const-string v14, "_id ASC"

    goto/16 :goto_36

    :cond_21e
    move-object/from16 v10, p5

    goto/16 :goto_3d

    :sswitch_data_222
    .sparse-switch
        0x1 -> :sswitch_2a
        0x2 -> :sswitch_62
        0x3 -> :sswitch_8c
        0x4 -> :sswitch_b6
        0x5 -> :sswitch_f1
        0xa -> :sswitch_143
        0xb -> :sswitch_151
        0xc -> :sswitch_17c
        0x1f -> :sswitch_1ba
        0x20 -> :sswitch_1c8
        0x21 -> :sswitch_1f3
        0x28 -> :sswitch_1a7
    .end sparse-switch
.end method

.method public update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .registers 14

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v6, 0x0

    const-string v8, "friends"

    const-string v7, "_id="

    iget-object v3, p0, Lcom/facebook/katana/provider/FriendsProvider;->mDbHelper:Lcom/facebook/katana/provider/FacebookDatabaseHelper;

    invoke-virtual {v3}, Lcom/facebook/katana/provider/FacebookDatabaseHelper;->getWritableDatabase()Landroid/database/sqlite/SQLiteDatabase;

    move-result-object v1

    sget-object v3, Lcom/facebook/katana/provider/FriendsProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v3, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v3

    sparse-switch v3, :sswitch_data_112

    new-instance v3, Ljava/lang/IllegalArgumentException;

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "Unknown URL "

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    :sswitch_2b
    const-string v3, "friends"

    invoke-virtual {v1, v8, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    :goto_31
    if-lez v0, :cond_3e

    invoke-virtual {p0}, Lcom/facebook/katana/provider/FriendsProvider;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-virtual {v3, p1, v6}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    :cond_3e
    return v0

    :sswitch_3f
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "friends"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "_id="

    invoke-direct {v3, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, p2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_31

    :sswitch_5f
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "friends"

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "user_id="

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v8, p2, v3, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_31

    :sswitch_7f
    const-string v3, "info_contacts"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_31

    :sswitch_86
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "info_contacts"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, p2, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto :goto_31

    :sswitch_a6
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "info_contacts"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "user_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, p2, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_31

    :sswitch_c7
    const-string v3, "search_results"

    invoke-virtual {v1, v3, p2, p3, p4}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_31

    :sswitch_cf
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "search_results"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "_id="

    invoke-direct {v4, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, p2, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_31

    :sswitch_f0
    invoke-virtual {p1}, Landroid/net/Uri;->getPathSegments()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    const-string v3, "search_results"

    new-instance v4, Ljava/lang/StringBuilder;

    const-string v5, "user_id="

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v3, p2, v4, v6}, Landroid/database/sqlite/SQLiteDatabase;->update(Ljava/lang/String;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I

    move-result v0

    goto/16 :goto_31

    nop

    :sswitch_data_112
    .sparse-switch
        0x1 -> :sswitch_2b
        0x2 -> :sswitch_3f
        0x3 -> :sswitch_5f
        0xa -> :sswitch_7f
        0xb -> :sswitch_86
        0xc -> :sswitch_a6
        0x1f -> :sswitch_c7
        0x20 -> :sswitch_cf
        0x21 -> :sswitch_f0
    .end sparse-switch
.end method
