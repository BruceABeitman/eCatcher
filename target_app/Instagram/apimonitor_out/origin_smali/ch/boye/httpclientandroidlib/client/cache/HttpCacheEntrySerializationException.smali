.class public Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntrySerializationException;
.super Ljava/io/IOException;
.source "HttpCacheEntrySerializationException.java"


# static fields
.field private static final serialVersionUID:J = 0x7ff122f9319916efL


# direct methods
.method public constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0}, Ljava/io/IOException;-><init>()V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Throwable;)V
    .registers 3

    invoke-direct {p0, p1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0, p2}, Lch/boye/httpclientandroidlib/client/cache/HttpCacheEntrySerializationException;->initCause(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    return-void
.end method
