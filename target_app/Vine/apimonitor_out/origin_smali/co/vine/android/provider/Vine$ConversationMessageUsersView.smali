.class public final Lco/vine/android/provider/Vine$ConversationMessageUsersView;
.super Ljava/lang/Object;
.source "Vine.java"

# interfaces
.implements Landroid/provider/BaseColumns;
.implements Lco/vine/android/provider/Vine$ConversationsColumns;
.implements Lco/vine/android/provider/Vine$MessagesColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/provider/Vine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ConversationMessageUsersView"
.end annotation


# static fields
.field public static final AUTHOR_AVATAR:Ljava/lang/String; = "author_avatar"

.field public static final AUTHOR_USER_ID:Ljava/lang/String; = "author_user_id"

.field public static final AUTHOR_USER_NAME:Ljava/lang/String; = "author_user_name"

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field public static final CONTENT_URI_CONVERSATION:Landroid/net/Uri; = null

.field public static final POST_DESCRIPTION:Ljava/lang/String; = "post_description"

.field public static final POST_ENTITIES:Ljava/lang/String; = "post_entities"

.field public static final POST_SHARE_URL:Ljava/lang/String; = "post_share_url"

.field public static final SENDER_AVATAR:Ljava/lang/String; = "sender_avatar"

.field public static final SENDER_PROFILE_BACKGROUND:Ljava/lang/String; = "sender_profile_background"

.field public static final SENDER_USER_NAME:Ljava/lang/String; = "sender_user_name"

.field public static final SORT_ORDER_DEFAULT:Ljava/lang/String; = "timestamp ASC"

.field public static final TABLE_NAME:Ljava/lang/String; = "message_users_view"


# direct methods
.method static constructor <clinit>()V
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lco/vine/android/provider/Vine;->CONTENT_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message_users_view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$ConversationMessageUsersView;->CONTENT_URI:Landroid/net/Uri;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lco/vine/android/provider/Vine;->CONTENT_AUTHORITY:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "message_users_view"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/conversation"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lco/vine/android/provider/Vine$ConversationMessageUsersView;->CONTENT_URI_CONVERSATION:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
