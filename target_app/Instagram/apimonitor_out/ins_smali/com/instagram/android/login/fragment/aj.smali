.class final Lcom/instagram/android/login/fragment/aj;
.super Lcom/instagram/api/j/a;
.source "PhoneNumberEntryFragment.java"
.field final synthetic a:Lcom/instagram/android/login/fragment/ad;
.method private constructor <init>(Lcom/instagram/android/login/fragment/ad;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/login/fragment/aj;->a:Lcom/instagram/android/login/fragment/ad;
invoke-direct {p0}, Lcom/instagram/api/j/a;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/ad;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/instagram/android/login/fragment/aj;-><init>(Lcom/instagram/android/login/fragment/ad;)V
return-void
.end method
.method private c()V
.registers 7
const/4 v5, 0x0
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
invoke-virtual {v0, v5}, Lcom/instagram/a/e;->c(Z)V
new-instance v0, Lcom/instagram/ui/dialog/b;
iget-object v1, p0, Lcom/instagram/android/login/fragment/aj;->a:Lcom/instagram/android/login/fragment/ad;
invoke-virtual {v1}, Lcom/instagram/android/login/fragment/ad;->n()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/ui/dialog/b;-><init>(Landroid/content/Context;)V
sget v1, Lcom/facebook/az;->password_reset_sent_short:I
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(I)Lcom/instagram/ui/dialog/b;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/login/fragment/aj;->a:Lcom/instagram/android/login/fragment/ad;
sget v2, Lcom/facebook/az;->password_reset_sent:I
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
iget-object v4, p0, Lcom/instagram/android/login/fragment/aj;->a:Lcom/instagram/android/login/fragment/ad;
invoke-static {v4}, Lcom/instagram/android/login/fragment/ad;->f(Lcom/instagram/android/login/fragment/ad;)Ljava/lang/String;
move-result-object v4
invoke-static {v4}, Landroid/telephony/PhoneNumberUtils;->formatNumber(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v5
invoke-virtual {v1, v2, v3}, Lcom/instagram/android/login/fragment/ad;->a(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/ui/dialog/b;->a(Ljava/lang/CharSequence;)Lcom/instagram/ui/dialog/b;
move-result-object v0
sget v1, Lcom/facebook/az;->ok:I
new-instance v2, Lcom/instagram/android/login/fragment/ak;
invoke-direct {v2, p0}, Lcom/instagram/android/login/fragment/ak;-><init>(Lcom/instagram/android/login/fragment/aj;)V
invoke-virtual {v0, v1, v2}, Lcom/instagram/ui/dialog/b;->b(ILandroid/content/DialogInterface$OnClickListener;)Lcom/instagram/ui/dialog/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/ui/dialog/b;->c()Landroid/app/Dialog;
move-result-object v0
invoke-virtual {v0}, Landroid/app/Dialog;->show()V
return-void
.end method
.method public final a()V
.registers 3
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
return-void
.end method
.method protected final a(Lcom/instagram/api/j/j;)V
.registers 6
invoke-static {}, Lcom/instagram/a/e;->b()Lcom/instagram/a/e;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/instagram/a/e;->c(Z)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/aj;->a:Lcom/instagram/android/login/fragment/ad;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ad;->n()Landroid/content/Context;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/api/j/j;->b()Ljava/lang/String;
move-result-object v1
invoke-virtual {p1}, Lcom/instagram/api/j/j;->i()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-static {v0, v1, v2, v3}, Lcom/instagram/n/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected final synthetic a(Ljava/lang/Object;)V
.registers 2
invoke-direct {p0}, Lcom/instagram/android/login/fragment/aj;->c()V
return-void
.end method