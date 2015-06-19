.class final Lcom/instagram/creation/photo/crop/g;
.super Ljava/lang/Object;
.source "CropFragment.java"
.implements Ljava/lang/Runnable;
.field final synthetic a:Landroid/graphics/Rect;
.field final synthetic b:Lcom/instagram/creation/photo/crop/b;
.method constructor <init>(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Rect;)V
.registers 3
iput-object p1, p0, Lcom/instagram/creation/photo/crop/g;->b:Lcom/instagram/creation/photo/crop/b;
iput-object p2, p0, Lcom/instagram/creation/photo/crop/g;->a:Landroid/graphics/Rect;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final run()V
.registers 3
iget-object v0, p0, Lcom/instagram/creation/photo/crop/g;->b:Lcom/instagram/creation/photo/crop/b;
invoke-static {v0}, Lcom/instagram/creation/photo/crop/b;->e(Lcom/instagram/creation/photo/crop/b;)Lcom/instagram/creation/photo/gallery/c;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/creation/photo/gallery/c;->g()Z
move-result v0
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/instagram/creation/photo/crop/g;->b:Lcom/instagram/creation/photo/crop/b;
iget-object v1, p0, Lcom/instagram/creation/photo/crop/g;->a:Landroid/graphics/Rect;
invoke-static {v0, v1}, Lcom/instagram/creation/photo/crop/b;->a(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
move-result-object v0
:goto_14
iget-object v1, p0, Lcom/instagram/creation/photo/crop/g;->b:Lcom/instagram/creation/photo/crop/b;
invoke-static {v1, v0}, Lcom/instagram/creation/photo/crop/b;->b(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Bitmap;)V
return-void
:cond_1a
iget-object v0, p0, Lcom/instagram/creation/photo/crop/g;->b:Lcom/instagram/creation/photo/crop/b;
iget-object v1, p0, Lcom/instagram/creation/photo/crop/g;->a:Landroid/graphics/Rect;
invoke-static {v0, v1}, Lcom/instagram/creation/photo/crop/b;->b(Lcom/instagram/creation/photo/crop/b;Landroid/graphics/Rect;)Landroid/graphics/Bitmap;
move-result-object v0
goto :goto_14
.end method