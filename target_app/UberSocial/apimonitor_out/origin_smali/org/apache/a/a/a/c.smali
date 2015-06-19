.class public Lorg/apache/a/a/a/c;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final a:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final b:Lorg/apache/http/util/ByteArrayBuffer;

.field private static final c:Lorg/apache/http/util/ByteArrayBuffer;


# instance fields
.field private final d:Ljava/lang/String;

.field private final e:Ljava/nio/charset/Charset;

.field private final f:Ljava/lang/String;

.field private final g:Ljava/util/List;

.field private final h:Lorg/apache/a/a/a/d;


# direct methods
.method static constructor <clinit>()V
    .registers 2

    sget-object v0, Lorg/apache/a/a/a/e;->f:Ljava/nio/charset/Charset;

    const-string v1, ": "

    invoke-static {v0, v1}, Lorg/apache/a/a/a/c;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/a/a/a/c;->a:Lorg/apache/http/util/ByteArrayBuffer;

    sget-object v0, Lorg/apache/a/a/a/e;->f:Ljava/nio/charset/Charset;

    const-string v1, "\r\n"

    invoke-static {v0, v1}, Lorg/apache/a/a/a/c;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/a/a/a/c;->b:Lorg/apache/http/util/ByteArrayBuffer;

    sget-object v0, Lorg/apache/a/a/a/e;->f:Ljava/nio/charset/Charset;

    const-string v1, "--"

    invoke-static {v0, v1}, Lorg/apache/a/a/a/c;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    sput-object v0, Lorg/apache/a/a/a/c;->c:Lorg/apache/http/util/ByteArrayBuffer;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .registers 4

    const/4 v0, 0x0

    invoke-direct {p0, p1, v0, p2}, Lorg/apache/a/a/a/c;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;)V
    .registers 5

    sget-object v0, Lorg/apache/a/a/a/d;->a:Lorg/apache/a/a/a/d;

    invoke-direct {p0, p1, p2, p3, v0}, Lorg/apache/a/a/a/c;-><init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lorg/apache/a/a/a/d;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/lang/String;Lorg/apache/a/a/a/d;)V
    .registers 7

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    if-nez p1, :cond_d

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Multipart subtype may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_d
    if-nez p3, :cond_17

    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Multipart boundary may not be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_17
    iput-object p1, p0, Lorg/apache/a/a/a/c;->d:Ljava/lang/String;

    if-eqz p2, :cond_29

    :goto_1b
    iput-object p2, p0, Lorg/apache/a/a/a/c;->e:Ljava/nio/charset/Charset;

    iput-object p3, p0, Lorg/apache/a/a/a/c;->f:Ljava/lang/String;

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lorg/apache/a/a/a/c;->g:Ljava/util/List;

    iput-object p4, p0, Lorg/apache/a/a/a/c;->h:Lorg/apache/a/a/a/d;

    return-void

    :cond_29
    sget-object p2, Lorg/apache/a/a/a/e;->f:Ljava/nio/charset/Charset;

    goto :goto_1b
.end method

.method private static a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;
    .registers 6

    invoke-static {p1}, Ljava/nio/CharBuffer;->wrap(Ljava/lang/CharSequence;)Ljava/nio/CharBuffer;

    move-result-object v0

    invoke-virtual {p0, v0}, Ljava/nio/charset/Charset;->encode(Ljava/nio/CharBuffer;)Ljava/nio/ByteBuffer;

    move-result-object v0

    new-instance v1, Lorg/apache/http/util/ByteArrayBuffer;

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v2

    invoke-direct {v1, v2}, Lorg/apache/http/util/ByteArrayBuffer;-><init>(I)V

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->position()I

    move-result v3

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->remaining()I

    move-result v0

    invoke-virtual {v1, v2, v3, v0}, Lorg/apache/http/util/ByteArrayBuffer;->append([BII)V

    return-object v1
.end method

.method private static a(Ljava/lang/String;Ljava/io/OutputStream;)V
    .registers 3

    sget-object v0, Lorg/apache/a/a/a/e;->f:Ljava/nio/charset/Charset;

    invoke-static {v0, p0}, Lorg/apache/a/a/a/c;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/a/a/a/c;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .registers 4

    invoke-static {p1, p0}, Lorg/apache/a/a/a/c;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v0

    invoke-static {v0, p2}, Lorg/apache/a/a/a/c;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method private a(Lorg/apache/a/a/a/d;Ljava/io/OutputStream;Z)V
    .registers 10

    iget-object v0, p0, Lorg/apache/a/a/a/c;->e:Ljava/nio/charset/Charset;

    invoke-virtual {p0}, Lorg/apache/a/a/a/c;->e()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lorg/apache/a/a/a/c;->a(Ljava/nio/charset/Charset;Ljava/lang/String;)Lorg/apache/http/util/ByteArrayBuffer;

    move-result-object v2

    iget-object v0, p0, Lorg/apache/a/a/a/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_10
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_89

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/a/a/a/a;

    sget-object v1, Lorg/apache/a/a/a/c;->c:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lorg/apache/a/a/a/c;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-static {v2, p2}, Lorg/apache/a/a/a/c;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v1, Lorg/apache/a/a/a/c;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lorg/apache/a/a/a/c;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/apache/a/a/a/a;->c()Lorg/apache/a/a/a/b;

    move-result-object v1

    sget-object v4, Lorg/apache/a/a/a/c$1;->a:[I

    invoke-virtual {p1}, Lorg/apache/a/a/a/d;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_9c

    :cond_38
    :goto_38
    sget-object v1, Lorg/apache/a/a/a/c;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v1, p2}, Lorg/apache/a/a/a/c;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    if-eqz p3, :cond_46

    invoke-virtual {v0}, Lorg/apache/a/a/a/a;->b()Lorg/apache/a/a/a/a/c;

    move-result-object v0

    invoke-interface {v0, p2}, Lorg/apache/a/a/a/a/c;->a(Ljava/io/OutputStream;)V

    :cond_46
    sget-object v0, Lorg/apache/a/a/a/c;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/a/a/a/c;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    goto :goto_10

    :pswitch_4c
    invoke-virtual {v1}, Lorg/apache/a/a/a/b;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_50
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_38

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/apache/a/a/a/f;

    invoke-static {v1, p2}, Lorg/apache/a/a/a/c;->a(Lorg/apache/a/a/a/f;Ljava/io/OutputStream;)V

    goto :goto_50

    :pswitch_60
    invoke-virtual {v0}, Lorg/apache/a/a/a/a;->c()Lorg/apache/a/a/a/b;

    move-result-object v1

    const-string v4, "Content-Disposition"

    invoke-virtual {v1, v4}, Lorg/apache/a/a/a/b;->a(Ljava/lang/String;)Lorg/apache/a/a/a/f;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/a/a/a/c;->e:Ljava/nio/charset/Charset;

    invoke-static {v1, v4, p2}, Lorg/apache/a/a/a/c;->a(Lorg/apache/a/a/a/f;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    invoke-virtual {v0}, Lorg/apache/a/a/a/a;->b()Lorg/apache/a/a/a/a/c;

    move-result-object v1

    invoke-interface {v1}, Lorg/apache/a/a/a/a/c;->a()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_38

    invoke-virtual {v0}, Lorg/apache/a/a/a/a;->c()Lorg/apache/a/a/a/b;

    move-result-object v1

    const-string v4, "Content-Type"

    invoke-virtual {v1, v4}, Lorg/apache/a/a/a/b;->a(Ljava/lang/String;)Lorg/apache/a/a/a/f;

    move-result-object v1

    iget-object v4, p0, Lorg/apache/a/a/a/c;->e:Ljava/nio/charset/Charset;

    invoke-static {v1, v4, p2}, Lorg/apache/a/a/a/c;->a(Lorg/apache/a/a/a/f;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    goto :goto_38

    :cond_89
    sget-object v0, Lorg/apache/a/a/a/c;->c:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/a/a/a/c;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-static {v2, p2}, Lorg/apache/a/a/a/c;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/a/a/a/c;->c:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/a/a/a/c;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/a/a/a/c;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/a/a/a/c;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void

    :pswitch_data_9c
    .packed-switch 0x1
        :pswitch_4c
        :pswitch_60
    .end packed-switch
.end method

.method private static a(Lorg/apache/a/a/a/f;Ljava/io/OutputStream;)V
    .registers 3

    invoke-virtual {p0}, Lorg/apache/a/a/a/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/a/a/a/c;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/a/a/a/c;->a:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lorg/apache/a/a/a/c;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/apache/a/a/a/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1}, Lorg/apache/a/a/a/c;->a(Ljava/lang/String;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/a/a/a/c;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p1}, Lorg/apache/a/a/a/c;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static a(Lorg/apache/a/a/a/f;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V
    .registers 4

    invoke-virtual {p0}, Lorg/apache/a/a/a/f;->a()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/a/a/a/c;->a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/a/a/a/c;->a:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/a/a/a/c;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    invoke-virtual {p0}, Lorg/apache/a/a/a/f;->b()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0, p1, p2}, Lorg/apache/a/a/a/c;->a(Ljava/lang/String;Ljava/nio/charset/Charset;Ljava/io/OutputStream;)V

    sget-object v0, Lorg/apache/a/a/a/c;->b:Lorg/apache/http/util/ByteArrayBuffer;

    invoke-static {v0, p2}, Lorg/apache/a/a/a/c;->a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V

    return-void
.end method

.method private static a(Lorg/apache/http/util/ByteArrayBuffer;Ljava/io/OutputStream;)V
    .registers 5

    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->buffer()[B

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p0}, Lorg/apache/http/util/ByteArrayBuffer;->length()I

    move-result v2

    invoke-virtual {p1, v0, v1, v2}, Ljava/io/OutputStream;->write([BII)V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/a/a/a/c;->d:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/io/OutputStream;)V
    .registers 4

    iget-object v0, p0, Lorg/apache/a/a/a/c;->h:Lorg/apache/a/a/a/d;

    const/4 v1, 0x1

    invoke-direct {p0, v0, p1, v1}, Lorg/apache/a/a/a/c;->a(Lorg/apache/a/a/a/d;Ljava/io/OutputStream;Z)V

    return-void
.end method

.method public a(Lorg/apache/a/a/a/a;)V
    .registers 3

    if-nez p1, :cond_3

    :goto_2
    return-void

    :cond_3
    iget-object v0, p0, Lorg/apache/a/a/a/c;->g:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method public b()Ljava/nio/charset/Charset;
    .registers 2

    iget-object v0, p0, Lorg/apache/a/a/a/c;->e:Ljava/nio/charset/Charset;

    return-object v0
.end method

.method public c()Lorg/apache/a/a/a/d;
    .registers 2

    iget-object v0, p0, Lorg/apache/a/a/a/c;->h:Lorg/apache/a/a/a/d;

    return-object v0
.end method

.method public d()Ljava/util/List;
    .registers 2

    iget-object v0, p0, Lorg/apache/a/a/a/c;->g:Ljava/util/List;

    return-object v0
.end method

.method public e()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lorg/apache/a/a/a/c;->f:Ljava/lang/String;

    return-object v0
.end method

.method public f()J
    .registers 11

    const-wide/16 v3, 0x0

    const-wide/16 v5, -0x1

    iget-object v0, p0, Lorg/apache/a/a/a/c;->g:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    move-wide v1, v3

    :goto_b
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_29

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/apache/a/a/a/a;

    invoke-virtual {v0}, Lorg/apache/a/a/a/a;->b()Lorg/apache/a/a/a/a/c;

    move-result-object v0

    invoke-interface {v0}, Lorg/apache/a/a/a/a/c;->c()J

    move-result-wide v8

    cmp-long v0, v8, v3

    if-ltz v0, :cond_27

    add-long v0, v1, v8

    move-wide v1, v0

    goto :goto_b

    :cond_27
    move-wide v0, v5

    :goto_28
    return-wide v0

    :cond_29
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    :try_start_2e
    iget-object v3, p0, Lorg/apache/a/a/a/c;->h:Lorg/apache/a/a/a/d;

    const/4 v4, 0x0

    invoke-direct {p0, v3, v0, v4}, Lorg/apache/a/a/a/c;->a(Lorg/apache/a/a/a/d;Ljava/io/OutputStream;Z)V

    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0

    array-length v0, v0
    :try_end_39
    .catch Ljava/io/IOException; {:try_start_2e .. :try_end_39} :catch_3d

    int-to-long v3, v0

    add-long v0, v1, v3

    goto :goto_28

    :catch_3d
    move-exception v0

    move-wide v0, v5

    goto :goto_28
.end method
