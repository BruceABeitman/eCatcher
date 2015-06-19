.class public Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.field public static final n:Lcom/spotify/mobile/android/util/cz;
.field final p:Landroid/view/View$OnClickListener;
.field private q:Lcom/spotify/mobile/android/ui/actions/a;
.field private r:Lcom/spotify/mobile/android/ui/actions/d;
.field private s:Landroid/widget/CheckBox;
.method static constructor <clinit>()V
.registers 1
const-string v0, "sound_effect_dialog_disabled"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->n:Lcom/spotify/mobile/android/util/cz;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->q:Lcom/spotify/mobile/android/ui/actions/a;
const-class v0, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->r:Lcom/spotify/mobile/android/ui/actions/d;
new-instance v0, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->p:Landroid/view/View$OnClickListener;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;)Lcom/spotify/mobile/android/ui/actions/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->q:Lcom/spotify/mobile/android/ui/actions/a;
return-object v0
.end method
.method public static a(Landroid/content/Context;)Z
.registers 4
invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->n:Lcom/spotify/mobile/android/util/cz;
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Z)Z
move-result v0
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;)Landroid/widget/CheckBox;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->s:Landroid/widget/CheckBox;
return-object v0
.end method
.method public static b(Landroid/content/Context;)V
.registers 3
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const/high16 v1, 0x4000
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
const/high16 v1, 0x1
invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;
invoke-virtual {p0, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;)Lcom/spotify/mobile/android/ui/actions/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->r:Lcom/spotify/mobile/android/ui/actions/d;
return-object v0
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 8
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x0
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Lcom/spotify/android/paste/widget/DialogLayout;
invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->setContentView(Landroid/view/View;)V
const v1, 0x7f0f01e4
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->a(I)V
const v1, 0x7f0f01e3
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->c(I)V
invoke-static {p0}, Lcom/spotify/android/paste/widget/h;->c(Landroid/content/Context;)Landroid/widget/CheckBox;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->s:Landroid/widget/CheckBox;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->s:Landroid/widget/CheckBox;
const v2, 0x7f0f01e2
invoke-virtual {v1, v2}, Landroid/widget/CheckBox;->setText(I)V
new-instance v1, Landroid/widget/FrameLayout;
invoke-direct {v1, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
new-instance v2, Landroid/widget/FrameLayout$LayoutParams;
const/4 v3, -0x1
const/4 v4, -0x2
invoke-direct {v2, v3, v4}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0b0056
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I
move-result v3
invoke-virtual {v2, v5, v5, v5, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->s:Landroid/widget/CheckBox;
invoke-virtual {v1, v3, v2}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Landroid/view/View;)V
const v1, 0x7f0f03f3
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->p:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(ILandroid/view/View$OnClickListener;)V
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aD:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity;->a(Lcom/spotify/mobile/android/util/dw;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/SoundEffectsWarningActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method