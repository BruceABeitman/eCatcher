.class final Lcom/instagram/cliffjumper/edit/photo/a/ac;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"
.implements Landroid/view/TextureView$SurfaceTextureListener;
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;
.method private constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/ac;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
return-void
.end method
.method public final onSurfaceTextureAvailable(Landroid/graphics/SurfaceTexture;II)V
.registers 9
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
new-instance v1, Lcom/instagram/filterkit/c/e;
iget-object v2, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;
move-result-object v2
new-instance v3, Lcom/instagram/filterkit/a/c;
invoke-direct {v3, p1}, Lcom/instagram/filterkit/a/c;-><init>(Landroid/graphics/SurfaceTexture;)V
iget-object v4, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v4}, Lcom/instagram/cliffjumper/edit/photo/a/a;->p(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/photo/a/x;
move-result-object v4
invoke-direct {v1, v2, v3, v4}, Lcom/instagram/filterkit/c/e;-><init>(Landroid/content/Context;Lcom/instagram/filterkit/a/c;Lcom/instagram/filterkit/c/b;)V
invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;Lcom/instagram/filterkit/c/c;)Lcom/instagram/filterkit/c/c;
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;
move-result-object v0
invoke-static {p2}, Lcom/instagram/filterkit/e/d;->a(I)Lcom/instagram/filterkit/e/c;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/filterkit/c/c;->a(Lcom/instagram/filterkit/e/c;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;
move-result-object v0
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/filterkit/c/c;->a(Lcom/instagram/filterkit/filter/IgFilter;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
return-void
.end method
.method public final onSurfaceTextureDestroyed(Landroid/graphics/SurfaceTexture;)Z
.registers 4
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->v(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->v(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_12
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/filterkit/c/c;->b()V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;Lcom/instagram/filterkit/c/c;)Lcom/instagram/filterkit/c/c;
const/4 v0, 0x1
return v0
.end method
.method public final onSurfaceTextureSizeChanged(Landroid/graphics/SurfaceTexture;II)V
.registers 6
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/ac;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->o(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/c/c;
move-result-object v0
invoke-static {p2}, Lcom/instagram/filterkit/e/d;->a(I)Lcom/instagram/filterkit/e/c;
move-result-object v1
invoke-interface {v0, v1}, Lcom/instagram/filterkit/c/c;->a(Lcom/instagram/filterkit/e/c;)V
return-void
.end method
.method public final onSurfaceTextureUpdated(Landroid/graphics/SurfaceTexture;)V
.registers 2
return-void
.end method