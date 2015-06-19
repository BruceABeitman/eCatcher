.class public Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/connections/j;
.field private n:Lcom/spotify/android/paste/widget/DialogLayout;
.field private p:Landroid/widget/ImageView;
.field private q:Landroid/widget/TextView;
.field private r:Lcom/spotify/mobile/android/service/connections/b;
.field private s:Z
.field private t:Z
.field private u:Lcom/spotify/mobile/android/util/dw;
.field private v:Lcom/spotify/mobile/android/service/ConnectDevice;
.field private w:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
.field private x:Lcom/spotify/mobile/android/ui/actions/a;
.field private y:J
.field private z:I
.method public constructor <init>()V
.registers 2
const/4 v0, 0x0
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->s:Z
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->t:Z
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->a:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->w:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->x:Lcom/spotify/mobile/android/ui/actions/a;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->z:I
return p1
.end method
.method public static a(Landroid/content/Context;Ljava/util/ArrayList;)Landroid/content/Intent;
.registers 4
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "hardware_devices"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putParcelableArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;)Lcom/spotify/mobile/android/service/connections/b;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->r:Lcom/spotify/mobile/android/service/connections/b;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->w:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
return-object p1
.end method
.method private a(Lcom/spotify/mobile/android/service/ConnectDevice;)V
.registers 4
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->v:Lcom/spotify/mobile/android/service/ConnectDevice;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->q:Landroid/widget/TextView;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->v:Lcom/spotify/mobile/android/service/ConnectDevice;
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/ConnectDevice;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
sget-object v0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$4;->a:[I
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->v:Lcom/spotify/mobile/android/service/ConnectDevice;
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/ConnectDevice;->k()Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_5c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->p:Landroid/widget/ImageView;
const v1, 0x7f020169
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
:goto_26
invoke-static {p0}, Lcom/spotify/mobile/android/util/cx;->b(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/y;->a(Lcom/spotify/mobile/android/util/cx;)J
return-void
:pswitch_2e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->p:Landroid/widget/ImageView;
const v1, 0x7f020166
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_26
:pswitch_37
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->p:Landroid/widget/ImageView;
const v1, 0x7f02016a
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_26
:pswitch_40
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->p:Landroid/widget/ImageView;
const v1, 0x7f020168
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_26
:pswitch_49
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->p:Landroid/widget/ImageView;
const v1, 0x7f02016b
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_26
:pswitch_52
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->p:Landroid/widget/ImageView;
const v1, 0x7f020167
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_26
nop
:pswitch_data_5c
.packed-switch 0x1
:pswitch_2e
:pswitch_37
:pswitch_40
:pswitch_49
:pswitch_52
:pswitch_52
.end packed-switch
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;Lcom/spotify/mobile/android/service/ConnectDevice;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->a(Lcom/spotify/mobile/android/service/ConnectDevice;)V
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->s:Z
return v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;)Lcom/spotify/mobile/android/service/ConnectDevice;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->v:Lcom/spotify/mobile/android/service/ConnectDevice;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->t:Z
return v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->z:I
return v0
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 14
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const v11, 0x7f010194
const/4 v10, -0x1
const/4 v9, -0x2
const/4 v8, 0x0
const/4 v7, 0x1
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Lcom/spotify/android/paste/widget/DialogLayout;
invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->n:Lcom/spotify/android/paste/widget/DialogLayout;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->n:Lcom/spotify/android/paste/widget/DialogLayout;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->setContentView(Landroid/view/View;)V
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aU:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->u:Lcom/spotify/mobile/android/util/dw;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->n:Lcom/spotify/android/paste/widget/DialogLayout;
const v1, 0x7f0f015c
new-instance v2, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$1;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;)V
invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(ILandroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->n:Lcom/spotify/android/paste/widget/DialogLayout;
const v1, 0x7f0f015d
new-instance v2, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$2;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;)V
invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->b(ILandroid/view/View$OnClickListener;)V
new-instance v0, Landroid/widget/LinearLayout;
invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v7}, Landroid/widget/LinearLayout;->setOrientation(I)V
new-instance v1, Landroid/widget/ImageView;
invoke-direct {v1, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->p:Landroid/widget/ImageView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0b004e
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0b004f
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v3, v1, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
iput v7, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
const/4 v1, 0x2
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v4
iget v4, v4, Landroid/content/res/Configuration;->orientation:I
if-ne v1, v4, :cond_78
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->p:Landroid/widget/ImageView;
const/16 v4, 0x8
invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_78
new-instance v1, Landroid/widget/TextView;
invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f0f015f
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
const-string v5, "\n"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->getResources()Landroid/content/res/Resources;
move-result-object v5
const v6, 0x7f0f015e
invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v4
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {v1, v7}, Landroid/widget/TextView;->setGravity(I)V
const v4, 0x7f01019c
invoke-static {p0, v1, v4}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V
new-instance v4, Landroid/widget/TextView;
invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
iput-object v4, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->q:Landroid/widget/TextView;
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->q:Landroid/widget/TextView;
invoke-virtual {v4, v7}, Landroid/widget/TextView;->setSingleLine(Z)V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->q:Landroid/widget/TextView;
sget-object v5, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->q:Landroid/widget/TextView;
invoke-virtual {v4, v10}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->q:Landroid/widget/TextView;
invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->q:Landroid/widget/TextView;
invoke-virtual {v4, v7}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->q:Landroid/widget/TextView;
invoke-virtual {v4, v7}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->q:Landroid/widget/TextView;
invoke-virtual {v4, v7}, Landroid/widget/TextView;->setFocusable(Z)V
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->q:Landroid/widget/TextView;
invoke-static {p0, v4, v11}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V
new-instance v4, Landroid/widget/TextView;
invoke-direct {v4, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
const v5, 0x7f0f015b
invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(I)V
invoke-virtual {v4, v7}, Landroid/widget/TextView;->setGravity(I)V
new-instance v5, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v5, v10, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v5, v8, v2, v8, v2}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
invoke-static {p0, v4, v11}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V
iget-object v6, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->p:Landroid/widget/ImageView;
invoke-virtual {v0, v6, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->q:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-virtual {v0, v4, v5}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v0, v8, v2, v8, v8}, Landroid/widget/LinearLayout;->setPadding(IIII)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->n:Lcom/spotify/android/paste/widget/DialogLayout;
invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Landroid/view/View;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onNewIntent(Landroid/content/Intent;)V
.registers 2
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onNewIntent(Landroid/content/Intent;)V
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->setIntent(Landroid/content/Intent;)V
return-void
.end method
.method protected onPause()V
.registers 7
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x0
const/4 v0, 0x0
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onPause()V
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->t:Z
const/4 v1, -0x1
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->setResult(I)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->u:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/dw;->b()V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->v:Lcom/spotify/mobile/android/service/ConnectDevice;
if-eqz v1, :cond_57
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v1
iget-wide v3, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->y:J
sub-long/2addr v1, v3
const/4 v3, 0x2
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v4
iget v4, v4, Landroid/content/res/Configuration;->orientation:I
if-ne v3, v4, :cond_29
const/4 v0, 0x1
:cond_29
const-string v3, "gaia-onboarding"
iget-object v4, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->w:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-static {v3, v4, v5, v5}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v3
const-string v4, "popup-duration"
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v4, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v1, "landscape-orientation"
invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v1, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v0, "device-count"
iget v1, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->z:I
invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v0, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->x:Lcom/spotify/mobile/android/ui/actions/a;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aU:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri$SubView;->L:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-static {p0, v0, v1, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
:cond_57
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onResume()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->u:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
iput-wide v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->y:J
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->t:Z
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "hardware_devices"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getParcelableArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
if-eqz v0, :cond_23
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-nez v1, :cond_2b
:cond_23
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->at:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->w:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->finish()V
:goto_2a
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_2b
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/ConnectDevice;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->a(Lcom/spotify/mobile/android/service/ConnectDevice;)V
goto :goto_2a
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onStart()V
new-instance v0, Lcom/spotify/mobile/android/service/connections/b;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/connections/b;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->r:Lcom/spotify/mobile/android/service/connections/b;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->r:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/connections/b;->a(Lcom/spotify/mobile/android/service/connections/j;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->r:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->j()V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onStop()V
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->s:Z
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->r:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->a()Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->r:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->k()V
:cond_11
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final u_()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->s:Z
return-void
.end method
.method public final v_()V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->s:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->r:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->a()Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;->r:Lcom/spotify/mobile/android/service/connections/b;
new-instance v1, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$3;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity$3;-><init>(Lcom/spotify/mobile/android/ui/activity/ConnectOnboardingActivity;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/connections/b;->a(Lcom/spotify/mobile/android/service/connections/c;)Z
return-void
.end method