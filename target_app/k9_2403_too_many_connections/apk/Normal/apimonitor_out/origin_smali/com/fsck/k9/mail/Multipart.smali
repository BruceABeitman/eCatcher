.class public abstract Lcom/fsck/k9/mail/Multipart;
.super Ljava/lang/Object;
.source "Multipart.java"

# interfaces
.implements Lcom/fsck/k9/mail/Body;


# instance fields
.field protected mContentType:Ljava/lang/String;

.field protected mParent:Lcom/fsck/k9/mail/Part;

.field protected mParts:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/fsck/k9/mail/BodyPart;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public addBodyPart(Lcom/fsck/k9/mail/BodyPart;)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public addBodyPart(Lcom/fsck/k9/mail/BodyPart;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p2, p1}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    return-void
.end method

.method public getBodyPart(I)Lcom/fsck/k9/mail/BodyPart;
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lcom/fsck/k9/mail/BodyPart;

    return-object p0
.end method

.method public getContentType()Ljava/lang/String;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mContentType:Ljava/lang/String;

    return-object v0
.end method

.method public getCount()I
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getParent()Lcom/fsck/k9/mail/Part;
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParent:Lcom/fsck/k9/mail/Part;

    return-object v0
.end method

.method public removeBodyPart(I)V
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    return-void
.end method

.method public removeBodyPart(Lcom/fsck/k9/mail/BodyPart;)Z
    .registers 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iget-object v0, p0, Lcom/fsck/k9/mail/Multipart;->mParts:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public setParent(Lcom/fsck/k9/mail/Part;)V
    .registers 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/fsck/k9/mail/MessagingException;
        }
    .end annotation

    iput-object p1, p0, Lcom/fsck/k9/mail/Multipart;->mParent:Lcom/fsck/k9/mail/Part;

    return-void
.end method
