.class final Lcom/google/b/b/bq;
.super Ljava/util/concurrent/atomic/AtomicLong;
.source "LongAddables.java"

# interfaces
.implements Lcom/google/b/b/bm;


# direct methods
.method private constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/util/concurrent/atomic/AtomicLong;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(B)V
    .registers 2

    invoke-direct {p0}, Lcom/google/b/b/bq;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 1

    invoke-virtual {p0}, Lcom/google/b/b/bq;->getAndIncrement()J

    return-void
.end method

.method public final a(J)V
    .registers 3

    invoke-virtual {p0, p1, p2}, Lcom/google/b/b/bq;->getAndAdd(J)J

    return-void
.end method
