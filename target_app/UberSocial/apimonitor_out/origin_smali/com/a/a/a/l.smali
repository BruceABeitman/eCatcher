.class final Lcom/a/a/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/util/Comparator;


# direct methods
.method constructor <init>(Lcom/a/a/a/k;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .registers 7

    check-cast p1, Lcom/a/a/a/m;

    check-cast p2, Lcom/a/a/a/m;

    iget-wide v0, p1, Lcom/a/a/a/m;->b:J

    iget-wide v2, p2, Lcom/a/a/a/m;->b:J

    sub-long/2addr v0, v2

    long-to-int v0, v0

    return v0
.end method
