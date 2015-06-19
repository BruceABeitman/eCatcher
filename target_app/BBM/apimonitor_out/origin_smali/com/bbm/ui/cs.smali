.class public Lcom/bbm/ui/cs;
.super Ljava/lang/Object;
.source "HeaderView.java"


# instance fields
.field protected b:Lcom/google/b/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/a/l",
            "<",
            "Landroid/app/ActionBar;",
            ">;"
        }
    .end annotation
.end field

.field protected c:Lcom/google/b/a/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/b/a/l",
            "<",
            "Landroid/widget/ImageView;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/cs;->c:Lcom/google/b/a/l;

    return-void
.end method


# virtual methods
.method public a()V
    .registers 1

    return-void
.end method

.method public final b(Z)V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/cs;->c:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_16

    iget-object v0, p0, Lcom/bbm/ui/cs;->c:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    if-eqz p1, :cond_17

    const/4 v1, 0x0

    :goto_13
    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V

    :cond_16
    return-void

    :cond_17
    const/16 v1, 0x8

    goto :goto_13
.end method

.method public c()V
    .registers 1

    return-void
.end method

.method public final d()Landroid/view/View;
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/cs;->b:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z

    move-result v0

    if-eqz v0, :cond_1c

    iget-object v0, p0, Lcom/bbm/ui/cs;->b:Lcom/google/b/a/l;

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar;

    invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;

    move-result-object v0

    const v1, 0x7f0a0531

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    :goto_1b
    return-object v0

    :cond_1c
    const/4 v0, 0x0

    goto :goto_1b
.end method
