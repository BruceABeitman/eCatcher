.class public Lco/vine/android/recorder/ByteBufferQueue$QueueItem;
.super Ljava/lang/Object;
.source "ByteBufferQueue.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/recorder/ByteBufferQueue;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "QueueItem"
.end annotation


# instance fields
.field final bytes:[B

.field final tag:Ljava/lang/Object;


# direct methods
.method public constructor <init>([BLjava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/recorder/ByteBufferQueue$QueueItem;->bytes:[B

    iput-object p2, p0, Lco/vine/android/recorder/ByteBufferQueue$QueueItem;->tag:Ljava/lang/Object;

    return-void
.end method
