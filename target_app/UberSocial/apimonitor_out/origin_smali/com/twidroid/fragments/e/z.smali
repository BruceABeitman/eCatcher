.class Lcom/twidroid/fragments/e/z;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:J

.field b:J

.field c:Lcom/twidroid/model/twitter/c;

.field d:Lcom/twidroid/fragments/e/aa;


# direct methods
.method public constructor <init>(Lcom/twidroid/fragments/e/aa;Lcom/twidroid/model/twitter/c;)V
    .registers 5

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-wide v0, p0, Lcom/twidroid/fragments/e/z;->a:J

    iput-wide v0, p0, Lcom/twidroid/fragments/e/z;->b:J

    iput-object p2, p0, Lcom/twidroid/fragments/e/z;->c:Lcom/twidroid/model/twitter/c;

    iput-object p1, p0, Lcom/twidroid/fragments/e/z;->d:Lcom/twidroid/fragments/e/aa;

    return-void
.end method


# virtual methods
.method public a(J)Lcom/twidroid/fragments/e/z;
    .registers 3

    iput-wide p1, p0, Lcom/twidroid/fragments/e/z;->a:J

    return-object p0
.end method

.method public a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/twidroid/fragments/e/z;->c:Lcom/twidroid/model/twitter/c;

    invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public b(J)Lcom/twidroid/fragments/e/z;
    .registers 3

    iput-wide p1, p0, Lcom/twidroid/fragments/e/z;->b:J

    return-object p0
.end method
