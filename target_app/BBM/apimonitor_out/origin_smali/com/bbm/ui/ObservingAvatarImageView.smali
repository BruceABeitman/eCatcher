.class public Lcom/bbm/ui/ObservingAvatarImageView;
.super Lcom/bbm/ui/ObservingImageView;
.source "ObservingAvatarImageView.java"

# interfaces
.implements Lcom/bbm/j/h;


# instance fields
.field protected a:Lcom/bbm/d/a;

.field private e:Lcom/bbm/j/r;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/bbm/j/r",
            "<",
            "Lcom/bbm/d/gp;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/bbm/j/k;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/bbm/ui/ObservingImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    new-instance v0, Lcom/bbm/ui/ei;

    invoke-direct {v0, p0}, Lcom/bbm/ui/ei;-><init>(Lcom/bbm/ui/ObservingAvatarImageView;)V

    iput-object v0, p0, Lcom/bbm/ui/ObservingAvatarImageView;->f:Lcom/bbm/j/k;

    return-void
.end method


# virtual methods
.method public final a()V
    .registers 4

    iget-object v0, p0, Lcom/bbm/ui/ObservingAvatarImageView;->e:Lcom/bbm/j/r;

    invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/d/gp;

    iget-object v1, p0, Lcom/bbm/ui/ObservingAvatarImageView;->a:Lcom/bbm/d/a;

    iget-object v2, v0, Lcom/bbm/d/gp;->A:Ljava/lang/String;

    iget-object v0, v0, Lcom/bbm/d/gp;->a:Ljava/lang/String;

    invoke-virtual {v1, v2, v0}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/bbm/ui/ObservingAvatarImageView;->setObservableImage(Lcom/bbm/j/r;)V

    return-void
.end method

.method public setObservableUser(Lcom/bbm/j/r;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/bbm/j/r",
            "<",
            "Lcom/bbm/d/gp;",
            ">;)V"
        }
    .end annotation

    invoke-static {p1}, Lcom/google/b/a/o;->a(Ljava/lang/Object;)Ljava/lang/Object;

    iget-object v0, p0, Lcom/bbm/ui/ObservingAvatarImageView;->e:Lcom/bbm/j/r;

    if-eq p1, v0, :cond_26

    iget-object v0, p0, Lcom/bbm/ui/ObservingAvatarImageView;->e:Lcom/bbm/j/r;

    if-eqz v0, :cond_10

    iget-object v0, p0, Lcom/bbm/ui/ObservingAvatarImageView;->e:Lcom/bbm/j/r;

    invoke-interface {v0, p0}, Lcom/bbm/j/r;->b(Lcom/bbm/j/h;)V

    :cond_10
    iput-object p1, p0, Lcom/bbm/ui/ObservingAvatarImageView;->e:Lcom/bbm/j/r;

    iget-object v0, p0, Lcom/bbm/ui/ObservingAvatarImageView;->a:Lcom/bbm/d/a;

    if-nez v0, :cond_1c

    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v0

    iput-object v0, p0, Lcom/bbm/ui/ObservingAvatarImageView;->a:Lcom/bbm/d/a;

    :cond_1c
    iget-object v0, p0, Lcom/bbm/ui/ObservingAvatarImageView;->e:Lcom/bbm/j/r;

    invoke-interface {v0, p0}, Lcom/bbm/j/r;->a(Lcom/bbm/j/h;)V

    iget-object v0, p0, Lcom/bbm/ui/ObservingAvatarImageView;->f:Lcom/bbm/j/k;

    invoke-virtual {v0}, Lcom/bbm/j/k;->c()V

    :cond_26
    return-void
.end method
