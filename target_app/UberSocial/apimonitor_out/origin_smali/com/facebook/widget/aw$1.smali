.class Lcom/facebook/widget/aw$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/al;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/aw;->p()V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/aw;

.field final synthetic b:Lcom/facebook/widget/aw;


# direct methods
.method constructor <init>(Lcom/facebook/widget/aw;Lcom/facebook/aw;)V
    .registers 3

    iput-object p1, p0, Lcom/facebook/widget/aw$1;->b:Lcom/facebook/widget/aw;

    iput-object p2, p0, Lcom/facebook/widget/aw$1;->a:Lcom/facebook/aw;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/c/j;Lcom/facebook/as;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/widget/aw$1;->a:Lcom/facebook/aw;

    iget-object v1, p0, Lcom/facebook/widget/aw$1;->b:Lcom/facebook/widget/aw;

    invoke-virtual {v1}, Lcom/facebook/widget/aw;->a()Lcom/facebook/aw;

    move-result-object v1

    if-ne v0, v1, :cond_14

    iget-object v0, p0, Lcom/facebook/widget/aw$1;->b:Lcom/facebook/widget/aw;

    invoke-static {v0, p1}, Lcom/facebook/widget/aw;->a(Lcom/facebook/widget/aw;Lcom/facebook/c/j;)Lcom/facebook/c/j;

    iget-object v0, p0, Lcom/facebook/widget/aw$1;->b:Lcom/facebook/widget/aw;

    invoke-static {v0}, Lcom/facebook/widget/aw;->a(Lcom/facebook/widget/aw;)V

    :cond_14
    invoke-virtual {p2}, Lcom/facebook/as;->a()Lcom/facebook/w;

    move-result-object v0

    if-eqz v0, :cond_2b

    iget-object v0, p0, Lcom/facebook/widget/aw$1;->b:Lcom/facebook/widget/aw;

    invoke-static {v0}, Lcom/facebook/widget/aw;->b(Lcom/facebook/widget/aw;)Lcom/facebook/widget/LoginButton;

    move-result-object v0

    invoke-virtual {p2}, Lcom/facebook/as;->a()Lcom/facebook/w;

    move-result-object v1

    invoke-virtual {v1}, Lcom/facebook/w;->m()Lcom/facebook/t;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/facebook/widget/LoginButton;->a(Ljava/lang/Exception;)V

    :cond_2b
    return-void
.end method
