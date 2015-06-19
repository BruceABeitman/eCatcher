.class final Lcom/bbm/ui/aj;
.super Lcom/bbm/j/u;
.source "ChatHeaderView.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/ae;


# direct methods
.method constructor <init>(Lcom/bbm/ui/ae;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/aj;->a:Lcom/bbm/ui/ae;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/aj;->a:Lcom/bbm/ui/ae;

    invoke-static {v0}, Lcom/bbm/ui/ae;->b(Lcom/bbm/ui/ae;)Lcom/bbm/j/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_14

    const/4 v0, 0x0

    :goto_13
    return v0

    :cond_14
    invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/aj;->a:Lcom/bbm/ui/ae;

    invoke-static {v2}, Lcom/bbm/ui/ae;->d(Lcom/bbm/ui/ae;)Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bbm/n/b;->a(Lcom/bbm/d/gp;)Z

    move-result v2

    iget-object v3, p0, Lcom/bbm/ui/aj;->a:Lcom/bbm/ui/ae;

    invoke-static {v3}, Lcom/bbm/ui/ae;->d(Lcom/bbm/ui/ae;)Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;

    move-result-object v3

    invoke-virtual {v3, v1}, Lcom/bbm/n/b;->b(Lcom/bbm/d/gp;)Z

    move-result v1

    iget-object v3, p0, Lcom/bbm/ui/aj;->a:Lcom/bbm/ui/ae;

    invoke-static {v3}, Lcom/bbm/ui/ae;->i(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;

    move-result-object v3

    invoke-virtual {v3}, Lcom/google/b/a/l;->a()Z

    move-result v3

    if-eqz v3, :cond_59

    if-nez v2, :cond_48

    if-eqz v1, :cond_59

    :cond_48
    iget-object v0, p0, Lcom/bbm/ui/aj;->a:Lcom/bbm/ui/ae;

    invoke-static {v0}, Lcom/bbm/ui/ae;->i(Lcom/bbm/ui/ae;)Lcom/google/b/a/l;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageButton;

    invoke-virtual {v0}, Landroid/widget/ImageButton;->performClick()Z

    :goto_57
    const/4 v0, 0x1

    goto :goto_13

    :cond_59
    iget-object v1, p0, Lcom/bbm/ui/aj;->a:Lcom/bbm/ui/ae;

    invoke-virtual {v1, v0}, Lcom/bbm/ui/ae;->a(Ljava/lang/String;)V

    goto :goto_57
.end method
