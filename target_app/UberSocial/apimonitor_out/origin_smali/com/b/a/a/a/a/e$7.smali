.class Lcom/b/a/a/a/a/e$7;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/a/a/e;->f(F)Lcom/b/a/a/a/a/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/a/a/e;


# direct methods
.method constructor <init>(Lcom/b/a/a/a/a/e;F)V
    .registers 3

    iput-object p1, p0, Lcom/b/a/a/a/a/e$7;->a:Lcom/b/a/a/a/a/e;

    invoke-direct {p0, p2}, Lcom/b/a/a/a/a/g;-><init>(F)V

    return-void
.end method


# virtual methods
.method public a(IIII)Lcom/b/a/a/a/a/m;
    .registers 13

    const-wide v6, 0x406fe00000000000L

    invoke-static {}, Lcom/b/a/a/a/a/c;->a()Lcom/b/a/a/a/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/a/a/e$7;->a:Lcom/b/a/a/a/a/e;

    iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;

    iget-object v2, p0, Lcom/b/a/a/a/a/e$7;->a:Lcom/b/a/a/a/a/e;

    div-int/lit16 v3, p2, 0xff

    int-to-float v3, v3

    iget-wide v4, p0, Lcom/b/a/a/a/a/e$7;->b:D

    double-to-float v4, v4

    invoke-static {v2, v3, v4}, Lcom/b/a/a/a/a/e;->b(Lcom/b/a/a/a/a/e;FF)D

    move-result-wide v2

    mul-double/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/c;->a(D)I

    move-result v1

    iput v1, v0, Lcom/b/a/a/a/a/m;->a:I

    iget-object v1, p0, Lcom/b/a/a/a/a/e$7;->a:Lcom/b/a/a/a/a/e;

    iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;

    iget-object v2, p0, Lcom/b/a/a/a/a/e$7;->a:Lcom/b/a/a/a/a/e;

    div-int/lit16 v3, p3, 0xff

    int-to-float v3, v3

    iget-wide v4, p0, Lcom/b/a/a/a/a/e$7;->b:D

    double-to-float v4, v4

    invoke-static {v2, v3, v4}, Lcom/b/a/a/a/a/e;->b(Lcom/b/a/a/a/a/e;FF)D

    move-result-wide v2

    mul-double/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/c;->a(D)I

    move-result v1

    iput v1, v0, Lcom/b/a/a/a/a/m;->b:I

    iget-object v1, p0, Lcom/b/a/a/a/a/e$7;->a:Lcom/b/a/a/a/a/e;

    iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;

    iget-object v2, p0, Lcom/b/a/a/a/a/e$7;->a:Lcom/b/a/a/a/a/e;

    div-int/lit16 v3, p4, 0xff

    int-to-float v3, v3

    iget-wide v4, p0, Lcom/b/a/a/a/a/e$7;->b:D

    double-to-float v4, v4

    invoke-static {v2, v3, v4}, Lcom/b/a/a/a/a/e;->b(Lcom/b/a/a/a/a/e;FF)D

    move-result-wide v2

    mul-double/2addr v2, v6

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/c;->a(D)I

    move-result v1

    iput v1, v0, Lcom/b/a/a/a/a/m;->c:I

    iput p1, v0, Lcom/b/a/a/a/a/m;->d:I

    return-object v0
.end method
