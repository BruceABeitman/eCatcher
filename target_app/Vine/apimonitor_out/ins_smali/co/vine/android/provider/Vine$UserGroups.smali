.class public final Lco/vine/android/provider/Vine$UserGroups;
.super Ljava/lang/Object;
.source "Vine.java"
.implements Landroid/provider/BaseColumns;
.implements Lco/vine/android/provider/Vine$UserGroupColumns;
.field public static final CONTENT_ITEM_TYPE:Ljava/lang/String; = "vnd.android.cursor.item/vnd.vine.android.users.groups"
.field public static final CONTENT_TYPE:Ljava/lang/String; = "vnd.android.cursor.dir/vnd.vine.android.users.groups"
.field public static final CONTENT_URI:Landroid/net/Uri; = null
.field public static final SORT_ORDER_DEFAULT:Ljava/lang/String; = "type DESC"
.field static final TABLE_NAME:Ljava/lang/String; = "user_groups"
.field public static final TAG_UNSPECIFIED:I = -0x1
.field public static final TYPE_USER_COMMENTS:I = 0x3
.field public static final TYPE_USER_FIND_FRIENDS_ADDRESS:I = 0x7
.field public static final TYPE_USER_FIND_FRIENDS_TWITTER:I = 0x6
.field public static final TYPE_USER_FOLLOWER:I = 0x2
.field public static final TYPE_USER_FOLLOWING:I = 0x1
.field public static final TYPE_USER_FRIENDS:I = 0xa
.field public static final TYPE_USER_LIKERS:I = 0x5
.field public static final TYPE_USER_NOTIFICATION:I = 0xc
.field public static final TYPE_USER_OUT_OF_NETWORK:I = 0xb
.field public static final TYPE_USER_POSTS:I = 0x4
.field public static final TYPE_USER_REVINERS:I = 0x9
.field public static final TYPE_USER_SEARCH_RESULTS:I = 0x8
.field public static final TYPE_USER_UNDEFINED:I = -0x1
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lco/vine/android/provider/Vine;->CONTENT_AUTHORITY:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "user_groups"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lco/vine/android/provider/Vine$UserGroups;->CONTENT_URI:Landroid/net/Uri;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method