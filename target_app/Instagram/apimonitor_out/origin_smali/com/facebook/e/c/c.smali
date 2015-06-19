.class public final Lcom/facebook/e/c/c;
.super Ljava/lang/Object;
.source "LongStack.java"


# instance fields
.field private a:[J

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/e/c/c;->b:I

    const/16 v0, 0x14

    new-array v0, v0, [J

    iput-object v0, p0, Lcom/facebook/e/c/c;->a:[J

    return-void
.end method

.method private d()V
    .registers 5

    const/4 v3, 0x0

    iget-object v0, p0, Lcom/facebook/e/c/c;->a:[J

    array-length v0, v0

    mul-int/lit8 v0, v0, 0x2

    new-array v0, v0, [J

    iget-object v1, p0, Lcom/facebook/e/c/c;->a:[J

    iget-object v2, p0, Lcom/facebook/e/c/c;->a:[J

    array-length v2, v2

    invoke-static {v1, v3, v0, v3, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/facebook/e/c/c;->a:[J

    return-void
.end method


# virtual methods
.method public final a()I
    .registers 2

    iget v0, p0, Lcom/facebook/e/c/c;->b:I

    add-int/lit8 v0, v0, 0x1

    return v0
.end method

.method public final a(J)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/e/c/c;->a:[J

    array-length v0, v0

    iget v1, p0, Lcom/facebook/e/c/c;->b:I

    add-int/lit8 v1, v1, 0x1

    if-ne v0, v1, :cond_c

    invoke-direct {p0}, Lcom/facebook/e/c/c;->d()V

    :cond_c
    iget-object v0, p0, Lcom/facebook/e/c/c;->a:[J

    iget v1, p0, Lcom/facebook/e/c/c;->b:I

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Lcom/facebook/e/c/c;->b:I

    aput-wide p1, v0, v1

    return-void
.end method

.method public final b()J
    .registers 4

    iget-object v0, p0, Lcom/facebook/e/c/c;->a:[J

    iget v1, p0, Lcom/facebook/e/c/c;->b:I

    add-int/lit8 v2, v1, -0x1

    iput v2, p0, Lcom/facebook/e/c/c;->b:I

    aget-wide v0, v0, v1

    return-wide v0
.end method

.method public final c()V
    .registers 2

    const/4 v0, -0x1

    iput v0, p0, Lcom/facebook/e/c/c;->b:I

    return-void
.end method

.method public final toString()Ljava/lang/String;
    .registers 5

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "<LongStack vector:["

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/4 v0, 0x0

    :goto_b
    iget-object v2, p0, Lcom/facebook/e/c/c;->a:[J

    array-length v2, v2

    if-ge v0, v2, :cond_33

    if-eqz v0, :cond_17

    const-string v2, " "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_17
    iget v2, p0, Lcom/facebook/e/c/c;->b:I

    if-ne v0, v2, :cond_20

    const-string v2, ">>"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_20
    iget-object v2, p0, Lcom/facebook/e/c/c;->a:[J

    aget-wide v2, v2, v0

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    iget v2, p0, Lcom/facebook/e/c/c;->b:I

    if-ne v0, v2, :cond_30

    const-string v2, "<<"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    :cond_30
    add-int/lit8 v0, v0, 0x1

    goto :goto_b

    :cond_33
    const-string v0, "]>"

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
