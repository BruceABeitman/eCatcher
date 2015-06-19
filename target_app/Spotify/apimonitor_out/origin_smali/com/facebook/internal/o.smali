.class final Lcom/facebook/internal/o;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field a:Ljava/net/URI;

.field b:Ljava/lang/Object;


# direct methods
.method constructor <init>(Ljava/net/URI;Ljava/lang/Object;)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/internal/o;->a:Ljava/net/URI;

    iput-object p2, p0, Lcom/facebook/internal/o;->b:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 5

    const/4 v0, 0x0

    if-eqz p1, :cond_16

    instance-of v1, p1, Lcom/facebook/internal/o;

    if-eqz v1, :cond_16

    check-cast p1, Lcom/facebook/internal/o;

    iget-object v1, p1, Lcom/facebook/internal/o;->a:Ljava/net/URI;

    iget-object v2, p0, Lcom/facebook/internal/o;->a:Ljava/net/URI;

    if-ne v1, v2, :cond_16

    iget-object v1, p1, Lcom/facebook/internal/o;->b:Ljava/lang/Object;

    iget-object v2, p0, Lcom/facebook/internal/o;->b:Ljava/lang/Object;

    if-ne v1, v2, :cond_16

    const/4 v0, 0x1

    :cond_16
    return v0
.end method

.method public final hashCode()I
    .registers 3

    iget-object v0, p0, Lcom/facebook/internal/o;->a:Ljava/net/URI;

    invoke-virtual {v0}, Ljava/net/URI;->hashCode()I

    move-result v0

    add-int/lit16 v0, v0, 0x431

    mul-int/lit8 v0, v0, 0x25

    iget-object v1, p0, Lcom/facebook/internal/o;->b:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method
