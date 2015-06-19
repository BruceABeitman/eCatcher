.class Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$1;
.super Ljava/lang/Object;
.source "ImapStore.java"

# interfaces
.implements Lcom/fsck/k9/mail/store/ImapStore$ImapSearcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->getMessages(IIZLcom/fsck/k9/mail/MessageRetrievalListener;)[Lcom/fsck/k9/mail/Message;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

.field final synthetic val$end:I

.field final synthetic val$includeDeleted:Z

.field final synthetic val$start:I


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;ZII)V
    .registers 5

    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

    iput-boolean p2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$1;->val$includeDeleted:Z

    iput p3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$1;->val$start:I

    iput p4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$1;->val$end:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public search()Ljava/util/List;
    .registers 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$1;->this$1:Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "UID SEARCH %d:%d"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$1;->val$includeDeleted:Z

    if-eqz v2, :cond_39

    const-string v2, ""

    :goto_13
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$1;->val$start:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder$1;->val$end:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/fsck/k9/mail/store/ImapStore$ImapFolder;->executeSimpleCommand(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    return-object v0

    :cond_39
    const-string v2, " NOT DELETED"

    goto :goto_13
.end method
