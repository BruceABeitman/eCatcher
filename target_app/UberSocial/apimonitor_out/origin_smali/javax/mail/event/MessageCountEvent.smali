.class public Ljavax/mail/event/MessageCountEvent;
.super Ljavax/mail/event/MailEvent;
.source "SourceFile"


# static fields
.field public static final ADDED:I = 0x1

.field public static final REMOVED:I = 0x2

.field private static final serialVersionUID:J = -0x6759235cec0a7499L


# instance fields
.field protected transient msgs:[Ljavax/mail/Message;

.field protected removed:Z

.field protected type:I


# direct methods
.method public constructor <init>(Ljavax/mail/Folder;IZ[Ljavax/mail/Message;)V
    .registers 5

    invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V

    iput p2, p0, Ljavax/mail/event/MessageCountEvent;->type:I

    iput-boolean p3, p0, Ljavax/mail/event/MessageCountEvent;->removed:Z

    iput-object p4, p0, Ljavax/mail/event/MessageCountEvent;->msgs:[Ljavax/mail/Message;

    return-void
.end method


# virtual methods
.method public dispatch(Ljava/lang/Object;)V
    .registers 4

    iget v0, p0, Ljavax/mail/event/MessageCountEvent;->type:I

    const/4 v1, 0x1

    if-ne v0, v1, :cond_b

    check-cast p1, Ljavax/mail/event/MessageCountListener;

    invoke-interface {p1, p0}, Ljavax/mail/event/MessageCountListener;->messagesAdded(Ljavax/mail/event/MessageCountEvent;)V

    :goto_a
    return-void

    :cond_b
    check-cast p1, Ljavax/mail/event/MessageCountListener;

    invoke-interface {p1, p0}, Ljavax/mail/event/MessageCountListener;->messagesRemoved(Ljavax/mail/event/MessageCountEvent;)V

    goto :goto_a
.end method

.method public getMessages()[Ljavax/mail/Message;
    .registers 2

    iget-object v0, p0, Ljavax/mail/event/MessageCountEvent;->msgs:[Ljavax/mail/Message;

    return-object v0
.end method

.method public getType()I
    .registers 2

    iget v0, p0, Ljavax/mail/event/MessageCountEvent;->type:I

    return v0
.end method

.method public isRemoved()Z
    .registers 2

    iget-boolean v0, p0, Ljavax/mail/event/MessageCountEvent;->removed:Z

    return v0
.end method
