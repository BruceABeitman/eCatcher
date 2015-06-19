.class final Lcom/bbm/ui/ge;
.super Ljava/lang/Object;
.source "StickerPicker.java"
.implements Landroid/widget/AdapterView$OnItemLongClickListener;
.field final synthetic a:Lcom/bbm/ui/gj;
.field final synthetic b:Lcom/bbm/ui/StickerPicker;
.method constructor <init>(Lcom/bbm/ui/StickerPicker;Lcom/bbm/ui/gj;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/ge;->b:Lcom/bbm/ui/StickerPicker;
iput-object p2, p0, Lcom/bbm/ui/ge;->a:Lcom/bbm/ui/gj;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
.registers 9
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/ge; onItemLongClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/ge;->b:Lcom/bbm/ui/StickerPicker;
invoke-static {v0}, Lcom/bbm/ui/StickerPicker;->b(Lcom/bbm/ui/StickerPicker;)Lcom/bbm/ui/gh;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/bbm/ui/gh;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/gf;
iget-object v1, p0, Lcom/bbm/ui/ge;->a:Lcom/bbm/ui/gj;
invoke-interface {v1, v0}, Lcom/bbm/ui/gj;->a(Lcom/bbm/d/gf;)V
iget-object v0, p0, Lcom/bbm/ui/ge;->b:Lcom/bbm/ui/StickerPicker;
invoke-static {v0}, Lcom/bbm/ui/StickerPicker;->e(Lcom/bbm/ui/StickerPicker;)Landroid/widget/GridView;
move-result-object v0
new-instance v1, Lcom/bbm/ui/gf;
invoke-direct {v1, p0}, Lcom/bbm/ui/gf;-><init>(Lcom/bbm/ui/ge;)V
invoke-virtual {v0, v1}, Landroid/widget/GridView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const/4 v0, 0x1
move v2, v0
const-string v1, " - Lcom/bbm/ui/ge; onItemLongClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move v0, v2
return v0
.end method