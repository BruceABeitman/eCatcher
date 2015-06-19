.class  Lcom/millennialmedia/android/cs$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/content/DialogInterface$OnClickListener;
.field final synthetic a:Landroid/webkit/GeolocationPermissions$Callback;
.field final synthetic b:Ljava/lang/String;
.field final synthetic c:Lcom/millennialmedia/android/cs;
.method constructor <init>(Lcom/millennialmedia/android/cs;Landroid/webkit/GeolocationPermissions$Callback;Ljava/lang/String;)V
.registers 4
iput-object p1, p0, Lcom/millennialmedia/android/cs$1;->c:Lcom/millennialmedia/android/cs;
iput-object p2, p0, Lcom/millennialmedia/android/cs$1;->a:Landroid/webkit/GeolocationPermissions$Callback;
iput-object p3, p0, Lcom/millennialmedia/android/cs$1;->b:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onClick(Landroid/content/DialogInterface;I)V
.registers 6
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/millennialmedia/android/cs$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v2, 0x0
iget-object v0, p0, Lcom/millennialmedia/android/cs$1;->c:Lcom/millennialmedia/android/cs;
invoke-static {v0, v2}, Lcom/millennialmedia/android/cs;->a(Lcom/millennialmedia/android/cs;Z)V
iget-object v0, p0, Lcom/millennialmedia/android/cs$1;->a:Landroid/webkit/GeolocationPermissions$Callback;
iget-object v1, p0, Lcom/millennialmedia/android/cs$1;->b:Ljava/lang/String;
invoke-interface {v0, v1, v2, v2}, Landroid/webkit/GeolocationPermissions$Callback;->invoke(Ljava/lang/String;ZZ)V
const-string v1, " - Lcom/millennialmedia/android/cs$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method