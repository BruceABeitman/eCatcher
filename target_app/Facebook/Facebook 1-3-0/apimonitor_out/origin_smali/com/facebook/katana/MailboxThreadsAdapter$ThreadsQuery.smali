.class public interface abstract Lcom/facebook/katana/MailboxThreadsAdapter$ThreadsQuery;
.super Ljava/lang/Object;
.source "MailboxThreadsAdapter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/MailboxThreadsAdapter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x609
    name = "ThreadsQuery"
.end annotation


# static fields
.field public static final INDEX_LAST_UPDATE:I = 0x8

.field public static final INDEX_MSG_COUNT:I = 0x6

.field public static final INDEX_OTHER_PARTY_USER_ID:I = 0x5

.field public static final INDEX_PARTICIPANTS:I = 0x2

.field public static final INDEX_SNIPPET:I = 0x4

.field public static final INDEX_SPECIFIC_ID:I = 0x0

.field public static final INDEX_SUBJECT:I = 0x3

.field public static final INDEX_THREAD_ID:I = 0x1

.field public static final INDEX_UNREAD_COUNT:I = 0x7

.field public static final INDEX_USER_IMAGE_URL:I = 0x9

.field public static final PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/16 v0, 0xa

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "mailbox_threads._id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "tid"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "participants"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "subject"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "snippet"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "other_party"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "msg_count"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "unread_count"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "last_update"

    aput-object v2, v0, v1

    const/16 v1, 0x9

    const-string v2, "user_image_url"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/MailboxThreadsAdapter$ThreadsQuery;->PROJECTION:[Ljava/lang/String;

    return-void
.end method
