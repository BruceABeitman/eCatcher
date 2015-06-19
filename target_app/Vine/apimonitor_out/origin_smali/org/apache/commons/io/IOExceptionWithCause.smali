.class public Lorg/apache/commons/io/IOExceptionWithCause;
.super Ljava/io/IOException;
.source "IOExceptionWithCause.java"


# static fields
.field private static final serialVersionUID:J = 0x1L


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/commons/io/IOExceptionWithCause;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Throwable;)V
    .registers 3

    if-nez p1, :cond_a

    const/4 v0, 0x0

    :goto_3
    invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p1}, Lorg/apache/commons/io/IOExceptionWithCause;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void

    :cond_a
    invoke-virtual {p1}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_3
.end method
