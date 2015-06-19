.class  Ljavax/mail/Service$TerminatorEvent;
.super Ljavax/mail/event/MailEvent;
.source "SourceFile"
.field private static final serialVersionUID:J = 0x4ce9c033019effa0L
.method constructor <init>()V
.registers 2
new-instance v0, Ljava/lang/Object;
invoke-direct {v0}, Ljava/lang/Object;-><init>()V
invoke-direct {p0, v0}, Ljavax/mail/event/MailEvent;-><init>(Ljava/lang/Object;)V
return-void
.end method
.method public dispatch(Ljava/lang/Object;)V
.registers 3
invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V
return-void
.end method