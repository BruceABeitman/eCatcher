.class public final Lcom/facebook/b/f;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private a:I

.field private b:I


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x400

    iput v0, p0, Lcom/facebook/b/f;->b:I

    const/high16 v0, 0x10

    iput v0, p0, Lcom/facebook/b/f;->a:I

    return-void
.end method


# virtual methods
.method a()I
    .registers 2

    iget v0, p0, Lcom/facebook/b/f;->a:I

    return v0
.end method

.method a(I)V
    .registers 4

    if-gez p1, :cond_a

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Cache byte-count limit must be >= 0"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput p1, p0, Lcom/facebook/b/f;->a:I

    return-void
.end method

.method b()I
    .registers 2

    iget v0, p0, Lcom/facebook/b/f;->b:I

    return v0
.end method

.method b(I)V
    .registers 4

    if-gez p1, :cond_a

    new-instance v0, Ljava/security/InvalidParameterException;

    const-string v1, "Cache file count limit must be >= 0"

    invoke-direct {v0, v1}, Ljava/security/InvalidParameterException;-><init>(Ljava/lang/String;)V

    throw v0

    :cond_a
    iput p1, p0, Lcom/facebook/b/f;->b:I

    return-void
.end method
