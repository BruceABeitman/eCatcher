.class Lcom/b/a/a/a/a/e$1;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/a/a/e;->a(FFF)Lcom/b/a/a/a/a/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/a/a/e;


# direct methods
.method constructor <init>(Lcom/b/a/a/a/a/e;FFF)V
    .registers 5

    iput-object p1, p0, Lcom/b/a/a/a/a/e$1;->a:Lcom/b/a/a/a/a/e;

    invoke-direct {p0, p2, p3, p4}, Lcom/b/a/a/a/a/g;-><init>(FFF)V

    return-void
.end method


# virtual methods
.method public a(IIII)Lcom/b/a/a/a/a/m;
    .registers 13

    const-wide/high16 v6, 0x3ff0

    invoke-static {}, Lcom/b/a/a/a/a/c;->a()Lcom/b/a/a/a/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/a/a/e$1;->a:Lcom/b/a/a/a/a/e;

    iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;

    int-to-double v2, p2

    iget-wide v4, p0, Lcom/b/a/a/a/a/e$1;->b:D

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/c;->a(D)I

    move-result v1

    iput v1, v0, Lcom/b/a/a/a/a/m;->a:I

    iget-object v1, p0, Lcom/b/a/a/a/a/e$1;->a:Lcom/b/a/a/a/a/e;

    iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;

    int-to-double v2, p3

    iget-wide v4, p0, Lcom/b/a/a/a/a/e$1;->c:D

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/c;->a(D)I

    move-result v1

    iput v1, v0, Lcom/b/a/a/a/a/m;->b:I

    iget-object v1, p0, Lcom/b/a/a/a/a/e$1;->a:Lcom/b/a/a/a/a/e;

    iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;

    int-to-double v2, p4

    iget-wide v4, p0, Lcom/b/a/a/a/a/e$1;->d:D

    add-double/2addr v4, v6

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/c;->a(D)I

    move-result v1

    iput v1, v0, Lcom/b/a/a/a/a/m;->c:I

    iput p1, v0, Lcom/b/a/a/a/a/m;->d:I

    return-object v0
.end method
