.class public Lcom/sun/mail/imap/protocol/ENVELOPE;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/sun/mail/imap/protocol/Item;


# static fields
.field private static mailDateFormat:Ljavax/mail/internet/MailDateFormat;

.field static final name:[C


# instance fields
.field public bcc:[Ljavax/mail/internet/InternetAddress;

.field public cc:[Ljavax/mail/internet/InternetAddress;

.field public date:Ljava/util/Date;

.field public from:[Ljavax/mail/internet/InternetAddress;

.field public inReplyTo:Ljava/lang/String;

.field public messageId:Ljava/lang/String;

.field public msgno:I

.field public replyTo:[Ljavax/mail/internet/InternetAddress;

.field public sender:[Ljavax/mail/internet/InternetAddress;

.field public subject:Ljava/lang/String;

.field public to:[Ljavax/mail/internet/InternetAddress;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const/16 v0, 0x8

    new-array v0, v0, [C

    fill-array-data v0, :array_12

    sput-object v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->name:[C

    new-instance v0, Ljavax/mail/internet/MailDateFormat;

    invoke-direct {v0}, Ljavax/mail/internet/MailDateFormat;-><init>()V

    sput-object v0, Lcom/sun/mail/imap/protocol/ENVELOPE;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    return-void

    nop

    :array_12
    .array-data 0x2
        0x45t 0x0t
        0x4et 0x0t
        0x56t 0x0t
        0x45t 0x0t
        0x4ct 0x0t
        0x4ft 0x0t
        0x50t 0x0t
        0x45t 0x0t
    .end array-data
.end method

.method public constructor <init>(Lcom/sun/mail/imap/protocol/FetchResponse;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->getNumber()I

    move-result v0

    iput v0, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->msgno:I

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    const/16 v1, 0x28

    if-eq v0, v1, :cond_1f

    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    const-string v1, "ENVELOPE parse error"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_1f
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2d

    :try_start_25
    sget-object v1, Lcom/sun/mail/imap/protocol/ENVELOPE;->mailDateFormat:Ljavax/mail/internet/MailDateFormat;

    invoke-virtual {v1, v0}, Ljavax/mail/internet/MailDateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->date:Ljava/util/Date;
    :try_end_2d
    .catch Ljava/lang/Exception; {:try_start_25 .. :try_end_2d} :catch_74

    :cond_2d
    :goto_2d
    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->subject:Ljava/lang/String;

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->from:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->sender:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->replyTo:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->to:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->cc:[Ljavax/mail/internet/InternetAddress;

    invoke-direct {p0, p1}, Lcom/sun/mail/imap/protocol/ENVELOPE;->parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->bcc:[Ljavax/mail/internet/InternetAddress;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->inReplyTo:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/sun/mail/imap/protocol/ENVELOPE;->messageId:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/sun/mail/imap/protocol/FetchResponse;->readByte()B

    move-result v0

    const/16 v1, 0x29

    if-eq v0, v1, :cond_73

    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    const-string v1, "ENVELOPE parse error"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_73
    return-void

    :catch_74
    move-exception v0

    goto :goto_2d
.end method

.method private parseAddressList(Lcom/sun/mail/iap/Response;)[Ljavax/mail/internet/InternetAddress;
    .registers 5

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->skipSpaces()V

    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->readByte()B

    move-result v0

    const/16 v1, 0x28

    if-ne v0, v1, :cond_34

    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    :cond_10
    new-instance v0, Lcom/sun/mail/imap/protocol/IMAPAddress;

    invoke-direct {v0, p1}, Lcom/sun/mail/imap/protocol/IMAPAddress;-><init>(Lcom/sun/mail/iap/Response;)V

    invoke-virtual {v0}, Lcom/sun/mail/imap/protocol/IMAPAddress;->isEndOfGroup()Z

    move-result v2

    if-nez v2, :cond_1e

    invoke-virtual {v1, v0}, Ljava/util/Vector;->addElement(Ljava/lang/Object;)V

    :cond_1e
    invoke-virtual {p1}, Lcom/sun/mail/iap/Response;->peekByte()B

    move-result v0

    const/16 v2, 0x29

    if-ne v0, v2, :cond_10

    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Lcom/sun/mail/iap/Response;->skip(I)V

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v0

    new-array v0, v0, [Ljavax/mail/internet/InternetAddress;

    invoke-virtual {v1, v0}, Ljava/util/Vector;->copyInto([Ljava/lang/Object;)V

    :goto_33
    return-object v0

    :cond_34
    const/16 v1, 0x4e

    if-eq v0, v1, :cond_3c

    const/16 v1, 0x6e

    if-ne v0, v1, :cond_42

    :cond_3c
    const/4 v0, 0x2

    invoke-virtual {p1, v0}, Lcom/sun/mail/iap/Response;->skip(I)V

    const/4 v0, 0x0

    goto :goto_33

    :cond_42
    new-instance v0, Lcom/sun/mail/iap/ParsingException;

    const-string v1, "ADDRESS parse error"

    invoke-direct {v0, v1}, Lcom/sun/mail/iap/ParsingException;-><init>(Ljava/lang/String;)V

    throw v0
.end method
