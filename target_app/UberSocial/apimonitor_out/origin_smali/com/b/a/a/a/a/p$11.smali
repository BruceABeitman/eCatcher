.class Lcom/b/a/a/a/a/p$11;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/a/a/p;->b(F)Lcom/b/a/a/a/a/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/a/a/p;


# direct methods
.method constructor <init>(Lcom/b/a/a/a/a/p;F)V
    .registers 3

    iput-object p1, p0, Lcom/b/a/a/a/a/p$11;->a:Lcom/b/a/a/a/a/p;

    invoke-direct {p0, p2}, Lcom/b/a/a/a/a/g;-><init>(F)V

    return-void
.end method


# virtual methods
.method public a(IIII)Lcom/b/a/a/a/a/m;
    .registers 14

    invoke-static {}, Lcom/b/a/a/a/a/n;->a()Lcom/b/a/a/a/a/m;

    move-result-object v0

    add-int v1, p1, p2

    add-int/2addr v1, p3

    int-to-float v1, v1

    const/high16 v2, 0x4040

    div-float/2addr v1, v2

    iget-object v2, p0, Lcom/b/a/a/a/a/p$11;->a:Lcom/b/a/a/a/a/p;

    iget-object v2, v2, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;

    float-to-double v3, v1

    iget-wide v5, p0, Lcom/b/a/a/a/a/p$11;->b:D

    int-to-float v7, p1

    sub-float/2addr v7, v1

    float-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/b/a/a/a/a/n;->a(D)I

    move-result v2

    iput v2, v0, Lcom/b/a/a/a/a/m;->a:I

    iget-object v2, p0, Lcom/b/a/a/a/a/p$11;->a:Lcom/b/a/a/a/a/p;

    iget-object v2, v2, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;

    float-to-double v3, v1

    iget-wide v5, p0, Lcom/b/a/a/a/a/p$11;->b:D

    int-to-float v7, p2

    sub-float/2addr v7, v1

    float-to-double v7, v7

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/b/a/a/a/a/n;->a(D)I

    move-result v2

    iput v2, v0, Lcom/b/a/a/a/a/m;->b:I

    iget-object v2, p0, Lcom/b/a/a/a/a/p$11;->a:Lcom/b/a/a/a/a/p;

    iget-object v2, v2, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;

    float-to-double v3, v1

    iget-wide v5, p0, Lcom/b/a/a/a/a/p$11;->b:D

    int-to-float v7, p3

    sub-float v1, v7, v1

    float-to-double v7, v1

    mul-double/2addr v5, v7

    add-double/2addr v3, v5

    invoke-virtual {v2, v3, v4}, Lcom/b/a/a/a/a/n;->a(D)I

    move-result v1

    iput v1, v0, Lcom/b/a/a/a/a/m;->c:I

    iput p4, v0, Lcom/b/a/a/a/a/m;->d:I

    return-object v0
.end method
