.class final Lcom/bbm/ui/c/n;
.super Ljava/lang/Object;
.source "ChannelDetailsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/l;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/l;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/n;->a:Lcom/bbm/ui/c/l;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 8

    const/4 v3, 0x1

    const/4 v5, 0x0

    iget-object v0, p0, Lcom/bbm/ui/c/n;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->m(Lcom/bbm/ui/c/l;)Z

    move-result v0

    if-eqz v0, :cond_2d

    iget-object v0, p0, Lcom/bbm/ui/c/n;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->h(Lcom/bbm/ui/c/l;)Lcom/bbm/ui/activities/cn;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/ui/activities/cn;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/n;->a:Lcom/bbm/ui/c/l;

    invoke-virtual {v1}, Lcom/bbm/ui/c/l;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f0e0170

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v5

    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    :cond_2c
    :goto_2c
    return-void

    :cond_2d
    iget-object v0, p0, Lcom/bbm/ui/c/n;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->l(Lcom/bbm/ui/c/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2c

    iget-object v0, p0, Lcom/bbm/ui/c/n;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->l(Lcom/bbm/ui/c/l;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/n;->a:Lcom/bbm/ui/c/l;

    new-instance v2, Lcom/cropimage/f;

    invoke-direct {v2, v0, v5}, Lcom/cropimage/f;-><init>(Landroid/net/Uri;B)V

    invoke-static {v1, v2}, Lcom/bbm/ui/c/l;->a(Lcom/bbm/ui/c/l;Lcom/cropimage/f;)Lcom/cropimage/f;

    iget-object v1, p0, Lcom/bbm/ui/c/n;->a:Lcom/bbm/ui/c/l;

    invoke-static {v1}, Lcom/bbm/ui/c/l;->n(Lcom/bbm/ui/c/l;)Lcom/cropimage/f;

    move-result-object v1

    iput-object v0, v1, Lcom/cropimage/f;->b:Landroid/net/Uri;

    iget-object v0, p0, Lcom/bbm/ui/c/n;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->n(Lcom/bbm/ui/c/l;)Lcom/cropimage/f;

    move-result-object v0

    iput-boolean v3, v0, Lcom/cropimage/f;->c:Z

    iget-object v0, p0, Lcom/bbm/ui/c/n;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->n(Lcom/bbm/ui/c/l;)Lcom/cropimage/f;

    move-result-object v0

    iput-boolean v5, v0, Lcom/cropimage/f;->d:Z

    iget-object v0, p0, Lcom/bbm/ui/c/n;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->n(Lcom/bbm/ui/c/l;)Lcom/cropimage/f;

    move-result-object v0

    iput-boolean v5, v0, Lcom/cropimage/f;->a:Z

    iget-object v0, p0, Lcom/bbm/ui/c/n;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->n(Lcom/bbm/ui/c/l;)Lcom/cropimage/f;

    move-result-object v0

    iput-boolean v3, v0, Lcom/cropimage/f;->e:Z

    iget-object v0, p0, Lcom/bbm/ui/c/n;->a:Lcom/bbm/ui/c/l;

    invoke-static {v0}, Lcom/bbm/ui/c/l;->n(Lcom/bbm/ui/c/l;)Lcom/cropimage/f;

    move-result-object v0

    const v1, 0x32000

    iput v1, v0, Lcom/cropimage/f;->f:I

    iget-object v0, p0, Lcom/bbm/ui/c/n;->a:Lcom/bbm/ui/c/l;

    iget-object v1, p0, Lcom/bbm/ui/c/n;->a:Lcom/bbm/ui/c/l;

    invoke-static {v1}, Lcom/bbm/ui/c/l;->n(Lcom/bbm/ui/c/l;)Lcom/cropimage/f;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/c/n;->a:Lcom/bbm/ui/c/l;

    invoke-static {v2}, Lcom/bbm/ui/c/l;->h(Lcom/bbm/ui/c/l;)Lcom/bbm/ui/activities/cn;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/cropimage/f;->a(Landroid/content/Context;)Landroid/content/Intent;

    move-result-object v1

    const/4 v2, 0x2

    invoke-virtual {v0, v1, v2}, Lcom/bbm/ui/c/l;->startActivityForResult(Landroid/content/Intent;I)V

    goto :goto_2c
.end method
