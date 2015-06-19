.class public Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;
.super Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/connections/j;
.field  n:Z
.field private p:J
.field private q:Lcom/spotify/mobile/android/ui/actions/a;
.field private r:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
.field private s:Lcom/spotify/mobile/android/util/dw;
.field private t:Lcom/spotify/mobile/android/service/ConnectDevice;
.field private u:Lcom/spotify/mobile/android/service/connections/b;
.field private v:Z
.field private w:Z
.field private x:Lcom/spotify/android/paste/widget/DialogLayout;
.field private y:Landroid/widget/ImageView;
.field private z:Landroid/widget/TextView;
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;-><init>()V
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->q:Lcom/spotify/mobile/android/ui/actions/a;
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->a:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->r:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->v:Z
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->w:Z
return-void
.end method
.method public static a(Landroid/content/Context;Lcom/spotify/mobile/android/service/ConnectDevice;)Landroid/content/Intent;
.registers 4
invoke-static {p0}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
invoke-static {p1}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "active_device"
invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;)Lcom/spotify/mobile/android/service/connections/b;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->u:Lcom/spotify/mobile/android/service/connections/b;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->r:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
return-object p1
.end method
.method private a(Lcom/spotify/mobile/android/service/ConnectDevice;)V
.registers 4
invoke-static {p1}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;)V
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->t:Lcom/spotify/mobile/android/service/ConnectDevice;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->t:Lcom/spotify/mobile/android/service/ConnectDevice;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;->c()Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->z:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->n:Z
if-eqz v0, :cond_2d
sget-object v0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$4;->a:[I
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->t:Lcom/spotify/mobile/android/service/ConnectDevice;
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/ConnectDevice;->k()Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_5c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->y:Landroid/widget/ImageView;
const v1, 0x7f020169
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
:goto_2d
:cond_2d
return-void
:pswitch_2e
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->y:Landroid/widget/ImageView;
const v1, 0x7f020166
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_2d
:pswitch_37
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->y:Landroid/widget/ImageView;
const v1, 0x7f02016a
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_2d
:pswitch_40
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->y:Landroid/widget/ImageView;
const v1, 0x7f020168
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_2d
:pswitch_49
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->y:Landroid/widget/ImageView;
const v1, 0x7f02016b
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_2d
:pswitch_52
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->y:Landroid/widget/ImageView;
const v1, 0x7f020167
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V
goto :goto_2d
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
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;Lcom/spotify/mobile/android/service/ConnectDevice;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->a(Lcom/spotify/mobile/android/service/ConnectDevice;)V
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;)Lcom/spotify/mobile/android/service/ConnectDevice;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->t:Lcom/spotify/mobile/android/service/ConnectDevice;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->w:Z
return v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->v:Z
return v0
.end method
.method public onBackPressed()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->u:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->l()Z
move-result v0
if-eqz v0, :cond_d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->u:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->d()V
:cond_d
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onBackPressed()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 10
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v7, -0x1
const/4 v6, -0x2
const/4 v5, 0x1
const/4 v4, 0x0
invoke-super {p0, p1}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Lcom/spotify/android/paste/widget/DialogLayout;
invoke-direct {v0, p0}, Lcom/spotify/android/paste/widget/DialogLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->x:Lcom/spotify/android/paste/widget/DialogLayout;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->x:Lcom/spotify/android/paste/widget/DialogLayout;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->setContentView(Landroid/view/View;)V
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aT:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {p0, v0}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->s:Lcom/spotify/mobile/android/util/dw;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->x:Lcom/spotify/android/paste/widget/DialogLayout;
const v1, 0x7f0f0164
new-instance v2, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$1;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$1;-><init>(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;)V
invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->a(ILandroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->x:Lcom/spotify/android/paste/widget/DialogLayout;
const v1, 0x7f0f0165
new-instance v2, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$2;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$2;-><init>(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;)V
invoke-virtual {v0, v1, v2}, Lcom/spotify/android/paste/widget/DialogLayout;->b(ILandroid/view/View$OnClickListener;)V
new-instance v0, Landroid/widget/LinearLayout;
invoke-direct {v0, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setOrientation(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0b004f
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f080006
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getBoolean(I)Z
move-result v2
iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->n:Z
iget-boolean v2, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->n:Z
if-eqz v2, :cond_7a
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0b004e
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
new-instance v3, Landroid/widget/ImageView;
invoke-direct {v3, p0}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v3, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->y:Landroid/widget/ImageView;
new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v3, v2, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v3, v4, v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
iput v5, v3, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->y:Landroid/widget/ImageView;
invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:cond_7a
new-instance v2, Landroid/widget/TextView;
invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
const v3, 0x7f0f0166
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(I)V
invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V
const v3, 0x7f010194
invoke-static {p0, v2, v3}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V
new-instance v3, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v3, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v3, v4, v1, v4, v4}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
invoke-virtual {v0, v2, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v2, Landroid/widget/TextView;
invoke-direct {v2, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
iput-object v2, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->z:Landroid/widget/TextView;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->z:Landroid/widget/TextView;
invoke-virtual {v2, v5}, Landroid/widget/TextView;->setSingleLine(Z)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->z:Landroid/widget/TextView;
sget-object v3, Landroid/text/TextUtils$TruncateAt;->MARQUEE:Landroid/text/TextUtils$TruncateAt;
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setEllipsize(Landroid/text/TextUtils$TruncateAt;)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->z:Landroid/widget/TextView;
invoke-virtual {v2, v7}, Landroid/widget/TextView;->setMarqueeRepeatLimit(I)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->z:Landroid/widget/TextView;
invoke-virtual {v2, v5}, Landroid/widget/TextView;->setGravity(I)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->z:Landroid/widget/TextView;
invoke-virtual {v2, v5}, Landroid/widget/TextView;->setHorizontallyScrolling(Z)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->z:Landroid/widget/TextView;
invoke-virtual {v2, v5}, Landroid/widget/TextView;->setFocusableInTouchMode(Z)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->z:Landroid/widget/TextView;
invoke-virtual {v2, v5}, Landroid/widget/TextView;->setFocusable(Z)V
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->z:Landroid/widget/TextView;
const v3, 0x7f01019c
invoke-static {p0, v2, v3}, Lcom/spotify/android/paste/widget/g;->b(Landroid/content/Context;Landroid/widget/TextView;I)V
new-instance v2, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v2, v7, v6}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v2, v4, v4, v4, v1}, Landroid/widget/LinearLayout$LayoutParams;->setMargins(IIII)V
iget-object v3, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->z:Landroid/widget/TextView;
invoke-virtual {v0, v3, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v0, v1, v1, v1, v1}, Landroid/widget/LinearLayout;->setPadding(IIII)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->x:Lcom/spotify/android/paste/widget/DialogLayout;
invoke-virtual {v1, v0}, Lcom/spotify/android/paste/widget/DialogLayout;->a(Landroid/view/View;)V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity; onCreate"
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
invoke-virtual {p0, p1}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->setIntent(Landroid/content/Intent;)V
return-void
.end method
.method protected onPause()V
.registers 7
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v0, 0x0
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onPause()V
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->w:Z
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->s:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/dw;->b()V
const/4 v1, -0x1
invoke-virtual {p0, v1}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->setResult(I)V
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->t:Lcom/spotify/mobile/android/service/ConnectDevice;
if-eqz v1, :cond_5f
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v1
iget-wide v3, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->p:J
sub-long/2addr v1, v3
const/4 v3, 0x2
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->getResources()Landroid/content/res/Resources;
move-result-object v4
invoke-virtual {v4}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v4
iget v4, v4, Landroid/content/res/Configuration;->orientation:I
if-ne v3, v4, :cond_28
const/4 v0, 0x1
:cond_28
new-instance v3, Lcom/spotify/mobile/android/util/ClientEvent;
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$Event;->U:Lcom/spotify/mobile/android/util/ClientEvent$Event;
iget-object v5, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->r:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-direct {v3, v4, v5}, Lcom/spotify/mobile/android/util/ClientEvent;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$Event;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;)V
const-string v4, "popup-duration"
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v3, v4, v1}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v1, "device-type"
iget-object v2, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->t:Lcom/spotify/mobile/android/service/ConnectDevice;
invoke-virtual {v2}, Lcom/spotify/mobile/android/service/ConnectDevice;->k()Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;
move-result-object v2
invoke-virtual {v2}, Lcom/spotify/mobile/android/service/ConnectDevice$DeviceType;->ordinal()I
move-result v2
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v1, v2}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
const-string v1, "landscape-orientation"
invoke-static {v0}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;
move-result-object v0
invoke-virtual {v3, v1, v0}, Lcom/spotify/mobile/android/util/ClientEvent;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/util/ClientEvent;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->q:Lcom/spotify/mobile/android/ui/actions/a;
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aT:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri$SubView;->I:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-static {p0, v0, v1, v3}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
:cond_5f
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 4
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onResume()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->w:Z
invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J
move-result-wide v0
iput-wide v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->p:J
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->s:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
const-string v0, "active_device"
invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/ConnectDevice;
if-eqz v0, :cond_3a
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;->a()Ljava/lang/String;
move-result-object v2
if-eqz v2, :cond_3a
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/ConnectDevice;->b()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3a
const-string v0, "active_device"
invoke-virtual {v1, v0}, Landroid/content/Intent;->getParcelableExtra(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/ConnectDevice;
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/Object;)V
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->a(Lcom/spotify/mobile/android/service/ConnectDevice;)V
:goto_39
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_3a
sget-object v0, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->at:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->r:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->finish()V
goto :goto_39
.end method
.method public onStart()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onStart()V
new-instance v0, Lcom/spotify/mobile/android/service/connections/b;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/connections/b;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->u:Lcom/spotify/mobile/android/service/connections/b;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->u:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/connections/b;->a(Lcom/spotify/mobile/android/service/connections/j;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->u:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->j()V
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onStop()V
.registers 3
const-string v1, " + Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/spotify/mobile/android/ui/activity/BaseFragmentActivity;->onStop()V
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->v:Z
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->u:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->a()Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->u:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->k()V
:cond_11
const-string v1, " - Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity; onStop"
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
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->v:Z
return-void
.end method
.method public final v_()V
.registers 3
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->v:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->u:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->a()Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;->u:Lcom/spotify/mobile/android/service/connections/b;
new-instance v1, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$3;
invoke-direct {v1, p0}, Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity$3;-><init>(Lcom/spotify/mobile/android/ui/activity/RemotePlaybackActivity;)V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/connections/b;->a(Lcom/spotify/mobile/android/service/connections/c;)Z
return-void
.end method