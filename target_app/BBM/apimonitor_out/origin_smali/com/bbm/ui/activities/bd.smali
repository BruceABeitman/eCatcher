.class final Lcom/bbm/ui/activities/bd;
.super Lcom/bbm/j/k;
.source "CaptureBarcodeActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)V
    .registers 3

    iput-object p1, p0, Lcom/bbm/ui/activities/bd;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/bbm/j/k;-><init>(B)V

    return-void
.end method


# virtual methods
.method protected final a()V
    .registers 6

    iget-object v0, p0, Lcom/bbm/ui/activities/bd;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->d(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Z

    move-result v0

    if-eqz v0, :cond_5d

    iget-object v0, p0, Lcom/bbm/ui/activities/bd;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->e(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)V

    :cond_d
    :goto_d
    iget-object v0, p0, Lcom/bbm/ui/activities/bd;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->j:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6b

    iget-object v0, p0, Lcom/bbm/ui/activities/bd;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->c(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/util/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/bbm/ui/activities/bd;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->h(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/util/cr;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_5c

    iget-object v2, p0, Lcom/bbm/ui/activities/bd;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v2}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->i(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/util/cr;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    const-string v4, "bbm:"

    invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    :cond_5c
    :goto_5c
    return-void

    :cond_5d
    iget-object v0, p0, Lcom/bbm/ui/activities/bd;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->f(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/bbm/ui/activities/bd;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->g(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)V

    goto :goto_d

    :cond_6b
    iget-object v1, p0, Lcom/bbm/ui/activities/bd;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->i(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/util/cr;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "www.pin.bbm.com/"

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V

    goto :goto_5c
.end method
