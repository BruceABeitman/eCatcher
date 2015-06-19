.class public abstract Lcom/fsck/k9/mail/Message;
.super Ljava/lang/Object;
.source "Message.java"

# interfaces
.implements Lcom/fsck/k9/mail/Part;
.implements Lcom/fsck/k9/mail/Body;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/fsck/k9/mail/Message$RecipientType;
    }
.end annotation


# instance fields
.field protected mFlags:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Lcom/fsck/k9/mail/Flag;",
            ">;"
        }
    .end annotation
.end field

.field protected mFolder:Lcom/fsck/k9/mail/Folder;

.field protected mInternalDate:Ljava/util/Date;

.field protected mUid:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/Message;->mFlags:Ljava/util/HashSet;

    return-void
.end method


# virtual methods
.method public abstract addHeader(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public delete(Ljava/lang/String;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    return-void
.end method

.method public abstract getBody()Lcom/fsck/k9/mail/Body;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getContentType()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public getFlags()[Lcom/fsck/k9/mail/Flag;
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mFlags:Ljava/util/HashSet;

    const/4 v1, 0x0

    new-array v1, v1, [Lcom/fsck/k9/mail/Flag;

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object p0

    check-cast p0, [Lcom/fsck/k9/mail/Flag;

    return-object p0
.end method

.method public getFolder()Lcom/fsck/k9/mail/Folder;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mFolder:Lcom/fsck/k9/mail/Folder;

    return-object v0
.end method

.method public abstract getFrom()[Lcom/fsck/k9/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getHeader(Ljava/lang/String;)[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public getInternalDate()Ljava/util/Date;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mInternalDate:Ljava/util/Date;

    return-object v0
.end method

.method public abstract getMessageId()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getReceivedDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getRecipients(Lcom/fsck/k9/mail/Message$RecipientType;)[Lcom/fsck/k9/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getReferences()[Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getReplyTo()[Lcom/fsck/k9/mail/Address;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getSentDate()Ljava/util/Date;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract getSubject()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public getUid()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mUid:Ljava/lang/String;

    return-object v0
.end method

.method public isMimeType(Ljava/lang/String;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    invoke-virtual {p0}, Lcom/fsck/k9/mail/Message;->getContentType()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSet(Lcom/fsck/k9/mail/Flag;)Z
    .registers 3

    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public abstract removeHeader(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract saveChanges()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setBody(Lcom/fsck/k9/mail/Body;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public setFlag(Lcom/fsck/k9/mail/Flag;Z)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    if-eqz p2, :cond_8

    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    :goto_7
    return-void

    :cond_8
    iget-object v0, p0, Lcom/fsck/k9/mail/Message;->mFlags:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    goto :goto_7
.end method

.method public setFlags([Lcom/fsck/k9/mail/Flag;Z)V
    .registers 7
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    move-object v0, p1

    array-length v3, v0

    const/4 v2, 0x0

    :goto_3
    if-ge v2, v3, :cond_d

    aget-object v1, v0, v2

    invoke-virtual {p0, v1, p2}, Lcom/fsck/k9/mail/Message;->setFlag(Lcom/fsck/k9/mail/Flag;Z)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    :cond_d
    return-void
.end method

.method public abstract setFrom(Lcom/fsck/k9/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setHeader(Ljava/lang/String;Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setInReplyTo(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public setInternalDate(Ljava/util/Date;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/mail/Message;->mInternalDate:Ljava/util/Date;

    return-void
.end method

.method public setRecipient(Lcom/fsck/k9/mail/Message$RecipientType;Lcom/fsck/k9/mail/Address;)V
    .registers 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    const/4 v0, 0x1

    new-array v0, v0, [Lcom/fsck/k9/mail/Address;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p0, p1, v0}, Lcom/fsck/k9/mail/Message;->setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V

    return-void
.end method

.method public abstract setRecipients(Lcom/fsck/k9/mail/Message$RecipientType;[Lcom/fsck/k9/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setReferences(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setReplyTo([Lcom/fsck/k9/mail/Address;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setSentDate(Ljava/util/Date;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public abstract setSubject(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation
.end method

.method public setUid(Ljava/lang/String;)V
    .registers 2

    iput-object p1, p0, Lcom/fsck/k9/mail/Message;->mUid:Ljava/lang/String;

    return-void
.end method
