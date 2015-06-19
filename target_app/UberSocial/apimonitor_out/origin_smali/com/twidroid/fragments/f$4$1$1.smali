.class Lcom/twidroid/fragments/f$4$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/f$4$1;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/twidroid/fragments/f$4$1;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/f$4$1;Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/f$4$1$1;->b:Lcom/twidroid/fragments/f$4$1;

    iput-object p2, p0, Lcom/twidroid/fragments/f$4$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/f$4$1$1;->b:Lcom/twidroid/fragments/f$4$1;

    iget-object v0, v0, Lcom/twidroid/fragments/f$4$1;->a:Lcom/twidroid/fragments/f$4;

    iget-object v0, v0, Lcom/twidroid/fragments/f$4;->b:Lcom/twidroid/fragments/f;

    invoke-static {v0}, Lcom/twidroid/fragments/f;->d(Lcom/twidroid/fragments/f;)Landroid/view/View;

    move-result-object v0

    const v1, 0x7f090192

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Lcom/twidroid/ui/widgets/gesture/GestureImageView;

    iget-object v1, p0, Lcom/twidroid/fragments/f$4$1$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/twidroid/fragments/f$4$1$1;->b:Lcom/twidroid/fragments/f$4$1;

    iget-object v0, v0, Lcom/twidroid/fragments/f$4$1;->a:Lcom/twidroid/fragments/f$4;

    iget-object v0, v0, Lcom/twidroid/fragments/f$4;->b:Lcom/twidroid/fragments/f;

    invoke-virtual {v0}, Lcom/twidroid/fragments/f;->M()V

    iget-object v0, p0, Lcom/twidroid/fragments/f$4$1$1;->b:Lcom/twidroid/fragments/f$4$1;

    iget-object v0, v0, Lcom/twidroid/fragments/f$4$1;->a:Lcom/twidroid/fragments/f$4;

    iget-object v0, v0, Lcom/twidroid/fragments/f$4;->b:Lcom/twidroid/fragments/f;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/twidroid/fragments/f;->a(Lcom/twidroid/fragments/f;Landroid/view/View;)V

    return-void
.end method
