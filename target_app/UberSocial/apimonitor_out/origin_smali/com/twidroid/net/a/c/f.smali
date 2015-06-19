.class public Lcom/twidroid/net/a/c/f;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Comparable;


# instance fields
.field public a:I

.field public b:J

.field public c:Ljava/lang/String;

.field public d:J

.field final synthetic e:Lcom/twidroid/net/a/c/c;


# direct methods
.method public constructor <init>(Lcom/twidroid/net/a/c/c;IJLjava/lang/String;)V
    .registers 8

    iput-object p1, p0, Lcom/twidroid/net/a/c/f;->e:Lcom/twidroid/net/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twidroid/net/a/c/f;->d:J

    iput p2, p0, Lcom/twidroid/net/a/c/f;->a:I

    iput-wide p3, p0, Lcom/twidroid/net/a/c/f;->b:J

    iput-object p5, p0, Lcom/twidroid/net/a/c/f;->c:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/twidroid/net/a/c/c;IJLjava/lang/String;J)V
    .registers 10

    iput-object p1, p0, Lcom/twidroid/net/a/c/f;->e:Lcom/twidroid/net/a/c/c;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/twidroid/net/a/c/f;->d:J

    iput p2, p0, Lcom/twidroid/net/a/c/f;->a:I

    iput-wide p3, p0, Lcom/twidroid/net/a/c/f;->b:J

    iput-object p5, p0, Lcom/twidroid/net/a/c/f;->c:Ljava/lang/String;

    iput-wide p6, p0, Lcom/twidroid/net/a/c/f;->d:J

    return-void
.end method


# virtual methods
.method public a(Lcom/twidroid/net/a/c/f;)I
    .registers 4

    iget v0, p0, Lcom/twidroid/net/a/c/f;->a:I

    iget v1, p1, Lcom/twidroid/net/a/c/f;->a:I

    if-ge v0, v1, :cond_8

    const/4 v0, -0x1

    :goto_7
    return v0

    :cond_8
    iget v0, p0, Lcom/twidroid/net/a/c/f;->a:I

    iget v1, p1, Lcom/twidroid/net/a/c/f;->a:I

    if-le v0, v1, :cond_10

    const/4 v0, 0x1

    goto :goto_7

    :cond_10
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public a()J
    .registers 3

    iget-wide v0, p0, Lcom/twidroid/net/a/c/f;->d:J

    return-wide v0
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/twidroid/net/a/c/f;->d:J

    return-void
.end method

.method public synthetic compareTo(Ljava/lang/Object;)I
    .registers 3

    check-cast p1, Lcom/twidroid/net/a/c/f;

    invoke-virtual {p0, p1}, Lcom/twidroid/net/a/c/f;->a(Lcom/twidroid/net/a/c/f;)I

    move-result v0

    return v0
.end method
