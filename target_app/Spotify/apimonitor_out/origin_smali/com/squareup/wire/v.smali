.class final Lcom/squareup/wire/v;
.super Lcom/squareup/wire/s;
.source "SourceFile"


# instance fields
.field private final a:Lokio/ByteString;


# direct methods
.method public constructor <init>(ILokio/ByteString;)V
    .registers 4

    sget-object v0, Lcom/squareup/wire/WireType;->c:Lcom/squareup/wire/WireType;

    invoke-direct {p0, p1, v0}, Lcom/squareup/wire/s;-><init>(ILcom/squareup/wire/WireType;)V

    iput-object p2, p0, Lcom/squareup/wire/v;->a:Lokio/ByteString;

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 3

    iget-object v0, p0, Lcom/squareup/wire/v;->a:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->b()I

    move-result v0

    invoke-static {v0}, Lcom/squareup/wire/z;->b(I)I

    move-result v0

    iget-object v1, p0, Lcom/squareup/wire/v;->a:Lokio/ByteString;

    invoke-virtual {v1}, Lokio/ByteString;->b()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method public final a(ILcom/squareup/wire/z;)V
    .registers 4

    sget-object v0, Lcom/squareup/wire/WireType;->c:Lcom/squareup/wire/WireType;

    invoke-virtual {p2, p1, v0}, Lcom/squareup/wire/z;->b(ILcom/squareup/wire/WireType;)V

    iget-object v0, p0, Lcom/squareup/wire/v;->a:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->b()I

    move-result v0

    invoke-virtual {p2, v0}, Lcom/squareup/wire/z;->d(I)V

    iget-object v0, p0, Lcom/squareup/wire/v;->a:Lokio/ByteString;

    invoke-virtual {v0}, Lokio/ByteString;->c()[B

    move-result-object v0

    invoke-virtual {p2, v0}, Lcom/squareup/wire/z;->a([B)V

    return-void
.end method
