.class Lcom/facebook/widget/ar$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/widget/f;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/ar;->a(Lcom/facebook/widget/e;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/widget/ar;


# direct methods
.method constructor <init>(Lcom/facebook/widget/ar;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/ar$1;->a:Lcom/facebook/widget/ar;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()V
    .registers 2

    iget-object v0, p0, Lcom/facebook/widget/ar$1;->a:Lcom/facebook/widget/ar;

    iget-object v0, v0, Lcom/facebook/widget/ar;->c:Lcom/facebook/widget/m;

    invoke-virtual {v0}, Lcom/facebook/widget/m;->d()Z

    move-result v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/facebook/widget/ar$1;->a:Lcom/facebook/widget/ar;

    iget-object v0, v0, Lcom/facebook/widget/ar;->c:Lcom/facebook/widget/m;

    invoke-virtual {v0}, Lcom/facebook/widget/m;->e()V

    :cond_11
    return-void
.end method
