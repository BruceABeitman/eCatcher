.class public final Lcom/fasterxml/jackson/core/sym/Name1;
.super Lcom/fasterxml/jackson/core/sym/Name;
.source "Name1.java"


# static fields
.field static final sEmptyName:Lcom/fasterxml/jackson/core/sym/Name1;


# instance fields
.field final mQuad:I


# direct methods
.method static constructor <clinit>()V
    .registers 3

    const/4 v2, 0x0

    new-instance v0, Lcom/fasterxml/jackson/core/sym/Name1;

    const-string v1, ""

    invoke-direct {v0, v1, v2, v2}, Lcom/fasterxml/jackson/core/sym/Name1;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/fasterxml/jackson/core/sym/Name1;->sEmptyName:Lcom/fasterxml/jackson/core/sym/Name1;

    return-void
.end method

.method constructor <init>(Ljava/lang/String;II)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/fasterxml/jackson/core/sym/Name;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Lcom/fasterxml/jackson/core/sym/Name1;->mQuad:I

    return-void
.end method

.method static getEmptyName()Lcom/fasterxml/jackson/core/sym/Name1;
    .registers 1

    sget-object v0, Lcom/fasterxml/jackson/core/sym/Name1;->sEmptyName:Lcom/fasterxml/jackson/core/sym/Name1;

    return-object v0
.end method


# virtual methods
.method public equals(I)Z
    .registers 3

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/Name1;->mQuad:I

    if-ne p1, v0, :cond_6

    const/4 v0, 0x1

    :goto_5
    return v0

    :cond_6
    const/4 v0, 0x0

    goto :goto_5
.end method

.method public equals(II)Z
    .registers 4

    iget v0, p0, Lcom/fasterxml/jackson/core/sym/Name1;->mQuad:I

    if-ne p1, v0, :cond_8

    if-nez p2, :cond_8

    const/4 v0, 0x1

    :goto_7
    return v0

    :cond_8
    const/4 v0, 0x0

    goto :goto_7
.end method

.method public equals([II)Z
    .registers 7

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p2, v0, :cond_b

    aget v2, p1, v1

    iget v3, p0, Lcom/fasterxml/jackson/core/sym/Name1;->mQuad:I

    if-ne v2, v3, :cond_b

    :goto_a
    return v0

    :cond_b
    move v0, v1

    goto :goto_a
.end method
