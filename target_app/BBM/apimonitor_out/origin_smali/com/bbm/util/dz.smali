.class final Lcom/bbm/util/dz;
.super Ljava/lang/Object;
.source "UpdatesFragmentUtil.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Ljava/util/Set;

.field final synthetic b:Lcom/bbm/util/ey;

.field final synthetic c:Landroid/content/Context;


# direct methods
.method constructor <init>(Ljava/util/Set;Lcom/bbm/util/ey;Landroid/content/Context;)V
    .registers 4

    iput-object p1, p0, Lcom/bbm/util/dz;->a:Ljava/util/Set;

    iput-object p2, p0, Lcom/bbm/util/dz;->b:Lcom/bbm/util/ey;

    iput-object p3, p0, Lcom/bbm/util/dz;->c:Landroid/content/Context;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 5

    const/4 v2, 0x1

    const-string v0, "updates Expanded View clicked"

    const-class v1, Lcom/bbm/util/dy;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    iget-object v0, p0, Lcom/bbm/util/dz;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/bbm/util/dz;->b:Lcom/bbm/util/ey;

    iget-object v1, v1, Lcom/bbm/util/ey;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_25

    iget-object v0, p0, Lcom/bbm/util/dz;->b:Lcom/bbm/util/ey;

    iget-object v1, p0, Lcom/bbm/util/dz;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/bbm/util/dy;->b(Lcom/bbm/util/ey;Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/bbm/util/dz;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/bbm/util/dz;->b:Lcom/bbm/util/ey;

    iget-object v1, v1, Lcom/bbm/util/ey;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    :goto_24
    return-void

    :cond_25
    iget-object v0, p0, Lcom/bbm/util/dz;->b:Lcom/bbm/util/ey;

    iget-object v1, p0, Lcom/bbm/util/dz;->c:Landroid/content/Context;

    invoke-static {v0, v1, v2}, Lcom/bbm/util/dy;->a(Lcom/bbm/util/ey;Landroid/content/Context;Z)V

    iget-object v0, p0, Lcom/bbm/util/dz;->a:Ljava/util/Set;

    iget-object v1, p0, Lcom/bbm/util/dz;->b:Lcom/bbm/util/ey;

    iget-object v1, v1, Lcom/bbm/util/ey;->o:Ljava/lang/String;

    invoke-interface {v0, v1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    goto :goto_24
.end method
