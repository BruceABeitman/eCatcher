.class final Lcom/bbm/ui/c/da;
.super Ljava/lang/Object;
.source "GroupUpdatesFragment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/cz;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/cz;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/c/da;->a:Lcom/bbm/ui/c/cz;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .registers 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    iget-object v0, p0, Lcom/bbm/ui/c/da;->a:Lcom/bbm/ui/c/cz;

    invoke-static {v0}, Lcom/bbm/ui/c/cz;->a(Lcom/bbm/ui/c/cz;)Lcom/bbm/ui/ct;

    move-result-object v0

    invoke-virtual {v0, p3}, Lcom/bbm/ui/ct;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/bbm/g/ak;

    iget-object v1, v0, Lcom/bbm/g/ak;->m:Lcom/bbm/g/al;

    invoke-static {}, Lcom/bbm/ui/c/cz;->a()Lcom/bbm/ui/e/ah;

    invoke-static {v1}, Lcom/bbm/ui/e/ah;->a(Lcom/bbm/g/al;)Z

    move-result v2

    if-eqz v2, :cond_30

    const-string v1, "new user onClick"

    const-class v2, Lcom/bbm/ui/c/cz;

    invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/ui/c/cz;->a()Lcom/bbm/ui/e/ah;

    iget-object v1, p0, Lcom/bbm/ui/c/da;->a:Lcom/bbm/ui/c/cz;

    invoke-virtual {v1}, Lcom/bbm/ui/c/cz;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/c/da;->a:Lcom/bbm/ui/c/cz;

    invoke-static {v2}, Lcom/bbm/ui/c/cz;->b(Lcom/bbm/ui/c/cz;)Ljava/lang/String;

    invoke-static {v1, v0}, Lcom/bbm/ui/e/ah;->a(Landroid/app/Activity;Lcom/bbm/g/ak;)V

    :cond_2f
    :goto_2f
    return-void

    :cond_30
    invoke-static {}, Lcom/bbm/ui/c/cz;->b()Lcom/bbm/ui/e/ai;

    invoke-static {v1}, Lcom/bbm/ui/e/ai;->a(Lcom/bbm/g/al;)Z

    move-result v2

    if-eqz v2, :cond_53

    const-string v1, "group picture onClick"

    const-class v2, Lcom/bbm/ui/c/cz;

    invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/ui/c/cz;->b()Lcom/bbm/ui/e/ai;

    iget-object v1, p0, Lcom/bbm/ui/c/da;->a:Lcom/bbm/ui/c/cz;

    invoke-virtual {v1}, Lcom/bbm/ui/c/cz;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/c/da;->a:Lcom/bbm/ui/c/cz;

    invoke-static {v2}, Lcom/bbm/ui/c/cz;->b(Lcom/bbm/ui/c/cz;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/bbm/ui/e/ai;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/bbm/g/ak;)V

    goto :goto_2f

    :cond_53
    invoke-static {}, Lcom/bbm/ui/c/cz;->c()Lcom/bbm/ui/e/ag;

    invoke-static {v1}, Lcom/bbm/ui/e/ag;->a(Lcom/bbm/g/al;)Z

    move-result v2

    if-eqz v2, :cond_76

    const-string v1, "group list onClick"

    const-class v2, Lcom/bbm/ui/c/cz;

    invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/ui/c/cz;->c()Lcom/bbm/ui/e/ag;

    iget-object v1, p0, Lcom/bbm/ui/c/da;->a:Lcom/bbm/ui/c/cz;

    invoke-virtual {v1}, Lcom/bbm/ui/c/cz;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/c/da;->a:Lcom/bbm/ui/c/cz;

    invoke-static {v2}, Lcom/bbm/ui/c/cz;->b(Lcom/bbm/ui/c/cz;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/bbm/ui/e/ag;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/bbm/g/ak;)V

    goto :goto_2f

    :cond_76
    invoke-static {}, Lcom/bbm/ui/c/cz;->d()Lcom/bbm/ui/e/af;

    invoke-static {v1}, Lcom/bbm/ui/e/af;->a(Lcom/bbm/g/al;)Z

    move-result v2

    if-eqz v2, :cond_99

    const-string v1, "group list comment onClick"

    const-class v2, Lcom/bbm/ui/c/cz;

    invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/ui/c/cz;->d()Lcom/bbm/ui/e/af;

    iget-object v1, p0, Lcom/bbm/ui/c/da;->a:Lcom/bbm/ui/c/cz;

    invoke-virtual {v1}, Lcom/bbm/ui/c/cz;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/c/da;->a:Lcom/bbm/ui/c/cz;

    invoke-static {v2}, Lcom/bbm/ui/c/cz;->b(Lcom/bbm/ui/c/cz;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/bbm/ui/e/af;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/bbm/g/ak;)V

    goto :goto_2f

    :cond_99
    invoke-static {}, Lcom/bbm/ui/c/cz;->e()Lcom/bbm/ui/e/ae;

    invoke-static {v1}, Lcom/bbm/ui/e/ae;->a(Lcom/bbm/g/al;)Z

    move-result v1

    if-eqz v1, :cond_2f

    const-string v1, "group calendar onClick"

    const-class v2, Lcom/bbm/ui/c/cz;

    invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V

    invoke-static {}, Lcom/bbm/ui/c/cz;->e()Lcom/bbm/ui/e/ae;

    iget-object v1, p0, Lcom/bbm/ui/c/da;->a:Lcom/bbm/ui/c/cz;

    invoke-virtual {v1}, Lcom/bbm/ui/c/cz;->getActivity()Landroid/app/Activity;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/c/da;->a:Lcom/bbm/ui/c/cz;

    invoke-static {v2}, Lcom/bbm/ui/c/cz;->b(Lcom/bbm/ui/c/cz;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Lcom/bbm/ui/e/ae;->a(Landroid/app/Activity;Ljava/lang/String;Lcom/bbm/g/ak;)V

    goto/16 :goto_2f
.end method
