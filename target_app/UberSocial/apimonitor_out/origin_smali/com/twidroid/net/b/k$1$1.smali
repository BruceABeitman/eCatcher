.class Lcom/twidroid/net/b/k$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/net/b/k$1;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Lcom/twidroid/net/b/k$1;


# direct methods
.method constructor <init>(Lcom/twidroid/net/b/k$1;Landroid/graphics/Bitmap;)V
    .registers 3

    iput-object p1, p0, Lcom/twidroid/net/b/k$1$1;->b:Lcom/twidroid/net/b/k$1;

    iput-object p2, p0, Lcom/twidroid/net/b/k$1$1;->a:Landroid/graphics/Bitmap;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    iget-object v0, p0, Lcom/twidroid/net/b/k$1$1;->b:Lcom/twidroid/net/b/k$1;

    iget-object v0, v0, Lcom/twidroid/net/b/k$1;->a:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/twidroid/net/b/k$1$1;->a:Landroid/graphics/Bitmap;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
