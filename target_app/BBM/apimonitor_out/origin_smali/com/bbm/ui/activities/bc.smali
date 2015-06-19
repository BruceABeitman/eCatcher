.class final Lcom/bbm/ui/activities/bc;
.super Lcom/bbm/j/u;
.source "CaptureBarcodeActivity.java"


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/bc;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V

    return-void
.end method


# virtual methods
.method protected final b()Z
    .registers 5

    iget-object v0, p0, Lcom/bbm/ui/activities/bc;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_24

    iget-object v0, p0, Lcom/bbm/ui/activities/bc;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/bc;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/ec;->R:Lcom/bbm/util/bh;

    sget-object v1, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;

    if-ne v0, v1, :cond_24

    const/4 v0, 0x0

    :goto_23
    return v0

    :cond_24
    iget-object v1, p0, Lcom/bbm/ui/activities/bc;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    iget-object v0, p0, Lcom/bbm/ui/activities/bc;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->j:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_5f

    const-string v2, "bbmChannelPin"

    iget-object v0, p0, Lcom/bbm/ui/activities/bc;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    iget-object v0, v0, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->j:Lcom/bbm/j/a;

    invoke-virtual {v0}, Lcom/bbm/j/a;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    :goto_4c
    invoke-static {v1, v0}, Lcom/bbm/util/fb;->a(Landroid/content/Context;Landroid/content/ClipData;)V

    iget-object v0, p0, Lcom/bbm/ui/activities/bc;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    iget-object v1, p0, Lcom/bbm/ui/activities/bc;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    const v2, 0x7f0e05d8

    invoke-virtual {v1, v2}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/bbm/util/fb;->b(Landroid/content/Context;Ljava/lang/String;)V

    const/4 v0, 0x1

    goto :goto_23

    :cond_5f
    const-string v2, "bbmUserPin"

    iget-object v0, p0, Lcom/bbm/ui/activities/bc;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->c(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/util/cr;

    move-result-object v0

    invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    sget-object v3, Ljava/util/Locale;->US:Ljava/util/Locale;

    invoke-virtual {v0, v3}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v2, v0}, Landroid/content/ClipData;->newPlainText(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Landroid/content/ClipData;

    move-result-object v0

    goto :goto_4c
.end method
