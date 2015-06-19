.class final Lcom/bbm/ui/c/er;
.super Lcom/bbm/j/k;
.source "OwnProfileDetailsFragment.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/c/ej;


# direct methods
.method constructor <init>(Lcom/bbm/ui/c/ej;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/c/er;->a:Lcom/bbm/ui/c/ej;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/c/er;->a:Lcom/bbm/ui/c/ej;

    iget-object v1, p0, Lcom/bbm/ui/c/er;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v1}, Lcom/bbm/ui/c/ej;->g(Lcom/bbm/ui/c/ej;)Lcom/bbm/d/a;

    move-result-object v1

    invoke-virtual {v1}, Lcom/bbm/d/a;->i()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/ui/c/ej;->a(Lcom/bbm/ui/c/ej;Ljava/lang/String;)Ljava/lang/String;

    iget-object v0, p0, Lcom/bbm/ui/c/er;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v0}, Lcom/bbm/ui/c/ej;->n(Lcom/bbm/ui/c/ej;)Landroid/widget/TextView;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    const-string v2, "PIN:"

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v2, p0, Lcom/bbm/ui/c/er;->a:Lcom/bbm/ui/c/ej;

    invoke-static {v2}, Lcom/bbm/ui/c/ej;->m(Lcom/bbm/ui/c/ej;)Ljava/lang/String;

    move-result-object v2

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v2, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method
