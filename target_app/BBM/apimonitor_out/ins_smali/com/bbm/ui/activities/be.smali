.class final Lcom/bbm/ui/activities/be;
.super Lcom/bbm/ui/cj;
.source "CaptureBarcodeActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;
.method constructor <init>(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/be;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;
invoke-direct {p0}, Lcom/bbm/ui/cj;-><init>()V
return-void
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/be;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;
invoke-virtual {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->finish()V
return-void
.end method
.method public final a(I)V
.registers 3
packed-switch p1, :pswitch_data_14
:goto_3
return-void
:pswitch_4
iget-object v0, p0, Lcom/bbm/ui/activities/be;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/CaptureBarcodeActivity;->j(Lcom/bbm/ui/activities/CaptureBarcodeActivity;)Lcom/bbm/j/u;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/u;->c()V
goto :goto_3
:pswitch_e
iget-object v0, p0, Lcom/bbm/ui/activities/be;->a:Lcom/bbm/ui/activities/CaptureBarcodeActivity;
invoke-static {v0}, Lcom/bbm/util/dg;->a(Landroid/app/Activity;)V
goto :goto_3
:pswitch_data_14
.packed-switch 0x0
:pswitch_4
:pswitch_e
.end packed-switch
.end method