.class final Lcom/spotify/mobile/android/util/tracking/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:J


# direct methods
.method constructor <init>(Ljava/lang/String;J)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/spotify/mobile/android/util/tracking/e;->a:Ljava/lang/String;

    iput-wide p2, p0, Lcom/spotify/mobile/android/util/tracking/e;->b:J

    return-void
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/util/tracking/e;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()J
    .registers 3

    iget-wide v0, p0, Lcom/spotify/mobile/android/util/tracking/e;->b:J

    return-wide v0
.end method
