.class Lcom/sun/mail/imap/protocol/IMAPAddress;
.super Ljavax/mail/internet/InternetAddress;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x353b93d010f59e38L


# instance fields
.field private group:Z

.field private grouplist:[Ljavax/mail/internet/InternetAddress;

.field private groupname:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/sun/mail/iap/Response;)V
    .registers 7

    const/16 v4, 0x29

    invoke-direct {p0}, Ljavax/mail/internet/InternetAddress;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->group:Z

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1b

    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    const-string v1, "ADDRESS parse error"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1b
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->encodedPersonal:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v2

    if-eq v2, v4, :cond_3a

    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    const-string v1, "ADDRESS parse error"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_3a
    if-nez v1, :cond_9b

    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->group:Z

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->groupname:Ljava/lang/String;

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->groupname:Ljava/lang/String;

    if-nez v0, :cond_46

    :goto_45
    return-void

    :cond_46
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    iget-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->groupname:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    move-result-object v1

    const/16 v2, 0x3a

    invoke-virtual {v1, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    :goto_5b
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v2

    if-ne v2, v4, :cond_7a

    :cond_61
    const/16 v2, 0x3b

    invoke-virtual {v0, v2}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->address:Ljava/lang/String;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Lcom/sun/mail/imap/protocol/IMAPAddress;

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->grouplist:[Ljavax/mail/internet/InternetAddress;

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->grouplist:[Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    goto :goto_45

    :cond_7a
    new-instance v2, Lcom/sun/mail/imap/protocol/IMAPAddress;

    invoke-direct {v2, p1}, Lcom/sun/mail/imap/protocol/IMAPAddress;-><init>(Lcom/sun/mail/iap/Response;)V

    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPAddress;->isEndOfGroup()Z

    move-result v3

    if-nez v3, :cond_61

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v3

    if-eqz v3, :cond_90

    const/16 v3, 0x2c

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;

    :cond_90
    invoke-virtual {v2}, Lcom/sun/mail/imap/protocol/IMAPAddress;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    invoke-virtual {v1, v2}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    goto :goto_5b

    :cond_9b
    if-eqz v0, :cond_a3

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_a6

    :cond_a3
    iput-object v1, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->address:Ljava/lang/String;

    goto :goto_45

    :cond_a6
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_af

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->address:Ljava/lang/String;

    goto :goto_45

    :cond_af
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-direct {v2, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    const-string v0, "@"

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->address:Ljava/lang/String;

    goto/16 :goto_45
.end method


# virtual methods
.method public getGroup(Z)[Ljavax/mail/internet/InternetAddress;
    .registers 3

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->grouplist:[Ljavax/mail/internet/InternetAddress;

    if-nez v0, :cond_6

    const/4 v0, 0x0

    :goto_5
    return-object v0

    :cond_6
    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->grouplist:[Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v0}, [Ljavax/mail/internet/InternetAddress;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavax/mail/internet/InternetAddress;

    goto :goto_5
.end method

.method isEndOfGroup()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->group:Z

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->groupname:Ljava/lang/String;

    if-nez v0, :cond_a

    const/4 v0, 0x1

    :goto_9
    return v0

    :cond_a
    const/4 v0, 0x0

    goto :goto_9
.end method

.method public isGroup()Z
    .registers 2

    iget-boolean v0, p0, Lcom/sun/mail/imap/protocol/IMAPAddress;->group:Z

    return v0
.end method
