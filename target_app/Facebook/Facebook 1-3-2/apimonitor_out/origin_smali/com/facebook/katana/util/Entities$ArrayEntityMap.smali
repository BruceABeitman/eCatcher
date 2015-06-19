.class Lcom/facebook/katana/util/Entities$ArrayEntityMap;
.super Ljava/lang/Object;
.source "Entities.java"

# interfaces
.implements Lcom/facebook/katana/util/Entities$EntityMap;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/facebook/katana/util/Entities;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ArrayEntityMap"
.end annotation


# instance fields
.field protected mGrowBy:I

.field protected names:[Ljava/lang/String;

.field protected size:I

.field protected values:[I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->mGrowBy:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->size:I

    iget v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->mGrowBy:I

    new-array v0, v0, [Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    iget v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->mGrowBy:I

    new-array v0, v0, [I

    iput-object v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->values:[I

    return-void
.end method

.method public constructor <init>(I)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x64

    iput v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->mGrowBy:I

    const/4 v0, 0x0

    iput v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->size:I

    iput p1, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->mGrowBy:I

    new-array v0, p1, [Ljava/lang/String;

    iput-object v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    new-array v0, p1, [I

    iput-object v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->values:[I

    return-void
.end method


# virtual methods
.method public add(Ljava/lang/String;I)V
    .registers 5

    iget v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->size:I

    add-int/lit8 v0, v0, 0x1

    invoke-virtual {p0, v0}, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->ensureCapacity(I)V

    iget-object v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    iget v1, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->size:I

    aput-object p1, v0, v1

    iget-object v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->values:[I

    iget v1, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->size:I

    aput p2, v0, v1

    iget v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->size:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->size:I

    return-void
.end method

.method protected ensureCapacity(I)V
    .registers 8

    const/4 v5, 0x0

    iget-object v3, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    array-length v3, v3

    if-le p1, v3, :cond_25

    iget v3, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->size:I

    iget v4, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->mGrowBy:I

    add-int/2addr v3, v4

    invoke-static {p1, v3}, Ljava/lang/Math;->max(II)I

    move-result v1

    new-array v0, v1, [Ljava/lang/String;

    iget-object v3, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    iget v4, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->size:I

    invoke-static {v3, v5, v0, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v0, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    new-array v2, v1, [I

    iget-object v3, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->values:[I

    iget v4, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->size:I

    invoke-static {v3, v5, v2, v5, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    iput-object v2, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->values:[I

    :cond_25
    return-void
.end method

.method public name(I)Ljava/lang/String;
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->size:I

    if-lt v0, v1, :cond_7

    const/4 v1, 0x0

    :goto_6
    return-object v1

    :cond_7
    iget-object v1, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->values:[I

    aget v1, v1, v0

    if-ne v1, p1, :cond_12

    iget-object v1, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    aget-object v1, v1, v0

    goto :goto_6

    :cond_12
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method public value(Ljava/lang/String;)I
    .registers 4

    const/4 v0, 0x0

    :goto_1
    iget v1, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->size:I

    if-lt v0, v1, :cond_7

    const/4 v1, -0x1

    :goto_6
    return v1

    :cond_7
    iget-object v1, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->names:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_16

    iget-object v1, p0, Lcom/facebook/katana/util/Entities$ArrayEntityMap;->values:[I

    aget v1, v1, v0

    goto :goto_6

    :cond_16
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method
