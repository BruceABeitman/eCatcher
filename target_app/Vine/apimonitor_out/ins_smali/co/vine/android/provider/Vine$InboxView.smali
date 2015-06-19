.class public final Lco/vine/android/provider/Vine$InboxView;
.super Ljava/lang/Object;
.source "Vine.java"
.implements Landroid/provider/BaseColumns;
.implements Lco/vine/android/provider/Vine$ConversationsColumns;
.implements Lco/vine/android/provider/Vine$MessagesColumns;
.field public static final AVATAR_URL:Ljava/lang/String; = "avatar_url"
.field public static final CONTENT_URI:Landroid/net/Uri; = null
.field public static final FOLLOWING_FLAG:Ljava/lang/String; = "following_flag"
.field public static final PARAM_HIDDEN:Ljava/lang/String; = "hidden"
.field public static final PARAM_NETWORK_TYPE:Ljava/lang/String; = "network_type"
.field public static final PROFILE_BACKGROUND:Ljava/lang/String; = "profile_background"
.field public static final RECIPIENTS_COUNT:Ljava/lang/String; = "recipients_count"
.field public static final TABLE_NAME:Ljava/lang/String; = "inbox_view"
.field public static final USERNAME:Ljava/lang/String; = "username"
.field public static final USER_ID:Ljava/lang/String; = "user_id"
.method static constructor <clinit>()V
.registers 2
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
sget-object v1, Lco/vine/android/provider/Vine;->CONTENT_AUTHORITY:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "inbox_view"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
sput-object v0, Lco/vine/android/provider/Vine$InboxView;->CONTENT_URI:Landroid/net/Uri;
return-void
.end method
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method