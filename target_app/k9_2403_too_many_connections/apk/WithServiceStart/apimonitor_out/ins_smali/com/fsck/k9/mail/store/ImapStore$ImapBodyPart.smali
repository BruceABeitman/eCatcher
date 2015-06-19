.class  Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;
.super Lcom/fsck/k9/mail/internet/MimeBodyPart;
.source "ImapStore.java"
.field final synthetic this$0:Lcom/fsck/k9/mail/store/ImapStore;
.method public constructor <init>(Lcom/fsck/k9/mail/store/ImapStore;)V
.registers 2
iput-object p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;->this$0:Lcom/fsck/k9/mail/store/ImapStore;
invoke-direct {p0}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>()V
return-void
.end method
.method public setSize(I)V
.registers 2
iput p1, p0, Lcom/fsck/k9/mail/store/ImapStore$ImapBodyPart;->mSize:I
return-void
.end method