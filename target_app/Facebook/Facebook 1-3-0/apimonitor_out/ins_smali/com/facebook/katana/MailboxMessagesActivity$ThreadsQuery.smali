.class interface abstract Lcom/facebook/katana/MailboxMessagesActivity$ThreadsQuery;
.super Ljava/lang/Object;
.source "MailboxMessagesActivity.java"
.field public static final INDEX_PARTICIPANTS:I = 0x3
.field public static final INDEX_SUBJECT:I = 0x1
.field public static final INDEX_THREAD_ID:I = 0x0
.field public static final INDEX_UNREAD_COUNT:I = 0x2
.field public static final PROJECTION:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x4
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "tid"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "subject"
aput-object v2, v0, v1
const/4 v1, 0x2
const-string v2, "unread_count"
aput-object v2, v0, v1
const/4 v1, 0x3
const-string v2, "participants"
aput-object v2, v0, v1
sput-object v0, Lcom/facebook/katana/MailboxMessagesActivity$ThreadsQuery;->PROJECTION:[Ljava/lang/String;
return-void
.end method