.class final Lcom/instagram/android/login/fragment/cr;
.super Landroid/os/CountDownTimer;
.source "VerifyFragment.java"
.field final synthetic a:Lcom/instagram/android/login/fragment/ci;
.field private final b:Ljava/text/DateFormat;
.method synthetic constructor <init>(Lcom/instagram/android/login/fragment/ci;)V
.registers 8
const-wide/32 v2, 0x2bf20
const-wide/16 v4, 0x3e8
move-object v0, p0
move-object v1, p1
invoke-direct/range {v0 .. v5}, Lcom/instagram/android/login/fragment/cr;-><init>(Lcom/instagram/android/login/fragment/ci;JJ)V
return-void
.end method
.method private constructor <init>(Lcom/instagram/android/login/fragment/ci;JJ)V
.registers 10
iput-object p1, p0, Lcom/instagram/android/login/fragment/cr;->a:Lcom/instagram/android/login/fragment/ci;
const-wide/32 v0, 0x2bf20
const-wide/16 v2, 0x3e8
invoke-direct {p0, v0, v1, v2, v3}, Landroid/os/CountDownTimer;-><init>(JJ)V
new-instance v0, Ljava/text/SimpleDateFormat;
const-string v1, "m:ss"
sget-object v2, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-direct {v0, v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;Ljava/util/Locale;)V
iput-object v0, p0, Lcom/instagram/android/login/fragment/cr;->b:Ljava/text/DateFormat;
iget-object v0, p0, Lcom/instagram/android/login/fragment/cr;->b:Ljava/text/DateFormat;
const-string v1, "GMT"
invoke-static {v1}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/text/DateFormat;->setTimeZone(Ljava/util/TimeZone;)V
return-void
.end method
.method public final onFinish()V
.registers 10
iget-object v0, p0, Lcom/instagram/android/login/fragment/cr;->a:Lcom/instagram/android/login/fragment/ci;
invoke-static {v0}, Lcom/instagram/android/login/fragment/ci;->g(Lcom/instagram/android/login/fragment/ci;)Landroid/widget/TextView;
move-result-object v0
if-eqz v0, :cond_5f
iget-object v0, p0, Lcom/instagram/android/login/fragment/cr;->a:Lcom/instagram/android/login/fragment/ci;
invoke-static {v0}, Lcom/instagram/android/login/fragment/ci;->g(Lcom/instagram/android/login/fragment/ci;)Landroid/widget/TextView;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/instagram/android/login/fragment/cr;->a:Lcom/instagram/android/login/fragment/ci;
invoke-virtual {v0}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_5f
new-instance v0, Lcom/instagram/android/c/a/p;
iget-object v1, p0, Lcom/instagram/android/login/fragment/cr;->a:Lcom/instagram/android/login/fragment/ci;
invoke-virtual {v1}, Lcom/instagram/android/login/fragment/ci;->l()Landroid/support/v4/app/k;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/login/fragment/cr;->a:Lcom/instagram/android/login/fragment/ci;
invoke-virtual {v2}, Lcom/instagram/android/login/fragment/ci;->y()Landroid/support/v4/app/an;
move-result-object v2
iget-object v3, p0, Lcom/instagram/android/login/fragment/cr;->a:Lcom/instagram/android/login/fragment/ci;
invoke-virtual {v3}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;
move-result-object v3
const-string v4, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_IS_REG_FLOW"
invoke-virtual {v3, v4}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_60
sget v3, Lcom/instagram/android/c/a/r;->b:I
:goto_39
iget-object v4, p0, Lcom/instagram/android/login/fragment/cr;->a:Lcom/instagram/android/login/fragment/ci;
invoke-virtual {v4}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;
move-result-object v4
const-string v5, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_PHONE_NUMBER"
invoke-virtual {v4, v5}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
iget-object v5, p0, Lcom/instagram/android/login/fragment/cr;->a:Lcom/instagram/android/login/fragment/ci;
invoke-virtual {v5}, Lcom/instagram/android/login/fragment/ci;->j()Landroid/os/Bundle;
move-result-object v5
const-string v6, "com.instagram.android.login.fragment.VerifyFragment.ARGUMENT_DEVICE_ID"
invoke-virtual {v5, v6}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
new-instance v6, Lcom/instagram/android/login/fragment/co;
iget-object v7, p0, Lcom/instagram/android/login/fragment/cr;->a:Lcom/instagram/android/login/fragment/ci;
const/4 v8, 0x0
invoke-direct {v6, v7, v8}, Lcom/instagram/android/login/fragment/co;-><init>(Lcom/instagram/android/login/fragment/ci;B)V
invoke-direct/range {v0 .. v6}, Lcom/instagram/android/c/a/p;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILjava/lang/String;Ljava/lang/String;Lcom/instagram/api/j/a;)V
invoke-virtual {v0}, Lcom/instagram/android/c/a/p;->h()V
:cond_5f
return-void
:cond_60
sget v3, Lcom/instagram/android/c/a/r;->a:I
goto :goto_39
.end method
.method public final onTick(J)V
.registers 10
new-instance v0, Ljava/util/Date;
invoke-direct {v0, p1, p2}, Ljava/util/Date;-><init>(J)V
iget-object v1, p0, Lcom/instagram/android/login/fragment/cr;->a:Lcom/instagram/android/login/fragment/ci;
invoke-static {v1}, Lcom/instagram/android/login/fragment/ci;->g(Lcom/instagram/android/login/fragment/ci;)Landroid/widget/TextView;
move-result-object v1
if-eqz v1, :cond_2a
iget-object v1, p0, Lcom/instagram/android/login/fragment/cr;->a:Lcom/instagram/android/login/fragment/ci;
invoke-static {v1}, Lcom/instagram/android/login/fragment/ci;->g(Lcom/instagram/android/login/fragment/ci;)Landroid/widget/TextView;
move-result-object v1
iget-object v2, p0, Lcom/instagram/android/login/fragment/cr;->a:Lcom/instagram/android/login/fragment/ci;
sget v3, Lcom/facebook/az;->no_code_received:I
const/4 v4, 0x1
new-array v4, v4, [Ljava/lang/Object;
const/4 v5, 0x0
iget-object v6, p0, Lcom/instagram/android/login/fragment/cr;->b:Ljava/text/DateFormat;
invoke-virtual {v6, v0}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v0
aput-object v0, v4, v5
invoke-virtual {v2, v3, v4}, Lcom/instagram/android/login/fragment/ci;->a(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_2a
return-void
.end method