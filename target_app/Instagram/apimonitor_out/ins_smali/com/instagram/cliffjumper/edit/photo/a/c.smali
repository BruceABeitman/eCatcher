.class final Lcom/instagram/cliffjumper/edit/photo/a/c;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"
.implements Lcom/instagram/cliffjumper/edit/common/ui/f;
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/c;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/instagram/cliffjumper/edit/common/ui/g;)V
.registers 5
const/4 v2, 0x0
invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getTileInfo()Lcom/instagram/cliffjumper/edit/common/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/c;->d()Lcom/instagram/cliffjumper/edit/common/ui/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/c;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;
move-result-object v1
invoke-interface {v0, p1, v1}, Lcom/instagram/cliffjumper/edit/common/ui/a;->a(Lcom/instagram/cliffjumper/edit/common/ui/g;Lcom/instagram/filterkit/filter/IgFilterGroup;)Z
move-result v0
if-eqz v0, :cond_18
invoke-virtual {p0, p1, v2, v2}, Lcom/instagram/cliffjumper/edit/photo/a/c;->a(Lcom/instagram/cliffjumper/edit/common/ui/g;ZI)V
:cond_18
return-void
.end method
.method public final a(Lcom/instagram/cliffjumper/edit/common/ui/g;ZI)V
.registers 10
invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/common/ui/g;->getTileInfo()Lcom/instagram/cliffjumper/edit/common/ui/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/ui/c;->d()Lcom/instagram/cliffjumper/edit/common/ui/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/c;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->h(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/view/View;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v1, v2}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/c;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->h(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/view/View;
move-result-object v2
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/c;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->i(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/widget/FrameLayout;
move-result-object v3
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/c;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->f(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/filterkit/filter/IgFilterGroup;
move-result-object v4
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/c;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/common/ui/b;
move-result-object v5
move-object v1, p1
invoke-interface/range {v0 .. v5}, Lcom/instagram/cliffjumper/edit/common/ui/a;->a(Landroid/view/View;Landroid/view/View;Landroid/view/ViewGroup;Lcom/instagram/filterkit/filter/IgFilterGroup;Lcom/instagram/cliffjumper/edit/common/ui/b;)Z
move-result v1
if-eqz v1, :cond_42
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/c;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->k(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/photo/a/aa;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/cliffjumper/edit/photo/a/aa;->a()V
if-eqz p2, :cond_41
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/c;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v1, v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;Lcom/instagram/cliffjumper/edit/common/ui/a;)V
:goto_41
:cond_41
return-void
:cond_42
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/c;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->h(Lcom/instagram/cliffjumper/edit/photo/a/a;)Landroid/view/View;
move-result-object v0
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/a/c;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-static {v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->k(Lcom/instagram/cliffjumper/edit/photo/a/a;)Lcom/instagram/cliffjumper/edit/photo/a/aa;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
goto :goto_41
.end method