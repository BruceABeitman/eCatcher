.class public final Lcom/facebook/katana/provider/MailboxProvider$ThreadColumns;
.super Ljava/lang/Object;
.source "MailboxProvider.java"

# interfaces
.implements Landroid/provider/BaseColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/provider/MailboxProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "ThreadColumns"
.end annotation


# static fields
.field public static final DEFAULT_SORT_ORDER:Ljava/lang/String; = "last_update DESC"

.field public static final FOLDER:Ljava/lang/String; = "folder"

.field public static final LAST_UPDATE:Ljava/lang/String; = "last_update"

.field public static final MSG_COUNT:Ljava/lang/String; = "msg_count"

.field public static final OBJECT_ID:Ljava/lang/String; = "object_id"

.field public static final OTHER_PARTY_USER_ID:Ljava/lang/String; = "other_party"

.field public static final PARTICIPANTS:Ljava/lang/String; = "participants"

.field public static final SNIPPET:Ljava/lang/String; = "snippet"

.field public static final SPECIFIC_ID:Ljava/lang/String; = "mailbox_threads._id"

.field public static final SUBJECT:Ljava/lang/String; = "subject"

.field public static final THREAD_ID:Ljava/lang/String; = "tid"

.field public static final UNREAD_COUNT:Ljava/lang/String; = "unread_count"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
