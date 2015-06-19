.class final Lcom/bbm/ui/aa;
.super Lcom/bbm/ui/w;
.source "ChannelHeaderView.java"


# instance fields
.field final synthetic l:Landroid/app/Activity;

.field final synthetic m:Lcom/bbm/ui/z;


# direct methods
.method constructor <init>(Lcom/bbm/ui/z;Landroid/app/Activity;Landroid/app/ActionBar;Ljava/lang/String;Landroid/app/Activity;)V
    .registers 6

    iput-object p1, p0, Lcom/bbm/ui/aa;->m:Lcom/bbm/ui/z;

    iput-object p5, p0, Lcom/bbm/ui/aa;->l:Landroid/app/Activity;

    invoke-direct {p0, p2, p3, p4}, Lcom/bbm/ui/w;-><init>(Landroid/app/Activity;Landroid/app/ActionBar;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public final a(Lcom/bbm/d/ec;)V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/aa;->m:Lcom/bbm/ui/z;

    invoke-static {v0}, Lcom/bbm/ui/z;->b(Lcom/bbm/ui/z;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/aa;->m:Lcom/bbm/ui/z;

    invoke-static {v1}, Lcom/bbm/ui/z;->a(Lcom/bbm/ui/z;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->K(Ljava/lang/String;)Lcom/bbm/d/es;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_44

    iget-boolean v1, v0, Lcom/bbm/d/es;->j:Z

    if-eqz v1, :cond_5c

    iget-object v1, v0, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_45

    iget-object v0, v0, Lcom/bbm/d/es;->r:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/aa;->m:Lcom/bbm/ui/z;

    invoke-static {v1}, Lcom/bbm/ui/z;->b(Lcom/bbm/ui/z;)Lcom/bbm/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/aa;->m:Lcom/bbm/ui/z;

    invoke-static {v1}, Lcom/bbm/ui/z;->b(Lcom/bbm/ui/z;)Lcom/bbm/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;

    move-result-object v0

    :goto_3f
    iget-object v1, p0, Lcom/bbm/ui/w;->c:Lcom/bbm/ui/ObservingImageView;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V

    :cond_44
    :goto_44
    return-void

    :cond_45
    new-instance v0, Lcom/bbm/util/cr;

    new-instance v1, Lcom/bbm/d/fd;

    iget-object v2, p0, Lcom/bbm/ui/aa;->m:Lcom/bbm/ui/z;

    invoke-static {v2}, Lcom/bbm/ui/z;->b(Lcom/bbm/ui/z;)Lcom/bbm/d/a;

    move-result-object v2

    iget-object v2, v2, Lcom/bbm/d/a;->a:Lcom/bbm/d/a/d/c;

    invoke-virtual {v2}, Lcom/bbm/d/a/d/c;->d()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/bbm/d/fd;-><init>(Landroid/graphics/drawable/Drawable;)V

    invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V

    goto :goto_3f

    :cond_5c
    invoke-super {p0, p1}, Lcom/bbm/ui/w;->a(Lcom/bbm/d/ec;)V

    goto :goto_44
.end method

.method public final a(Ljava/lang/String;Lcom/bbm/d/ec;)V
    .registers 9

    const v5, 0x7f0e02a5

    iget-object v0, p0, Lcom/bbm/ui/aa;->m:Lcom/bbm/ui/z;

    invoke-static {v0}, Lcom/bbm/ui/z;->b(Lcom/bbm/ui/z;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/aa;->m:Lcom/bbm/ui/z;

    invoke-static {v1}, Lcom/bbm/ui/z;->a(Lcom/bbm/ui/z;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->K(Ljava/lang/String;)Lcom/bbm/d/es;

    move-result-object v1

    iget-object v0, v1, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v2, :cond_57

    iget-boolean v0, v1, Lcom/bbm/d/es;->j:Z

    if-nez v0, :cond_58

    iget-object v0, p0, Lcom/bbm/ui/aa;->m:Lcom/bbm/ui/z;

    invoke-static {v0}, Lcom/bbm/ui/z;->b(Lcom/bbm/ui/z;)Lcom/bbm/d/a;

    move-result-object v0

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p2, Lcom/bbm/d/ec;->G:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "|"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/bbm/ui/aa;->m:Lcom/bbm/ui/z;

    invoke-static {v3}, Lcom/bbm/ui/z;->a(Lcom/bbm/ui/z;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/bbm/d/a;->n(Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v0

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v2, :cond_58

    iget-object v0, p0, Lcom/bbm/ui/aa;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    :cond_54
    :goto_54
    invoke-super {p0, p1, p2}, Lcom/bbm/ui/w;->a(Ljava/lang/String;Lcom/bbm/d/ec;)V

    :cond_57
    return-void

    :cond_58
    iget-object v0, v1, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_9f

    iget-object v0, p0, Lcom/bbm/ui/aa;->m:Lcom/bbm/ui/z;

    invoke-static {v0}, Lcom/bbm/ui/z;->b(Lcom/bbm/ui/z;)Lcom/bbm/d/a;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v0, v1, Lcom/bbm/d/es;->r:Ljava/util/List;

    const/4 v4, 0x0

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v3, "|"

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v3, p0, Lcom/bbm/ui/aa;->m:Lcom/bbm/ui/z;

    invoke-static {v3}, Lcom/bbm/ui/z;->a(Lcom/bbm/ui/z;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bbm/d/a;->n(Ljava/lang/String;)Lcom/bbm/util/bh;

    move-result-object v0

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v0, v2, :cond_9f

    iget-object v0, p0, Lcom/bbm/ui/aa;->l:Landroid/app/Activity;

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object p1

    goto :goto_54

    :cond_9f
    iget-boolean v0, v1, Lcom/bbm/d/es;->j:Z

    if-eqz v0, :cond_54

    iget-object p1, p2, Lcom/bbm/d/ec;->k:Ljava/lang/String;

    goto :goto_54
.end method

.method public final b(Ljava/lang/String;Lcom/bbm/d/ec;)V
    .registers 8

    iget-object v0, p0, Lcom/bbm/ui/aa;->m:Lcom/bbm/ui/z;

    invoke-static {v0}, Lcom/bbm/ui/z;->b(Lcom/bbm/ui/z;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/aa;->m:Lcom/bbm/ui/z;

    invoke-static {v1}, Lcom/bbm/ui/z;->a(Lcom/bbm/ui/z;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->K(Ljava/lang/String;)Lcom/bbm/d/es;

    move-result-object v0

    iget-object v1, v0, Lcom/bbm/d/es;->u:Lcom/bbm/util/bh;

    sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;

    if-ne v1, v2, :cond_3f

    iget-boolean v1, v0, Lcom/bbm/d/es;->j:Z

    if-eqz v1, :cond_37

    iget-object v1, v0, Lcom/bbm/d/es;->r:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_40

    iget-object v0, v0, Lcom/bbm/d/es;->r:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iget-object v1, p0, Lcom/bbm/ui/aa;->m:Lcom/bbm/ui/z;

    invoke-static {v1}, Lcom/bbm/ui/z;->b(Lcom/bbm/ui/z;)Lcom/bbm/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    iget-object p1, v0, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    :cond_37
    :goto_37
    iget-object v0, p0, Lcom/bbm/ui/aa;->m:Lcom/bbm/ui/z;

    invoke-virtual {v0, p1}, Lcom/bbm/ui/z;->a(Ljava/lang/String;)V

    invoke-super {p0, p1, p2}, Lcom/bbm/ui/w;->b(Ljava/lang/String;Lcom/bbm/d/ec;)V

    :cond_3f
    return-void

    :cond_40
    iget-object v1, p0, Lcom/bbm/ui/aa;->m:Lcom/bbm/ui/z;

    invoke-static {v1}, Lcom/bbm/ui/z;->b(Lcom/bbm/ui/z;)Lcom/bbm/d/a;

    move-result-object v1

    iget-object v2, v0, Lcom/bbm/d/es;->b:Ljava/lang/String;

    invoke-static {v2}, Lcom/bbm/d/a;->e(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iget-wide v3, v0, Lcom/bbm/d/es;->n:J

    invoke-virtual {v1, v2, v3, v4}, Lcom/bbm/d/a;->a(Ljava/lang/String;J)Lcom/bbm/d/fg;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/aa;->m:Lcom/bbm/ui/z;

    invoke-static {v1}, Lcom/bbm/ui/z;->b(Lcom/bbm/ui/z;)Lcom/bbm/d/a;

    move-result-object v1

    iget-object v0, v0, Lcom/bbm/d/fg;->o:Ljava/lang/String;

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v0

    iget-object p1, v0, Lcom/bbm/d/gp;->d:Ljava/lang/String;

    goto :goto_37
.end method
