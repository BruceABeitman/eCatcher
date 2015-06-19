.class public Lcom/bbm/ui/GlympseUserSelectorItem;
.super Lcom/bbm/ui/CustomView;
.source "GlympseUserSelectorItem.java"
.field private final a:Landroid/view/LayoutInflater;
.field private b:Landroid/widget/LinearLayout;
.field private c:Lcom/glympse/android/ui/GLYAvatarView;
.field private d:Lcom/bbm/ui/InlineImageTextView;
.field private e:Landroid/widget/TextView;
.field private f:Landroid/widget/TextView;
.field private g:Landroid/widget/TextView;
.field private h:Lcom/glympse/android/api/GUser;
.field private i:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/bbm/ui/GlympseUserSelectorItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/GlympseUserSelectorItem;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 8
invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/CustomView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x1
iput v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->i:I
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->a:Landroid/view/LayoutInflater;
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->a:Landroid/view/LayoutInflater;
const v1, 0x7f030130
invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a05b8
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->b:Landroid/widget/LinearLayout;
const v0, 0x7f0a05b9
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/glympse/android/ui/GLYAvatarView;
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->c:Lcom/glympse/android/ui/GLYAvatarView;
iget-object v2, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->c:Lcom/glympse/android/ui/GLYAvatarView;
invoke-virtual {p0}, Lcom/bbm/ui/GlympseUserSelectorItem;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v3, 0x7f0200d6
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v2, v0}, Lcom/glympse/android/ui/GLYAvatarView;->setDefault(Landroid/graphics/drawable/BitmapDrawable;)V
const v0, 0x7f0a05ba
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->d:Lcom/bbm/ui/InlineImageTextView;
const v0, 0x7f0a05bb
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->f:Landroid/widget/TextView;
const v0, 0x7f0a05bc
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->g:Landroid/widget/TextView;
const v0, 0x7f0a05bd
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->e:Landroid/widget/TextView;
return-void
.end method
.method public final a(I)V
.registers 6
const/4 v1, 0x0
const/4 v3, 0x0
iput-object v1, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->h:Lcom/glympse/android/api/GUser;
iput p1, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->i:I
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->c:Lcom/glympse/android/ui/GLYAvatarView;
invoke-virtual {v0, v1}, Lcom/glympse/android/ui/GLYAvatarView;->attachImage(Lcom/glympse/android/api/GImage;)V
iget-object v1, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->c:Lcom/glympse/android/ui/GLYAvatarView;
invoke-virtual {p0}, Lcom/bbm/ui/GlympseUserSelectorItem;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f02024f
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v1, v0}, Lcom/glympse/android/ui/GLYAvatarView;->setRawImage(Landroid/graphics/drawable/BitmapDrawable;)V
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->b:Landroid/widget/LinearLayout;
invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V
invoke-virtual {p0, v3}, Lcom/bbm/ui/GlympseUserSelectorItem;->setExpanded(Z)V
iget v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->i:I
packed-switch v0, :pswitch_data_4e
:pswitch_2a
:goto_2a
return-void
:pswitch_2b
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->d:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {p0}, Lcom/bbm/ui/GlympseUserSelectorItem;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e039f
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_2a
:pswitch_3c
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->d:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {p0}, Lcom/bbm/ui/GlympseUserSelectorItem;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e03a6
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_2a
nop
:pswitch_data_4e
.packed-switch 0x0
:pswitch_2b
:pswitch_2a
:pswitch_3c
.end packed-switch
.end method
.method public final a(Lcom/glympse/android/api/GUser;)V
.registers 14
const v7, 0x7f0e03a4
const v11, 0x7f0e03a0
const/4 v10, 0x0
const/4 v9, 0x1
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->h:Lcom/glympse/android/api/GUser;
if-eq v0, p1, :cond_2d
iput-object p1, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->h:Lcom/glympse/android/api/GUser;
iput v9, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->i:I
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->h:Lcom/glympse/android/api/GUser;
invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getAvatar()Lcom/glympse/android/api/GImage;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->c:Lcom/glympse/android/ui/GLYAvatarView;
invoke-virtual {p0}, Lcom/bbm/ui/GlympseUserSelectorItem;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v3, 0x7f0200d6
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
move-result-object v0
check-cast v0, Landroid/graphics/drawable/BitmapDrawable;
invoke-virtual {v2, v0}, Lcom/glympse/android/ui/GLYAvatarView;->setRawImage(Landroid/graphics/drawable/BitmapDrawable;)V
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->c:Lcom/glympse/android/ui/GLYAvatarView;
invoke-virtual {v0, v1}, Lcom/glympse/android/ui/GLYAvatarView;->attachImage(Lcom/glympse/android/api/GImage;)V
:cond_2d
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->d:Lcom/bbm/ui/InlineImageTextView;
iget-object v1, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->h:Lcom/glympse/android/api/GUser;
invoke-interface {v1}, Lcom/glympse/android/api/GUser;->getNickname()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->f:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->h:Lcom/glympse/android/api/GUser;
invoke-virtual {p0}, Lcom/bbm/ui/GlympseUserSelectorItem;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v1, v2}, Lcom/bbm/util/a/k;->a(Lcom/glympse/android/api/GUser;Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->g:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->h:Lcom/glympse/android/api/GUser;
invoke-virtual {p0}, Lcom/bbm/ui/GlympseUserSelectorItem;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v0}, Lcom/bbm/util/a/k;->a(Lcom/glympse/android/api/GUser;)Lcom/glympse/android/api/GTicket;
move-result-object v3
if-eqz v3, :cond_61
invoke-interface {v3}, Lcom/glympse/android/api/GTicket;->isActive()Z
move-result v3
if-eqz v3, :cond_61
invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getLocation()Lcom/glympse/android/core/GLocation;
move-result-object v3
if-nez v3, :cond_90
:cond_61
invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_65
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->e:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->h:Lcom/glympse/android/api/GUser;
invoke-virtual {p0}, Lcom/bbm/ui/GlympseUserSelectorItem;->getContext()Landroid/content/Context;
move-result-object v2
invoke-static {v0}, Lcom/bbm/util/a/k;->a(Lcom/glympse/android/api/GUser;)Lcom/glympse/android/api/GTicket;
move-result-object v3
if-eqz v3, :cond_82
invoke-interface {v3}, Lcom/glympse/android/api/GTicket;->isActive()Z
move-result v3
if-eqz v3, :cond_82
invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getLocation()Lcom/glympse/android/core/GLocation;
move-result-object v3
if-nez v3, :cond_132
:cond_82
new-array v0, v9, [Ljava/lang/Object;
const-string v3, "N/A"
aput-object v3, v0, v10
invoke-virtual {v2, v11, v0}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_8c
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-void
:cond_90
invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;
move-result-object v3
iget-object v3, v3, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;
invoke-interface {v3}, Lcom/glympse/android/api/GGlympse;->getTime()J
move-result-wide v3
invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getLocation()Lcom/glympse/android/core/GLocation;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getTime()J
move-result-wide v5
sub-long/2addr v3, v5
const-wide/16 v5, 0x0
cmp-long v0, v3, v5
if-gtz v0, :cond_ae
invoke-virtual {v2, v7}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_65
:cond_ae
const-wide/32 v5, 0xea60
cmp-long v0, v3, v5
if-gez v0, :cond_cb
const v0, 0x7f0e03a5
new-array v5, v9, [Ljava/lang/Object;
sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v6, v3, v4}, Ljava/util/concurrent/TimeUnit;->toSeconds(J)J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v5, v10
invoke-virtual {v2, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_65
:cond_cb
const-wide/32 v5, 0x36ee80
cmp-long v0, v3, v5
if-gez v0, :cond_e9
const v0, 0x7f0e03a3
new-array v5, v9, [Ljava/lang/Object;
sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v6, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v5, v10
invoke-virtual {v2, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_65
:cond_e9
const-wide/32 v5, 0x5265c00
cmp-long v0, v3, v5
if-gez v0, :cond_11b
sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toHours(J)J
move-result-wide v5
sget-object v0, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v0, v3, v4}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J
move-result-wide v3
sget-object v0, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v0, v5, v6}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J
move-result-wide v7
sub-long/2addr v3, v7
const v0, 0x7f0e03a2
const/4 v7, 0x2
new-array v7, v7, [Ljava/lang/Object;
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v7, v10
invoke-static {v3, v4}, Lcom/bbm/util/a/k;->a(J)Ljava/lang/String;
move-result-object v3
aput-object v3, v7, v9
invoke-virtual {v2, v0, v7}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_65
:cond_11b
const v0, 0x7f0e03a1
new-array v5, v9, [Ljava/lang/Object;
sget-object v6, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-virtual {v6, v3, v4}, Ljava/util/concurrent/TimeUnit;->toDays(J)J
move-result-wide v3
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v5, v10
invoke-virtual {v2, v0, v5}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_65
:cond_132
invoke-interface {v0}, Lcom/glympse/android/api/GUser;->getLocation()Lcom/glympse/android/core/GLocation;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/core/GLocation;->getSpeed()F
move-result v0
new-array v3, v9, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/String;->valueOf(F)Ljava/lang/String;
move-result-object v0
aput-object v0, v3, v10
invoke-virtual {v2, v11, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_8c
.end method
.method public getType()I
.registers 2
iget v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->i:I
return v0
.end method
.method public getUser()Lcom/glympse/android/api/GUser;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->h:Lcom/glympse/android/api/GUser;
return-object v0
.end method
.method public setColor(I)V
.registers 3
const/4 v0, -0x1
if-eq p1, v0, :cond_8
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->b:Landroid/widget/LinearLayout;
invoke-virtual {v0, p1}, Landroid/widget/LinearLayout;->setBackgroundResource(I)V
:cond_8
return-void
.end method
.method public setExpanded(Z)V
.registers 6
const/4 v1, 0x0
const/16 v2, 0x8
iget v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->i:I
const/4 v3, 0x1
if-ne v0, v3, :cond_21
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->f:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v3, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->g:Landroid/widget/TextView;
if-eqz p1, :cond_1d
move v0, v1
:goto_12
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->e:Landroid/widget/TextView;
if-eqz p1, :cond_1f
:goto_19
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
:goto_1c
return-void
:cond_1d
move v0, v2
goto :goto_12
:cond_1f
move v1, v2
goto :goto_19
:cond_21
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->g:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->f:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/GlympseUserSelectorItem;->e:Landroid/widget/TextView;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_1c
.end method