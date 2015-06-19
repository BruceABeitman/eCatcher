.class final Lcom/spotify/mobile/android/ui/stuff/h$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnLongClickListener;
.field final synthetic a:Landroid/content/Context;
.field final synthetic b:Lcom/spotify/mobile/android/ui/contextmenu/f;
.field final synthetic c:Ljava/lang/Object;
.method constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/ui/stuff/h$2;->a:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/stuff/h$2;->b:Lcom/spotify/mobile/android/ui/contextmenu/f;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/stuff/h$2;->c:Ljava/lang/Object;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onLongClick(Landroid/view/View;)Z
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/stuff/h$2; onLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/stuff/h$2;->a:Landroid/content/Context;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/stuff/h$2;->b:Lcom/spotify/mobile/android/ui/contextmenu/f;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/stuff/h$2;->c:Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/spotify/mobile/android/ui/stuff/h$2; onLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method