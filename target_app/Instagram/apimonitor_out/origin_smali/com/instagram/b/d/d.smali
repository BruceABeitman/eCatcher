.class final Lcom/instagram/b/d/d;
.super Ljava/lang/Object;
.source "PerfMarker.java"


# instance fields
.field private a:J

.field private b:Lcom/instagram/b/d/b;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;J)V
    .registers 6

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p3, p0, Lcom/instagram/b/d/d;->a:J

    new-instance v0, Lcom/instagram/b/d/b;

    invoke-direct {v0, p1, p2}, Lcom/instagram/b/d/b;-><init>(Ljava/lang/String;Lcom/instagram/common/analytics/e;)V

    iput-object v0, p0, Lcom/instagram/b/d/d;->b:Lcom/instagram/b/d/b;

    return-void
.end method


# virtual methods
.method final a()J
    .registers 3

    iget-wide v0, p0, Lcom/instagram/b/d/d;->a:J

    return-wide v0
.end method

.method final b()Lcom/instagram/b/d/b;
    .registers 2

    iget-object v0, p0, Lcom/instagram/b/d/d;->b:Lcom/instagram/b/d/b;

    return-object v0
.end method
