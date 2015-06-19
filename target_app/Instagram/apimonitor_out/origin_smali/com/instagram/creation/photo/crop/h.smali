.class final Lcom/instagram/creation/photo/crop/h;
.super Ljava/lang/Object;
.source "CropFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Landroid/graphics/Bitmap;

.field final synthetic b:Landroid/os/Bundle;

.field final synthetic c:Lcom/instagram/creation/photo/crop/b;


# direct methods
.method constructor <init>(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Bitmap;Landroid/os/Bundle;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/creation/photo/crop/h;->c:Lcom/instagram/creation/photo/crop/b;

    iput-object p2, p0, Lcom/instagram/creation/photo/crop/h;->a:Landroid/graphics/Bitmap;

    iput-object p3, p0, Lcom/instagram/creation/photo/crop/h;->b:Landroid/os/Bundle;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 4

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/h;->c:Lcom/instagram/creation/photo/crop/b;

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/h;->a:Landroid/graphics/Bitmap;

    invoke-static {v0, v1}, Lcom/instagram/creation/photo/crop/b;->c(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Bitmap;)V

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/h;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->a(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/k;

    move-result-object v0

    if-eqz v0, :cond_24

    iget-object v0, p0, Lcom/instagram/creation/photo/crop/h;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->a(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/k;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/creation/photo/crop/h;->c:Lcom/instagram/creation/photo/crop/b;

    invoke-static {v1}, Lcom/instagram/creation/photo/crop/b;->f(Lcom/instagram/creation/photo/crop/b;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v1}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/instagram/creation/photo/crop/h;->b:Landroid/os/Bundle;

    invoke-interface {v0, v1, v2}, Lcom/instagram/creation/photo/crop/k;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_24
    return-void
.end method
