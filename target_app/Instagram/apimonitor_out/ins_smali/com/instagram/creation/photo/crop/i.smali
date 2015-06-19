.class final Lcom/instagram/creation/photo/crop/i;
.super Ljava/lang/Object;
.source "CropFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/graphics/Bitmap;
.field final synthetic b:Lcom/instagram/creation/photo/crop/b;
.method constructor <init>(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Bitmap;)V
.registers 3
iput-object p1, p0, Lcom/instagram/creation/photo/crop/i;->b:Lcom/instagram/creation/photo/crop/b;
iput-object p2, p0, Lcom/instagram/creation/photo/crop/i;->a:Landroid/graphics/Bitmap;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/photo/crop/i;->b:Lcom/instagram/creation/photo/crop/b;
iget-object v1, p0, Lcom/instagram/creation/photo/crop/i;->a:Landroid/graphics/Bitmap;
invoke-static {v0, v1}, Lcom/instagram/creation/photo/crop/b;->c(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Bitmap;)V
iget-object v0, p0, Lcom/instagram/creation/photo/crop/i;->b:Lcom/instagram/creation/photo/crop/b;
invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->a(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/crop/k;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/creation/photo/crop/k;->g()V
return-void
.end method