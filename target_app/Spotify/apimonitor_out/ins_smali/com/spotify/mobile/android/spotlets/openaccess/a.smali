.class public Lcom/spotify/mobile/android/spotlets/openaccess/a;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.field protected a:Landroid/view/View;
.field private b:Lcom/spotify/mobile/android/spotlets/openaccess/util/c;
.field private c:Landroid/content/DialogInterface$OnClickListener;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
const-class v0, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a;->b:Lcom/spotify/mobile/android/spotlets/openaccess/util/c;
new-instance v0, Lcom/spotify/mobile/android/spotlets/openaccess/a$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/openaccess/a$1;-><init>(Lcom/spotify/mobile/android/spotlets/openaccess/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a;->c:Landroid/content/DialogInterface$OnClickListener;
return-void
.end method
.method public a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
const v0, 0x7f03006f
const/4 v1, 0x0
invoke-virtual {p1, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a02b5
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a;->a:Landroid/view/View;
return-object v0
.end method
.method public final a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
.registers 4
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "intent"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1, v0}, Lcom/spotify/mobile/android/service/LoginActivity;->a(Landroid/content/Context;Landroid/content/Intent;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/openaccess/a;->a(Landroid/content/Intent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a;->b:Lcom/spotify/mobile/android/spotlets/openaccess/util/c;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/openaccess/util/c;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/openaccess/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->finish()V
return-void
.end method
.method public final b(Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a;->a:Landroid/view/View;
invoke-virtual {v0}, Landroid/view/View;->getVisibility()I
move-result v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a;->a:Landroid/view/View;
new-instance v1, Lcom/spotify/mobile/android/spotlets/openaccess/a$2;
invoke-direct {v1, p0, p1}, Lcom/spotify/mobile/android/spotlets/openaccess/a$2;-><init>(Lcom/spotify/mobile/android/spotlets/openaccess/a;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/openaccess/a;->a:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto :goto_8
.end method