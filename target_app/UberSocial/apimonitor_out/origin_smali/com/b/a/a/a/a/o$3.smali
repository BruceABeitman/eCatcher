.class Lcom/b/a/a/a/a/o$3;
.super Lcom/b/a/a/a/a/a;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/a/a/o;->c(Lcom/b/a/a/a/a/n;)V
.end annotation


# instance fields
.field final synthetic g:Lcom/b/a/a/a/a/o;


# direct methods
.method constructor <init>(Lcom/b/a/a/a/a/o;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/a/a/a/o$3;->g:Lcom/b/a/a/a/a/o;

    invoke-direct {p0}, Lcom/b/a/a/a/a/a;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/b/a/a/a/a/m;Lcom/b/a/a/a/a/m;)Lcom/b/a/a/a/a/m;
    .registers 8

    invoke-static {}, Lcom/b/a/a/a/a/n;->a()Lcom/b/a/a/a/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/a/a/o$3;->g:Lcom/b/a/a/a/a/o;

    iget-object v1, v1, Lcom/b/a/a/a/a/o;->a:Lcom/b/a/a/a/a/n;

    iget-object v2, p0, Lcom/b/a/a/a/a/o$3;->g:Lcom/b/a/a/a/a/o;

    iget v3, p2, Lcom/b/a/a/a/a/m;->a:I

    iget v4, p1, Lcom/b/a/a/a/a/m;->a:I

    invoke-static {v2, v3, v4}, Lcom/b/a/a/a/a/o;->a(Lcom/b/a/a/a/a/o;II)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/n;->a(D)I

    move-result v1

    iput v1, v0, Lcom/b/a/a/a/a/m;->a:I

    iget-object v1, p0, Lcom/b/a/a/a/a/o$3;->g:Lcom/b/a/a/a/a/o;

    iget-object v1, v1, Lcom/b/a/a/a/a/o;->a:Lcom/b/a/a/a/a/n;

    iget-object v2, p0, Lcom/b/a/a/a/a/o$3;->g:Lcom/b/a/a/a/a/o;

    iget v3, p2, Lcom/b/a/a/a/a/m;->b:I

    iget v4, p1, Lcom/b/a/a/a/a/m;->b:I

    invoke-static {v2, v3, v4}, Lcom/b/a/a/a/a/o;->a(Lcom/b/a/a/a/a/o;II)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/n;->a(D)I

    move-result v1

    iput v1, v0, Lcom/b/a/a/a/a/m;->b:I

    iget-object v1, p0, Lcom/b/a/a/a/a/o$3;->g:Lcom/b/a/a/a/a/o;

    iget-object v1, v1, Lcom/b/a/a/a/a/o;->a:Lcom/b/a/a/a/a/n;

    iget-object v2, p0, Lcom/b/a/a/a/a/o$3;->g:Lcom/b/a/a/a/a/o;

    iget v3, p2, Lcom/b/a/a/a/a/m;->c:I

    iget v4, p1, Lcom/b/a/a/a/a/m;->c:I

    invoke-static {v2, v3, v4}, Lcom/b/a/a/a/a/o;->a(Lcom/b/a/a/a/a/o;II)F

    move-result v2

    float-to-double v2, v2

    invoke-virtual {v1, v2, v3}, Lcom/b/a/a/a/a/n;->a(D)I

    move-result v1

    iput v1, v0, Lcom/b/a/a/a/a/m;->c:I

    iget v1, p2, Lcom/b/a/a/a/a/m;->d:I

    iput v1, v0, Lcom/b/a/a/a/a/m;->d:I

    return-object v0
.end method
