.class public final Lcom/google/b/d/a;
.super Ljava/lang/Object;
.source "ByteStreams.java"


# static fields
.field private static final a:Ljava/io/OutputStream;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/google/b/d/b;

    invoke-direct {v0}, Lcom/google/b/d/b;-><init>()V

    sput-object v0, Lcom/google/b/d/a;->a:Ljava/io/OutputStream;

    return-void
.end method

.method private static a(Ljava/io/InputStream;Ljava/io/OutputStream;)J
    .registers 7

    invoke-static {p0}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    const/16 v0, 0x1000

    new-array v2, v0, [B

    const-wide/16 v0, 0x0

    :goto_c
    invoke-virtual {p0, v2}, Ljava/io/InputStream;->read([B)I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_1a

    const/4 v4, 0x0

    invoke-virtual {p1, v2, v4, v3}, Ljava/io/OutputStream;->write([BII)V

    int-to-long v3, v3

    add-long/2addr v0, v3

    goto :goto_c

    :cond_1a
    return-wide v0
.end method

.method public static a(Ljava/io/InputStream;)[B
    .registers 2

    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    invoke-static {p0, v0}, Lcom/google/b/d/a;->a(Ljava/io/InputStream;Ljava/io/OutputStream;)J

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    return-object v0
.end method
