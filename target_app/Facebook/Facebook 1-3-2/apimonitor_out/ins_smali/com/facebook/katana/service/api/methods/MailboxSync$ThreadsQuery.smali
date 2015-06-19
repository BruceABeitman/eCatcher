.class interface abstract Lcom/facebook/katana/service/api/methods/MailboxSync$ThreadsQuery;
.super Ljava/lang/Object;
.source "MailboxSync.java"
.field public static final INDEX_LAST_UPDATE:I = 0x1
.field public static final INDEX_THREAD_ID:I
.field public static final THREADS_PROJECTION:[Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
const/4 v0, 0x2
new-array v0, v0, [Ljava/lang/String;
const/4 v1, 0x0
const-string v2, "tid"
aput-object v2, v0, v1
const/4 v1, 0x1
const-string v2, "last_update"
aput-object v2, v0, v1
sput-object v0, Lcom/facebook/katana/service/api/methods/MailboxSync$ThreadsQuery;->THREADS_PROJECTION:[Ljava/lang/String;
return-void
.end method