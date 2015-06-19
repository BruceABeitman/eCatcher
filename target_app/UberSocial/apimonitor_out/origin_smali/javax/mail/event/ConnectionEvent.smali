.class public Ljavax/mail/event/ConnectionEvent;
.super Ljavax/mail/event/MailEvent;
.source "SourceFile"


# static fields
.field public static final CLOSED:I = 0x3

.field public static final DISCONNECTED:I = 0x2

.field public static final OPENED:I = 0x1

.field private static final serialVersionUID:J = -0x19bffd629136067dL


# instance fields
.field protected type:I


# direct methods
.method public constructor <init>(Ljava/lang/Object;I)V
    .registers 3

    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    iput p2, p0, Ljavax/mail/event/ConnectionEvent;->type:I

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Ljavax/mail/event/ConnectionEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    check-cast p1, Ljavax/mail/event/ConnectionListener;

    invoke-interface {p1, p0}, Ljavax/mail/event/ConnectionListener;->opened(Ljavax/mail/event/ConnectionEvent;)V

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget v0, p0, Ljavax/mail/event/ConnectionEvent;->type:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_16

    check-cast p1, Ljavax/mail/event/ConnectionListener;

    invoke-interface {p1, p0}, Ljavax/mail/event/ConnectionListener;->disconnected(Ljavax/mail/event/ConnectionEvent;)V

    goto :goto_a

    :cond_16
    iget v0, p0, Ljavax/mail/event/ConnectionEvent;->type:I

    const/4 v1, 0x3

    if-ne v0, v1, :cond_a

    check-cast p1, Ljavax/mail/event/ConnectionListener;

    invoke-interface {p1, p0}, Ljavax/mail/event/ConnectionListener;->closed(Ljavax/mail/event/ConnectionEvent;)V

    goto :goto_a
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Ljavax/mail/event/ConnectionEvent;->type:I

    return v0
.end method
