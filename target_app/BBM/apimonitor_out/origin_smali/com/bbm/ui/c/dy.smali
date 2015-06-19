.class final Lcom/bbm/ui/c/dy;
.super Ljava/lang/Object;
.source "MyChannelsFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/du;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/du;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/dy;->a:Lcom/bbm/ui/c/du;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .registers 4

    const-string v0, "createButton Clicked"

    const-class v1, Lcom/bbm/ui/c/du;

    invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/util/ac;->b()Z

    move-result v0

    if-eqz v0, :cond_23

    new-instance v0, Lcom/bbm/ui/b/a;

    iget-object v1, p0, Lcom/bbm/ui/c/dy;->a:Lcom/bbm/ui/c/du;

    invoke-virtual {v1}, Lcom/bbm/ui/c/du;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/bbm/ui/b/a;-><init>(Landroid/app/Activity;)V

    new-instance v1, Lcom/bbm/ui/c/dz;

    invoke-direct {v1, p0, v0}, Lcom/bbm/ui/c/dz;-><init>(Lcom/bbm/ui/c/dy;Lcom/bbm/ui/b/a;)V

    iput-object v1, v0, Lcom/bbm/ui/b/a;->a:Lcom/bbm/ui/b/f;

    invoke-virtual {v0}, Lcom/bbm/ui/b/a;->show()V

    :goto_22
    return-void

    :cond_23
    iget-object v0, p0, Lcom/bbm/ui/c/dy;->a:Lcom/bbm/ui/c/du;

    invoke-static {v0}, Lcom/bbm/ui/c/du;->h(Lcom/bbm/ui/c/du;)V

    goto :goto_22
.end method
