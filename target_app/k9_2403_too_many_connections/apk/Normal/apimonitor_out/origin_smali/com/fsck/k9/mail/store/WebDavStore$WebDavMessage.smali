.class Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;
.super Lcom/fsck/k9/mail/internet/MimeMessage;
.source "WebDavStore.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/WebDavStore;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "WebDavMessage"
.end annotation


# instance fields
.field private mUrl:Ljava/lang/String;

.field final synthetic this$0:Lcom/fsck/k9/mail/store/WebDavStore;


# direct methods
.method constructor <init>(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/String;Lcom/fsck/k9/mail/Folder;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeMessage;-><init>()V

    const-string v0, ""

    iput-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->mUrl:Ljava/lang/String;

    iput-object p2, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->mUid:Ljava/lang/String;

    iput-object p3, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    return-void
.end method


# virtual methods
.method public delete(Ljava/lang/String;)V
    .registers 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->getFolder()Lcom/fsck/k9/mail/Folder;

    move-result-object v0

    check-cast v0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;

    const-string v1, "k9"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Deleting message by moving to "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    const/4 v1, 0x1

    new-array v1, v1, [Lcom/fsck/k9/mail/Message;

    const/4 v2, 0x0

    aput-object p0, v1, v2

    invoke-virtual {v0}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->getStore()Lcom/fsck/k9/mail/store/WebDavStore;

    move-result-object v2

    invoke-virtual {v2, p1}, Lcom/fsck/k9/mail/store/WebDavStore;->getFolder(Ljava/lang/String;)Lcom/fsck/k9/mail/Folder;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavFolder;->moveMessages([Lcom/fsck/k9/mail/Message;Lcom/fsck/k9/mail/Folder;)V

    return-void
.end method

.method public getUrl()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->mUrl:Ljava/lang/String;

    return-object v0
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

    iget-object v0, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

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

.method public setNewHeaders(Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;)V
    .registers 10
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->getHeaderList()[Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p1}, Lcom/fsck/k9/mail/store/WebDavStore$ParsedMessageEnvelope;->getMessageHeaders()Ljava/util/HashMap;

    move-result-object v4

    const/4 v3, 0x0

    array-length v0, v2

    :goto_a
    if-ge v3, v0, :cond_3f

    aget-object v6, v2, v3

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    aget-object v6, v2, v3

    const-string v7, "Content-Length"

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2d

    aget-object v6, v2, v3

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/String;

    invoke-static {v6}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {p0, v5}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->setSize(I)V

    :cond_2d
    if-eqz v1, :cond_3c

    const-string v6, ""

    invoke-virtual {v1, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_3c

    aget-object v6, v2, v3

    invoke-virtual {p0, v6, v1}, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->addHeader(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3c
    add-int/lit8 v3, v3, 0x1

    goto :goto_a

    :cond_3f
    return-void
.end method

.method public setSize(I)V
    .registers 2

    iput p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->mSize:I

    return-void
.end method

.method public setUrl(Ljava/lang/String;)V
    .registers 14

    const/4 v9, 0x1

    const-string v11, "k9"

    const-string v6, "UTF-8"

    const-string v10, "\nTrace: "

    const-string v8, "/"

    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v6

    const-string v7, "http"

    invoke-virtual {v6, v7}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v6

    if-nez v6, :cond_4d

    const-string v6, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_30

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_30
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v7, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    #getter for: Lcom/fsck/k9/mail/store/WebDavStore;->mUrl:Ljava/lang/String;
    invoke-static {v7}, Lcom/fsck/k9/mail/store/WebDavStore;->access$200(Lcom/fsck/k9/mail/store/WebDavStore;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->mFolder:Lcom/fsck/k9/mail/Folder;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :cond_4d
    const-string v6, "/"

    invoke-virtual {p1, v8}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v5

    array-length v3, v5

    sub-int v6, v3, v9

    aget-object v0, v5, v6

    const-string v6, ""

    iput-object v6, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->mUrl:Ljava/lang/String;

    const-string p1, ""

    :try_start_5e
    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLDecoder;->decode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "UTF-8"

    invoke-static {v0, v6}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v6, "\\+"

    const-string v7, "%20"

    invoke-virtual {v0, v6, v7}, Ljava/lang/String;->replaceAll(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_71
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_5e .. :try_end_71} :catch_95
    .catch Ljava/lang/IllegalArgumentException; {:try_start_5e .. :try_end_71} :catch_c0

    move-result-object v0

    :goto_72
    const/4 v1, 0x0

    :goto_73
    sub-int v6, v3, v9

    if-ge v1, v6, :cond_ee

    if-eqz v1, :cond_eb

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-object v7, v5, v1

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    :goto_92
    add-int/lit8 v1, v1, 0x1

    goto :goto_73

    :catch_95
    move-exception v6

    move-object v4, v6

    const-string v6, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "UnsupportedEncodingException caught in setUrl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nTrace: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    #calls: Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;
    invoke-static {v7, v4}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1200(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :catch_c0
    move-exception v6

    move-object v2, v6

    const-string v6, "k9"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "IllegalArgumentException caught in setUrl: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "\nTrace: "

    invoke-virtual {v6, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->this$0:Lcom/fsck/k9/mail/store/WebDavStore;

    #calls: Lcom/fsck/k9/mail/store/WebDavStore;->processException(Ljava/lang/Throwable;)Ljava/lang/String;
    invoke-static {v7, v2}, Lcom/fsck/k9/mail/store/WebDavStore;->access$1200(Lcom/fsck/k9/mail/store/WebDavStore;Ljava/lang/Throwable;)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v11, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_72

    :cond_eb
    aget-object p1, v5, v1

    goto :goto_92

    :cond_ee
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "/"

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/fsck/k9/mail/store/WebDavStore$WebDavMessage;->mUrl:Ljava/lang/String;

    return-void
.end method
