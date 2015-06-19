.class public Lcom/fsck/k9/mail/AuthenticationFailedException;
.super Lcom/fsck/k9/mail/MessagingException;
.source "AuthenticationFailedException.java"


# static fields
.field public static final serialVersionUID:J = -0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/fsck/k9/mail/MessagingException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
