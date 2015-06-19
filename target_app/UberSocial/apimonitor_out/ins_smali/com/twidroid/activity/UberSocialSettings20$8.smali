.class  Lcom/twidroid/activity/UberSocialSettings20$8;
.super Lcom/ubermedia/a/a;
.source "SourceFile"
.field  a:I
.field  b:Ljava/lang/String;
.field final synthetic c:Landroid/preference/Preference;
.field final synthetic d:Landroid/preference/Preference;
.field final synthetic e:Lcom/twidroid/activity/UberSocialSettings20;
.method constructor <init>(Lcom/twidroid/activity/UberSocialSettings20;Landroid/preference/Preference;Landroid/preference/Preference;)V
.registers 5
iput-object p1, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->e:Lcom/twidroid/activity/UberSocialSettings20;
iput-object p2, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->c:Landroid/preference/Preference;
iput-object p3, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->d:Landroid/preference/Preference;
invoke-direct {p0}, Lcom/ubermedia/a/a;-><init>()V
const/4 v0, -0x1
iput v0, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->a:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->b:Ljava/lang/String;
return-void
.end method
.method protected varargs a([Ljava/lang/Void;)Ljava/lang/Boolean;
.registers 7
const/4 v1, 0x1
const/4 v4, 0x0
const/4 v3, -0x1
:try_start_3
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->e:Lcom/twidroid/activity/UberSocialSettings20;
invoke-static {v0}, Lcom/google/android/gms/ads/a/a;->a(Landroid/content/Context;)Lcom/google/android/gms/ads/a/b;
move-result-object v2
invoke-virtual {v2}, Lcom/google/android/gms/ads/a/b;->b()Z
move-result v0
if-eqz v0, :cond_1d
move v0, v1
:goto_10
iput v0, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->a:I
invoke-virtual {v2}, Lcom/google/android/gms/ads/a/b;->a()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->b:Ljava/lang/String;
:goto_18
:try_end_18
.catch Ljava/io/IOException; {:try_start_3 .. :try_end_18} :catch_1f
.catch Lcom/google/android/gms/common/g; {:try_start_3 .. :try_end_18} :catch_28
.catch Lcom/google/android/gms/common/h; {:try_start_3 .. :try_end_18} :catch_31
invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v0
return-object v0
:cond_1d
const/4 v0, 0x0
goto :goto_10
:catch_1f
move-exception v0
invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V
iput v3, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->a:I
iput-object v4, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->b:Ljava/lang/String;
goto :goto_18
:catch_28
move-exception v0
invoke-virtual {v0}, Lcom/google/android/gms/common/g;->printStackTrace()V
iput v3, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->a:I
iput-object v4, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->b:Ljava/lang/String;
goto :goto_18
:catch_31
move-exception v0
invoke-virtual {v0}, Lcom/google/android/gms/common/h;->printStackTrace()V
iput v3, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->a:I
iput-object v4, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->b:Ljava/lang/String;
goto :goto_18
.end method
.method protected bridge synthetic a([Ljava/lang/Object;)Ljava/lang/Object;
.registers 3
check-cast p1, [Ljava/lang/Void;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/UberSocialSettings20$8;->a([Ljava/lang/Void;)Ljava/lang/Boolean;
move-result-object v0
return-object v0
.end method
.method protected a(Ljava/lang/Boolean;)V
.registers 4
invoke-super {p0, p1}, Lcom/ubermedia/a/a;->a(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->b:Ljava/lang/String;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->c:Landroid/preference/Preference;
iget-object v1, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
:goto_e
iget v0, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->a:I
packed-switch v0, :pswitch_data_36
:goto_13
return-void
:cond_14
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->c:Landroid/preference/Preference;
const-string v1, "Can\'t get ad ID"
invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
goto :goto_e
:pswitch_1c
iget-object v0, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->d:Landroid/preference/Preference;
const-string v1, "Can\'t get optOup value"
invoke-virtual {v0, v1}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
goto :goto_13
:pswitch_24
iget-object v1, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->d:Landroid/preference/Preference;
iget v0, p0, Lcom/twidroid/activity/UberSocialSettings20$8;->a:I
if-lez v0, :cond_33
const/4 v0, 0x1
:goto_2b
invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/preference/Preference;->setSummary(Ljava/lang/CharSequence;)V
goto :goto_13
:cond_33
const/4 v0, 0x0
goto :goto_2b
nop
:pswitch_data_36
.packed-switch -0x1
:pswitch_1c
:pswitch_24
:pswitch_24
.end packed-switch
.end method
.method protected bridge synthetic a(Ljava/lang/Object;)V
.registers 2
check-cast p1, Ljava/lang/Boolean;
invoke-virtual {p0, p1}, Lcom/twidroid/activity/UberSocialSettings20$8;->a(Ljava/lang/Boolean;)V
return-void
.end method