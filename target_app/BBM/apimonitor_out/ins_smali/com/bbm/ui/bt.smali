.class final Lcom/bbm/ui/bt;
.super Lcom/bbm/d/b/f;
.source "EmoticonStickerPager.java"
.field final synthetic a:Lcom/bbm/ui/EmoticonStickerPager;
.method constructor <init>(Lcom/bbm/ui/EmoticonStickerPager;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/bt;->a:Lcom/bbm/ui/EmoticonStickerPager;
invoke-direct {p0}, Lcom/bbm/d/b/f;-><init>()V
return-void
.end method
.method protected final a()Ljava/util/List;
.registers 5
invoke-static {}, Lcom/bbm/ui/EmoticonStickerPager;->a()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->A()Lcom/bbm/j/w;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/w;->b()Z
move-result v1
if-nez v1, :cond_5a
new-instance v1, Ljava/util/ArrayList;
invoke-interface {v0}, Lcom/bbm/j/w;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Collection;
invoke-direct {v1, v0}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
new-instance v0, Lcom/bbm/ui/bu;
invoke-direct {v0, p0}, Lcom/bbm/ui/bu;-><init>(Lcom/bbm/ui/bt;)V
invoke-static {v1, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V
iget-object v0, p0, Lcom/bbm/ui/bt;->a:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->i(Lcom/bbm/ui/EmoticonStickerPager;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
iget-object v0, p0, Lcom/bbm/ui/bt;->a:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->j(Lcom/bbm/ui/EmoticonStickerPager;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V
invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_37
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_5a
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/gj;
iget-object v2, p0, Lcom/bbm/ui/bt;->a:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v2}, Lcom/bbm/ui/EmoticonStickerPager;->i(Lcom/bbm/ui/EmoticonStickerPager;)Ljava/util/ArrayList;
move-result-object v2
iget-object v3, v0, Lcom/bbm/d/gj;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
iget-object v2, p0, Lcom/bbm/ui/bt;->a:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v2}, Lcom/bbm/ui/EmoticonStickerPager;->j(Lcom/bbm/ui/EmoticonStickerPager;)Ljava/util/ArrayList;
move-result-object v2
iget-object v0, v0, Lcom/bbm/d/gj;->b:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto :goto_37
:cond_5a
iget-object v0, p0, Lcom/bbm/ui/bt;->a:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->k(Lcom/bbm/ui/EmoticonStickerPager;)Lcom/bbm/ui/StickerPicker;
move-result-object v0
if-eqz v0, :cond_99
iget-object v0, p0, Lcom/bbm/ui/bt;->a:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->i(Lcom/bbm/ui/EmoticonStickerPager;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-lez v0, :cond_99
iget-object v0, p0, Lcom/bbm/ui/bt;->a:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->k(Lcom/bbm/ui/EmoticonStickerPager;)Lcom/bbm/ui/StickerPicker;
move-result-object v1
iget-object v0, p0, Lcom/bbm/ui/bt;->a:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->i(Lcom/bbm/ui/EmoticonStickerPager;)Ljava/util/ArrayList;
move-result-object v0
const/4 v2, 0x0
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/bbm/ui/StickerPicker;->setStickerPackId(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/bt;->a:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->k(Lcom/bbm/ui/EmoticonStickerPager;)Lcom/bbm/ui/StickerPicker;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/bt;->a:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v1}, Lcom/bbm/ui/EmoticonStickerPager;->l(Lcom/bbm/ui/EmoticonStickerPager;)Lcom/bbm/ui/gi;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/StickerPicker;->setStickerPickerListener(Lcom/bbm/ui/gi;)V
iget-object v0, p0, Lcom/bbm/ui/bt;->a:Lcom/bbm/ui/EmoticonStickerPager;
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/bbm/ui/EmoticonStickerPager;->a(Lcom/bbm/ui/EmoticonStickerPager;Lcom/bbm/ui/StickerPicker;)Lcom/bbm/ui/StickerPicker;
:cond_99
iget-object v0, p0, Lcom/bbm/ui/bt;->a:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->i(Lcom/bbm/ui/EmoticonStickerPager;)Ljava/util/ArrayList;
move-result-object v0
return-object v0
.end method