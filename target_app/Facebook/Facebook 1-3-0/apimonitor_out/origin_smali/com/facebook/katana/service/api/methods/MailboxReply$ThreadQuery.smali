.class interface abstract Lcom/facebook/katana/service/api/methods/MailboxReply$ThreadQuery;
.super Ljava/lang/Object;
.source "MailboxReply.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/service/api/methods/MailboxReply;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x60a
    name = "ThreadQuery"
.end annotation


# static fields
.field public static final INDEX_ID:I = 0x0

.field public static final INDEX_MSG_COUNT:I = 0x1

.field public static final THREADS_PROJECTION:[Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "msg_count"

    aput-object v2, v0, v1

    sput-object v0, Lcom/facebook/katana/service/api/methods/MailboxReply$ThreadQuery;->THREADS_PROJECTION:[Ljava/lang/String;

    return-void
.end method
