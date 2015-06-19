.class Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;
.super Ljava/io/ByteArrayOutputStream;
.source "SourceFile"


# direct methods
.method constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/io/ByteArrayOutputStream;-><init>()V

    return-void
.end method


# virtual methods
.method public getBuf()[B
    .registers 2

    iget-object v0, p0, Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;->buf:[B

    return-object v0
.end method

.method public getCount()I
    .registers 2

    iget v0, p0, Ljavax/mail/util/ByteArrayDataSource$DSByteArrayOutputStream;->count:I

    return v0
.end method
