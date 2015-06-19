.class  Lcom/twidroid/activity/UberSocialSettings20$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Landroid/preference/Preference$OnPreferenceChangeListener;
.field final synthetic a:Lcom/twidroid/activity/UberSocialSettings20;
.method constructor <init>(Lcom/twidroid/activity/UberSocialSettings20;)V
.registers 2
iput-object p1, p0, Lcom/twidroid/activity/UberSocialSettings20$1;->a:Lcom/twidroid/activity/UberSocialSettings20;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
.registers 6
const/4 v0, 0x1
check-cast p2, Ljava/lang/Boolean;
invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v1
if-ne v1, v0, :cond_23
new-instance v1, Ljava/io/File;
const-string v2, "/sdcard/data"
invoke-direct {v1, v2}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v1}, Ljava/io/File;->isFile()Z
move-result v1
if-eqz v1, :cond_23
iget-object v1, p0, Lcom/twidroid/activity/UberSocialSettings20$1;->a:Lcom/twidroid/activity/UberSocialSettings20;
const v2, 0x7f0c003d
invoke-static {v1, v2, v0}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
const/4 v0, 0x0
:cond_23
return v0
.end method