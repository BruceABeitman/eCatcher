.class public Ljavax/mail/event/MessageChangedEvent;
.super Ljavax/mail/event/MailEvent;
.source "SourceFile"
.field public static final ENVELOPE_CHANGED:I = 0x2
.field public static final FLAGS_CHANGED:I = 0x1
.field private static final serialVersionUID:J = -0x450aa78f41850e84L
.field protected transient msg:Ljavax/mail/Message;
.field protected type:I
.method public constructor <init>(Ljava/lang/Object;ILjavax/mail/Message;)V
.registers 4
invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V
iput-object p3, p0, Ljavax/mail/event/MessageChangedEvent;->msg:Ljavax/mail/Message;
iput p2, p0, Ljavax/mail/event/MessageChangedEvent;->type:I
return-void
.end method
.method public dispatch(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljavax/mail/event/MessageChangedListener;
invoke-interface {p1, p0}, Ljavax/mail/event/MessageChangedListener;->messageChanged(Ljavax/mail/event/MessageChangedEvent;)V
return-void
.end method
.method public getMessage()Ljavax/mail/Message;
.registers 2
iget-object v0, p0, Ljavax/mail/event/MessageChangedEvent;->msg:Ljavax/mail/Message;
return-object v0
.end method
.method public getMessageChangeType()I
.registers 2
iget v0, p0, Ljavax/mail/event/MessageChangedEvent;->type:I
return v0
.end method