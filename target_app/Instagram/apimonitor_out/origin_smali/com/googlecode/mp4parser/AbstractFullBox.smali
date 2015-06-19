.class public abstract Lcom/googlecode/mp4parser/AbstractFullBox;
.super Lcom/googlecode/mp4parser/AbstractBox;
.source "AbstractFullBox.java"

# interfaces
.implements Lcom/coremedia/iso/boxes/FullBox;


# instance fields
.field private flags:I

.field private version:I


# direct methods
.method protected constructor <init>(Ljava/lang/String;)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method protected constructor <init>(Ljava/lang/String;[B)V
    .registers 3

    invoke-direct {p0, p1, p2}, Lcom/googlecode/mp4parser/AbstractBox;-><init>(Ljava/lang/String;[B)V

    return-void
.end method


# virtual methods
.method public getFlags()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->flags:I

    return v0
.end method

.method public getVersion()I
    .registers 2

    iget v0, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->version:I

    return v0
.end method

.method protected final parseVersionAndFlags(Ljava/nio/ByteBuffer;)J
    .registers 4

    invoke-static {p1}, Lcom/coremedia/iso/e;->f(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->version:I

    invoke-static {p1}, Lcom/coremedia/iso/e;->c(Ljava/nio/ByteBuffer;)I

    move-result v0

    iput v0, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->flags:I

    const-wide/16 v0, 0x4

    return-wide v0
.end method

.method public setFlags(I)V
    .registers 2

    iput p1, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->flags:I

    return-void
.end method

.method public setVersion(I)V
    .registers 2

    iput p1, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->version:I

    return-void
.end method

.method protected final writeVersionAndFlags(Ljava/nio/ByteBuffer;)V
    .registers 3

    iget v0, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->version:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->d(Ljava/nio/ByteBuffer;I)V

    iget v0, p0, Lcom/googlecode/mp4parser/AbstractFullBox;->flags:I

    invoke-static {p1, v0}, Lcom/coremedia/iso/g;->a(Ljava/nio/ByteBuffer;I)V

    return-void
.end method
