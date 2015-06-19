.class final Lcom/instagram/cliffjumper/edit/photo/a/z;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/render/a;

.field final synthetic b:Lcom/instagram/creation/b/a/e;

.field final synthetic c:Lcom/instagram/cliffjumper/edit/photo/a/y;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/y;Lcom/instagram/cliffjumper/edit/photo/render/a;Lcom/instagram/creation/b/a/e;)V
    .registers 4

    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->a:Lcom/instagram/cliffjumper/edit/photo/render/a;

    iput-object p3, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->b:Lcom/instagram/creation/b/a/e;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .registers 7

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    if-nez v0, :cond_b

    :cond_a
    :goto_a
    return-void

    :cond_b
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->c()V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->D()Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_a

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->a:Lcom/instagram/cliffjumper/edit/photo/render/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/render/i;->b(Lcom/instagram/cliffjumper/edit/photo/render/a;)Lcom/instagram/cliffjumper/edit/photo/render/k;

    move-result-object v0

    if-eqz v0, :cond_33

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/render/k;->d()I

    move-result v0

    sget v1, Lcom/instagram/cliffjumper/edit/photo/render/l;->a:I

    if-eq v0, v1, :cond_33

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    sget v1, Lcom/facebook/az;->unable_to_save_full_image:I

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/y;->a(Lcom/instagram/cliffjumper/edit/photo/a/y;I)V

    :cond_33
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->a:Lcom/instagram/cliffjumper/edit/photo/render/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/render/i;->a(Lcom/instagram/cliffjumper/edit/photo/render/a;)Lcom/instagram/cliffjumper/edit/photo/render/k;

    move-result-object v2

    if-eqz v2, :cond_43

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/photo/render/k;->d()I

    move-result v0

    sget v1, Lcom/instagram/cliffjumper/edit/photo/render/l;->a:I

    if-eq v0, v1, :cond_4b

    :cond_43
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    sget v1, Lcom/facebook/az;->unable_to_save_upload_image:I

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/y;->a(Lcom/instagram/cliffjumper/edit/photo/a/y;I)V

    goto :goto_a

    :cond_4b
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v1, "pendingMediaKey"

    invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->b:Lcom/instagram/creation/b/a/e;

    invoke-interface {v0, v1}, Lcom/instagram/creation/b/a/e;->b(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v0

    if-nez v0, :cond_165

    invoke-static {v1}, Lcom/instagram/creation/b/a/b;->a(Ljava/lang/String;)Lcom/instagram/creation/b/a/b;

    move-result-object v1

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/a/a;

    invoke-interface {v0, v1}, Lcom/instagram/creation/photo/a/a;->a(Lcom/instagram/creation/b/a/b;)V

    :goto_72
    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/photo/render/k;->b()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/b;->e(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->d()Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m()I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/b;->b(I)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "mediaSource"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/b;->a(I)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "originalWidth"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/b;->d(I)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "originalHeight"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/b;->e(I)V

    invoke-virtual {v2}, Lcom/instagram/cliffjumper/edit/photo/render/k;->c()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/b;->c(Ljava/lang/String;)V

    sget-object v0, Lcom/instagram/creation/b/a/d;->a:Lcom/instagram/creation/b/a/d;

    invoke-virtual {v1, v0}, Lcom/instagram/creation/b/a/b;->a(Lcom/instagram/creation/b/a/d;)V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->b:Lcom/instagram/creation/b/a/e;

    invoke-interface {v0}, Lcom/instagram/creation/b/a/e;->h()V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/photo/a/a;

    invoke-interface {v0, v1}, Lcom/instagram/creation/photo/a/a;->b(Lcom/instagram/creation/b/a/b;)V

    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "latitude"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_128

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "longitude"

    invoke-virtual {v0, v3}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_128

    const-string v0, "latitude"

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    iget-object v3, v3, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v3}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "latitude"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    const-string v0, "longitude"

    iget-object v3, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    iget-object v3, v3, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v3}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v3

    const-string v4, "longitude"

    invoke-virtual {v3, v4}, Landroid/os/Bundle;->getDouble(Ljava/lang/String;)D

    move-result-wide v3

    invoke-virtual {v2, v0, v3, v4}, Landroid/os/Bundle;->putDouble(Ljava/lang/String;D)V

    :cond_128
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->j()Landroid/os/Bundle;

    move-result-object v0

    const-string v3, "directShare"

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z

    move-result v3

    sget-object v0, Lcom/instagram/o/a;->d:Lcom/instagram/o/a;

    invoke-virtual {v0}, Lcom/instagram/o/a;->b()Lcom/instagram/common/analytics/b;

    move-result-object v0

    const-string v4, "filter_id"

    iget-object v5, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    iget-object v5, v5, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v5}, Lcom/instagram/cliffjumper/edit/photo/a/a;->d()Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;

    move-result-object v5

    invoke-virtual {v5}, Lcom/instagram/cliffjumper/edit/common/effectfilter/CjFilter;->m()I

    move-result v5

    invoke-virtual {v0, v4, v5}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;I)Lcom/instagram/common/analytics/b;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/common/analytics/b;->a()V

    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/z;->c:Lcom/instagram/cliffjumper/edit/photo/a/y;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    check-cast v0, Lcom/instagram/creation/base/a;

    invoke-virtual {v1}, Lcom/instagram/creation/b/a/b;->a()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, v3, v2}, Lcom/instagram/creation/base/a;->a(Ljava/lang/String;ZLandroid/os/Bundle;)V

    goto/16 :goto_a

    :cond_165
    move-object v1, v0

    goto/16 :goto_72
.end method
