.class final Lcom/bbm/ui/c/hh;
.super Lcom/bbm/ui/gk;
.source "StoreFragment.java"
.field final synthetic f:Lcom/bbm/ui/c/gz;
.method public constructor <init>(Lcom/bbm/ui/c/gz;Landroid/content/Context;Lcom/bbm/j/r;)V
.registers 5
iput-object p1, p0, Lcom/bbm/ui/c/hh;->f:Lcom/bbm/ui/c/gz;
invoke-static {}, Lcom/bbm/util/bn;->a()Lcom/bbm/util/bn;
move-result-object v0
invoke-direct {p0, p2, p3, v0}, Lcom/bbm/ui/gk;-><init>(Landroid/content/Context;Lcom/bbm/j/r;Lcom/bbm/util/dc;)V
return-void
.end method
.method protected final a()Landroid/view/View;
.registers 3
new-instance v0, Lcom/bbm/ui/ListHeaderView;
iget-object v1, p0, Lcom/bbm/ui/c/hh;->f:Lcom/bbm/ui/c/gz;
invoke-static {v1}, Lcom/bbm/ui/c/gz;->k(Lcom/bbm/ui/c/gz;)Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/bbm/ui/ListHeaderView;-><init>(Landroid/content/Context;)V
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/bbm/ui/ListHeaderView;->setRightLabelViewVisibility(I)V
return-object v0
.end method
.method protected final a(Landroid/view/ViewGroup;I)Landroid/view/View;
.registers 5
new-instance v0, Lcom/bbm/ui/StoreItemView;
iget-object v1, p0, Lcom/bbm/ui/c/hh;->f:Lcom/bbm/ui/c/gz;
invoke-static {v1}, Lcom/bbm/ui/c/gz;->k(Lcom/bbm/ui/c/gz;)Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/bbm/ui/StoreItemView;-><init>(Landroid/content/Context;)V
iget-object v1, p0, Lcom/bbm/ui/c/hh;->f:Lcom/bbm/ui/c/gz;
invoke-static {v1}, Lcom/bbm/ui/c/gz;->l(Lcom/bbm/ui/c/gz;)Lcom/bbm/util/b/d;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/StoreItemView;->setImageCache(Lcom/bbm/util/b/d;)V
iget-object v1, p0, Lcom/bbm/ui/c/hh;->f:Lcom/bbm/ui/c/gz;
invoke-static {v1}, Lcom/bbm/ui/c/gz;->m(Lcom/bbm/ui/c/gz;)Lcom/bbm/util/bo;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/StoreItemView;->setHttpLoader(Lcom/bbm/util/bo;)V
return-object v0
.end method
.method protected final synthetic a(Ljava/lang/Object;)Ljava/lang/Object;
.registers 5
const/4 v0, 0x0
check-cast p1, Lcom/bbm/ui/c/hf;
sget-object v1, Lcom/bbm/ui/c/he;->b:[I
iget-object v2, p1, Lcom/bbm/ui/c/hf;->a:Lcom/bbm/ui/c/hg;
invoke-virtual {v2}, Lcom/bbm/ui/c/hg;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_36
:goto_10
:pswitch_10
return-object v0
:pswitch_11
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
iget-object v1, p1, Lcom/bbm/ui/c/hf;->a:Lcom/bbm/ui/c/hg;
invoke-virtual {v1}, Lcom/bbm/ui/c/hg;->name()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, "_"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v0, p1, Lcom/bbm/ui/c/hf;->b:Ljava/lang/Object;
check-cast v0, Lcom/bbm/l/b/j;
iget-object v0, v0, Lcom/bbm/l/b/l;->a:Ljava/lang/String;
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_10
nop
:pswitch_data_36
.packed-switch 0x1
:pswitch_10
:pswitch_11
:pswitch_10
.end packed-switch
.end method
.method protected final synthetic a(Landroid/view/View;Ljava/lang/Object;)V
.registers 5
check-cast p2, Lcom/bbm/ui/c/hg;
sget-object v0, Lcom/bbm/ui/c/he;->b:[I
invoke-virtual {p2}, Lcom/bbm/ui/c/hg;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_1e
:pswitch_d
:goto_d
return-void
:pswitch_e
check-cast p1, Lcom/bbm/ui/ListHeaderView;
iget-object v0, p0, Lcom/bbm/ui/c/hh;->f:Lcom/bbm/ui/c/gz;
const v1, 0x7f0e06d0
invoke-virtual {v0, v1}, Lcom/bbm/ui/c/gz;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/ui/ListHeaderView;->setLeftLabel(Ljava/lang/String;)V
goto :goto_d
nop
:pswitch_data_1e
.packed-switch 0x1
:pswitch_d
:pswitch_e
.end packed-switch
.end method
.method protected final synthetic b(Landroid/view/View;Ljava/lang/Object;)V
.registers 7
check-cast p2, Lcom/bbm/ui/c/hf;
sget-object v0, Lcom/bbm/ui/c/he;->b:[I
iget-object v1, p2, Lcom/bbm/ui/c/hf;->a:Lcom/bbm/ui/c/hg;
invoke-virtual {v1}, Lcom/bbm/ui/c/hg;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_32
:goto_f
:pswitch_f
return-void
:pswitch_10
check-cast p1, Lcom/bbm/ui/StoreItemView;
iget-object v0, p2, Lcom/bbm/ui/c/hf;->b:Ljava/lang/Object;
check-cast v0, Lcom/bbm/l/b/j;
new-instance v1, Landroid/view/GestureDetector;
iget-object v2, p0, Lcom/bbm/ui/c/hh;->f:Lcom/bbm/ui/c/gz;
invoke-virtual {v2}, Lcom/bbm/ui/c/gz;->getActivity()Landroid/app/Activity;
move-result-object v2
new-instance v3, Lcom/bbm/ui/c/hi;
invoke-direct {v3, p0, v0}, Lcom/bbm/ui/c/hi;-><init>(Lcom/bbm/ui/c/hh;Lcom/bbm/l/b/j;)V
invoke-direct {v1, v2, v3}, Landroid/view/GestureDetector;-><init>(Landroid/content/Context;Landroid/view/GestureDetector$OnGestureListener;)V
new-instance v2, Lcom/bbm/ui/gq;
invoke-direct {v2, p1, v1}, Lcom/bbm/ui/gq;-><init>(Lcom/bbm/ui/StoreItemView;Landroid/view/GestureDetector;)V
invoke-virtual {p1, v2}, Lcom/bbm/ui/StoreItemView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
invoke-virtual {p1, v0}, Lcom/bbm/ui/StoreItemView;->setStickerPack(Lcom/bbm/l/b/j;)V
goto :goto_f
:pswitch_data_32
.packed-switch 0x1
:pswitch_f
:pswitch_10
.end packed-switch
.end method