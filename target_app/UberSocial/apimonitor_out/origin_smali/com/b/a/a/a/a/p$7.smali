.class Lcom/b/a/a/a/a/p$7;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/a/a/p;->f(F)Lcom/b/a/a/a/a/p;
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/a/a/p;


# direct methods
.method constructor <init>(Lcom/b/a/a/a/a/p;F)V
    .registers 3

    iput-object p1, p0, Lcom/b/a/a/a/a/p$7;->a:Lcom/b/a/a/a/a/p;

    invoke-direct {p0, p2}, Lcom/b/a/a/a/a/g;-><init>(F)V

    return-void
.end method


# virtual methods
.method public a(IIII)Lcom/b/a/a/a/a/m;
    .registers 14

    const/high16 v8, 0x437f

    const-wide v6, 0x406fe00000000000L

    invoke-static {}, Lcom/b/a/a/a/a/n;->a()Lcom/b/a/a/a/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/a/a/p$7;->a:Lcom/b/a/a/a/a/p;

    iget-object v1, v1, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;

    iget-object v2, p0, Lcom/b/a/a/a/a/p$7;->a:Lcom/b/a/a/a/a/p;

    int-to-float v3, p1

    div-float/2addr v3, v8

    iget-wide v4, p0, Lcom/b/a/a/a/a/p$7;->b:D

    double-to-float v4, v4

    invoke-static {v2, v3, v4}, Lcom/b/a/a/a/a/p;->b(Lcom/b/a/a/a/a/p;FF)D

    move-result-wide v2

    mul-double/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/n;->a(D)I

    move-result v1

    iput v1, v0, Lcom/b/a/a/a/a/m;->a:I

    iget-object v1, p0, Lcom/b/a/a/a/a/p$7;->a:Lcom/b/a/a/a/a/p;

    iget-object v1, v1, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;

    iget-object v2, p0, Lcom/b/a/a/a/a/p$7;->a:Lcom/b/a/a/a/a/p;

    int-to-float v3, p2

    div-float/2addr v3, v8

    iget-wide v4, p0, Lcom/b/a/a/a/a/p$7;->b:D

    double-to-float v4, v4

    invoke-static {v2, v3, v4}, Lcom/b/a/a/a/a/p;->b(Lcom/b/a/a/a/a/p;FF)D

    move-result-wide v2

    mul-double/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/n;->a(D)I

    move-result v1

    iput v1, v0, Lcom/b/a/a/a/a/m;->b:I

    iget-object v1, p0, Lcom/b/a/a/a/a/p$7;->a:Lcom/b/a/a/a/a/p;

    iget-object v1, v1, Lcom/b/a/a/a/a/p;->a:Lcom/b/a/a/a/a/n;

    iget-object v2, p0, Lcom/b/a/a/a/a/p$7;->a:Lcom/b/a/a/a/a/p;

    int-to-float v3, p3

    div-float/2addr v3, v8

    iget-wide v4, p0, Lcom/b/a/a/a/a/p$7;->b:D

    double-to-float v4, v4

    invoke-static {v2, v3, v4}, Lcom/b/a/a/a/a/p;->b(Lcom/b/a/a/a/a/p;FF)D

    move-result-wide v2

    mul-double/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/n;->a(D)I

    move-result v1

    iput v1, v0, Lcom/b/a/a/a/a/m;->c:I

    iput p4, v0, Lcom/b/a/a/a/a/m;->d:I

    return-object v0
.end method
