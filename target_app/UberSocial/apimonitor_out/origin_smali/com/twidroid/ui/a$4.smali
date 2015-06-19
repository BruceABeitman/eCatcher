.class final Lcom/twidroid/ui/a$4;
.super Lcom/ubermedia/net/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/a;->a(Ljava/lang/String;Ljava/lang/String;Lcom/twidroid/ui/widgets/gesture/GestureImageView;Landroid/os/Handler;IZ)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/widgets/gesture/GestureImageView;

.field final synthetic b:Landroid/os/Handler;

.field final synthetic c:I

.field final synthetic d:Ljava/lang/String;

.field final synthetic e:Z


# direct methods
.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;Lcom/twidroid/ui/widgets/gesture/GestureImageView;Landroid/os/Handler;ILjava/lang/String;Z)V
    .registers 9

    iput-object p4, p0, Lcom/twidroid/ui/a$4;->a:Lcom/twidroid/ui/widgets/gesture/GestureImageView;

    iput-object p5, p0, Lcom/twidroid/ui/a$4;->b:Landroid/os/Handler;

    iput p6, p0, Lcom/twidroid/ui/a$4;->c:I

    iput-object p7, p0, Lcom/twidroid/ui/a$4;->d:Ljava/lang/String;

    iput-boolean p8, p0, Lcom/twidroid/ui/a$4;->e:Z

    invoke-direct {p0, p1, p2, p3}, Lcom/ubermedia/net/f;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;)V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;)V
    .registers 4

    iget-object v0, p0, Lcom/twidroid/ui/a$4;->a:Lcom/twidroid/ui/widgets/gesture/GestureImageView;

    if-eqz v0, :cond_e

    iget-object v0, p0, Lcom/twidroid/ui/a$4;->b:Landroid/os/Handler;

    new-instance v1, Lcom/twidroid/ui/a$4$1;

    invoke-direct {v1, p0}, Lcom/twidroid/ui/a$4$1;-><init>(Lcom/twidroid/ui/a$4;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_e
    return-void
.end method
