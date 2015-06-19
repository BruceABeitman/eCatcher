.class public final Lcom/bbm/f/ag;
.super Ljava/lang/Object;
.source "ServiceLayer.java"


# instance fields
.field public a:Lcom/bbm/f/ah;

.field public b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    sget-object v0, Lcom/bbm/f/ah;->b:Lcom/bbm/f/ah;

    iput-object v0, p0, Lcom/bbm/f/ag;->a:Lcom/bbm/f/ah;

    const/4 v0, 0x0

    iput v0, p0, Lcom/bbm/f/ag;->b:I

    return-void
.end method

.method public constructor <init>(Lcom/bbm/f/ah;I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/bbm/f/ag;->a:Lcom/bbm/f/ah;

    iput p2, p0, Lcom/bbm/f/ag;->b:I

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/bbm/f/ag;

    iget-object v2, p0, Lcom/bbm/f/ag;->a:Lcom/bbm/f/ah;

    iget-object v3, p1, Lcom/bbm/f/ag;->a:Lcom/bbm/f/ah;

    if-ne v2, v3, :cond_21

    iget v2, p0, Lcom/bbm/f/ag;->b:I

    iget v3, p1, Lcom/bbm/f/ag;->b:I

    if-eq v2, v3, :cond_4

    :cond_21
    move v0, v1

    goto :goto_4
.end method
