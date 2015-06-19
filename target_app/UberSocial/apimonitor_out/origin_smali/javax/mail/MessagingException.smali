.class public Ljavax/mail/MessagingException;
.super Ljava/lang/Exception;
.source "SourceFile"


# static fields
.field private static final serialVersionUID:J = -0x690b2c48c7581fd5L


# instance fields
.field private next:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Exception;-><init>()V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/MessagingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/MessagingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    invoke-direct {p0, p1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Ljavax/mail/MessagingException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method private final superToString()Ljava/lang/String;
    .registers 2

    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public declared-synchronized getCause()Ljava/lang/Throwable;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized getNextException()Ljava/lang/Exception;
    .registers 2

    monitor-enter p0

    :try_start_1
    iget-object v0, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;
    :try_end_3
    .catchall {:try_start_1 .. :try_end_3} :catchall_5

    monitor-exit p0

    return-object v0

    :catchall_5
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method public declared-synchronized setNextException(Ljava/lang/Exception;)Z
    .registers 5

    monitor-enter p0

    move-object v2, p0

    :goto_2
    :try_start_2
    instance-of v1, v2, Ljavax/mail/MessagingException;

    if-eqz v1, :cond_e

    move-object v0, v2

    check-cast v0, Ljavax/mail/MessagingException;

    move-object v1, v0

    iget-object v1, v1, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    if-nez v1, :cond_19

    :cond_e
    instance-of v1, v2, Ljavax/mail/MessagingException;

    if-eqz v1, :cond_1e

    check-cast v2, Ljavax/mail/MessagingException;

    iput-object p1, v2, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;
    :try_end_16
    .catchall {:try_start_2 .. :try_end_16} :catchall_20

    const/4 v1, 0x1

    :goto_17
    monitor-exit p0

    return v1

    :cond_19
    :try_start_19
    check-cast v2, Ljavax/mail/MessagingException;

    iget-object v2, v2, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;
    :try_end_1d
    .catchall {:try_start_19 .. :try_end_1d} :catchall_20

    goto :goto_2

    :cond_1e
    const/4 v1, 0x0

    goto :goto_17

    :catchall_20
    move-exception v1

    monitor-exit p0

    throw v1
.end method

.method public declared-synchronized toString()Ljava/lang/String;
    .registers 4

    monitor-enter p0

    :try_start_1
    invoke-super {p0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    iget-object v1, p0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;
    :try_end_7
    .catchall {:try_start_1 .. :try_end_7} :catchall_3a

    if-nez v1, :cond_b

    :goto_9
    monitor-exit p0

    return-object v0

    :cond_b
    :try_start_b
    new-instance v2, Ljava/lang/StringBuffer;

    if-nez v0, :cond_11

    const-string v0, ""

    :cond_11
    invoke-direct {v2, v0}, Ljava/lang/StringBuffer;-><init>(Ljava/lang/String;)V

    move-object v0, v1

    :goto_15
    if-nez v0, :cond_1c

    invoke-virtual {v2}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_9

    :cond_1c
    const-string v1, ";\n  nested exception is:\n\t"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    instance-of v1, v0, Ljavax/mail/MessagingException;

    if-eqz v1, :cond_31

    check-cast v0, Ljavax/mail/MessagingException;

    invoke-direct {v0}, Ljavax/mail/MessagingException;->superToString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    iget-object v0, v0, Ljavax/mail/MessagingException;->next:Ljava/lang/Exception;

    goto :goto_15

    :cond_31
    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;
    :try_end_38
    .catchall {:try_start_b .. :try_end_38} :catchall_3a

    const/4 v0, 0x0

    goto :goto_15

    :catchall_3a
    move-exception v0

    monitor-exit p0

    throw v0
.end method
