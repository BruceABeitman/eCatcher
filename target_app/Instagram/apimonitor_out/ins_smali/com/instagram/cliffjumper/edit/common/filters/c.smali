.class final Lcom/instagram/cliffjumper/edit/common/filters/c;
.super Ljava/lang/Object;
.source "BasicAdjustController.java"
.implements Lcom/instagram/cliffjumper/ui/a;
.field final synthetic a:Lcom/instagram/cliffjumper/edit/common/filters/b;
.method constructor <init>(Lcom/instagram/cliffjumper/edit/common/filters/b;)V
.registers 2
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a()V
.registers 4
const/4 v2, 0x0
invoke-static {}, Lcom/instagram/cliffjumper/util/a/b;->a()Z
move-result v0
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->d(Lcom/instagram/cliffjumper/edit/common/filters/b;)Z
move-result v0
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->e(Lcom/instagram/cliffjumper/edit/common/filters/b;)Lcom/instagram/filterkit/filter/IgFilterGroup;
move-result-object v0
const/16 v1, 0xb
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->e(Lcom/instagram/cliffjumper/edit/common/filters/b;)Lcom/instagram/filterkit/filter/IgFilterGroup;
move-result-object v0
const/16 v1, 0xc
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
:cond_25
return-void
.end method
.method public final a(I)V
.registers 4
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;
invoke-static {v0, p1}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(Lcom/instagram/cliffjumper/edit/common/filters/b;I)I
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->a(Lcom/instagram/cliffjumper/edit/common/filters/b;)Z
move-result v0
if-nez v0, :cond_27
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;
iget-object v1, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;
invoke-static {v1}, Lcom/instagram/cliffjumper/edit/common/filters/b;->b(Lcom/instagram/cliffjumper/edit/common/filters/b;)I
move-result v1
invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/common/filters/b;->b(Lcom/instagram/cliffjumper/edit/common/filters/b;I)V
invoke-static {}, Lcom/instagram/cliffjumper/util/a/b;->a()Z
move-result v0
if-eqz v0, :cond_27
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->c(Lcom/instagram/cliffjumper/edit/common/filters/b;)Lcom/instagram/cliffjumper/edit/common/ui/b;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V
:cond_27
return-void
.end method
.method public final b()V
.registers 4
const/4 v2, 0x1
invoke-static {}, Lcom/instagram/cliffjumper/util/a/b;->a()Z
move-result v0
if-nez v0, :cond_11
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->c(Lcom/instagram/cliffjumper/edit/common/filters/b;)Lcom/instagram/cliffjumper/edit/common/ui/b;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V
:goto_10
:cond_10
return-void
:cond_11
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->d(Lcom/instagram/cliffjumper/edit/common/filters/b;)Z
move-result v0
if-eqz v0, :cond_10
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->e(Lcom/instagram/cliffjumper/edit/common/filters/b;)Lcom/instagram/filterkit/filter/IgFilterGroup;
move-result-object v0
const/16 v1, 0xb
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->e(Lcom/instagram/cliffjumper/edit/common/filters/b;)Lcom/instagram/filterkit/filter/IgFilterGroup;
move-result-object v0
const/16 v1, 0xc
invoke-virtual {v0, v1, v2}, Lcom/instagram/filterkit/filter/IgFilterGroup;->a(IZ)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/common/filters/c;->a:Lcom/instagram/cliffjumper/edit/common/filters/b;
invoke-static {v0}, Lcom/instagram/cliffjumper/edit/common/filters/b;->c(Lcom/instagram/cliffjumper/edit/common/filters/b;)Lcom/instagram/cliffjumper/edit/common/ui/b;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/cliffjumper/edit/common/ui/b;->a()V
goto :goto_10
.end method