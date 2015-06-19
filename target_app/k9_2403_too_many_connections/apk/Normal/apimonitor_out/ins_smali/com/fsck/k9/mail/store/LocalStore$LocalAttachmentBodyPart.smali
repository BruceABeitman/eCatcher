.class public Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;
.super Lcom/fsck/k9/mail/internet/MimeBodyPart;
.source "LocalStore.java"
.field private mAttachmentId:J
.field final synthetic this$0:Lcom/fsck/k9/mail/store/LocalStore;
.method public constructor <init>(Lcom/fsck/k9/mail/store/LocalStore;Lcom/fsck/k9/mail/Body;J)V
.registers 7
iput-object p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;->this$0:Lcom/fsck/k9/mail/store/LocalStore;
invoke-direct {p0, p2}, Lcom/fsck/k9/mail/internet/MimeBodyPart;-><init>(Lcom/fsck/k9/mail/Body;)V
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J
iput-wide p3, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J
return-void
.end method
.method public getAttachmentId()J
.registers 3
iget-wide v0, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J
return-wide v0
.end method
.method public setAttachmentId(J)V
.registers 3
iput-wide p1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J
return-void
.end method
.method public toString()Ljava/lang/String;
.registers 4
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, ""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, p0, Lcom/fsck/k9/mail/store/LocalStore$LocalAttachmentBodyPart;->mAttachmentId:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
.end method