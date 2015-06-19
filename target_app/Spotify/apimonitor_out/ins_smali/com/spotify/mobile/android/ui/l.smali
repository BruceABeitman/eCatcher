.class public final Lcom/spotify/mobile/android/ui/l;
.super Ljava/lang/Object;
.source "SourceFile"
.field private a:Landroid/support/v4/app/Fragment;
.field private b:Lcom/spotify/mobile/android/ui/n;
.field private c:Landroid/view/View;
.field private d:Landroid/view/View;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/n;Landroid/view/View;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/ui/l;->a:Landroid/support/v4/app/Fragment;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/l;->b:Lcom/spotify/mobile/android/ui/n;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/l;->c:Landroid/view/View;
return-void
.end method
.method public final a()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/l;->f:Ljava/lang/String;
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 11
const/4 v3, 0x0
const/4 v1, 0x1
const/4 v8, -0x1
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/l;->b()Z
move-result v0
if-eqz v0, :cond_88
iget-object v0, p0, Lcom/spotify/mobile/android/ui/l;->c:Landroid/view/View;
const v4, 0x7f0a02f3
invoke-virtual {v0, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
new-instance v4, Landroid/view/View;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/l;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v5
invoke-direct {v4, v5}, Landroid/view/View;-><init>(Landroid/content/Context;)V
const/high16 v5, 0x3f80
iget-object v6, p0, Lcom/spotify/mobile/android/ui/l;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v6}, Landroid/support/v4/app/Fragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v6
invoke-virtual {v6}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;
move-result-object v6
invoke-static {v5, v6}, Lcom/spotify/android/paste/graphics/e;->a(FLandroid/content/res/Resources;)I
move-result v5
new-instance v6, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v6, v5, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v4, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v5, p0, Lcom/spotify/mobile/android/ui/l;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v5
new-array v6, v1, [I
const v7, 0x7f01018e
aput v7, v6, v2
invoke-virtual {v5, v6}, Landroid/support/v4/app/FragmentActivity;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;
move-result-object v5
invoke-virtual {v5, v2, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I
move-result v6
invoke-virtual {v5}, Landroid/content/res/TypedArray;->recycle()V
invoke-virtual {v4, v6}, Landroid/view/View;->setBackgroundResource(I)V
invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
new-instance v4, Landroid/widget/FrameLayout;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/l;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v5}, Landroid/support/v4/app/Fragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v5
invoke-direct {v4, v5}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
iput-object v4, p0, Lcom/spotify/mobile/android/ui/l;->d:Landroid/view/View;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/l;->d:Landroid/view/View;
const v5, 0x7f0a0143
invoke-virtual {v4, v5}, Landroid/view/View;->setId(I)V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/l;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v4}, Landroid/support/v4/app/Fragment;->k()Landroid/content/res/Resources;
move-result-object v4
const v5, 0x7f0d000b
invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getInteger(I)I
move-result v4
iget-object v5, p0, Lcom/spotify/mobile/android/ui/l;->d:Landroid/view/View;
new-instance v6, Landroid/widget/LinearLayout$LayoutParams;
int-to-float v4, v4
invoke-direct {v6, v2, v8, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V
invoke-virtual {v5, v6}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/l;->d:Landroid/view/View;
invoke-virtual {v0, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
:cond_88
iget-object v0, p0, Lcom/spotify/mobile/android/ui/l;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->h()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_cd
const-string v3, "sub_fragment_uri"
invoke-virtual {v0, v3}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v4, "sub_fragment_name"
invoke-virtual {v0, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
:goto_9c
if-eqz p1, :cond_ca
const-string v0, "sub_fragment_uri"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
const-string v0, "sub_fragment_name"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
move-object v4, v3
move-object v3, v0
:goto_ac
if-eqz v4, :cond_c3
iget-object v0, p0, Lcom/spotify/mobile/android/ui/l;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->m()Landroid/support/v4/app/r;
move-result-object v0
const-string v5, "sub_fragment"
invoke-virtual {v0, v5}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_c4
move v0, v1
:goto_bd
if-eqz v0, :cond_c6
iput-object v4, p0, Lcom/spotify/mobile/android/ui/l;->e:Ljava/lang/String;
iput-object v3, p0, Lcom/spotify/mobile/android/ui/l;->f:Ljava/lang/String;
:goto_c3
:cond_c3
return-void
:cond_c4
move v0, v2
goto :goto_bd
:cond_c6
invoke-virtual {p0, v4, v3}, Lcom/spotify/mobile/android/ui/l;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_c3
:cond_ca
move-object v4, v3
move-object v3, v0
goto :goto_ac
:cond_cd
move-object v0, v3
goto :goto_9c
.end method
.method public final a(Landroid/view/Menu;)V
.registers 4
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/l;->b()Z
move-result v0
if-nez v0, :cond_7
:goto_6
:cond_6
return-void
:cond_7
iget-object v0, p0, Lcom/spotify/mobile/android/ui/l;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->m()Landroid/support/v4/app/r;
move-result-object v0
const-string v1, "sub_fragment"
invoke-virtual {v0, v1}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_6
instance-of v1, v0, Lcom/spotify/mobile/android/ui/m;
if-eqz v1, :cond_6
check-cast v0, Lcom/spotify/mobile/android/ui/m;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/ui/m;->c(Landroid/view/Menu;)V
goto :goto_6
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 7
iget-object v0, p0, Lcom/spotify/mobile/android/ui/l;->e:Ljava/lang/String;
invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_3c
iput-object p1, p0, Lcom/spotify/mobile/android/ui/l;->e:Ljava/lang/String;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/l;->f:Ljava/lang/String;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/l;->b()Z
move-result v0
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/l;->b:Lcom/spotify/mobile/android/ui/n;
invoke-interface {v0, p1}, Lcom/spotify/mobile/android/ui/n;->a(Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/l;->e:Ljava/lang/String;
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/l;->b:Lcom/spotify/mobile/android/ui/n;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/l;->e:Ljava/lang/String;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/l;->f:Ljava/lang/String;
invoke-interface {v0, v1, v2}, Lcom/spotify/mobile/android/ui/n;->a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_3d
iget-object v1, p0, Lcom/spotify/mobile/android/ui/l;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->m()Landroid/support/v4/app/r;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;
move-result-object v1
const v2, 0x7f0a0143
const-string v3, "sub_fragment"
invoke-virtual {v1, v2, v0, v3}, Landroid/support/v4/app/w;->b(ILandroid/support/v4/app/Fragment;Ljava/lang/String;)Landroid/support/v4/app/w;
invoke-virtual {v1}, Landroid/support/v4/app/w;->b()I
:goto_3c
:cond_3c
return-void
:cond_3d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/l;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->m()Landroid/support/v4/app/r;
move-result-object v0
const-string v1, "sub_fragment"
invoke-virtual {v0, v1}, Landroid/support/v4/app/r;->a(Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/l;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->m()Landroid/support/v4/app/r;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/r;->a()Landroid/support/v4/app/w;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
invoke-virtual {v1}, Landroid/support/v4/app/w;->b()I
goto :goto_3c
.end method
.method public final a(Z)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/ui/l;->d:Landroid/view/View;
if-eqz v0, :cond_c
iget-object v1, p0, Lcom/spotify/mobile/android/ui/l;->d:Landroid/view/View;
if-eqz p1, :cond_d
const/4 v0, 0x0
:goto_9
invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V
:cond_c
return-void
:cond_d
const/16 v0, 0x8
goto :goto_9
.end method
.method public final b(Landroid/os/Bundle;)V
.registers 4
const-string v0, "sub_fragment_uri"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/l;->e:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "sub_fragment_name"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/l;->f:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final b()Z
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/l;->a:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->d(Landroid/content/Context;)Z
move-result v0
return v0
.end method
.method public final c()Z
.registers 2
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/l;->b()Z
move-result v0
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/l;->e:Ljava/lang/String;
if-nez v0, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method