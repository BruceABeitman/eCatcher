.class final Lcom/spotify/mobile/android/ui/fragments/x$9;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Landroid/webkit/JsResult;
.field final synthetic b:Lcom/spotify/mobile/android/ui/fragments/x;
.method constructor <init>(Lcom/spotify/mobile/android/ui/fragments/x;Landroid/webkit/JsResult;)V
.registers 3
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/x$9;->b:Lcom/spotify/mobile/android/ui/fragments/x;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/fragments/x$9;->a:Landroid/webkit/JsResult;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/content/DialogInterface;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/fragments/x$9; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$9;->a:Landroid/webkit/JsResult;
invoke-virtual {v0}, Landroid/webkit/JsResult;->confirm()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/x$9;->b:Lcom/spotify/mobile/android/ui/fragments/x;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/x;->j(Lcom/spotify/mobile/android/ui/fragments/x;)Landroid/app/AlertDialog;
const-string v1, " - Lcom/spotify/mobile/android/ui/fragments/x$9; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method