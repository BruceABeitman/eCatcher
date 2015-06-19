.class final Lcom/spotify/mobile/android/ui/page/a$2;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/page/a;
.method constructor <init>(Lcom/spotify/mobile/android/ui/page/a;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/page/a$2;->a:Lcom/spotify/mobile/android/ui/page/a;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/page/a$2; onItemLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/page/a$2;->a:Lcom/spotify/mobile/android/ui/page/a;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/page/a$2;->a:Lcom/spotify/mobile/android/ui/page/a;
invoke-static {v1}, Lcom/spotify/mobile/android/ui/page/a;->a(Lcom/spotify/mobile/android/ui/page/a;)Landroid/widget/ListView;
invoke-virtual {v0, p2}, Lcom/spotify/mobile/android/ui/page/a;->a(Landroid/view/View;)Z
move-result v0
move v2, v0
const-string v1, " - Lcom/spotify/mobile/android/ui/page/a$2; onItemLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method