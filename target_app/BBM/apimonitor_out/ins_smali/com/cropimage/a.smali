.class final Lcom/cropimage/a;
.super Ljava/lang/Object;
.source "CropImage.java"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Lcom/cropimage/CropImage;
.method constructor <init>(Lcom/cropimage/CropImage;)V
.registers 2
iput-object p1, p0, Lcom/cropimage/a;->a:Lcom/cropimage/CropImage;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 4
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/cropimage/a; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v0, "Cancel tapped"
const-class v1, Lcom/cropimage/CropImage;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/cropimage/a;->a:Lcom/cropimage/CropImage;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/cropimage/CropImage;->setResult(I)V
iget-object v0, p0, Lcom/cropimage/a;->a:Lcom/cropimage/CropImage;
invoke-virtual {v0}, Lcom/cropimage/CropImage;->finish()V
const-string v1, " - Lcom/cropimage/a; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method