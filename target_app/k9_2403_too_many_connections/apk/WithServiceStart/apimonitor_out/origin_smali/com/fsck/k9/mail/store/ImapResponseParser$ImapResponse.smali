.class public Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;
.super Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;
.source "ImapResponseParser.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/fsck/k9/mail/store/ImapResponseParser;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ImapResponse"
.end annotation


# instance fields
.field mCommandContinuationRequested:Z

.field private mCompleted:Z

.field mTag:Ljava/lang/String;

.field final synthetic this$0:Lcom/fsck/k9/mail/store/ImapResponseParser;


# direct methods
.method public constructor <init>(Lcom/fsck/k9/mail/store/ImapResponseParser;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->this$0:Lcom/fsck/k9/mail/store/ImapResponseParser;

    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;-><init>(Lcom/fsck/k9/mail/store/ImapResponseParser;)V

    return-void
.end method

.method static synthetic access$002(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;Z)Z
    .registers 2

    iput-boolean p1, p0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mCompleted:Z

    return p1
.end method


# virtual methods
.method public getAlertText()Ljava/lang/String;
    .registers 6

    const/4 v4, 0x1

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v3

    if-le v3, v4, :cond_37

    const-string v3, "[ALERT]"

    invoke-virtual {p0, v4}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_37

    new-instance v2, Ljava/lang/StringBuffer;

    invoke-direct {v2}, Ljava/lang/StringBuffer;-><init>()V

    const/4 v1, 0x2

    invoke-virtual {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->size()I

    move-result v0

    :goto_1d
    if-ge v1, v0, :cond_32

    invoke-virtual {p0, v1}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    add-int/lit8 v1, v1, 0x1

    goto :goto_1d

    :cond_32
    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    :goto_36
    return-object v3

    :cond_37
    const/4 v3, 0x0

    goto :goto_36
.end method

.method public more()Z
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    iget-boolean v0, p0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mCompleted:Z

    if-eqz v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->this$0:Lcom/fsck/k9/mail/store/ImapResponseParser;

    #calls: Lcom/fsck/k9/mail/store/ImapResponseParser;->readTokens(Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V
    invoke-static {v0, p0}, Lcom/fsck/k9/mail/store/ImapResponseParser;->access$100(Lcom/fsck/k9/mail/store/ImapResponseParser;Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;)V

    const/4 v0, 0x1

    goto :goto_5
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapResponse;->mTag:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "# "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-super {p0}, Lcom/fsck/k9/mail/store/ImapResponseParser$ImapList;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
