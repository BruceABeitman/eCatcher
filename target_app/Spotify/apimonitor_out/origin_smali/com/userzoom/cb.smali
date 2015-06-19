.class public abstract Lcom/userzoom/cb;
.super Lcom/userzoom/by;


# instance fields
.field protected a:Z

.field protected b:Lcom/userzoom/ci;

.field private c:I


# direct methods
.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Lcom/userzoom/by;-><init>()V

    iput p1, p0, Lcom/userzoom/cb;->c:I

    invoke-static {}, Lcom/userzoom/ci;->e()Lcom/userzoom/ci;

    move-result-object v0

    iput-object v0, p0, Lcom/userzoom/cb;->b:Lcom/userzoom/ci;

    sget-object v0, Lcom/userzoom/f;->e:Lcom/userzoom/f;

    invoke-virtual {p0, v0}, Lcom/userzoom/cb;->a(Lcom/userzoom/f;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/userzoom/cb;->a:Z

    return-void
.end method

.method protected static e(Ljava/lang/String;)V
    .registers 2

    new-instance v0, Lcom/userzoom/d;

    invoke-direct {v0, p0}, Lcom/userzoom/d;-><init>(Ljava/lang/String;)V

    throw v0
.end method


# virtual methods
.method public final a(Lcom/userzoom/f;)Z
    .registers 4

    iget v0, p0, Lcom/userzoom/cb;->c:I

    invoke-virtual {p1}, Lcom/userzoom/f;->b()I

    move-result v1

    and-int/2addr v0, v1

    if-eqz v0, :cond_b

    const/4 v0, 0x1

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public close()V
    .registers 1

    return-void
.end method

.method public final f()Lcom/userzoom/ci;
    .registers 2

    iget-object v0, p0, Lcom/userzoom/cb;->b:Lcom/userzoom/ci;

    return-object v0
.end method
