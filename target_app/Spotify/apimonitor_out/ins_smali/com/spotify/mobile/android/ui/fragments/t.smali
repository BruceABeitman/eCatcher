.class final Lcom/spotify/mobile/android/ui/fragments/t;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/view/View$OnCreateContextMenuListener;
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.field final synthetic a:Lcom/spotify/mobile/android/ui/fragments/s;
.method private constructor <init>(Lcom/spotify/mobile/android/ui/fragments/s;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/t;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/spotify/mobile/android/ui/fragments/s;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/t;-><init>(Lcom/spotify/mobile/android/ui/fragments/s;)V
return-void
.end method
.method public final onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/fragments/t; onCreateContextMenu "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
if-nez p3, :cond_3
:goto_2
const-string v1, " - Lcom/spotify/mobile/android/ui/fragments/t; onCreateContextMenu"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_3
check-cast p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;
iget-object v0, p3, Landroid/widget/AdapterView$AdapterContextMenuInfo;->targetView:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/model/k;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/t;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/s;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/t$1;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/t$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/t;)V
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/contextmenu/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;Ljava/lang/Object;)V
goto :goto_2
.end method
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/ui/fragments/t; onItemLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/t;->a:Lcom/spotify/mobile/android/ui/fragments/s;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/fragments/s;->i(Lcom/spotify/mobile/android/ui/fragments/s;)Lcom/spotify/mobile/android/ui/fragments/u;
move-result-object v0
invoke-virtual {v0, p2, p3, p4, p5}, Lcom/spotify/mobile/android/ui/fragments/u;->a(Landroid/view/View;IJ)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/spotify/mobile/android/ui/fragments/t; onItemLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method