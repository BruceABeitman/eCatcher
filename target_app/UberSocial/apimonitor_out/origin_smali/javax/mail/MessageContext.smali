.class public Ljavax/mail/MessageContext;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private part:Ljavax/mail/Part;


# direct methods
.method public constructor <init>(Ljavax/mail/Part;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    return-void
.end method

.method private static getMessage(Ljavax/mail/Part;)Ljavax/mail/Message;
    .registers 4

    const/4 v1, 0x0

    move-object v0, p0

    :goto_2
    if-nez v0, :cond_6

    move-object v0, v1

    :goto_5
    return-object v0

    :cond_6
    instance-of v2, v0, Ljavax/mail/Message;

    if-eqz v2, :cond_d

    check-cast v0, Ljavax/mail/Message;

    goto :goto_5

    :cond_d
    check-cast v0, Ljavax/mail/BodyPart;

    invoke-virtual {v0}, Ljavax/mail/BodyPart;->getParent()Ljavax/mail/Multipart;

    move-result-object v0

    if-nez v0, :cond_17

    move-object v0, v1

    goto :goto_5

    :cond_17
    invoke-virtual {v0}, Ljavax/mail/Multipart;->getParent()Ljavax/mail/Part;

    move-result-object v0

    goto :goto_2
.end method


# virtual methods
.method public getMessage()Ljavax/mail/Message;
    .registers 2

    :try_start_0
    iget-object v0, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    invoke-static {v0}, Ljavax/mail/MessageContext;->getMessage(Ljavax/mail/Part;)Ljavax/mail/Message;
    :try_end_5
    .catch Ljavax/mail/MessagingException; {:try_start_0 .. :try_end_5} :catch_7

    move-result-object v0

    :goto_6
    return-object v0

    :catch_7
    move-exception v0

    const/4 v0, 0x0

    goto :goto_6
.end method

.method public getPart()Ljavax/mail/Part;
    .registers 2

    iget-object v0, p0, Ljavax/mail/MessageContext;->part:Ljavax/mail/Part;

    return-object v0
.end method

.method public getSession()Ljavax/mail/Session;
    .registers 2

    invoke-virtual {p0}, Ljavax/mail/MessageContext;->getMessage()Ljavax/mail/Message;

    move-result-object v0

    if-eqz v0, :cond_9

    iget-object v0, v0, Ljavax/mail/Message;->session:Ljavax/mail/Session;

    :goto_8
    return-object v0

    :cond_9
    const/4 v0, 0x0

    goto :goto_8
.end method
