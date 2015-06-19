.class public abstract Lcom/googlecode/mp4parser/boxes/piff/b;
.super Ljava/lang/Object;
.source "PlayReadyHeader.java"


# instance fields
.field a:I


# direct methods
.method public constructor <init>(I)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/googlecode/mp4parser/boxes/piff/b;->a:I

    return-void
.end method

.method public static a(Ljava/nio/ByteBuffer;I)Ljava/util/List;
    .registers 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/nio/ByteBuffer;",
            "I)",
            "Ljava/util/List",
            "<",
            "Lcom/googlecode/mp4parser/boxes/piff/b;",
            ">;"
        }
    .end annotation

    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3, p1}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v0, 0x0

    move v2, v0

    :goto_7
    if-ge v2, p1, :cond_4c

    invoke-static {p0}, Lcom/coremedia/iso/e;->e(Ljava/nio/ByteBuffer;)I

    move-result v1

    invoke-static {p0}, Lcom/coremedia/iso/e;->e(Ljava/nio/ByteBuffer;)I

    move-result v4

    packed-switch v1, :pswitch_data_4e

    new-instance v0, Lcom/googlecode/mp4parser/boxes/piff/c;

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/boxes/piff/c;-><init>(I)V

    move-object v1, v0

    :goto_1a
    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->slice()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0, v4}, Ljava/nio/ByteBuffer;->limit(I)Ljava/nio/Buffer;

    move-result-object v0

    check-cast v0, Ljava/nio/ByteBuffer;

    invoke-virtual {v1, v0}, Lcom/googlecode/mp4parser/boxes/piff/b;->a(Ljava/nio/ByteBuffer;)V

    invoke-virtual {p0}, Ljava/nio/ByteBuffer;->position()I

    move-result v0

    add-int/2addr v0, v4

    invoke-virtual {p0, v0}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    invoke-interface {v3, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v0, v2, 0x1

    move v2, v0

    goto :goto_7

    :pswitch_36
    new-instance v0, Lcom/googlecode/mp4parser/boxes/piff/e;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/piff/e;-><init>()V

    move-object v1, v0

    goto :goto_1a

    :pswitch_3d
    new-instance v0, Lcom/googlecode/mp4parser/boxes/piff/c;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/googlecode/mp4parser/boxes/piff/c;-><init>(I)V

    move-object v1, v0

    goto :goto_1a

    :pswitch_45
    new-instance v0, Lcom/googlecode/mp4parser/boxes/piff/d;

    invoke-direct {v0}, Lcom/googlecode/mp4parser/boxes/piff/d;-><init>()V

    move-object v1, v0

    goto :goto_1a

    :cond_4c
    return-object v3

    nop

    :pswitch_data_4e
    .packed-switch 0x1
        :pswitch_36
        :pswitch_3d
        :pswitch_45
    .end packed-switch
.end method


# virtual methods
.method public abstract a()Ljava/nio/ByteBuffer;
.end method

.method public abstract a(Ljava/nio/ByteBuffer;)V
.end method

.method public toString()Ljava/lang/String;
    .registers 4

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "PlayReadyRecord"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{type="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/googlecode/mp4parser/boxes/piff/b;->a:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", length="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/piff/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->limit()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
