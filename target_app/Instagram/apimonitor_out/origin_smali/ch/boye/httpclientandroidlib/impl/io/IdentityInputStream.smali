.class public Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;
.super Ljava/io/InputStream;
.source "IdentityInputStream.java"


# instance fields
.field private closed:Z

.field private final in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;


# direct methods
.method public constructor <init>(Lch/boye/httpclientandroidlib/io/SessionInputBuffer;)V
    .registers 4

    invoke-direct {p0}, Ljava/io/InputStream;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->closed:Z

    if-nez p1, :cond_10

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Session input buffer may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_10
    iput-object p1, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    return-void
.end method


# virtual methods
.method public available()I
    .registers 2

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    instance-of v0, v0, Lch/boye/httpclientandroidlib/io/BufferInfo;

    if-eqz v0, :cond_f

    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    check-cast v0, Lch/boye/httpclientandroidlib/io/BufferInfo;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/BufferInfo;->length()I

    move-result v0

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public close()V
    .registers 2

    const/4 v0, 0x1

    iput-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->closed:Z

    return-void
.end method

.method public read()I
    .registers 2

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->closed:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read()I

    move-result v0

    goto :goto_5
.end method

.method public read([BII)I
    .registers 5

    iget-boolean v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->closed:Z

    if-eqz v0, :cond_6

    const/4 v0, -0x1

    :goto_5
    return v0

    :cond_6
    iget-object v0, p0, Lch/boye/httpclientandroidlib/impl/io/IdentityInputStream;->in:Lch/boye/httpclientandroidlib/io/SessionInputBuffer;

    invoke-interface {v0, p1, p2, p3}, Lch/boye/httpclientandroidlib/io/SessionInputBuffer;->read([BII)I

    move-result v0

    goto :goto_5
.end method
