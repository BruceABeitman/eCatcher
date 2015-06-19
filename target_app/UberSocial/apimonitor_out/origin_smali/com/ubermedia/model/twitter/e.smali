.class public Lcom/ubermedia/model/twitter/e;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:J

.field private c:I


# direct methods
.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(IJI)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/ubermedia/model/twitter/e;->a:I

    iput-wide p2, p0, Lcom/ubermedia/model/twitter/e;->b:J

    iput p4, p0, Lcom/ubermedia/model/twitter/e;->c:I

    return-void
.end method


# virtual methods
.method public a()I
    .registers 2

    iget v0, p0, Lcom/ubermedia/model/twitter/e;->a:I

    return v0
.end method

.method public a(I)V
    .registers 2

    iput p1, p0, Lcom/ubermedia/model/twitter/e;->a:I

    return-void
.end method

.method public a(J)V
    .registers 3

    iput-wide p1, p0, Lcom/ubermedia/model/twitter/e;->b:J

    return-void
.end method

.method public b()J
    .registers 3

    iget-wide v0, p0, Lcom/ubermedia/model/twitter/e;->b:J

    return-wide v0
.end method

.method public b(I)V
    .registers 2

    iput p1, p0, Lcom/ubermedia/model/twitter/e;->c:I

    return-void
.end method

.method public c()I
    .registers 2

    iget v0, p0, Lcom/ubermedia/model/twitter/e;->c:I

    return v0
.end method
