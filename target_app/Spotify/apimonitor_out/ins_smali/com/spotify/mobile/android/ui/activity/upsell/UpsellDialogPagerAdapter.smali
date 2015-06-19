.class final Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;
.super Landroid/support/v4/view/ah;
.source "SourceFile"
.field private final a:Landroid/view/LayoutInflater;
.field private final b:[Lcom/spotify/mobile/android/ui/activity/upsell/v;
.field private final c:Z
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter$Variant;ZIZI)V
.registers 15
invoke-direct {p0}, Landroid/support/v4/view/ah;-><init>()V
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;->a:Landroid/view/LayoutInflater;
new-instance v7, Ljava/util/ArrayList;
invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V
sget-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter$1;->a:[I
invoke-virtual {p2}, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter$Variant;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_154
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "Bad copy variant "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
:goto_2b
if-eqz p5, :cond_49
packed-switch p6, :pswitch_data_15c
:pswitch_30
const/4 v0, 0x0
:goto_31
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v1
if-nez v1, :cond_3d
if-lez v0, :cond_3d
add-int/lit8 v0, v0, -0x1
:cond_3d
if-lez v0, :cond_49
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/upsell/v;
const/4 v1, 0x0
invoke-virtual {v7, v1, v0}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V
:cond_49
invoke-virtual {v7}, Ljava/util/ArrayList;->size()I
move-result v0
new-array v0, v0, [Lcom/spotify/mobile/android/ui/activity/upsell/v;
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;
move-result-object v0
check-cast v0, [Lcom/spotify/mobile/android/ui/activity/upsell/v;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;->b:[Lcom/spotify/mobile/android/ui/activity/upsell/v;
iput-boolean p3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;->c:Z
return-void
:pswitch_5a
new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/v;
const v2, 0x7f0f0426
const v3, 0x7f0f0424
const v4, 0x7f0201c3
const/4 v5, 0x0
sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->Q:Lcom/spotify/mobile/android/util/ViewUri$SubView;
move v1, p4
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/activity/upsell/v;-><init>(IIIILcom/spotify/android/paste/graphics/SpotifyIcon;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_8d
new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/v;
const v1, 0x7f0f041d
const v2, 0x7f0f042d
const v3, 0x7f0f042b
const/4 v4, 0x0
sget-object v5, Lcom/spotify/android/paste/graphics/SpotifyIcon;->X:Lcom/spotify/android/paste/graphics/SpotifyIcon;
sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->R:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/activity/upsell/v;-><init>(IIIILcom/spotify/android/paste/graphics/SpotifyIcon;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_8d
new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/v;
const v1, 0x7f0f041d
const v2, 0x7f0f042a
const v3, 0x7f0f0428
const/4 v4, 0x0
sget-object v5, Lcom/spotify/android/paste/graphics/SpotifyIcon;->z:Lcom/spotify/android/paste/graphics/SpotifyIcon;
sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->S:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/activity/upsell/v;-><init>(IIIILcom/spotify/android/paste/graphics/SpotifyIcon;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/v;
const v1, 0x7f0f041d
const v2, 0x7f0f0423
const v3, 0x7f0f0421
const v4, 0x7f020184
const/4 v5, 0x0
sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->T:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/activity/upsell/v;-><init>(IIIILcom/spotify/android/paste/graphics/SpotifyIcon;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/v;
const v1, 0x7f0f041d
const v2, 0x7f0f0430
const v3, 0x7f0f042e
const/4 v4, 0x0
sget-object v5, Lcom/spotify/android/paste/graphics/SpotifyIcon;->bn:Lcom/spotify/android/paste/graphics/SpotifyIcon;
sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->U:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/activity/upsell/v;-><init>(IIIILcom/spotify/android/paste/graphics/SpotifyIcon;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto/16 :goto_2b
:pswitch_d2
new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/v;
const v2, 0x7f0f0427
const v3, 0x7f0f0425
const v4, 0x7f0201c3
const/4 v5, 0x0
sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->Q:Lcom/spotify/mobile/android/util/ViewUri$SubView;
move v1, p4
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/activity/upsell/v;-><init>(IIIILcom/spotify/android/paste/graphics/SpotifyIcon;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_105
new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/v;
const v1, 0x7f0f043a
const v2, 0x7f0f042d
const v3, 0x7f0f042c
const/4 v4, 0x0
sget-object v5, Lcom/spotify/android/paste/graphics/SpotifyIcon;->X:Lcom/spotify/android/paste/graphics/SpotifyIcon;
sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->R:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/activity/upsell/v;-><init>(IIIILcom/spotify/android/paste/graphics/SpotifyIcon;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
:cond_105
new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/v;
const v1, 0x7f0f0438
const v2, 0x7f0f042a
const v3, 0x7f0f0429
const/4 v4, 0x0
sget-object v5, Lcom/spotify/android/paste/graphics/SpotifyIcon;->z:Lcom/spotify/android/paste/graphics/SpotifyIcon;
sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->S:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/activity/upsell/v;-><init>(IIIILcom/spotify/android/paste/graphics/SpotifyIcon;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/v;
const v1, 0x7f0f0436
const v2, 0x7f0f0423
const v3, 0x7f0f0422
const v4, 0x7f020184
const/4 v5, 0x0
sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->T:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/activity/upsell/v;-><init>(IIIILcom/spotify/android/paste/graphics/SpotifyIcon;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/v;
const v1, 0x7f0f041f
const v2, 0x7f0f0430
const v3, 0x7f0f042f
const/4 v4, 0x0
sget-object v5, Lcom/spotify/android/paste/graphics/SpotifyIcon;->bn:Lcom/spotify/android/paste/graphics/SpotifyIcon;
sget-object v6, Lcom/spotify/mobile/android/util/ViewUri$SubView;->U:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/activity/upsell/v;-><init>(IIIILcom/spotify/android/paste/graphics/SpotifyIcon;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
invoke-virtual {v7, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
goto/16 :goto_2b
:pswitch_14a
const/4 v0, 0x2
goto/16 :goto_31
:pswitch_14d
const/4 v0, 0x4
goto/16 :goto_31
:pswitch_150
const/4 v0, 0x1
goto/16 :goto_31
nop
:pswitch_data_154
.packed-switch 0x1
:pswitch_5a
:pswitch_d2
.end packed-switch
:pswitch_data_15c
.packed-switch 0x0
:pswitch_150
:pswitch_150
:pswitch_14a
:pswitch_150
:pswitch_150
:pswitch_30
:pswitch_14d
.end packed-switch
.end method
.method public final a(I)Lcom/spotify/mobile/android/util/ViewUri$SubView;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;->b:[Lcom/spotify/mobile/android/ui/activity/upsell/v;
aget-object v0, v0, p1
iget-object v0, v0, Lcom/spotify/mobile/android/ui/activity/upsell/v;->f:Lcom/spotify/mobile/android/util/ViewUri$SubView;
return-object v0
.end method
.method public final a(Landroid/view/ViewGroup;I)Ljava/lang/Object;
.registers 9
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;->b:[Lcom/spotify/mobile/android/ui/activity/upsell/v;
aget-object v1, v0, p2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;->a:Landroid/view/LayoutInflater;
const v2, 0x7f0300ac
const/4 v3, 0x0
invoke-virtual {v0, v2, p1, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v2
invoke-virtual {p1, v2}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
const v0, 0x7f0a022e
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget v3, v1, Lcom/spotify/mobile/android/ui/activity/upsell/v;->a:I
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V
const v0, 0x7f0a0225
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget v3, v1, Lcom/spotify/mobile/android/ui/activity/upsell/v;->b:I
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V
const v0, 0x7f0a0219
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iget v3, v1, Lcom/spotify/mobile/android/ui/activity/upsell/v;->c:I
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setText(I)V
const v0, 0x7f0a01fb
invoke-virtual {v2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iget-boolean v3, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;->c:Z
if-eqz v3, :cond_96
iget-object v3, v1, Lcom/spotify/mobile/android/ui/activity/upsell/v;->d:Lcom/spotify/android/paste/graphics/SpotifyIcon;
if-eqz v3, :cond_8c
iget-object v1, v1, Lcom/spotify/mobile/android/ui/activity/upsell/v;->d:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;
move-result-object v3
sget-object v4, Lcom/spotify/android/paste/graphics/SpotifyIcon;->bn:Lcom/spotify/android/paste/graphics/SpotifyIcon;
if-ne v1, v4, :cond_64
invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f0b00ae
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v4
invoke-virtual {v0, v4, v4, v4, v4}, Landroid/widget/ImageView;->setPadding(IIII)V
:cond_64
invoke-virtual {v0}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v4
iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingLeft()I
move-result v5
sub-int/2addr v4, v5
invoke-virtual {v0}, Landroid/widget/ImageView;->getPaddingRight()I
move-result v5
sub-int/2addr v4, v5
new-instance v5, Lcom/spotify/android/paste/graphics/f;
int-to-float v4, v4
invoke-direct {v5, v3, v1, v4}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;F)V
invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v3, 0x7f090078
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v5, v1}, Lcom/spotify/android/paste/graphics/f;->a(I)V
invoke-virtual {v0, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_8b
:cond_8b
return-object v2
:cond_8c
iget v3, v1, Lcom/spotify/mobile/android/ui/activity/upsell/v;->e:I
if-eqz v3, :cond_8b
iget v1, v1, Lcom/spotify/mobile/android/ui/activity/upsell/v;->e:I
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_8b
:cond_96
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
goto :goto_8b
.end method
.method public final a(Landroid/view/ViewGroup;ILjava/lang/Object;)V
.registers 4
check-cast p3, Landroid/view/View;
invoke-virtual {p1, p3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
return-void
.end method
.method public final a(Landroid/view/View;Ljava/lang/Object;)Z
.registers 4
if-ne p1, p2, :cond_4
const/4 v0, 0x1
:goto_3
return v0
:cond_4
const/4 v0, 0x0
goto :goto_3
.end method
.method public final b()I
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/UpsellDialogPagerAdapter;->b:[Lcom/spotify/mobile/android/ui/activity/upsell/v;
array-length v0, v0
return v0
.end method