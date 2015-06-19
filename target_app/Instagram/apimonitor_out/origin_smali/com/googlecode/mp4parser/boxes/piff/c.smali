.class public final Lcom/googlecode/mp4parser/boxes/piff/c;
.super Lcom/googlecode/mp4parser/boxes/piff/b;
.source "PlayReadyHeader.java"


# instance fields
.field b:Ljava/nio/ByteBuffer;


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0, p1}, Lcom/googlecode/mp4parser/boxes/piff/b;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final a()Ljava/nio/ByteBuffer;
    .registers 2

    iget-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/c;->b:Ljava/nio/ByteBuffer;

    return-object v0
.end method

.method public final a(Ljava/nio/ByteBuffer;)V
    .registers 3

    invoke-virtual {p1}, Ljava/nio/ByteBuffer;->duplicate()Ljava/nio/ByteBuffer;

    move-result-object v0

    iput-object v0, p0, Lcom/googlecode/mp4parser/boxes/piff/c;->b:Ljava/nio/ByteBuffer;

    return-void
.end method
