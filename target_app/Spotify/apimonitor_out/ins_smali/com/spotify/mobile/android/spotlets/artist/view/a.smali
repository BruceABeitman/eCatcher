.class public final Lcom/spotify/mobile/android/spotlets/artist/view/a;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Landroid/widget/TextView;
.field private b:Landroid/widget/ToggleButton;
.field private c:Landroid/view/View;
.field private final d:Landroid/content/Context;
.field private final e:Lcom/spotify/mobile/android/spotlets/artist/view/c/b;
.method public constructor <init>(Landroid/content/Context;Lcom/spotify/mobile/android/spotlets/artist/view/c/b;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->d:Landroid/content/Context;
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->e:Lcom/spotify/mobile/android/spotlets/artist/view/c/b;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->d:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f030081
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->c:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->c:Landroid/view/View;
const v1, 0x7f0a024d
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->a:Landroid/widget/TextView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->c:Landroid/view/View;
const v1, 0x7f0a02e7
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ToggleButton;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->b:Landroid/widget/ToggleButton;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->b:Landroid/widget/ToggleButton;
new-instance v1, Lcom/spotify/mobile/android/spotlets/artist/view/a$1;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/spotlets/artist/view/a$1;-><init>(Lcom/spotify/mobile/android/spotlets/artist/view/a;)V
invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/artist/view/a;->b(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->c:Landroid/view/View;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->c:Landroid/view/View;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/artist/view/a;)Landroid/widget/ToggleButton;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->b:Landroid/widget/ToggleButton;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/artist/view/a;)Lcom/spotify/mobile/android/spotlets/artist/view/c/b;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->e:Lcom/spotify/mobile/android/spotlets/artist/view/c/b;
return-object v0
.end method
.method private b(Z)V
.registers 6
const/16 v2, 0x8
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->a:Landroid/widget/TextView;
if-eqz v0, :cond_f
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->a:Landroid/widget/TextView;
if-eqz p1, :cond_1b
move v0, v1
:goto_c
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setVisibility(I)V
:cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->b:Landroid/widget/ToggleButton;
if-eqz v0, :cond_1a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->b:Landroid/widget/ToggleButton;
if-eqz p1, :cond_1d
:goto_17
invoke-virtual {v0, v1}, Landroid/widget/ToggleButton;->setVisibility(I)V
:cond_1a
return-void
:cond_1b
move v0, v2
goto :goto_c
:cond_1d
move v1, v2
goto :goto_17
.end method
.method public final a()Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->c:Landroid/view/View;
return-object v0
.end method
.method public final a(Z)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->b:Landroid/widget/ToggleButton;
invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setEnabled(Z)V
return-void
.end method
.method public final a(ZI)V
.registers 10
const/4 v6, 0x1
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->b:Landroid/widget/ToggleButton;
if-eqz p1, :cond_2f
const v0, 0x7f0f0060
:goto_8
invoke-virtual {v1, v0}, Landroid/widget/ToggleButton;->setText(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->b:Landroid/widget/ToggleButton;
invoke-virtual {v0, p1}, Landroid/widget/ToggleButton;->setChecked(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->a:Landroid/widget/TextView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/artist/view/a;->d:Landroid/content/Context;
invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e0001
new-array v3, v6, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v1, v2, p2, v3}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-direct {p0, v6}, Lcom/spotify/mobile/android/spotlets/artist/view/a;->b(Z)V
return-void
:cond_2f
const v0, 0x7f0f005f
goto :goto_8
.end method