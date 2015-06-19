.class Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;
.super Lcom/fsck/k9/mail/internet/MimeMessage;
.source "ImapStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/ImapStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ImapMessage"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mail/store/ImapStore;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/ImapStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->this$0:Lcom/fsck/k9/mail/store/ImapStore;

    invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    iput-object p2, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->mUid:Ljava/lang/String;

    iput-object p3, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v0

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/fsck/k9/mail/Message;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0, v1, p1}, Lcom/fsck/k9/mail/Folder;->delete([Lcom/fsck/k9/mail/Message;Ljava/lang/String;)V

    return-void
.end method

.method public parse(Ljava/io/InputStream;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;,
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1}, Lcom/fsck/k9/mail/internet/MimeMessage;->parse(Ljava/io/InputStream;)V

    return-void
.end method

.method public setFlag(Lcom/fsck/k9/mail/Flag;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    new-array v1, v2, [Lcom/fsck/k9/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Lcom/fsck/k9/mail/Flag;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/fsck/k9/mail/Folder;->setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V

    return-void
.end method

.method public setFlagInternal(Lcom/fsck/k9/mail/Flag;Z)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-super {p0, p1, p2}, Lcom/fsck/k9/mail/internet/MimeMessage;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    return-void
.end method

.method public setSize(I)V
    .registers 2

    iput p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapMessage;->mSize:I

    return-void
.end method
