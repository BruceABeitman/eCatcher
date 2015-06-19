.class final Lcom/bbm/ui/activities/bb;
.super Lcom/bbm/j/a;
.source "CaptureBarcodeActivity.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/bbm/j/a",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;


# direct methods
.method constructor <init>(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)V
    .registers 2

    iput-object p1, p0, Lcom/bbm/ui/activities/bb;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-direct {p0}, Lcom/bbm/j/a;-><init>()V

    return-void
.end method


# virtual methods
.method protected final synthetic a()Ljava/lang/Object;
    .registers 3

    iget-object v0, p0, Lcom/bbm/ui/activities/bb;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_f

    const-string v0, ""

    :goto_e
    return-object v0

    :cond_f
    iget-object v0, p0, Lcom/bbm/ui/activities/bb;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->b(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/d/a;

    move-result-object v0

    iget-object v1, p0, Lcom/bbm/ui/activities/bb;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;

    invoke-static {v1}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->a(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;

    move-result-object v0

    iget-object v0, v0, Lcom/bbm/d/ec;->I:Ljava/lang/String;

    goto :goto_e
.end method
