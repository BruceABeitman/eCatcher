.class Lcom/twidroid/TwidroidClient$38$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/twidroid/net/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/twidroid/TwidroidClient$38;->run()V
.end annotation


# instance fields
.field final synthetic a:Lcom/twidroid/TwidroidClient$38;


# direct methods
.method constructor <init>(Lcom/twidroid/TwidroidClient$38;)V
    .registers 2

    iput-object p1, p0, Lcom/twidroid/TwidroidClient$38$1;->a:Lcom/twidroid/TwidroidClient$38;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Bitmap;Ljava/lang/String;Ljava/lang/String;)V
    .registers 7

    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-direct {v0, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/graphics/Bitmap;)V

    iget-object v1, p0, Lcom/twidroid/TwidroidClient$38$1;->a:Lcom/twidroid/TwidroidClient$38;

    iget-object v1, v1, Lcom/twidroid/TwidroidClient$38;->b:Lcom/twidroid/TwidroidClient;

    new-instance v2, Lcom/twidroid/TwidroidClient$38$1$1;

    invoke-direct {v2, p0, v0}, Lcom/twidroid/TwidroidClient$38$1$1;-><init>(Lcom/twidroid/TwidroidClient$38$1;Landroid/graphics/drawable/BitmapDrawable;)V

    invoke-virtual {v1, v2}, Lcom/twidroid/TwidroidClient;->runOnUiThread(Ljava/lang/Runnable;)V

    return-void
.end method
