.class Lcom/igexin/push/d/d;
.super Lcom/igexin/push/e/b/h;


# instance fields
.field final synthetic a:Lcom/igexin/push/d/c;


# direct methods
.method constructor <init>(Lcom/igexin/push/d/c;J)V
    .registers 4

    iput-object p1, p0, Lcom/igexin/push/d/d;->a:Lcom/igexin/push/d/c;

    invoke-direct {p0, p2, p3}, Lcom/igexin/push/e/b/h;-><init>(J)V

    return-void
.end method


# virtual methods
.method public a_()I
    .registers 2

    const/16 v0, 0x7f63

    return v0
.end method

.method protected i()V
    .registers 3

    new-instance v0, Lcom/igexin/push/d/a;

    invoke-direct {v0}, Lcom/igexin/push/d/a;-><init>()V

    sget-object v1, Lcom/igexin/push/core/c;->b:Lcom/igexin/push/core/c;

    invoke-virtual {v0, v1}, Lcom/igexin/push/d/a;->a(Lcom/igexin/push/core/c;)V

    iget-object v1, p0, Lcom/igexin/push/d/d;->a:Lcom/igexin/push/d/c;

    invoke-virtual {v1, v0}, Lcom/igexin/push/d/c;->a(Lcom/igexin/push/d/a;)V

    return-void
.end method