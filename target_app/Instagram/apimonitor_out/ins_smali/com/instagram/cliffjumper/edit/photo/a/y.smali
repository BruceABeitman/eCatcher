.class final Lcom/instagram/cliffjumper/edit/photo/a/y;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"
.implements Lcom/instagram/cliffjumper/edit/photo/render/g;
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;
.method private constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
.registers 2
iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/y;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
return-void
.end method
.method private a(I)V
.registers 4
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->n()Landroid/content/Context;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, p1, v1}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
return-void
.end method
.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/a/y;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/cliffjumper/edit/photo/a/y;->a(I)V
return-void
.end method
.method public final a(Lcom/instagram/cliffjumper/edit/photo/render/a;)V
.registers 7
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;
move-result-object v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/photo/render/a;->c()Lcom/instagram/cliffjumper/edit/photo/render/b;
move-result-object v0
sget-object v1, Lcom/instagram/cliffjumper/edit/photo/render/b;->a:Lcom/instagram/cliffjumper/edit/photo/render/b;
if-ne v0, v1, :cond_22
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;
move-result-object v0
check-cast v0, Lcom/instagram/creation/b/a/e;
new-instance v1, Lcom/instagram/cliffjumper/edit/photo/a/z;
invoke-direct {v1, p0, p1, v0}, Lcom/instagram/cliffjumper/edit/photo/a/z;-><init>(Lcom/instagram/cliffjumper/edit/photo/a/y;Lcom/instagram/cliffjumper/edit/photo/render/a;Lcom/instagram/creation/b/a/e;)V
invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->a(Ljava/lang/Runnable;)V
goto :goto_8
:cond_22
const-string v0, "Render Failure"
const-string v1, "Render Failure"
invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/photo/render/a;->d()Ljava/lang/Exception;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/instagram/common/g/c;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
invoke-static {}, Lcom/instagram/cliffjumper/edit/photo/a/a;->U()Ljava/lang/Class;
move-result-object v0
const-string v1, "Render Failure: %s"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
invoke-virtual {p1}, Lcom/instagram/cliffjumper/edit/photo/render/a;->c()Lcom/instagram/cliffjumper/edit/photo/render/b;
move-result-object v4
aput-object v4, v2, v3
invoke-static {v1, v2}, Lcom/instagram/common/u/e;->a(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/facebook/e/a/a;->a(Ljava/lang/Class;Ljava/lang/String;)V
iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;
invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c()V
sget v0, Lcom/facebook/az;->unable_to_save_upload_image:I
invoke-direct {p0, v0}, Lcom/instagram/cliffjumper/edit/photo/a/y;->a(I)V
goto :goto_8
.end method