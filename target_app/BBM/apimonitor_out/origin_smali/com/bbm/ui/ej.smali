.class final Lcom/bbm/ui/ej;
.super Lcom/bbm/j/k;
.source "ObservingImageView.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/ObservingImageView;


# direct methods
.method constructor <init>(Lcom/bbm/ui/ObservingImageView;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/ej;->a:Lcom/bbm/ui/ObservingImageView;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/ej;->a:Lcom/bbm/ui/ObservingImageView;

    invoke-static {v0}, Lcom/bbm/ui/ObservingImageView;->a(Lcom/bbm/ui/ObservingImageView;)Lcom/bbm/j/r;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/bbm/ui/ej;->a:Lcom/bbm/ui/ObservingImageView;

    invoke-static {v0}, Lcom/bbm/ui/ObservingImageView;->a(Lcom/bbm/ui/ObservingImageView;)Lcom/bbm/j/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_34

    iget-object v0, p0, Lcom/bbm/ui/ej;->a:Lcom/bbm/ui/ObservingImageView;

    invoke-static {v0}, Lcom/bbm/ui/ObservingImageView;->a(Lcom/bbm/ui/ObservingImageView;)Lcom/bbm/j/r;

    move-result-object v0

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/fd;

    iget-object v0, v0, Lcom/bbm/d/fd;->b:Landroid/graphics/drawable/Drawable;

    iget-object v1, p0, Lcom/bbm/ui/ej;->a:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/ObservingImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    if-eqz v0, :cond_34

    instance-of v1, v0, Lcom/bbm/ui/cl;

    if-eqz v1, :cond_34

    check-cast v0, Lcom/bbm/ui/cl;

    const-wide/16 v1, 0x0

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/cl;->a(J)V

    :cond_34
    return-void
.end method
