.class Lcom/twidroid/ui/a$4$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/ui/a$4;->a(Ljava/lang/String;)V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/ui/a$4;


# direct methods
.method constructor <init>(Lcom/twidroid/ui/a$4;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/ui/a$4$1;->a:Lcom/twidroid/ui/a$4;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .registers 6

    iget-object v0, p0, Lcom/twidroid/ui/a$4$1;->a:Lcom/twidroid/ui/a$4;

    iget v0, v0, Lcom/twidroid/ui/a$4;->c:I

    if-lez v0, :cond_2d

    const/4 v0, 0x0

    :try_start_7
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/twidroid/ui/a$4$1;->a:Lcom/twidroid/ui/a$4;

    iget-object v2, v2, Lcom/twidroid/ui/a$4;->d:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/16 v2, 0x3e8

    iget-object v3, p0, Lcom/twidroid/ui/a$4$1;->a:Lcom/twidroid/ui/a$4;

    iget v3, v3, Lcom/twidroid/ui/a$4;->c:I

    iget-object v4, p0, Lcom/twidroid/ui/a$4$1;->a:Lcom/twidroid/ui/a$4;

    iget-boolean v4, v4, Lcom/twidroid/ui/a$4;->e:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/twidroid/ui/a;->a(Landroid/os/ParcelFileDescriptor;Ljava/lang/String;IIZ)V
    :try_end_2d
    .catch Ljava/io/IOException; {:try_start_7 .. :try_end_2d} :catch_52

    :cond_2d
    :goto_2d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/ui/a$4$1;->a:Lcom/twidroid/ui/a$4;

    iget-object v1, v1, Lcom/twidroid/ui/a$4;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v0

    iget-object v1, p0, Lcom/twidroid/ui/a$4$1;->a:Lcom/twidroid/ui/a$4;

    iget-object v1, v1, Lcom/twidroid/ui/a$4;->a:Lcom/twidroid/ui/widgets/gesture/GestureImageView;

    invoke-virtual {v1, v0}, Lcom/twidroid/ui/widgets/gesture/GestureImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    return-void

    :catch_52
    move-exception v0

    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_2d
.end method
