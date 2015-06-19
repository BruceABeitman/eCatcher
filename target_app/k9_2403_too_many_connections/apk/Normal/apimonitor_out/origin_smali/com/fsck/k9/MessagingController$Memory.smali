.class Lcom/fsck/k9/MessagingController$Memory;
.super Ljava/lang/Object;
.source "MessagingController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/MessagingController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Memory"
.end annotation


# instance fields
.field account:Lcom/fsck/k9/Account;

.field failureMessage:Ljava/lang/String;

.field folderCompleted:I

.field folderName:Ljava/lang/String;

.field folderTotal:I

.field processingCommandTitle:Ljava/lang/String;

.field processingState:Lcom/fsck/k9/MessagingController$MemorizingState;

.field pushingState:Lcom/fsck/k9/MessagingController$MemorizingState;

.field sendingState:Lcom/fsck/k9/MessagingController$MemorizingState;

.field syncingNumNewMessages:I

.field syncingState:Lcom/fsck/k9/MessagingController$MemorizingState;

.field syncingTotalMessagesInMailbox:I

.field final synthetic this$0:Lcom/fsck/k9/MessagingController;


# direct methods
.method constructor <init>(Lcom/fsck/k9/MessagingController;Lcom/fsck/k9/Account;Ljava/lang/String;)V
    .registers 6

    const/4 v1, 0x0

    const/4 v0, 0x0

    iput-object p1, p0, Lcom/fsck/k9/MessagingController$Memory;->this$0:Lcom/fsck/k9/MessagingController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/MessagingController$Memory;->syncingState:Lcom/fsck/k9/MessagingController$MemorizingState;

    iput-object v0, p0, Lcom/fsck/k9/MessagingController$Memory;->sendingState:Lcom/fsck/k9/MessagingController$MemorizingState;

    iput-object v0, p0, Lcom/fsck/k9/MessagingController$Memory;->pushingState:Lcom/fsck/k9/MessagingController$MemorizingState;

    iput-object v0, p0, Lcom/fsck/k9/MessagingController$Memory;->processingState:Lcom/fsck/k9/MessagingController$MemorizingState;

    iput-object v0, p0, Lcom/fsck/k9/MessagingController$Memory;->failureMessage:Ljava/lang/String;

    iput v1, p0, Lcom/fsck/k9/MessagingController$Memory;->folderCompleted:I

    iput v1, p0, Lcom/fsck/k9/MessagingController$Memory;->folderTotal:I

    iput-object v0, p0, Lcom/fsck/k9/MessagingController$Memory;->processingCommandTitle:Ljava/lang/String;

    iput-object p2, p0, Lcom/fsck/k9/MessagingController$Memory;->account:Lcom/fsck/k9/Account;

    iput-object p3, p0, Lcom/fsck/k9/MessagingController$Memory;->folderName:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method getKey()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/MessagingController$Memory;->account:Lcom/fsck/k9/Account;

    iget-object v1, p0, Lcom/fsck/k9/MessagingController$Memory;->folderName:Ljava/lang/String;

    invoke-static {v0, v1}, Lcom/fsck/k9/MessagingController;->getMemoryKey(Lcom/fsck/k9/Account;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
