.class final Lcom/bbm/ui/ch;
.super Landroid/widget/BaseAdapter;
.source "EmoticonStickerPager.java"
.field  a:Landroid/content/Context;
.field final synthetic b:Lcom/bbm/ui/EmoticonStickerPager;
.method public constructor <init>(Lcom/bbm/ui/EmoticonStickerPager;Landroid/content/Context;)V
.registers 3
iput-object p1, p0, Lcom/bbm/ui/ch;->b:Lcom/bbm/ui/EmoticonStickerPager;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
iput-object p2, p0, Lcom/bbm/ui/ch;->a:Landroid/content/Context;
return-void
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/bbm/ui/ch;->b:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->i(Lcom/bbm/ui/EmoticonStickerPager;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public final synthetic getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/bbm/ui/ch;->b:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->i(Lcom/bbm/ui/EmoticonStickerPager;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
return-object v0
.end method
.method public final getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 10
const/4 v3, 0x1
const/4 v2, 0x0
if-nez p2, :cond_5a
new-instance v1, Lcom/bbm/ui/ci;
invoke-direct {v1, p0, v2}, Lcom/bbm/ui/ci;-><init>(Lcom/bbm/ui/ch;B)V
iget-object v0, p0, Lcom/bbm/ui/ch;->a:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v4, 0x7f0300f8
invoke-virtual {v0, v4, p3, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
const v0, 0x7f0a04ea
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v1, Lcom/bbm/ui/ci;->a:Landroid/widget/ImageView;
invoke-virtual {p2, v1}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:goto_24
iget-object v0, p0, Lcom/bbm/ui/ch;->b:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->r(Lcom/bbm/ui/EmoticonStickerPager;)I
move-result v0
if-ne p1, v0, :cond_2d
move v2, v3
:cond_2d
if-eqz v2, :cond_68
const v0, 0x7f020352
:goto_32
invoke-virtual {p2, v0}, Landroid/view/View;->setBackgroundResource(I)V
iget-object v0, p0, Lcom/bbm/ui/ch;->b:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v0}, Lcom/bbm/ui/EmoticonStickerPager;->j(Lcom/bbm/ui/EmoticonStickerPager;)Ljava/util/ArrayList;
move-result-object v0
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v0
iget-object v4, p0, Lcom/bbm/ui/ch;->b:Lcom/bbm/ui/EmoticonStickerPager;
invoke-static {v4}, Lcom/bbm/ui/EmoticonStickerPager;->f(Lcom/bbm/ui/EmoticonStickerPager;)Lcom/bbm/util/b/i;
move-result-object v4
iget-object v5, v1, Lcom/bbm/ui/ci;->a:Landroid/widget/ImageView;
invoke-virtual {v4, v0, v5, v3}, Lcom/bbm/util/b/i;->a(Ljava/lang/Object;Landroid/widget/ImageView;Z)V
iget-object v1, v1, Lcom/bbm/ui/ci;->a:Landroid/widget/ImageView;
if-eqz v2, :cond_6c
const/high16 v0, 0x3f80
:goto_56
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V
return-object p2
:cond_5a
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ci;
iget-object v1, v0, Lcom/bbm/ui/ci;->a:Landroid/widget/ImageView;
const/4 v4, 0x0
invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
move-object v1, v0
goto :goto_24
:cond_68
const v0, 0x7f0901a9
goto :goto_32
:cond_6c
const v0, 0x3f333333
goto :goto_56
.end method