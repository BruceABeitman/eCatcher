.class public abstract Lcom/fsck/k9/mail/BodyPart;
.super Ljava/lang/Object;
.source "BodyPart.java"
.implements Lcom/fsck/k9/mail/Part;
.field protected mParent:Lcom/fsck/k9/mail/Multipart;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public getParent()Lcom/fsck/k9/mail/Multipart;
.registers 2
iget-object v0, p0, Lcom/fsck/k9/mail/BodyPart;->mParent:Lcom/fsck/k9/mail/Multipart;
return-object v0
.end method