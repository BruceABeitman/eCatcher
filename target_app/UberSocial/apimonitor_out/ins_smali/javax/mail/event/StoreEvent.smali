.class public Ljavax/mail/event/StoreEvent;
.super Ljavax/mail/event/MailEvent;
.source "SourceFile"
.field public static final ALERT:I = 0x1
.field public static final NOTICE:I = 0x2
.field private static final serialVersionUID:J = 0x1ae7a9da6074bb02L
.field protected message:Ljava/lang/String;
.field protected type:I
.method public constructor <init>(Ljavax/mail/Store;ILjava/lang/String;)V
.registers 4
invoke-direct {p0, p1}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V
iput p2, p0, Ljavax/mail/event/StoreEvent;->type:I
iput-object p3, p0, Ljavax/mail/event/StoreEvent;->message:Ljava/lang/String;
return-void
.end method
.method public dispatch(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljavax/mail/event/StoreListener;
invoke-interface {p1, p0}, Ljavax/mail/event/StoreListener;->notification(Ljavax/mail/event/StoreEvent;)V
return-void
.end method
.method public getMessage()Ljava/lang/String;
.registers 2
iget-object v0, p0, Ljavax/mail/event/StoreEvent;->message:Ljava/lang/String;
return-object v0
.end method
.method public getMessageType()I
.registers 2
iget v0, p0, Ljavax/mail/event/StoreEvent;->type:I
return v0
.end method