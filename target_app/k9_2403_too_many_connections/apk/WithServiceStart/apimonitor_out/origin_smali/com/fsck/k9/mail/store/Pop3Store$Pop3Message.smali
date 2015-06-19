.class Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;
.super Lcom/fsck/k9/mail/internet/MimeMessage;
.source "Pop3Store.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/Pop3Store;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Pop3Message"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/fsck/k9/mail/store/Pop3Store;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/Pop3Store;Ljava/lang/String;Lcom/fsck/k9/mail/store/Pop3Store$Pop3Folder;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iput-object p1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->this$0:Lcom/fsck/k9/mail/store/Pop3Store;

    invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    iput-object p2, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->mUid:Ljava/lang/String;

    iput-object p3, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->mFolder:Lcom/fsck/k9/mail/Folder;

    const/4 v0, -0x1

    iput v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->mSize:I

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->mFlags:Ljava/util/HashSet;

    sget-object v1, Lcom/fsck/k9/mail/Flag;->X_NO_SEEN_INFO:Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    sget-object v0, Lcom/fsck/k9/mail/Flag;->DELETED:Lcom/fsck/k9/mail/Flag;

    const/4 v1, 0x1

    invoke-virtual {p0, v0, v1}, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    return-void
.end method

.method protected parse(Ljava/io/InputStream;)V
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

    iget-object v0, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->mFolder:Lcom/fsck/k9/mail/Folder;

    new-array v1, v2, [Lcom/fsck/k9/mail/Message;

    aput-object p0, v1, v3

    new-array v2, v2, [Lcom/fsck/k9/mail/Flag;

    aput-object p1, v2, v3

    invoke-virtual {v0, v1, v2, p2}, Lcom/fsck/k9/mail/Folder;->setFlags([Lcom/fsck/k9/mail/Message;[Lcom/fsck/k9/mail/Flag;Z)V

    return-void
.end method

.method public setSize(I)V
    .registers 2

    iput p1, p0, Lcom/fsck/k9/mail/store/Pop3Store$Pop3Message;->mSize:I

    return-void
.end method
