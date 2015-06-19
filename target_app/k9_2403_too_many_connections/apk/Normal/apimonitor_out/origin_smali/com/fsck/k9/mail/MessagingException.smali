.class public Lcom/fsck/k9/mail/MessagingException;
.super Ljava/lang/Exception;
.source "MessagingException.java"


# static fields
.field public static final serialVersionUID:J = -0x1L


# instance fields
.field permanentFailure:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Z)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    iput-boolean p2, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ZLjava/lang/Throwable;)V
    .registers 5

    invoke-direct {p0, p1, p3}, Ljava/lang/Exception;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    iput-boolean p2, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    return-void
.end method


# virtual methods
.method public isPermanentFailure()Z
    .registers 2

    iget-boolean v0, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    return v0
.end method

.method public setPermanentFailure(Z)V
    .registers 2

    iput-boolean p1, p0, Lcom/fsck/k9/mail/MessagingException;->permanentFailure:Z

    return-void
.end method
