.class final Lcom/spotify/mobile/android/ui/stuff/h$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/spotify/mobile/android/ui/contextmenu/f;
.field final synthetic c:Ljava/lang/Object;
.method constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/ui/stuff/h$1;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/stuff/h$1;->b:Lcom/spotify/mobile/android/ui/contextmenu/f;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/stuff/h$1;->c:Ljava/lang/Object;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onClick(Landroid/view/View;)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/stuff/h$1; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/h$1;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/stuff/h$1;->b:Lcom/spotify/mobile/android/ui/contextmenu/f;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/stuff/h$1;->c:Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/stuff/h$1; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method