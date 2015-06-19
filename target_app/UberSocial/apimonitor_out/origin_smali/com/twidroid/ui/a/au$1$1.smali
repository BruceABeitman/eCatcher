.class Lcom/twidroid/ui/a/au$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/a/au$1;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/a/au$1;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/a/au$1;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/a/au$1$1;->a:Lcom/twidroid/ui/a/au$1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/ui/a/au$1$1;->a:Lcom/twidroid/ui/a/au$1;

    iget-object v1, v1, Lcom/twidroid/ui/a/au$1;->a:Lcom/twidroid/uberchannels/models/UberTopic;

    invoke-virtual {v1}, Lcom/twidroid/uberchannels/models/UberTopic;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/ui/a/au$1$1;->a:Lcom/twidroid/ui/a/au$1;

    iget-object v1, v1, Lcom/twidroid/ui/a/au$1;->b:Landroid/widget/ImageView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void
.end method
