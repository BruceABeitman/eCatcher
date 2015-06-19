.class public Lcom/bbm/ui/QuickShareGlympseView;
.super Lcom/bbm/ui/QuickShareBaseView;
.source "QuickShareGlympseView.java"
.implements Lcom/glympse/android/api/GEventListener;
.field public a:Landroid/support/v4/app/h;
.field public final b:Landroid/content/Context;
.field  c:Landroid/view/View;
.field public d:Lcom/bbm/util/a/a;
.field public e:Ljava/lang/String;
.field public f:Lcom/google/android/gms/location/LocationClient;
.field public g:Lcom/bbm/ui/fa;
.field final h:Ljava/util/TimeZone;
.field private i:Z
.field private j:Lcom/bbm/ui/fb;
.field private k:Landroid/widget/Button;
.field private l:Landroid/widget/Button;
.field private m:Landroid/widget/Button;
.field private n:Landroid/widget/TextView;
.field private o:Lcom/glympse/android/controls/GTimerView;
.field private p:Landroid/view/View;
.field private q:Landroid/widget/ProgressBar;
.field private r:Landroid/widget/TextView;
.field private s:Lcom/glympse/android/api/GTicket;
.field private final t:Lcom/glympse/android/api/GGlympse;
.field private u:Landroid/location/LocationListener;
.field private final v:Landroid/view/View$OnClickListener;
.field private final w:Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;
.field private final x:Landroid/view/View$OnTouchListener;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/bbm/ui/QuickShareGlympseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/QuickShareGlympseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/bbm/ui/QuickShareBaseView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->i:Z
invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;
move-result-object v0
iget-object v0, v0, Lcom/bbm/o;->a:Lcom/glympse/android/api/GGlympse;
iput-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->t:Lcom/glympse/android/api/GGlympse;
new-instance v0, Lcom/bbm/ui/eq;
invoke-direct {v0, p0}, Lcom/bbm/ui/eq;-><init>(Lcom/bbm/ui/QuickShareGlympseView;)V
iput-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->u:Landroid/location/LocationListener;
invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;
move-result-object v0
invoke-virtual {v0}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->h:Ljava/util/TimeZone;
new-instance v0, Lcom/bbm/ui/er;
invoke-direct {v0, p0}, Lcom/bbm/ui/er;-><init>(Lcom/bbm/ui/QuickShareGlympseView;)V
iput-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->v:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/bbm/ui/es;
invoke-direct {v0, p0}, Lcom/bbm/ui/es;-><init>(Lcom/bbm/ui/QuickShareGlympseView;)V
iput-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->w:Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;
new-instance v0, Lcom/bbm/ui/et;
invoke-direct {v0, p0}, Lcom/bbm/ui/et;-><init>(Lcom/bbm/ui/QuickShareGlympseView;)V
iput-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->x:Landroid/view/View$OnTouchListener;
iput-object p1, p0, Lcom/bbm/ui/QuickShareGlympseView;->b:Landroid/content/Context;
return-void
.end method
.method private a(Landroid/location/Location;)V
.registers 8
const/4 v5, 0x0
invoke-static {p1}, Ldroidbox/android/location/Location;->getLatitude(Landroid/location/Location;)D
move-result-wide v0
invoke-static {p1}, Ldroidbox/android/location/Location;->getLongitude(Landroid/location/Location;)D
move-result-wide v2
iget-object v4, p0, Lcom/bbm/ui/QuickShareGlympseView;->j:Lcom/bbm/ui/fb;
if-eqz v4, :cond_30
iget-object v4, p0, Lcom/bbm/ui/QuickShareGlympseView;->j:Lcom/bbm/ui/fb;
invoke-virtual {v4}, Lcom/bbm/ui/fb;->getMapView()Lcom/bbm/compat/maps/c;
move-result-object v4
if-eqz v4, :cond_30
iget-object v4, p0, Lcom/bbm/ui/QuickShareGlympseView;->j:Lcom/bbm/ui/fb;
invoke-virtual {v4}, Lcom/bbm/ui/fb;->getMapView()Lcom/bbm/compat/maps/c;
move-result-object v4
invoke-interface {v4, v0, v1, v2, v3}, Lcom/bbm/compat/maps/c;->a(DD)V
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->j:Lcom/bbm/ui/fb;
invoke-virtual {v0}, Lcom/bbm/ui/fb;->getMapView()Lcom/bbm/compat/maps/c;
move-result-object v0
invoke-interface {v0, v5}, Lcom/bbm/compat/maps/c;->setZoomControlsEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->j:Lcom/bbm/ui/fb;
invoke-virtual {v0}, Lcom/bbm/ui/fb;->getMapView()Lcom/bbm/compat/maps/c;
move-result-object v0
invoke-interface {v0, v5}, Lcom/bbm/compat/maps/c;->setGesturesEnabled(Z)V
:cond_30
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/QuickShareGlympseView;Landroid/location/Location;)V
.registers 2
invoke-direct {p0, p1}, Lcom/bbm/ui/QuickShareGlympseView;->a(Landroid/location/Location;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/QuickShareGlympseView;Z)V
.registers 2
invoke-virtual {p0, p1}, Lcom/bbm/ui/QuickShareGlympseView;->a(Z)V
return-void
.end method
.method private a(ZLjava/lang/String;)V
.registers 6
const/16 v1, 0x8
const/4 v0, 0x0
iget-object v2, p0, Lcom/bbm/ui/QuickShareGlympseView;->q:Landroid/widget/ProgressBar;
invoke-virtual {v2, v0}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v2, p0, Lcom/bbm/ui/QuickShareGlympseView;->r:Landroid/widget/TextView;
invoke-virtual {v2, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, p0, Lcom/bbm/ui/QuickShareGlympseView;->m:Landroid/widget/Button;
invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V
iget-object v2, p0, Lcom/bbm/ui/QuickShareGlympseView;->p:Landroid/view/View;
if-eqz p1, :cond_1a
:goto_16
invoke-virtual {v2, v0}, Landroid/view/View;->setVisibility(I)V
return-void
:cond_1a
move v0, v1
goto :goto_16
.end method
.method static synthetic a(Lcom/bbm/ui/QuickShareGlympseView;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->i:Z
return v0
.end method
.method static synthetic b(Lcom/bbm/ui/QuickShareGlympseView;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->k:Landroid/widget/Button;
return-object v0
.end method
.method private c()V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->o:Lcom/glympse/android/controls/GTimerView;
new-instance v1, Lcom/bbm/ui/ey;
invoke-direct {v1, p0}, Lcom/bbm/ui/ey;-><init>(Lcom/bbm/ui/QuickShareGlympseView;)V
invoke-virtual {v0, v1}, Lcom/glympse/android/controls/GTimerView;->setTimeProvider(Lcom/glympse/android/controls/GTimerView$TimeProvider;)V
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->d:Lcom/bbm/util/a/a;
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/util/a/a;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_3a
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->d:Lcom/bbm/util/a/a;
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/util/a/a;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->d:Lcom/bbm/util/a/a;
invoke-virtual {v1, v0}, Lcom/bbm/util/a/a;->c(Ljava/lang/String;)Lcom/glympse/android/api/GTicket;
move-result-object v0
if-eqz v0, :cond_3a
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->isActive()Z
move-result v1
if-eqz v1, :cond_3a
iput-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->s:Lcom/glympse/android/api/GTicket;
const/4 v1, 0x1
invoke-direct {p0, v1}, Lcom/bbm/ui/QuickShareGlympseView;->setUILook(I)V
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->o:Lcom/glympse/android/controls/GTimerView;
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->getExpireTime()J
move-result-wide v2
invoke-virtual {v1, v2, v3}, Lcom/glympse/android/controls/GTimerView;->setModifyMode(J)V
:goto_39
return-void
:cond_3a
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/bbm/ui/QuickShareGlympseView;->setUILook(I)V
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->o:Lcom/glympse/android/controls/GTimerView;
const v1, 0x1b7740
invoke-virtual {v0, v1}, Lcom/glympse/android/controls/GTimerView;->setDurationMode(I)V
goto :goto_39
.end method
.method static synthetic c(Lcom/bbm/ui/QuickShareGlympseView;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/QuickShareGlympseView;->d()V
return-void
.end method
.method private d()V
.registers 6
const/4 v4, 0x1
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->o:Lcom/glympse/android/controls/GTimerView;
invoke-virtual {v0}, Lcom/glympse/android/controls/GTimerView;->getDuration()I
move-result v0
const-string v1, ""
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Lcom/glympse/android/api/GlympseFactory;->createTicket(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Lcom/glympse/android/api/GTicket;
move-result-object v0
const/4 v1, 0x6
const-string v2, ""
const-string v3, ""
invoke-static {v1, v2, v3}, Lcom/glympse/android/api/GlympseFactory;->createInvite(ILjava/lang/String;Ljava/lang/String;)Lcom/glympse/android/api/GInvite;
move-result-object v1
invoke-interface {v1, v4}, Lcom/glympse/android/api/GInvite;->setVisible(Z)V
invoke-interface {v0, v1}, Lcom/glympse/android/api/GTicket;->addInvite(Lcom/glympse/android/api/GInvite;)Z
invoke-interface {v0, p0}, Lcom/glympse/android/api/GTicket;->addListener(Lcom/glympse/android/api/GEventListener;)Z
invoke-virtual {p0}, Lcom/bbm/ui/QuickShareGlympseView;->getContext()Landroid/content/Context;
move-result-object v1
const v2, 0x7f0e05f0
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-direct {p0, v4, v1}, Lcom/bbm/ui/QuickShareGlympseView;->a(ZLjava/lang/String;)V
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->t:Lcom/glympse/android/api/GGlympse;
invoke-interface {v1, v0}, Lcom/glympse/android/api/GGlympse;->sendTicket(Lcom/glympse/android/api/GTicket;)Z
return-void
.end method
.method static synthetic d(Lcom/bbm/ui/QuickShareGlympseView;)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->s:Lcom/glympse/android/api/GTicket;
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->s:Lcom/glympse/android/api/GTicket;
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->isActive()Z
move-result v0
if-eqz v0, :cond_40
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->o:Lcom/glympse/android/controls/GTimerView;
invoke-virtual {v0}, Lcom/glympse/android/controls/GTimerView;->getDuration()I
move-result v0
if-lez v0, :cond_37
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->s:Lcom/glympse/android/api/GTicket;
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->o:Lcom/glympse/android/controls/GTimerView;
invoke-virtual {v1}, Lcom/glympse/android/controls/GTimerView;->getDuration()I
move-result v1
const-string v2, ""
const/4 v3, 0x0
invoke-interface {v0, v1, v2, v3}, Lcom/glympse/android/api/GTicket;->modify(ILjava/lang/String;Lcom/glympse/android/api/GPlace;)Z
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->o:Lcom/glympse/android/controls/GTimerView;
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->o:Lcom/glympse/android/controls/GTimerView;
invoke-virtual {v1}, Lcom/glympse/android/controls/GTimerView;->getExpireTime()J
move-result-wide v1
invoke-virtual {v0, v1, v2}, Lcom/glympse/android/controls/GTimerView;->setModifyMode(J)V
:goto_2d
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->t:Lcom/glympse/android/api/GGlympse;
invoke-interface {v0}, Lcom/glympse/android/api/GGlympse;->getHistoryManager()Lcom/glympse/android/api/GHistoryManager;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/api/GHistoryManager;->refresh()V
:goto_36
return-void
:cond_37
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->s:Lcom/glympse/android/api/GTicket;
invoke-interface {v0}, Lcom/glympse/android/api/GTicket;->expire()Z
invoke-direct {p0}, Lcom/bbm/ui/QuickShareGlympseView;->c()V
goto :goto_2d
:cond_40
invoke-direct {p0}, Lcom/bbm/ui/QuickShareGlympseView;->d()V
goto :goto_36
.end method
.method static synthetic e(Lcom/bbm/ui/QuickShareGlympseView;)Lcom/bbm/ui/fa;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->g:Lcom/bbm/ui/fa;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/QuickShareGlympseView;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->b:Landroid/content/Context;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/QuickShareGlympseView;)Lcom/glympse/android/controls/GTimerView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->o:Lcom/glympse/android/controls/GTimerView;
return-object v0
.end method
.method static synthetic h(Lcom/bbm/ui/QuickShareGlympseView;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->n:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/QuickShareGlympseView;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->q:Landroid/widget/ProgressBar;
return-object v0
.end method
.method static synthetic j(Lcom/bbm/ui/QuickShareGlympseView;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->r:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic k(Lcom/bbm/ui/QuickShareGlympseView;)Landroid/widget/Button;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->m:Landroid/widget/Button;
return-object v0
.end method
.method static synthetic l(Lcom/bbm/ui/QuickShareGlympseView;)V
.registers 3
const/4 v0, 0x0
const-string v1, ""
invoke-direct {p0, v0, v1}, Lcom/bbm/ui/QuickShareGlympseView;->a(ZLjava/lang/String;)V
return-void
.end method
.method private setUILook(I)V
.registers 5
const/16 v2, 0x8
const/4 v1, 0x0
packed-switch p1, :pswitch_data_24
:goto_6
return-void
:pswitch_7
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->l:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->k:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->k:Landroid/widget/Button;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/widget/Button;->setEnabled(Z)V
goto :goto_6
:pswitch_18
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->l:Landroid/widget/Button;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->k:Landroid/widget/Button;
invoke-virtual {v0, v2}, Landroid/widget/Button;->setVisibility(I)V
goto :goto_6
nop
:pswitch_data_24
.packed-switch 0x0
:pswitch_7
:pswitch_18
.end packed-switch
.end method
.method public final a()V
.registers 8
const/4 v6, 0x1
invoke-super {p0}, Lcom/bbm/ui/QuickShareBaseView;->a()V
iget-boolean v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->i:Z
if-nez v0, :cond_f9
invoke-static {}, Lcom/bbm/o;->a()Lcom/bbm/o;
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->b:Landroid/content/Context;
invoke-static {v0}, Lcom/bbm/o;->b(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_100
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->b:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03013e
invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
:try_start_1f
new-instance v0, Lcom/bbm/ui/fb;
invoke-direct {v0}, Lcom/bbm/ui/fb;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->j:Lcom/bbm/ui/fb;
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->j:Lcom/bbm/ui/fb;
new-instance v1, Lcom/bbm/ui/ex;
invoke-direct {v1, p0}, Lcom/bbm/ui/ex;-><init>(Lcom/bbm/ui/QuickShareGlympseView;)V
iput-object v1, v0, Lcom/bbm/ui/fb;->a:Lcom/bbm/ui/ez;
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->a:Landroid/support/v4/app/h;
invoke-virtual {v0}, Landroid/support/v4/app/h;->getSupportFragmentManager()Landroid/support/v4/app/n;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/n;->a()Landroid/support/v4/app/w;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->j:Lcom/bbm/ui/fb;
invoke-virtual {v0, v1}, Landroid/support/v4/app/w;->a(Landroid/support/v4/app/Fragment;)Landroid/support/v4/app/w;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/w;->a()I
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->j:Lcom/bbm/ui/fb;
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->t:Lcom/glympse/android/api/GGlympse;
invoke-virtual {v0, v1}, Lcom/bbm/ui/fb;->attachGlympse(Lcom/glympse/android/api/GGlympse;)V
:goto_49
:try_end_49
.catch Ljava/lang/NullPointerException; {:try_start_1f .. :try_end_49} :catch_fa
const v0, 0x7f0a0627
invoke-virtual {p0, v0}, Lcom/bbm/ui/QuickShareGlympseView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->c:Landroid/view/View;
const v0, 0x7f0a0634
invoke-virtual {p0, v0}, Lcom/bbm/ui/QuickShareGlympseView;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->p:Landroid/view/View;
const v0, 0x7f0a0636
invoke-virtual {p0, v0}, Lcom/bbm/ui/QuickShareGlympseView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->r:Landroid/widget/TextView;
const v0, 0x7f0a062a
invoke-virtual {p0, v0}, Lcom/bbm/ui/QuickShareGlympseView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->k:Landroid/widget/Button;
const v0, 0x7f0a062b
invoke-virtual {p0, v0}, Lcom/bbm/ui/QuickShareGlympseView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->l:Landroid/widget/Button;
const v0, 0x7f0a0637
invoke-virtual {p0, v0}, Lcom/bbm/ui/QuickShareGlympseView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->m:Landroid/widget/Button;
const v0, 0x7f0a0628
invoke-virtual {p0, v0}, Lcom/bbm/ui/QuickShareGlympseView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->n:Landroid/widget/TextView;
const v0, 0x7f0a0635
invoke-virtual {p0, v0}, Lcom/bbm/ui/QuickShareGlympseView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->q:Landroid/widget/ProgressBar;
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->k:Landroid/widget/Button;
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->v:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->l:Landroid/widget/Button;
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->v:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->m:Landroid/widget/Button;
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->v:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/QuickShareGlympseView;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "location"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
new-instance v1, Landroid/location/Criteria;
invoke-direct {v1}, Landroid/location/Criteria;-><init>()V
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Ldroidbox/android/location/LocationManager;->getBestProvider(Landroid/location/LocationManager;Landroid/location/Criteria;Z)Ljava/lang/String;
move-result-object v1
const-wide v2, 0x7fffffffffffffffL
const/high16 v4, 0x5f00
iget-object v5, p0, Lcom/bbm/ui/QuickShareGlympseView;->u:Landroid/location/LocationListener;
invoke-static/range {v0 .. v5}, Ldroidbox/android/location/LocationManager;->requestLocationUpdates(Landroid/location/LocationManager;Ljava/lang/String;JFLandroid/location/LocationListener;)V
const v0, 0x7f0a0629
invoke-virtual {p0, v0}, Lcom/bbm/ui/QuickShareGlympseView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/glympse/android/controls/GTimerView;
iput-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->o:Lcom/glympse/android/controls/GTimerView;
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->o:Lcom/glympse/android/controls/GTimerView;
invoke-virtual {v0, v6}, Lcom/glympse/android/controls/GTimerView;->setClickable(Z)V
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->o:Lcom/glympse/android/controls/GTimerView;
invoke-virtual {v0, v6}, Lcom/glympse/android/controls/GTimerView;->setEnabled(Z)V
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->o:Lcom/glympse/android/controls/GTimerView;
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->x:Landroid/view/View$OnTouchListener;
invoke-virtual {v0, v1}, Lcom/glympse/android/controls/GTimerView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->o:Lcom/glympse/android/controls/GTimerView;
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->w:Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;
invoke-virtual {v0, v1}, Lcom/glympse/android/controls/GTimerView;->setOnDurationChangedListener(Lcom/glympse/android/controls/GTimerView$OnDurationChangedListener;)V
:goto_f7
iput-boolean v6, p0, Lcom/bbm/ui/QuickShareGlympseView;->i:Z
:cond_f9
return-void
:catch_fa
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto/16 :goto_49
:cond_100
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->b:Landroid/content/Context;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03013f
invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0639
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
check-cast v0, Landroid/widget/Button;
new-instance v1, Lcom/bbm/ui/ew;
invoke-direct {v1, p0}, Lcom/bbm/ui/ew;-><init>(Lcom/bbm/ui/QuickShareGlympseView;)V
invoke-virtual {v0, v1}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto :goto_f7
.end method
.method final a(Z)V
.registers 6
const/4 v0, 0x0
const/4 v3, 0x0
const v1, 0x7f0a0631
invoke-virtual {p0, v1}, Lcom/bbm/ui/QuickShareGlympseView;->findViewById(I)Landroid/view/View;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/QuickShareGlympseView;->b:Landroid/content/Context;
invoke-static {v2}, Lcom/bbm/util/ck;->a(Landroid/content/Context;)Z
move-result v2
if-eqz v2, :cond_66
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->c:Landroid/view/View;
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
invoke-direct {p0}, Lcom/bbm/ui/QuickShareGlympseView;->c()V
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->f:Lcom/google/android/gms/location/LocationClient;
if-eqz v1, :cond_30
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->f:Lcom/google/android/gms/location/LocationClient;
invoke-virtual {v1}, Lcom/google/android/gms/location/LocationClient;->isConnected()Z
move-result v1
if-eqz v1, :cond_30
iget-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->f:Lcom/google/android/gms/location/LocationClient;
invoke-virtual {v0}, Lcom/google/android/gms/location/LocationClient;->getLastLocation()Landroid/location/Location;
move-result-object v0
:cond_30
if-eqz v0, :cond_3b
invoke-direct {p0, v0}, Lcom/bbm/ui/QuickShareGlympseView;->a(Landroid/location/Location;)V
const-string v0, ""
invoke-direct {p0, v3, v0}, Lcom/bbm/ui/QuickShareGlympseView;->a(ZLjava/lang/String;)V
:goto_3a
:cond_3a
return-void
:cond_3b
new-instance v0, Lcom/bbm/ui/eu;
invoke-direct {v0, p0}, Lcom/bbm/ui/eu;-><init>(Lcom/bbm/ui/QuickShareGlympseView;)V
const/4 v1, 0x1
invoke-virtual {p0}, Lcom/bbm/ui/QuickShareGlympseView;->getContext()Landroid/content/Context;
move-result-object v2
const v3, 0x7f0e04d2
invoke-virtual {v2, v3}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v1, v2}, Lcom/bbm/ui/QuickShareGlympseView;->a(ZLjava/lang/String;)V
invoke-virtual {p0}, Lcom/bbm/ui/QuickShareGlympseView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {p0}, Lcom/bbm/ui/QuickShareGlympseView;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0c0027
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getInteger(I)I
move-result v2
invoke-virtual {v0, v1, v2}, Lcom/bbm/util/cn;->a(Landroid/content/Context;I)V
goto :goto_3a
:cond_66
invoke-virtual {v1, v3}, Landroid/view/View;->setVisibility(I)V
if-eqz p1, :cond_3a
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->a:Landroid/support/v4/app/h;
invoke-static {v1, v0}, Lcom/bbm/util/ck;->a(Landroid/app/Activity;Landroid/view/View$OnClickListener;)V
goto :goto_3a
.end method
.method public final b()V
.registers 3
iget-boolean v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->i:Z
if-eqz v0, :cond_1e
invoke-virtual {p0}, Lcom/bbm/ui/QuickShareGlympseView;->removeAllViews()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->j:Lcom/bbm/ui/fb;
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/QuickShareGlympseView;->i:Z
invoke-virtual {p0}, Lcom/bbm/ui/QuickShareGlympseView;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "location"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->u:Landroid/location/LocationListener;
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->removeUpdates(Landroid/location/LocationManager;Landroid/location/LocationListener;)V
:cond_1e
invoke-super {p0}, Lcom/bbm/ui/QuickShareBaseView;->b()V
return-void
.end method
.method public eventsOccurred(Lcom/glympse/android/api/GGlympse;IILjava/lang/Object;)V
.registers 15
const/4 v9, 0x3
const/4 v8, 0x2
const/4 v7, 0x1
const/4 v6, 0x0
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "GE.events "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v6, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const/4 v0, 0x4
if-ne v0, p2, :cond_cc
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "GE.LISTENER_TICKET "
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v6, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
and-int/lit16 v0, p3, 0x1000
if-eqz v0, :cond_154
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-interface {p4}, Lcom/glympse/android/api/GTicket;->getInvites()Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v0, v6}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getState()I
move-result v1
if-ne v9, v1, :cond_4b
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->initiateClientSideSend()Z
invoke-interface {v0, v7}, Lcom/glympse/android/api/GInvite;->completeClientSideSend(Z)Z
:cond_4b
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->d:Lcom/bbm/util/a/a;
iget-object v2, p0, Lcom/bbm/ui/QuickShareGlympseView;->e:Ljava/lang/String;
if-eqz p4, :cond_5f
invoke-interface {p4}, Lcom/glympse/android/api/GTicket;->isWatching()Z
move-result v0
if-eqz v0, :cond_108
invoke-interface {p4}, Lcom/glympse/android/api/GTicket;->getCode()Ljava/lang/String;
move-result-object v3
if-eqz v2, :cond_5f
if-nez v3, :cond_cd
:goto_5f
:cond_5f
iget-object v1, p0, Lcom/bbm/ui/QuickShareGlympseView;->g:Lcom/bbm/ui/fa;
invoke-interface {p4}, Lcom/glympse/android/api/GTicket;->getInvites()Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v0, v6}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getCode()Ljava/lang/String;
move-result-object v2
invoke-interface {p4}, Lcom/glympse/android/api/GTicket;->getInvites()Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v0, v6}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getText()Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v2, v0}, Lcom/bbm/ui/fa;->a(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v0
sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;
invoke-interface {p4}, Lcom/glympse/android/api/GTicket;->getDuration()I
move-result v2
int-to-long v2, v2
invoke-virtual {v1, v2, v3}, Ljava/util/concurrent/TimeUnit;->toMinutes(J)J
move-result-wide v1
iget v3, v0, Lcom/bbm/c/c;->T:I
add-int/lit8 v3, v3, 0x1
iput v3, v0, Lcom/bbm/c/c;->T:I
iget-wide v3, v0, Lcom/bbm/c/c;->U:J
add-long/2addr v1, v3
iput-wide v1, v0, Lcom/bbm/c/c;->U:J
iget-wide v1, v0, Lcom/bbm/c/c;->U:J
iget v3, v0, Lcom/bbm/c/c;->T:I
int-to-long v3, v3
div-long/2addr v1, v3
iput-wide v1, v0, Lcom/bbm/c/c;->V:J
const-string v1, "Mixpanel glympseSent. Number = %d; Sum = %d; Average = %d"
new-array v2, v9, [Ljava/lang/Object;
iget v3, v0, Lcom/bbm/c/c;->T:I
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v6
iget-wide v3, v0, Lcom/bbm/c/c;->U:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v3
aput-object v3, v2, v7
iget-wide v3, v0, Lcom/bbm/c/c;->V:J
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
aput-object v0, v2, v8
invoke-static {v1, v2}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, ""
invoke-direct {p0, v6, v0}, Lcom/bbm/ui/QuickShareGlympseView;->a(ZLjava/lang/String;)V
invoke-interface {p4, p0}, Lcom/glympse/android/api/GTicket;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
invoke-direct {p0}, Lcom/bbm/ui/QuickShareGlympseView;->c()V
:goto_cc
:cond_cc
return-void
:cond_cd
iget-object v0, v1, Lcom/bbm/util/a/a;->c:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-nez v0, :cond_eb
invoke-static {v8}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
const-string v4, "incoming"
invoke-static {v4}, Lcom/glympse/android/core/CoreFactory;->createString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {v7}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v5
invoke-interface {v0, v4, v5}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
iget-object v4, v1, Lcom/bbm/util/a/a;->c:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v4, v2, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_eb
const-string v2, "incoming"
invoke-static {v2}, Lcom/glympse/android/core/CoreFactory;->createString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
invoke-static {v0, v3}, Lcom/bbm/util/a/a;->a(Lcom/glympse/android/core/GPrimitive;Ljava/lang/String;)V
invoke-static {v3}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v2
invoke-interface {v0, v2}, Lcom/glympse/android/core/GPrimitive;->put(Lcom/glympse/android/core/GPrimitive;)V
iget-object v0, v1, Lcom/bbm/util/a/a;->b:Lcom/glympse/android/core/GStorageUnit;
iget-object v1, v1, Lcom/bbm/util/a/a;->c:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0, v1}, Lcom/glympse/android/core/GStorageUnit;->save(Lcom/glympse/android/core/GPrimitive;)V
goto/16 :goto_5f
:cond_108
invoke-interface {p4}, Lcom/glympse/android/api/GTicket;->getInvites()Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v0}, Lcom/glympse/android/core/GArray;->length()I
move-result v0
if-lez v0, :cond_5f
invoke-interface {p4}, Lcom/glympse/android/api/GTicket;->getInvites()Lcom/glympse/android/core/GArray;
move-result-object v0
invoke-interface {v0, v6}, Lcom/glympse/android/core/GArray;->at(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/glympse/android/api/GInvite;
invoke-interface {v0}, Lcom/glympse/android/api/GInvite;->getCode()Ljava/lang/String;
move-result-object v3
if-eqz v2, :cond_5f
if-eqz v3, :cond_5f
iget-object v0, v1, Lcom/bbm/util/a/a;->c:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0, v2}, Lcom/glympse/android/core/GPrimitive;->get(Ljava/lang/String;)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
if-nez v0, :cond_142
invoke-static {v8}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v0
const-string v4, "incoming"
invoke-static {v4}, Lcom/glympse/android/core/CoreFactory;->createString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
invoke-static {v7}, Lcom/glympse/android/core/CoreFactory;->createPrimitive(I)Lcom/glympse/android/core/GPrimitive;
move-result-object v5
invoke-interface {v0, v4, v5}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
iget-object v4, v1, Lcom/bbm/util/a/a;->c:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v4, v2, v0}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Lcom/glympse/android/core/GPrimitive;)V
:cond_142
const-string v2, "outgoing"
invoke-static {v2}, Lcom/glympse/android/core/CoreFactory;->createString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-interface {v0, v2, v3}, Lcom/glympse/android/core/GPrimitive;->put(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, v1, Lcom/bbm/util/a/a;->b:Lcom/glympse/android/core/GStorageUnit;
iget-object v1, v1, Lcom/bbm/util/a/a;->c:Lcom/glympse/android/core/GPrimitive;
invoke-interface {v0, v1}, Lcom/glympse/android/core/GStorageUnit;->save(Lcom/glympse/android/core/GPrimitive;)V
goto/16 :goto_5f
:cond_154
const/high16 v0, 0x10
and-int/2addr v0, p3
if-eqz v0, :cond_cc
check-cast p4, Lcom/glympse/android/api/GTicket;
invoke-interface {p4, p0}, Lcom/glympse/android/api/GTicket;->removeListener(Lcom/glympse/android/api/GEventListener;)Z
const-string v0, ""
invoke-direct {p0, v6, v0}, Lcom/bbm/ui/QuickShareGlympseView;->a(ZLjava/lang/String;)V
goto/16 :goto_cc
.end method