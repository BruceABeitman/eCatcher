.class public final Lcom/userzoom/k;
.super Ljava/lang/Object;


# instance fields
.field private a:[[B

.field private b:[[C


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/userzoom/D;->a()[Lcom/userzoom/D;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[B

    iput-object v0, p0, Lcom/userzoom/k;->a:[[B

    invoke-static {}, Lcom/userzoom/E;->a()[Lcom/userzoom/E;

    move-result-object v0

    array-length v0, v0

    new-array v0, v0, [[C

    iput-object v0, p0, Lcom/userzoom/k;->b:[[C

    return-void
.end method


# virtual methods
.method public final a(Lcom/userzoom/D;[B)V
    .registers 5

    iget-object v0, p0, Lcom/userzoom/k;->a:[[B

    invoke-virtual {p1}, Lcom/userzoom/D;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    return-void
.end method

.method public final a(Lcom/userzoom/E;[C)V
    .registers 5

    iget-object v0, p0, Lcom/userzoom/k;->b:[[C

    invoke-virtual {p1}, Lcom/userzoom/E;->ordinal()I

    move-result v1

    aput-object p2, v0, v1

    return-void
.end method

.method public final a(Lcom/userzoom/D;)[B
    .registers 6

    invoke-virtual {p1}, Lcom/userzoom/D;->ordinal()I

    move-result v1

    iget-object v0, p0, Lcom/userzoom/k;->a:[[B

    aget-object v0, v0, v1

    if-nez v0, :cond_f

    iget v0, p1, Lcom/userzoom/D;->c:I

    new-array v0, v0, [B

    :goto_e
    return-object v0

    :cond_f
    iget-object v2, p0, Lcom/userzoom/k;->a:[[B

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_e
.end method

.method public final a(Lcom/userzoom/E;I)[C
    .registers 7

    iget v0, p1, Lcom/userzoom/E;->b:I

    if-lez v0, :cond_6

    iget p2, p1, Lcom/userzoom/E;->b:I

    :cond_6
    invoke-virtual {p1}, Lcom/userzoom/E;->ordinal()I

    move-result v1

    iget-object v0, p0, Lcom/userzoom/k;->b:[[C

    aget-object v0, v0, v1

    if-eqz v0, :cond_13

    array-length v2, v0

    if-ge v2, p2, :cond_16

    :cond_13
    new-array v0, p2, [C

    :goto_15
    return-object v0

    :cond_16
    iget-object v2, p0, Lcom/userzoom/k;->b:[[C

    const/4 v3, 0x0

    aput-object v3, v2, v1

    goto :goto_15
.end method
