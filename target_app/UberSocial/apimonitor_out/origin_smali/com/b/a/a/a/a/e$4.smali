.class Lcom/b/a/a/a/a/e$4;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/a/a/e;->b(III)Lcom/b/a/a/a/a/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/a/a/e;


# direct methods
.method constructor <init>(Lcom/b/a/a/a/a/e;III)V
    .registers 5

    iput-object p1, p0, Lcom/b/a/a/a/a/e$4;->a:Lcom/b/a/a/a/a/e;

    invoke-direct {p0, p2, p3, p4}, Lcom/b/a/a/a/a/g;-><init>(III)V

    return-void
.end method


# virtual methods
.method public a(IIII)Lcom/b/a/a/a/a/m;
    .registers 9

    invoke-static {}, Lcom/b/a/a/a/a/c;->a()Lcom/b/a/a/a/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/a/a/e$4;->a:Lcom/b/a/a/a/a/e;

    iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;

    iget-wide v2, p0, Lcom/b/a/a/a/a/e$4;->b:D

    double-to-int v2, v2

    and-int/2addr v2, p2

    invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/c;->a(I)I

    move-result v1

    iput v1, v0, Lcom/b/a/a/a/a/m;->a:I

    iget-object v1, p0, Lcom/b/a/a/a/a/e$4;->a:Lcom/b/a/a/a/a/e;

    iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;

    iget-wide v2, p0, Lcom/b/a/a/a/a/e$4;->c:D

    double-to-int v2, v2

    and-int/2addr v2, p3

    invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/c;->a(I)I

    move-result v1

    iput v1, v0, Lcom/b/a/a/a/a/m;->b:I

    iget-object v1, p0, Lcom/b/a/a/a/a/e$4;->a:Lcom/b/a/a/a/a/e;

    iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;

    iget-wide v2, p0, Lcom/b/a/a/a/a/e$4;->d:D

    double-to-int v2, v2

    and-int/2addr v2, p4

    invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/c;->a(I)I

    move-result v1

    iput v1, v0, Lcom/b/a/a/a/a/m;->c:I

    iput p1, v0, Lcom/b/a/a/a/a/m;->d:I

    return-object v0
.end method
