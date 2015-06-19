.class final Lcom/instagram/common/analytics/s;
.super Ljava/lang/Object;
.source "ExtraBundle.java"

# interfaces
.implements Lcom/instagram/common/analytics/q;


# instance fields
.field private final a:J


# direct methods
.method private constructor <init>(J)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide p1, p0, Lcom/instagram/common/analytics/s;->a:J

    return-void
.end method

.method synthetic constructor <init>(JB)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/instagram/common/analytics/s;-><init>(J)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/fasterxml/jackson/a/h;)V
    .registers 4

    iget-wide v0, p0, Lcom/instagram/common/analytics/s;->a:J

    invoke-virtual {p1, v0, v1}, Lcom/fasterxml/jackson/a/h;->writeNumber(J)V

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    iget-wide v0, p0, Lcom/instagram/common/analytics/s;->a:J

    invoke-static {v0, v1}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
