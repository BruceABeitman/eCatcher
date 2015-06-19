.class public Lcom/sun/mail/imap/protocol/Namespaces$Namespace;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public delimiter:C

.field public prefix:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/sun/mail/iap/Response;)V
    .registers 6

    const/16 v3, 0x29

    const/16 v2, 0x22

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_17

    new-instance v0, Lcom/sun/mail/iap/ProtocolException;

    const-string v1, "Missing \'(\' at start of Namespace"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/sun/mail/imap/protocol/BASE64MailboxDecoder;->decode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->prefix:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v0

    if-ne v0, v2, :cond_4f

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    iget-char v0, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    const/16 v1, 0x5c

    if-ne v0, v1, :cond_41

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    int-to-char v0, v0

    iput-char v0, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    :cond_41
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    if-eq v0, v2, :cond_7d

    new-instance v0, Lcom/sun/mail/iap/ProtocolException;

    const-string v1, "Missing \'\"\' at end of QUOTED_CHAR"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_4f
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readAtom()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5d

    new-instance v0, Lcom/sun/mail/iap/ProtocolException;

    const-string v1, "Expected NIL, got null"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_5d
    const-string v1, "NIL"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_7a

    new-instance v1, Lcom/sun/mail/iap/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Expected NIL, got "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :cond_7a
    const/4 v0, 0x0

    iput-char v0, p0, Lcom/sun/mail/imap/protocol/Namespaces$Namespace;->delimiter:C

    :cond_7d
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v0

    if-eq v0, v3, :cond_8f

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readString()Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readStringList()[Ljava/lang/String;

    :cond_8f
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    if-eq v0, v3, :cond_9d

    new-instance v0, Lcom/sun/mail/iap/ProtocolException;

    const-string v1, "Missing \')\' at end of Namespace"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_9d
    return-void
.end method
