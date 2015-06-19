.class final Lcom/squareup/okhttp/internal/spdy/s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/squareup/okhttp/internal/spdy/a;


# instance fields
.field private final a:Lcom/squareup/okhttp/internal/a/c;

.field private final b:Z

.field private final c:Lcom/squareup/okhttp/internal/spdy/n;


# direct methods
.method constructor <init>(Lcom/squareup/okhttp/internal/a/c;Z)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    new-instance v0, Lcom/squareup/okhttp/internal/spdy/n;

    iget-object v1, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    invoke-direct {v0, v1}, Lcom/squareup/okhttp/internal/spdy/n;-><init>(Lcom/squareup/okhttp/internal/a/c;)V

    iput-object v0, p0, Lcom/squareup/okhttp/internal/spdy/s;->c:Lcom/squareup/okhttp/internal/spdy/n;

    iput-boolean p2, p0, Lcom/squareup/okhttp/internal/spdy/s;->b:Z

    return-void
.end method

.method private static varargs a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;
    .registers 4

    new-instance v0, Ljava/io/IOException;

    invoke-static {p0, p1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Lcom/squareup/okhttp/internal/spdy/b;II)V
    .registers 13

    const/4 v0, 0x1

    const/4 v1, 0x0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/a/c;->j()I

    move-result v3

    mul-int/lit8 v2, v3, 0x8

    add-int/lit8 v2, v2, 0x4

    if-eq p3, v2, :cond_24

    const-string v2, "TYPE_SETTINGS length: %d != 4 + 8 * %d"

    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v4, v1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v4, v0

    invoke-static {v2, v4}, Lcom/squareup/okhttp/internal/spdy/s;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_24
    new-instance v4, Lcom/squareup/okhttp/internal/spdy/q;

    invoke-direct {v4}, Lcom/squareup/okhttp/internal/spdy/q;-><init>()V

    move v2, v1

    :goto_2a
    if-ge v2, v3, :cond_47

    iget-object v5, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v5}, Lcom/squareup/okhttp/internal/a/c;->j()I

    move-result v5

    iget-object v6, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v6}, Lcom/squareup/okhttp/internal/a/c;->j()I

    move-result v6

    const/high16 v7, -0x100

    and-int/2addr v7, v5

    ushr-int/lit8 v7, v7, 0x18

    const v8, 0xffffff

    and-int/2addr v5, v8

    invoke-virtual {v4, v5, v7, v6}, Lcom/squareup/okhttp/internal/spdy/q;->a(III)Lcom/squareup/okhttp/internal/spdy/q;

    add-int/lit8 v2, v2, 0x1

    goto :goto_2a

    :cond_47
    and-int/lit8 v2, p2, 0x1

    if-eqz v2, :cond_4f

    :goto_4b
    invoke-interface {p1, v0, v4}, Lcom/squareup/okhttp/internal/spdy/b;->a(ZLcom/squareup/okhttp/internal/spdy/q;)V

    return-void

    :cond_4f
    move v0, v1

    goto :goto_4b
.end method


# virtual methods
.method public final a()V
    .registers 1

    return-void
.end method

.method public final a(Lcom/squareup/okhttp/internal/spdy/b;)Z
    .registers 12

    const/4 v4, -0x1

    const/16 v9, 0x8

    const v8, 0x7fffffff

    const/4 v1, 0x0

    const/4 v7, 0x1

    :try_start_8
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->j()I

    move-result v2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->j()I
    :try_end_13
    .catch Ljava/io/IOException; {:try_start_8 .. :try_end_13} :catch_46

    move-result v3

    const/high16 v0, -0x8000

    and-int/2addr v0, v2

    if-eqz v0, :cond_49

    move v0, v7

    :goto_1a
    const/high16 v5, -0x100

    and-int/2addr v5, v3

    ushr-int/lit8 v6, v5, 0x18

    const v5, 0xffffff

    and-int/2addr v5, v3

    if-eqz v0, :cond_19c

    const/high16 v0, 0x7fff

    and-int/2addr v0, v2

    ushr-int/lit8 v0, v0, 0x10

    const v3, 0xffff

    and-int/2addr v2, v3

    const/4 v3, 0x3

    if-eq v0, v3, :cond_4b

    new-instance v1, Ljava/net/ProtocolException;

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "version != 3: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v1

    :catch_46
    move-exception v0

    move v7, v1

    :goto_48
    return v7

    :cond_49
    move v0, v1

    goto :goto_1a

    :cond_4b
    packed-switch v2, :pswitch_data_1aa

    :pswitch_4e
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    int-to-long v1, v5

    invoke-interface {v0, v1, v2}, Lcom/squareup/okhttp/internal/a/c;->b(J)V

    goto :goto_48

    :pswitch_55
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->j()I

    move-result v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/a/c;->j()I

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/a/c;->h()S

    move-result v2

    and-int v3, v0, v8

    const v0, 0xe000

    and-int/2addr v0, v2

    ushr-int/lit8 v4, v0, 0xd

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/s;->c:Lcom/squareup/okhttp/internal/spdy/n;

    add-int/lit8 v2, v5, -0xa

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/internal/spdy/n;->a(I)Ljava/util/List;

    move-result-object v5

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_87

    move v2, v7

    :goto_7b
    and-int/lit8 v0, v6, 0x2

    if-eqz v0, :cond_80

    move v1, v7

    :cond_80
    sget-object v6, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->a:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/b;->a(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    goto :goto_48

    :cond_87
    move v2, v1

    goto :goto_7b

    :pswitch_89
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->j()I

    move-result v0

    and-int v3, v0, v8

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/s;->c:Lcom/squareup/okhttp/internal/spdy/n;

    add-int/lit8 v2, v5, -0x4

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/internal/spdy/n;->a(I)Ljava/util/List;

    move-result-object v5

    and-int/lit8 v0, v6, 0x1

    if-eqz v0, :cond_a5

    move v2, v7

    :goto_9e
    sget-object v6, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->b:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    move-object v0, p1

    invoke-interface/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/b;->a(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    goto :goto_48

    :cond_a5
    move v2, v1

    goto :goto_9e

    :pswitch_a7
    if-eq v5, v9, :cond_b8

    const-string v0, "TYPE_RST_STREAM length: %d != 8"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/spdy/s;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_b8
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->j()I

    move-result v0

    and-int/2addr v0, v8

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/a/c;->j()I

    move-result v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->a(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v3

    if-nez v3, :cond_da

    const-string v0, "TYPE_RST_STREAM unexpected error code: %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/squareup/okhttp/internal/spdy/s;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_da
    invoke-interface {p1, v0, v3}, Lcom/squareup/okhttp/internal/spdy/b;->a(ILcom/squareup/okhttp/internal/spdy/ErrorCode;)V

    goto/16 :goto_48

    :pswitch_df
    invoke-direct {p0, p1, v6, v5}, Lcom/squareup/okhttp/internal/spdy/s;->a(Lcom/squareup/okhttp/internal/spdy/b;II)V

    goto/16 :goto_48

    :pswitch_e4
    const/4 v0, 0x4

    if-eq v5, v0, :cond_f6

    const-string v0, "TYPE_PING length: %d != 4"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/spdy/s;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_f6
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->j()I

    move-result v2

    iget-boolean v3, p0, Lcom/squareup/okhttp/internal/spdy/s;->b:Z

    and-int/lit8 v0, v2, 0x1

    if-ne v0, v7, :cond_10b

    move v0, v7

    :goto_103
    if-ne v3, v0, :cond_10d

    move v0, v7

    :goto_106
    invoke-interface {p1, v0, v2, v1}, Lcom/squareup/okhttp/internal/spdy/b;->a(ZII)V

    goto/16 :goto_48

    :cond_10b
    move v0, v1

    goto :goto_103

    :cond_10d
    move v0, v1

    goto :goto_106

    :pswitch_10f
    if-eq v5, v9, :cond_120

    const-string v0, "TYPE_GOAWAY length: %d != 8"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/spdy/s;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_120
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->j()I

    move-result v0

    and-int/2addr v0, v8

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/a/c;->j()I

    move-result v2

    invoke-static {v2}, Lcom/squareup/okhttp/internal/spdy/ErrorCode;->c(I)Lcom/squareup/okhttp/internal/spdy/ErrorCode;

    move-result-object v3

    if-nez v3, :cond_142

    const-string v0, "TYPE_GOAWAY unexpected error code: %d"

    new-array v3, v7, [Ljava/lang/Object;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    aput-object v2, v3, v1

    invoke-static {v0, v3}, Lcom/squareup/okhttp/internal/spdy/s;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_142
    sget-object v1, Lcom/squareup/okhttp/internal/a/d;->a:Lcom/squareup/okhttp/internal/a/d;

    invoke-interface {p1, v0, v1}, Lcom/squareup/okhttp/internal/spdy/b;->a(ILcom/squareup/okhttp/internal/a/d;)V

    goto/16 :goto_48

    :pswitch_149
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->j()I

    move-result v0

    and-int v3, v0, v8

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/s;->c:Lcom/squareup/okhttp/internal/spdy/n;

    add-int/lit8 v2, v5, -0x4

    invoke-virtual {v0, v2}, Lcom/squareup/okhttp/internal/spdy/n;->a(I)Ljava/util/List;

    move-result-object v5

    sget-object v6, Lcom/squareup/okhttp/internal/spdy/HeadersMode;->c:Lcom/squareup/okhttp/internal/spdy/HeadersMode;

    move-object v0, p1

    move v2, v1

    invoke-interface/range {v0 .. v6}, Lcom/squareup/okhttp/internal/spdy/b;->a(ZZIILjava/util/List;Lcom/squareup/okhttp/internal/spdy/HeadersMode;)V

    goto/16 :goto_48

    :pswitch_162
    if-eq v5, v9, :cond_173

    const-string v0, "TYPE_WINDOW_UPDATE length: %d != 8"

    new-array v2, v7, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v2, v1

    invoke-static {v0, v2}, Lcom/squareup/okhttp/internal/spdy/s;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_173
    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v0}, Lcom/squareup/okhttp/internal/a/c;->j()I

    move-result v0

    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {v2}, Lcom/squareup/okhttp/internal/a/c;->j()I

    move-result v2

    and-int/2addr v0, v8

    and-int/2addr v2, v8

    int-to-long v2, v2

    const-wide/16 v4, 0x0

    cmp-long v4, v2, v4

    if-nez v4, :cond_197

    const-string v0, "windowSizeIncrement was 0"

    new-array v4, v7, [Ljava/lang/Object;

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v2

    aput-object v2, v4, v1

    invoke-static {v0, v4}, Lcom/squareup/okhttp/internal/spdy/s;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/IOException;

    move-result-object v0

    throw v0

    :cond_197
    invoke-interface {p1, v0, v2, v3}, Lcom/squareup/okhttp/internal/spdy/b;->a(IJ)V

    goto/16 :goto_48

    :cond_19c
    and-int v0, v2, v8

    and-int/lit8 v2, v6, 0x1

    if-eqz v2, :cond_1a3

    move v1, v7

    :cond_1a3
    iget-object v2, p0, Lcom/squareup/okhttp/internal/spdy/s;->a:Lcom/squareup/okhttp/internal/a/c;

    invoke-interface {p1, v1, v0, v2, v5}, Lcom/squareup/okhttp/internal/spdy/b;->a(ZILcom/squareup/okhttp/internal/a/c;I)V

    goto/16 :goto_48

    :pswitch_data_1aa
    .packed-switch 0x1
        :pswitch_55
        :pswitch_89
        :pswitch_a7
        :pswitch_df
        :pswitch_4e
        :pswitch_e4
        :pswitch_10f
        :pswitch_149
        :pswitch_162
    .end packed-switch
.end method

.method public final close()V
    .registers 2

    iget-object v0, p0, Lcom/squareup/okhttp/internal/spdy/s;->c:Lcom/squareup/okhttp/internal/spdy/n;

    invoke-virtual {v0}, Lcom/squareup/okhttp/internal/spdy/n;->a()V

    return-void
.end method
