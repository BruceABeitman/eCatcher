.class Lcom/twidroid/fragments/f$9$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/fragments/f$9;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/twidroid/fragments/f$9;


# direct methods
.method constructor <init>(Lcom/twidroid/fragments/f$9;Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/fragments/f$9$1;->b:Lcom/twidroid/fragments/f$9;

    iput-object p2, p0, Lcom/twidroid/fragments/f$9$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/fragments/f$9$1;->b:Lcom/twidroid/fragments/f$9;

    iget-object v0, v0, Lcom/twidroid/fragments/f$9;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twidroid/fragments/f$9$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/twidroid/fragments/f$9$1;->b:Lcom/twidroid/fragments/f$9;

    iget-object v0, v0, Lcom/twidroid/fragments/f$9;->b:Lcom/twidroid/fragments/f;

    invoke-virtual {v0}, Lcom/twidroid/fragments/f;->M()V

    return-void
.end method
