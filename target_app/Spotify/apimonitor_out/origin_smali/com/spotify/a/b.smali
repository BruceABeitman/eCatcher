.class final Lcom/spotify/a/b;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field final synthetic a:Lcom/spotify/a/a;

.field private b:J


# direct methods
.method public constructor <init>(Lcom/spotify/a/a;J)V
    .registers 4

    iput-object p1, p0, Lcom/spotify/a/b;->a:Lcom/spotify/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p2, p0, Lcom/spotify/a/b;->b:J

    return-void
.end method


# virtual methods
.method final a([I)V
    .registers 7

    const/16 v0, 0x270f

    :goto_2
    if-lez v0, :cond_21

    const-wide/16 v1, 0x41a7

    iget-wide v3, p0, Lcom/spotify/a/b;->b:J

    mul-long/2addr v1, v3

    const-wide/32 v3, 0x7fffffff

    rem-long/2addr v1, v3

    iput-wide v1, p0, Lcom/spotify/a/b;->b:J

    iget-wide v1, p0, Lcom/spotify/a/b;->b:J

    add-int/lit8 v3, v0, 0x1

    int-to-long v3, v3

    rem-long/2addr v1, v3

    long-to-int v1, v1

    aget v2, p1, v0

    aget v3, p1, v1

    aput v3, p1, v0

    aput v2, p1, v1

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_21
    return-void
.end method
