.class Lcom/facebook/widget/ah$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/facebook/widget/n;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/facebook/widget/ah;->a(Lcom/facebook/widget/e;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/facebook/widget/ah;


# direct methods
.method constructor <init>(Lcom/facebook/widget/ah;)V
    .registers 2

    iput-object p1, p0, Lcom/facebook/widget/ah$2;->a:Lcom/facebook/widget/ah;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lcom/facebook/t;Lcom/facebook/widget/m;)V
    .registers 5

    iget-object v0, p0, Lcom/facebook/widget/ah$2;->a:Lcom/facebook/widget/ah;

    iget-object v0, v0, Lcom/facebook/widget/ah;->e:Lcom/facebook/widget/af;

    invoke-virtual {v0}, Lcom/facebook/widget/af;->x()V

    iget-object v0, p0, Lcom/facebook/widget/ah$2;->a:Lcom/facebook/widget/ah;

    iget-object v0, v0, Lcom/facebook/widget/ah;->e:Lcom/facebook/widget/af;

    invoke-static {v0}, Lcom/facebook/widget/af;->d(Lcom/facebook/widget/af;)Lcom/facebook/widget/al;

    move-result-object v0

    if-eqz v0, :cond_20

    iget-object v0, p0, Lcom/facebook/widget/ah$2;->a:Lcom/facebook/widget/ah;

    iget-object v0, v0, Lcom/facebook/widget/ah;->e:Lcom/facebook/widget/af;

    invoke-static {v0}, Lcom/facebook/widget/af;->d(Lcom/facebook/widget/af;)Lcom/facebook/widget/al;

    move-result-object v0

    iget-object v1, p0, Lcom/facebook/widget/ah$2;->a:Lcom/facebook/widget/ah;

    iget-object v1, v1, Lcom/facebook/widget/ah;->e:Lcom/facebook/widget/af;

    invoke-interface {v0, v1, p1}, Lcom/facebook/widget/al;->a(Lcom/facebook/widget/af;Lcom/facebook/t;)V

    :cond_20
    return-void
.end method
