.class public Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field private a:Lcom/spotify/mobile/android/util/f;
.field private b:Landroid/view/animation/Animation;
.field private c:Landroid/view/animation/Animation;
.field private d:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
.field private e:Landroid/widget/ProgressBar;
.field private f:Landroid/view/View;
.field private g:Lcom/spotify/android/paste/widget/SwitchView;
.field private h:Landroid/widget/TextView;
.field private i:Lcom/spotify/mobile/android/ui/view/g;
.field private j:I
.field private k:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->a:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->d:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->b()V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->a:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->d:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->b()V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;)Lcom/spotify/mobile/android/ui/view/g;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->i:Lcom/spotify/mobile/android/ui/view/g;
return-object v0
.end method
.method private a(Landroid/view/View;IZ)V
.registers 7
const/4 v2, 0x0
if-eqz p3, :cond_e
new-instance v0, Lcom/spotify/mobile/android/ui/view/h;
invoke-direct {v0, p1, p2, v2}, Lcom/spotify/mobile/android/ui/view/h;-><init>(Landroid/view/View;IZ)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a:Lcom/spotify/mobile/android/util/f;
invoke-virtual {v1, p1, v0, v2}, Lcom/spotify/mobile/android/util/f;->a(Landroid/view/View;Landroid/view/animation/Animation;Z)V
:goto_d
return-void
:cond_e
invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_d
.end method
.method private a(Landroid/view/View;Z)V
.registers 6
const/4 v2, 0x0
if-eqz p2, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a:Lcom/spotify/mobile/android/util/f;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->b:Landroid/view/animation/Animation;
invoke-virtual {v0, p1, v1, v2}, Lcom/spotify/mobile/android/util/f;->a(Landroid/view/View;Landroid/view/animation/Animation;Z)V
:goto_a
return-void
:cond_b
invoke-virtual {p1, v2}, Landroid/view/View;->setVisibility(I)V
goto :goto_a
.end method
.method private a(Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;I)V
.registers 13
const v3, 0x7f0f0226
const/16 v9, 0x8
const/4 v1, 0x1
const/4 v2, 0x0
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->d:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
if-ne p1, v0, :cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->e:Landroid/widget/ProgressBar;
invoke-virtual {v0, p2}, Landroid/widget/ProgressBar;->setProgress(I)V
:cond_10
iget-object v4, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->g:Lcom/spotify/android/paste/widget/SwitchView;
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->c:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
if-eq p1, v0, :cond_27
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->b:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
if-eq p1, v0, :cond_27
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->a:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
if-eq p1, v0, :cond_27
move v0, v1
:goto_1f
invoke-virtual {v4, v0}, Lcom/spotify/android/paste/widget/SwitchView;->setChecked(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->d:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
if-ne v0, p1, :cond_29
:goto_26
return-void
:cond_27
move v0, v2
goto :goto_1f
:cond_29
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->d:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
sget-object v4, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->a:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
if-eq v0, v4, :cond_a1
:goto_2f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->d:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
sget-object v2, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->d:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
if-ne v0, v2, :cond_3c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->e:Landroid/widget/ProgressBar;
iget v2, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->k:I
invoke-direct {p0, v0, v2, v1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->b(Landroid/view/View;IZ)V
:cond_3c
invoke-static {p1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;)Z
move-result v2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->d:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;)Z
move-result v4
invoke-static {p1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->b(Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;)Z
move-result v5
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->d:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->b(Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;)Z
move-result v6
if-eqz v5, :cond_7b
iget-object v7, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->h:Landroid/widget/TextView;
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$2;->b:[I
invoke-virtual {p1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->ordinal()I
move-result v8
aget v0, v0, v8
packed-switch v0, :pswitch_data_fa
new-instance v0, Ljava/lang/StringBuilder;
const-string v8, "State "
invoke-direct {v0, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v8, " is not a waiting state."
invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
move v0, v3
:goto_78
invoke-virtual {v7, v0}, Landroid/widget/TextView;->setText(I)V
:cond_7b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->d:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
sget-object v3, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->b:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
if-ne v0, v3, :cond_bd
if-eqz v2, :cond_b1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->f:Landroid/view/View;
iget v2, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->j:I
invoke-direct {p0, v0, v2, v1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(Landroid/view/View;IZ)V
:goto_8a
if-eqz v5, :cond_b7
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->h:Landroid/widget/TextView;
iget v2, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->j:I
invoke-direct {p0, v0, v2, v1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(Landroid/view/View;IZ)V
:cond_93
:goto_93
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->d:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
if-ne p1, v0, :cond_9e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->e:Landroid/widget/ProgressBar;
iget v2, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->k:I
invoke-direct {p0, v0, v2, v1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(Landroid/view/View;IZ)V
:cond_9e
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->d:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
goto :goto_26
:cond_a1
move v1, v2
goto :goto_2f
:pswitch_a3
move v0, v3
goto :goto_78
:pswitch_a5
const v0, 0x7f0f0228
goto :goto_78
:pswitch_a9
const v0, 0x7f0f0227
goto :goto_78
:pswitch_ad
const v0, 0x7f0f0229
goto :goto_78
:cond_b1
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->f:Landroid/view/View;
invoke-virtual {v0, v9}, Landroid/view/View;->setVisibility(I)V
goto :goto_8a
:cond_b7
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->h:Landroid/widget/TextView;
invoke-virtual {v0, v9}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_93
:cond_bd
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->b:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
if-ne p1, v0, :cond_d4
if-eqz v4, :cond_ca
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->f:Landroid/view/View;
iget v2, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->j:I
invoke-direct {p0, v0, v2, v1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->b(Landroid/view/View;IZ)V
:cond_ca
if-eqz v6, :cond_93
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->h:Landroid/widget/TextView;
iget v2, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->j:I
invoke-direct {p0, v0, v2, v1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->b(Landroid/view/View;IZ)V
goto :goto_93
:cond_d4
if-eqz v4, :cond_dd
if-nez v2, :cond_dd
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->f:Landroid/view/View;
invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->b(Landroid/view/View;Z)V
:cond_dd
if-eqz v6, :cond_e6
if-nez v5, :cond_e6
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->h:Landroid/widget/TextView;
invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->b(Landroid/view/View;Z)V
:cond_e6
if-eqz v2, :cond_ef
if-nez v4, :cond_ef
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->f:Landroid/view/View;
invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(Landroid/view/View;Z)V
:cond_ef
if-eqz v5, :cond_93
if-nez v6, :cond_93
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->h:Landroid/widget/TextView;
invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(Landroid/view/View;Z)V
goto :goto_93
nop
:pswitch_data_fa
.packed-switch 0x1
:pswitch_a3
:pswitch_a5
:pswitch_a9
:pswitch_ad
.end packed-switch
.end method
.method private static a(Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;)Z
.registers 2
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->c:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
if-eq p0, v0, :cond_c
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->d:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
if-eq p0, v0, :cond_c
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->e:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
if-ne p0, v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;)Lcom/spotify/android/paste/widget/SwitchView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->g:Lcom/spotify/android/paste/widget/SwitchView;
return-object v0
.end method
.method private b()V
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0b0061
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
add-int/lit8 v1, v1, -0x1
iput v1, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->j:I
const v1, 0x7f0b0062
invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
add-int/lit8 v0, v0, -0x1
iput v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->k:I
return-void
.end method
.method private b(Landroid/view/View;IZ)V
.registers 7
const/4 v2, 0x1
if-eqz p3, :cond_e
new-instance v0, Lcom/spotify/mobile/android/ui/view/h;
invoke-direct {v0, p1, p2, v2}, Lcom/spotify/mobile/android/ui/view/h;-><init>(Landroid/view/View;IZ)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a:Lcom/spotify/mobile/android/util/f;
invoke-virtual {v1, p1, v0, v2}, Lcom/spotify/mobile/android/util/f;->a(Landroid/view/View;Landroid/view/animation/Animation;Z)V
:goto_d
return-void
:cond_e
const/16 v0, 0x8
invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
goto :goto_d
.end method
.method private b(Landroid/view/View;Z)V
.registers 6
if-eqz p2, :cond_b
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a:Lcom/spotify/mobile/android/util/f;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->c:Landroid/view/animation/Animation;
const/4 v2, 0x1
invoke-virtual {v0, p1, v1, v2}, Lcom/spotify/mobile/android/util/f;->a(Landroid/view/View;Landroid/view/animation/Animation;Z)V
:goto_a
return-void
:cond_b
const/16 v0, 0x8
invoke-virtual {p1, v0}, Landroid/view/View;->setVisibility(I)V
goto :goto_a
.end method
.method private static b(Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;)Z
.registers 2
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->f:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
if-eq p0, v0, :cond_10
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->g:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
if-eq p0, v0, :cond_10
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->h:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
if-eq p0, v0, :cond_10
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->i:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
if-ne p0, v0, :cond_12
:cond_10
const/4 v0, 0x1
:goto_11
return v0
:cond_12
const/4 v0, 0x0
goto :goto_11
.end method
.method public final a()V
.registers 3
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->b:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
const/4 v1, 0x0
invoke-direct {p0, v0, v1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;I)V
return-void
.end method
.method public final a(II)V
.registers 6
invoke-static {p1}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->a(I)Z
move-result v0
if-eqz v0, :cond_c
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->c:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
:goto_8
invoke-direct {p0, v0, p2}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;I)V
return-void
:cond_c
invoke-static {p1}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->c(I)Z
move-result v0
if-eqz v0, :cond_15
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->d:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
goto :goto_8
:cond_15
invoke-static {p1}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->d(I)Z
move-result v0
if-eqz v0, :cond_1e
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->e:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
goto :goto_8
:cond_1e
invoke-static {p1, p2}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->a(II)Z
move-result v0
if-eqz v0, :cond_54
invoke-static {p1}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->b(I)Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$2;->a:[I
invoke-virtual {v0}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->ordinal()I
move-result v2
aget v1, v1, v2
packed-switch v1, :pswitch_data_58
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "Unknown reason "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->f:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
goto :goto_8
:pswitch_48
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->f:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
goto :goto_8
:pswitch_4b
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->g:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
goto :goto_8
:pswitch_4e
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->h:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
goto :goto_8
:pswitch_51
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->i:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
goto :goto_8
:cond_54
sget-object v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;->b:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$State;
goto :goto_8
nop
:pswitch_data_58
.packed-switch 0x1
:pswitch_48
:pswitch_4b
:pswitch_4e
:pswitch_51
.end packed-switch
.end method
.method public final a(Lcom/spotify/mobile/android/ui/view/g;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->i:Lcom/spotify/mobile/android/ui/view/g;
return-void
.end method
.method protected onFinishInflate()V
.registers 5
const/4 v3, 0x0
invoke-super {p0}, Landroid/widget/LinearLayout;->onFinishInflate()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->isInEditMode()Z
move-result v0
if-eqz v0, :cond_b
:goto_a
return-void
:cond_b
new-instance v0, Lcom/spotify/mobile/android/util/f;
invoke-direct {v0}, Lcom/spotify/mobile/android/util/f;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a:Lcom/spotify/mobile/android/util/f;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->getContext()Landroid/content/Context;
move-result-object v0
const v1, 0x7f040010
invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->b:Landroid/view/animation/Animation;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->getContext()Landroid/content/Context;
move-result-object v0
const v1, 0x7f040011
invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->c:Landroid/view/animation/Animation;
const v0, 0x7f0a02ea
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->f:Landroid/view/View;
const v0, 0x7f0a02eb
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/android/paste/widget/SwitchView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->g:Lcom/spotify/android/paste/widget/SwitchView;
const v0, 0x7f0a027f
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->e:Landroid/widget/ProgressBar;
const v0, 0x7f0a02ec
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->h:Landroid/widget/TextView;
new-instance v0, Lcom/spotify/android/paste/graphics/f;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->getContext()Landroid/content/Context;
move-result-object v1
sget-object v2, Lcom/spotify/android/paste/graphics/SpotifyIcon;->y:Lcom/spotify/android/paste/graphics/SpotifyIcon;
invoke-direct {v0, v1, v2}, Lcom/spotify/android/paste/graphics/f;-><init>(Landroid/content/Context;Lcom/spotify/android/paste/graphics/SpotifyIcon;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f09006d
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/graphics/f;->a(I)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->h:Landroid/widget/TextView;
invoke-virtual {v1, v0, v3, v3, v3}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->g:Lcom/spotify/android/paste/widget/SwitchView;
new-instance v1, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$1;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView$1;-><init>(Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;)V
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/SwitchView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_a
.end method