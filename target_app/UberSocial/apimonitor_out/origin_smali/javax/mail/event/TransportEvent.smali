.class public Ljavax/mail/event/TransportEvent;
.super Ljavax/mail/event/MailEvent;
.source "SourceFile"


# static fields
.field public static final MESSAGE_DELIVERED:I = 0x1

.field public static final MESSAGE_NOT_DELIVERED:I = 0x2

.field public static final MESSAGE_PARTIALLY_DELIVERED:I = 0x3

.field private static final serialVersionUID:J = -0x41a3cfaa750c25b1L


# instance fields
.field protected transient invalid:[Ljavax/mail/Address;

.field protected transient msg:Ljavax/mail/Message;

.field protected type:I

.field protected transient validSent:[Ljavax/mail/Address;

.field protected transient validUnsent:[Ljavax/mail/Address;


# direct methods
.method public constructor <init>(Ljavax/mail/Transport;I[Ljavax/mail/Address;[Ljavax/mail/Address;[Ljavax/mail/Address;Ljavax/mail/Message;)V
    .registers 7

    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    iput p2, p0, Ljavax/mail/event/TransportEvent;->type:I

    iput-object p3, p0, Ljavax/mail/event/TransportEvent;->validSent:[Ljavax/mail/Address;

    iput-object p4, p0, Ljavax/mail/event/TransportEvent;->validUnsent:[Ljavax/mail/Address;

    iput-object p5, p0, Ljavax/mail/event/TransportEvent;->invalid:[Ljavax/mail/Address;

    iput-object p6, p0, Ljavax/mail/event/TransportEvent;->msg:Ljavax/mail/Message;

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Ljavax/mail/event/TransportEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    check-cast p1, Ljavax/mail/event/TransportListener;

    invoke-interface {p1, p0}, Ljavax/mail/event/TransportListener;->messageDelivered(Ljavax/mail/event/TransportEvent;)V

    :goto_a
    return-void

    :cond_b
    iget v0, p0, Ljavax/mail/event/TransportEvent;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    check-cast p1, Ljavax/mail/event/TransportListener;

    invoke-interface {p1, p0}, Ljavax/mail/event/TransportListener;->messageNotDelivered(Ljavax/mail/event/TransportEvent;)V

    goto :goto_a

    :cond_16
    check-cast p1, Ljavax/mail/event/TransportListener;

    invoke-interface {p1, p0}, Ljavax/mail/event/TransportListener;->messagePartiallyDelivered(Ljavax/mail/event/TransportEvent;)V

    goto :goto_a
.end method

.method public getInvalidAddresses()[Ljavax/mail/Address;
    .registers 2

    iget-object v0, p0, Ljavax/mail/event/TransportEvent;->invalid:[Ljavax/mail/Address;

    return-object v0
.end method

.method public getMessage()Ljavax/mail/Message;
    .registers 2

    iget-object v0, p0, Ljavax/mail/event/TransportEvent;->msg:Ljavax/mail/Message;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Ljavax/mail/event/TransportEvent;->type:I

    return v0
.end method

.method public getValidSentAddresses()[Ljavax/mail/Address;
    .registers 2

    iget-object v0, p0, Ljavax/mail/event/TransportEvent;->validSent:[Ljavax/mail/Address;

    return-object v0
.end method

.method public getValidUnsentAddresses()[Ljavax/mail/Address;
    .registers 2

    iget-object v0, p0, Ljavax/mail/event/TransportEvent;->validUnsent:[Ljavax/mail/Address;

    return-object v0
.end method
