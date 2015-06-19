.class public Lorg/apache/b/a/a;
.super Ljava/io/IOException;
.source "SourceFile"


# static fields
.field private static final a:J = 0x73eb2eb2a61552feL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lorg/apache/b/a/a;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
