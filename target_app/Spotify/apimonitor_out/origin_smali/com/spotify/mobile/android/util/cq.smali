.class public final Lcom/spotify/mobile/android/util/cq;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/spotify/mobile/android/util/cn;


# instance fields
.field private final a:J


# direct methods
.method public constructor <init>(JLjava/util/concurrent/TimeUnit;)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p3, p1, p2}, Ljava/util/concurrent/TimeUnit;->toMillis(J)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/spotify/mobile/android/util/cq;->a:J

    return-void
.end method


# virtual methods
.method public final a(I)J
    .registers 4

    iget-wide v0, p0, Lcom/spotify/mobile/android/util/cq;->a:J

    return-wide v0
.end method
