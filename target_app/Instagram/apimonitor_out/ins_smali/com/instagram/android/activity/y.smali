.class final Lcom/instagram/android/activity/y;
.super Ljava/lang/Object;
.source "TwitterAuthActivity.java"
.implements Lcom/instagram/share/f/i;
.field final synthetic a:Lcom/instagram/ui/dialog/f;
.field final synthetic b:Lcom/instagram/android/activity/TwitterAuthActivity;
.method constructor <init>(Lcom/instagram/android/activity/TwitterAuthActivity;Lcom/instagram/ui/dialog/f;)V
.registers 3
iput-object p1, p0, Lcom/instagram/android/activity/y;->b:Lcom/instagram/android/activity/TwitterAuthActivity;
iput-object p2, p0, Lcom/instagram/android/activity/y;->a:Lcom/instagram/ui/dialog/f;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public final a(Lcom/instagram/share/f/a;)V
.registers 8
iget-object v0, p0, Lcom/instagram/android/activity/y;->a:Lcom/instagram/ui/dialog/f;
invoke-virtual {v0}, Lcom/instagram/ui/dialog/f;->dismiss()V
iget-object v0, p0, Lcom/instagram/android/activity/y;->b:Lcom/instagram/android/activity/TwitterAuthActivity;
invoke-static {v0}, Lcom/instagram/android/activity/TwitterAuthActivity;->a(Lcom/instagram/android/activity/TwitterAuthActivity;)Ljava/lang/String;
new-instance v1, Ljava/lang/StringBuilder;
const-string v0, "Twitter login was "
invoke-direct {v1, v0}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
if-nez p1, :cond_38
const-string v0, "unsuccessful!"
:goto_15
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
if-nez p1, :cond_3b
iget-object v0, p0, Lcom/instagram/android/activity/y;->b:Lcom/instagram/android/activity/TwitterAuthActivity;
iget-object v1, p0, Lcom/instagram/android/activity/y;->b:Lcom/instagram/android/activity/TwitterAuthActivity;
invoke-virtual {v1}, Lcom/instagram/android/activity/TwitterAuthActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
sget v2, Lcom/facebook/az;->service_login_error:I
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
iget-object v5, p0, Lcom/instagram/android/activity/y;->b:Lcom/instagram/android/activity/TwitterAuthActivity;
invoke-virtual {v5}, Lcom/instagram/android/activity/TwitterAuthActivity;->f()Ljava/lang/String;
move-result-object v5
aput-object v5, v3, v4
invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/activity/TwitterAuthActivity;->b(Ljava/lang/String;)V
:goto_37
return-void
:cond_38
const-string v0, "a success."
goto :goto_15
:cond_3b
iget-object v0, p0, Lcom/instagram/android/activity/y;->b:Lcom/instagram/android/activity/TwitterAuthActivity;
sget v1, Lcom/facebook/av;->followInstagram:I
invoke-virtual {v0, v1}, Lcom/instagram/android/activity/TwitterAuthActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/CompoundButton;
invoke-virtual {v0}, Landroid/widget/CompoundButton;->isChecked()Z
move-result v0
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/instagram/android/activity/y;->b:Lcom/instagram/android/activity/TwitterAuthActivity;
invoke-static {v0}, Lcom/instagram/share/f/e;->a(Landroid/content/Context;)V
:cond_50
iget-object v0, p0, Lcom/instagram/android/activity/y;->b:Lcom/instagram/android/activity/TwitterAuthActivity;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Lcom/instagram/android/activity/TwitterAuthActivity;->setResult(I)V
iget-object v0, p0, Lcom/instagram/android/activity/y;->b:Lcom/instagram/android/activity/TwitterAuthActivity;
invoke-virtual {v0}, Lcom/instagram/android/activity/TwitterAuthActivity;->finish()V
goto :goto_37
.end method