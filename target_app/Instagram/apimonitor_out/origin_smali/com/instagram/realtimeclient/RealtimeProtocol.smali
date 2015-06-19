.class public Lcom/instagram/realtimeclient/RealtimeProtocol;
.super Ljava/lang/Object;
.source "RealtimeProtocol.java"


# static fields
.field public static final ACTION:Ljava/lang/String; = "action"

.field public static final ADD_COMMENT_TEMPLATE:Ljava/lang/String; = "/direct_share/:media_id/comments"

.field public static final ADD_DS_TEMPLATE:Ljava/lang/String; = "/direct_share/inbox"

.field public static final COMMENTED:Ljava/lang/String; = "has_commented"

.field public static final COMMENTS:Ljava/lang/String; = "comments"

.field public static final COMMENT_ID:Ljava/lang/String; = "comment_id"

.field public static final DIRECT_SHARE:Ljava/lang/String; = "direct_share"

.field public static final INBOX:Ljava/lang/String; = "inbox"

.field public static final LAST_COMMENT_AT:Ljava/lang/String; = "last_comment_at"

.field public static final LIKED:Ljava/lang/String; = "has_liked"

.field public static final MEDIA_ID:Ljava/lang/String; = "media_id"

.field public static final NEW_SHARES_TEMPLATE:Ljava/lang/String; = "/direct_share/inbox/new_shares"

.field public static final RECIPIENT:Ljava/lang/String; = "recipients"

.field public static final REMOVE_COMMENT_TEMPLATE:Ljava/lang/String; = "/direct_share/:media_id/comments/:comment_id"

.field public static final REMOVE_DS_TEMPLATE:Ljava/lang/String; = "/direct_share/:media_id"

.field public static final REPLACE_LAST_COMMENT_AT_TEMPLATE:Ljava/lang/String; = "/direct_share/:media_id/last_comment_at"

.field public static final REPLACE_RECIPIENT_TEMPLATE:Ljava/lang/String; = "/direct_share/:media_id/recipients/:user_id/:action"

.field public static final SEEN:Ljava/lang/String; = "has_seen"

.field public static final USER_ID:Ljava/lang/String; = "user_id"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
