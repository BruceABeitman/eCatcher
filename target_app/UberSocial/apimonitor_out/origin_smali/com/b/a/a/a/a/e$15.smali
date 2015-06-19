.class Lcom/b/a/a/a/a/e$15;
.super Lcom/b/a/a/a/a/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/b/a/a/a/a/e;->a()Lcom/b/a/a/a/a/e;
.end annotation


# instance fields
.field final synthetic a:Lcom/b/a/a/a/a/e;


# direct methods
.method constructor <init>(Lcom/b/a/a/a/a/e;)V
    .registers 2

    iput-object p1, p0, Lcom/b/a/a/a/a/e$15;->a:Lcom/b/a/a/a/a/e;

    invoke-direct {p0}, Lcom/b/a/a/a/a/g;-><init>()V

    return-void
.end method


# virtual methods
.method public a(IIII)Lcom/b/a/a/a/a/m;
    .registers 8

    invoke-static {}, Lcom/b/a/a/a/a/c;->a()Lcom/b/a/a/a/a/m;

    move-result-object v0

    iget-object v1, p0, Lcom/b/a/a/a/a/e$15;->a:Lcom/b/a/a/a/a/e;

    iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;

    rsub-int v2, p2, 0xff

    invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/c;->a(I)I

    move-result v1

    iput v1, v0, Lcom/b/a/a/a/a/m;->a:I

    iget-object v1, p0, Lcom/b/a/a/a/a/e$15;->a:Lcom/b/a/a/a/a/e;

    iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;

    rsub-int v2, p3, 0xff

    invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/c;->a(I)I

    move-result v1

    iput v1, v0, Lcom/b/a/a/a/a/m;->b:I

    iget-object v1, p0, Lcom/b/a/a/a/a/e$15;->a:Lcom/b/a/a/a/a/e;

    iget-object v1, v1, Lcom/b/a/a/a/a/e;->a:Lcom/b/a/a/a/a/c;

    rsub-int v2, p4, 0xff

    invoke-virtual {v1, v2}, Lcom/b/a/a/a/a/c;->a(I)I

    move-result v1

    iput v1, v0, Lcom/b/a/a/a/a/m;->c:I

    iput p1, v0, Lcom/b/a/a/a/a/m;->d:I

    return-object v0
.end method
