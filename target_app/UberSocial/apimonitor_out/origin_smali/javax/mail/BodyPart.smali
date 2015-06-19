.class public abstract Ljavax/mail/BodyPart;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljavax/mail/Part;


# instance fields
.field protected parent:Ljavax/mail/Multipart;


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getParent()Ljavax/mail/Multipart;
    .registers 2

    iget-object v0, p0, Ljavax/mail/BodyPart;->parent:Ljavax/mail/Multipart;

    return-object v0
.end method

.method setParent(Ljavax/mail/Multipart;)V
    .registers 2

    iput-object p1, p0, Ljavax/mail/BodyPart;->parent:Ljavax/mail/Multipart;

    return-void
.end method
