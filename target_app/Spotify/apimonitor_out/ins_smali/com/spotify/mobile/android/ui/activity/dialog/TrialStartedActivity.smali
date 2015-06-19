.class public Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity;)V
.registers 5
const/4 v3, 0x0
new-instance v0, Landroid/content/ContentValues;
invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V
const-string v1, "should_show_trial_start_notice"
const/4 v2, 0x0
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Boolean;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity;->getContentResolver()Landroid/content/ContentResolver;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/provider/w;->a:Landroid/net/Uri;
invoke-virtual {v1, v2, v0, v3, v3}, Landroid/content/ContentResolver;->update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
const/4 v0, -0x1
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity;->setResult(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity;->finish()V
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 9
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x1
const/4 v6, 0x0
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
invoke-virtual {p0, v6}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity;->setResult(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "trial_length"
invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
if-gtz v0, :cond_1d
const-string v0, "Trial length is <= 0. Can\'t display trial started dialog."
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity;->finish()V
:goto_1c
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1d
new-instance v1, Lcom/spotify/android/paste/widget/DialogLayout;
invoke-direct {v1, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity;->setContentView(Landroid/view/View;)V
const v2, 0x7f0f03f0
invoke-virtual {v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(I)V
sget-object v2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
int-to-long v3, v0
invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toHours(J)J
move-result-wide v2
long-to-int v0, v2
sget-object v2, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;
int-to-long v3, v0
invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/TimeUnit;->toDays(J)J
move-result-wide v2
long-to-int v2, v2
div-int/lit8 v3, v2, 0x1e
if-lez v3, :cond_b1
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f0e0023
new-array v4, v5, [Ljava/lang/Object;
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v6
invoke-virtual {v0, v2, v3, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_52
invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->b(Ljava/lang/CharSequence;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v2, 0x7f080008
invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getBoolean(I)Z
move-result v0
if-eqz v0, :cond_68
const v0, 0x7f0201b4
invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->b(I)V
:cond_68
new-instance v0, Landroid/widget/LinearLayout;
invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0b00af
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v2
invoke-virtual {v0, v2, v2, v2, v2}, Landroid/widget/LinearLayout;->setPadding(IIII)V
invoke-static {p0, v0}, Lcom/spotify/android/paste/widget/h;->d(Landroid/content/Context;Landroid/view/ViewGroup;)Landroid/widget/Button;
move-result-object v2
const v3, 0x7f0f03ef
invoke-virtual {p0, v3}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;
move-result-object v4
invoke-virtual {v3, v4}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V
new-instance v3, Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity$1;
invoke-direct {v3, p0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity;)V
invoke-virtual {v2, v3}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
const/4 v4, -0x1
const/4 v5, -0x2
invoke-direct {v3, v4, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Landroid/view/View;)V
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->an:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity;->a(Lcom/spotify/mobile/android/util/dw;)V
goto/16 :goto_1c
:cond_b1
const/4 v3, 0x2
if-lt v2, v3, :cond_c8
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v3, 0x7f0e0021
new-array v4, v5, [Ljava/lang/Object;
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v6
invoke-virtual {v0, v3, v2, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_52
:cond_c8
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/dialog/TrialStartedActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0022
new-array v4, v5, [Ljava/lang/Object;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
aput-object v5, v4, v6
invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_52
.end method