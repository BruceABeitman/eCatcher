.class final Lcom/bbm/ui/gc;
.super Ljava/lang/Object;
.source "StickerPicker.java"
.implements Landroid/widget/AdapterView$OnItemClickListener;
.field final synthetic a:Lcom/bbm/ui/StickerPicker;
.method constructor <init>(Lcom/bbm/ui/StickerPicker;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/gc;->a:Lcom/bbm/ui/StickerPicker;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 8
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/bbm/ui/gc; onItemClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/gc;->a:Lcom/bbm/ui/StickerPicker;
invoke-static {v0}, Lcom/bbm/ui/StickerPicker;->a(Lcom/bbm/ui/StickerPicker;)Lcom/bbm/ui/gi;
move-result-object v0
if-eqz v0, :cond_24
const-string v0, "Sticker Clicked"
const-class v1, Lcom/bbm/ui/StickerPicker;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/gc;->a:Lcom/bbm/ui/StickerPicker;
invoke-static {v0}, Lcom/bbm/ui/StickerPicker;->a(Lcom/bbm/ui/StickerPicker;)Lcom/bbm/ui/gi;
move-result-object v1
iget-object v0, p0, Lcom/bbm/ui/gc;->a:Lcom/bbm/ui/StickerPicker;
invoke-static {v0}, Lcom/bbm/ui/StickerPicker;->b(Lcom/bbm/ui/StickerPicker;)Lcom/bbm/ui/gh;
move-result-object v0
invoke-virtual {v0, p3}, Lcom/bbm/ui/gh;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/gf;
invoke-interface {v1, v0, p3}, Lcom/bbm/ui/gi;->a(Lcom/bbm/d/gf;I)V
:cond_24
const-string v1, " - Lcom/bbm/ui/gc; onItemClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method