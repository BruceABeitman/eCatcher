.class public final Lcom/d/a/b/a/f;
.super Ljava/lang/Object;
.source "ImageSize.java"


# instance fields
.field public final a:I

.field public final b:I


# direct methods
.method public constructor <init>(II)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Lcom/d/a/b/a/f;->a:I

    iput p2, p0, Lcom/d/a/b/a/f;->b:I

    return-void
.end method

.method public constructor <init>(III)V
    .registers 5

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    rem-int/lit16 v0, p3, 0xb4

    if-nez v0, :cond_c

    iput p1, p0, Lcom/d/a/b/a/f;->a:I

    iput p2, p0, Lcom/d/a/b/a/f;->b:I

    :goto_b
    return-void

    :cond_c
    iput p2, p0, Lcom/d/a/b/a/f;->a:I

    iput p1, p0, Lcom/d/a/b/a/f;->b:I

    goto :goto_b
.end method


# virtual methods
.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const/16 v1, 0x9

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(I)V

    iget v1, p0, Lcom/d/a/b/a/f;->a:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "x"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v1, p0, Lcom/d/a/b/a/f;->b:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
