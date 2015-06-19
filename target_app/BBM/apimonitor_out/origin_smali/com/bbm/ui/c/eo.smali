.class final Lcom/bbm/ui/c/eo;
.super Lcom/bbm/j/k;
.source "OwnProfileDetailsFragment.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/ej;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/ej;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/eo;->a:Lcom/bbm/ui/c/ej;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/c/eo;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->d(Lcom/bbm/ui/c/ej;)Landroid/widget/EditText;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/eo;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v1}, Lcom/bbm/ui/c/ej;->e(Lcom/bbm/ui/c/ej;)Lcom/bbm/d/gp;

    move-result-object v1

    iget-object v1, v1, Lcom/bbm/d/gp;->o:Ljava/lang/String;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    iget-object v0, p0, Lcom/bbm/ui/c/eo;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->e(Lcom/bbm/ui/c/ej;)Lcom/bbm/d/gp;

    move-result-object v0

    iget-boolean v0, v0, Lcom/bbm/d/gp;->x:Z

    if-eqz v0, :cond_39

    iget-object v0, p0, Lcom/bbm/ui/c/eo;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->f(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/LocationTimezoneContainer;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/bbm/ui/LocationTimezoneContainer;->setVisibility(I)V

    iget-object v0, p0, Lcom/bbm/ui/c/eo;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->f(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/LocationTimezoneContainer;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/c/eo;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v1}, Lcom/bbm/ui/c/ej;->e(Lcom/bbm/ui/c/ej;)Lcom/bbm/d/gp;

    move-result-object v1

    invoke-static {v1}, Lcom/bbm/d/b/a;->c(Lcom/bbm/d/gp;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/ui/LocationTimezoneContainer;->setLocation(Ljava/lang/String;)V

    :goto_38
    return-void

    :cond_39
    iget-object v0, p0, Lcom/bbm/ui/c/eo;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->f(Lcom/bbm/ui/c/ej;)Lcom/bbm/ui/LocationTimezoneContainer;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/bbm/ui/LocationTimezoneContainer;->setVisibility(I)V

    goto :goto_38
.end method
