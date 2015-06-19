.class public abstract Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;
.super Ljava/lang/Object;
.source "GroupEntry.java"


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public abstract a()Ljava/nio/ByteBuffer;
.end method

.method public abstract a(Ljava/nio/ByteBuffer;)V
.end method

.method public final b()I
    .registers 2

    invoke-virtual {p0}, Lcom/googlecode/mp4parser/boxes/mp4/samplegrouping/b;->a()Ljava/nio/ByteBuffer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->limit()I

    move-result v0

    return v0
.end method
