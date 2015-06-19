.class final Lcom/google/android/gms/internal/ei$6;
.super Ljava/lang/Object;
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Landroid/webkit/JsPromptResult;
.field final synthetic b:Landroid/widget/EditText;
.method constructor <init>(Landroid/webkit/JsPromptResult;Landroid/widget/EditText;)V
.registers 3
iput-object p1, p0, Lcom/google/android/gms/internal/ei$6;->a:Landroid/webkit/JsPromptResult;
iput-object p2, p0, Lcom/google/android/gms/internal/ei$6;->b:Landroid/widget/EditText;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/google/android/gms/internal/ei$6; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/google/android/gms/internal/ei$6;->a:Landroid/webkit/JsPromptResult;
iget-object v1, p0, Lcom/google/android/gms/internal/ei$6;->b:Landroid/widget/EditText;
invoke-virtual {v1}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/webkit/JsPromptResult;->confirm(Ljava/lang/String;)V
const-string v1, " - Lcom/google/android/gms/internal/ei$6; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method