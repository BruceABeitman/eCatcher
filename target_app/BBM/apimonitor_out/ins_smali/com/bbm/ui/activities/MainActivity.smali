.class public Lcom/bbm/ui/activities/MainActivity;
.super Lcom/bbm/ui/activities/ev;
.source "MainActivity.java"
.field private static final g:Lcom/bbm/d/a;
.field private F:I
.field private G:I
.field private H:I
.field private I:J
.field private J:J
.field private K:Ljava/lang/String;
.field private L:Z
.field private M:I
.field private N:Landroid/app/Fragment;
.field private O:Z
.field private P:Landroid/os/Handler;
.field private Q:Z
.field private R:I
.field private S:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.field private T:Ljava/lang/Runnable;
.field private final U:Lcom/bbm/j/k;
.field private final V:Lcom/bbm/j/k;
.field private W:Lcom/bbm/j/u;
.field private final X:Lcom/bbm/g/am;
.field private final Y:Lcom/bbm/j/k;
.field private Z:Lcom/bbm/util/cr;
.field public a:Lcom/bbm/d;
.field private final aa:Lcom/bbm/j/k;
.field private ab:Lcom/bbm/j/a;
.field private final ac:Lcom/bbm/ui/dw;
.field private final ad:Lcom/bbm/ui/ad;
.field private final ae:Landroid/view/View$OnClickListener;
.field private af:Landroid/os/Handler;
.field private final ag:Lcom/bbm/ui/c/fq;
.field private ah:Lcom/google/b/a/l;
.field private ai:Z
.field public final b:Lcom/bbm/j/t;
.field public c:I
.field public d:Landroid/net/Uri;
.field private e:Z
.field private f:Lcom/google/b/a/l;
.field private h:Landroid/view/View;
.field private i:Lcom/bbm/ui/ObservingImageView;
.field private j:Lcom/bbm/ui/MainTabBarView;
.field private k:Landroid/widget/TextView;
.field private l:Landroid/widget/TextView;
.field private m:Landroid/widget/ImageView;
.field private n:Landroid/widget/ImageView;
.field private o:Lcom/bbm/ui/activities/xn;
.field private p:Lcom/bbm/ui/activities/xm;
.field private final q:Lcom/bbm/util/cr;
.field private r:Landroid/widget/ImageButton;
.field private s:Landroid/widget/ImageView;
.field private t:Landroid/widget/ImageView;
.field private u:Landroid/widget/EditText;
.field private v:Z
.field private w:I
.method static constructor <clinit>()V
.registers 1
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
sput-object v0, Lcom/bbm/ui/activities/MainActivity;->g:Lcom/bbm/d/a;
return-void
.end method
.method public constructor <init>()V
.registers 6
const-wide/16 v3, 0x0
const/4 v0, 0x0
const/4 v2, 0x0
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/ev;-><init>(Ljava/lang/Class;)V
iput-boolean v2, p0, Lcom/bbm/ui/activities/MainActivity;->e:Z
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->o:Lcom/bbm/ui/activities/xn;
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->p:Lcom/bbm/ui/activities/xm;
new-instance v0, Lcom/bbm/util/cr;
const/4 v1, -0x1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->q:Lcom/bbm/util/cr;
iput-boolean v2, p0, Lcom/bbm/ui/activities/MainActivity;->v:Z
iput v2, p0, Lcom/bbm/ui/activities/MainActivity;->w:I
iput v2, p0, Lcom/bbm/ui/activities/MainActivity;->F:I
iput v2, p0, Lcom/bbm/ui/activities/MainActivity;->G:I
iput v2, p0, Lcom/bbm/ui/activities/MainActivity;->H:I
iput-wide v3, p0, Lcom/bbm/ui/activities/MainActivity;->I:J
iput-wide v3, p0, Lcom/bbm/ui/activities/MainActivity;->J:J
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/activities/MainActivity;->L:Z
const v0, 0x7f0a007d
iput v0, p0, Lcom/bbm/ui/activities/MainActivity;->M:I
new-instance v0, Lcom/bbm/j/t;
invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-direct {v0, v1}, Lcom/bbm/j/t;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->b:Lcom/bbm/j/t;
iput v2, p0, Lcom/bbm/ui/activities/MainActivity;->c:I
iput-boolean v2, p0, Lcom/bbm/ui/activities/MainActivity;->O:Z
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->P:Landroid/os/Handler;
iput-boolean v2, p0, Lcom/bbm/ui/activities/MainActivity;->Q:Z
new-instance v0, Lcom/bbm/ui/activities/ve;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/ve;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->T:Ljava/lang/Runnable;
new-instance v0, Lcom/bbm/ui/activities/vp;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/vp;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->U:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/ui/activities/wa;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/wa;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->V:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/ui/activities/wn;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/wn;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->W:Lcom/bbm/j/u;
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->X:Lcom/bbm/g/am;
new-instance v0, Lcom/bbm/ui/activities/xb;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/xb;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->Y:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/util/cr;
const-string v1, ""
invoke-direct {v0, v1}, Lcom/bbm/util/cr;-><init>(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->Z:Lcom/bbm/util/cr;
new-instance v0, Lcom/bbm/ui/activities/xi;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/xi;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->aa:Lcom/bbm/j/k;
new-instance v0, Lcom/bbm/ui/activities/xl;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/xl;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->ab:Lcom/bbm/j/a;
new-instance v0, Lcom/bbm/ui/activities/vf;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/vf;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->ac:Lcom/bbm/ui/dw;
new-instance v0, Lcom/bbm/ui/activities/vg;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/vg;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->ad:Lcom/bbm/ui/ad;
new-instance v0, Lcom/bbm/ui/activities/vh;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/vh;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->ae:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/bbm/ui/activities/vi;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/vi;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->af:Landroid/os/Handler;
new-instance v0, Lcom/bbm/ui/activities/vx;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/vx;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->ag:Lcom/bbm/ui/c/fq;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->ah:Lcom/google/b/a/l;
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->f:Lcom/google/b/a/l;
return-void
.end method
.method static synthetic A(Lcom/bbm/ui/activities/MainActivity;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/activities/MainActivity;->R:I
return v0
.end method
.method static synthetic B(Lcom/bbm/ui/activities/MainActivity;)V
.registers 3
const/16 v0, 0x3e8
iget-object v1, p0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
iget-object v1, v1, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v1}, Lcom/bbm/d/a;->h()Ljava/lang/String;
move-result-object v1
invoke-static {p0, v0, v1}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;ILjava/lang/String;)V
return-void
.end method
.method static synthetic C(Lcom/bbm/ui/activities/MainActivity;)Lcom/google/b/a/l;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->ah:Lcom/google/b/a/l;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/activities/MainActivity;I)I
.registers 2
iput p1, p0, Lcom/bbm/ui/activities/MainActivity;->R:I
return p1
.end method
.method static synthetic a(Lcom/bbm/ui/activities/MainActivity;J)J
.registers 3
iput-wide p1, p0, Lcom/bbm/ui/activities/MainActivity;->J:J
return-wide p1
.end method
.method static synthetic a(Lcom/bbm/ui/activities/MainActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->P:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/activities/MainActivity;Lcom/google/b/a/l;)Lcom/google/b/a/l;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/MainActivity;->ah:Lcom/google/b/a/l;
return-object p1
.end method
.method private a(Landroid/app/ActionBar;I)V
.registers 5
const v0, 0x7f030106
invoke-virtual {p1, v0}, Landroid/app/ActionBar;->setCustomView(I)V
invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0517
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ChannelsSegmentedControl;
invoke-virtual {v0, p2}, Lcom/bbm/ui/ChannelsSegmentedControl;->a(I)V
iget-boolean v1, p0, Lcom/bbm/ui/activities/MainActivity;->ai:Z
invoke-virtual {v0, v1}, Lcom/bbm/ui/ChannelsSegmentedControl;->setNotificationSplatVisibility(Z)V
iget-object v1, p0, Lcom/bbm/ui/activities/MainActivity;->ad:Lcom/bbm/ui/ad;
invoke-virtual {v0, v1}, Lcom/bbm/ui/ChannelsSegmentedControl;->setOnOptionSelectedListener(Lcom/bbm/ui/ad;)V
invoke-virtual {p1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0518
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iget-object v1, p0, Lcom/bbm/ui/activities/MainActivity;->ae:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;)V
.registers 9
const/4 v2, 0x0
move-object v0, p0
move-object v1, p1
move-object v3, v2
move-object v4, v2
move-object v5, v2
move-object v6, v2
invoke-static/range {v0 .. v6}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;)V
.registers 11
const/4 v4, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v3, p3
move-object v5, v4
move-object v6, v4
invoke-static/range {v0 .. v6}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
return-void
.end method
.method private static a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
.registers 16
const-string v0, "Requesting chat with user %s and file %s"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p1, v1, v2
const/4 v2, 0x1
aput-object p2, v1, v2
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/bbm/d/a;->g(Ljava/lang/String;)Lcom/google/b/f/a/l;
move-result-object v1
new-instance v0, Lcom/bbm/ui/activities/xg;
move-object v2, p1
move-object v3, p0
move-object v4, p2
move-object v5, p3
move-object v6, p5
move-object v7, p4
move-object v8, p6
invoke-direct/range {v0 .. v8}, Lcom/bbm/ui/activities/xg;-><init>(Lcom/google/b/f/a/l;Ljava/lang/String;Landroid/content/Context;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
invoke-static {}, Lcom/google/b/f/a/o;->a()Lcom/google/b/f/a/n;
move-result-object v2
invoke-interface {v1, v0, v2}, Lcom/google/b/f/a/l;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 11
const/4 v2, 0x0
move-object v0, p0
move-object v1, p1
move-object v3, v2
move-object v4, p2
move-object v5, p3
move-object v6, v2
invoke-static/range {v0 .. v6}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
return-void
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/util/HashMap;)V
.registers 10
const/4 v2, 0x0
move-object v0, p0
move-object v1, p1
move-object v3, v2
move-object v4, v2
move-object v5, v2
move-object v6, p2
invoke-static/range {v0 .. v6}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
return-void
.end method
.method private a(Landroid/content/Intent;)V
.registers 7
const/4 v2, 0x0
const-string v0, "NFC: handling an nfc invite"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
const-string v0, "android.nfc.extra.NDEF_MESSAGES"
invoke-virtual {p1, v0}, Landroid/content/Intent;->getParcelableArrayExtra(Ljava/lang/String;)[Landroid/os/Parcelable;
move-result-object v0
if-eqz v0, :cond_4a
array-length v1, v0
if-lez v1, :cond_4a
aget-object v0, v0, v2
check-cast v0, Landroid/nfc/NdefMessage;
invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;
move-result-object v1
array-length v1, v1
if-lez v1, :cond_4a
invoke-virtual {v0}, Landroid/nfc/NdefMessage;->getRecords()[Landroid/nfc/NdefRecord;
move-result-object v0
aget-object v0, v0, v2
new-instance v1, Ljava/lang/String;
invoke-virtual {v0}, Landroid/nfc/NdefRecord;->getPayload()[B
move-result-object v0
const/4 v2, 0x2
invoke-static {v0, v2}, Landroid/util/Base64;->encode([BI)[B
move-result-object v0
invoke-direct {v1, v0}, Ljava/lang/String;-><init>([B)V
invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
const-string v3, "add_contact_on_tap"
const/4 v4, 0x1
invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
sget-object v3, Lcom/bbm/d/bw;->a:Lcom/bbm/d/bw;
invoke-static {v0, v1, v3}, Lcom/bbm/d/z;->a(ZLjava/lang/String;Lcom/bbm/d/bw;)Lcom/bbm/d/bv;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
:cond_4a
return-void
.end method
.method private a(Landroid/os/Bundle;)V
.registers 12
const-string v0, "message"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
const-string v0, "userCustomMessage"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
const-string v0, "appId"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
const-string v0, "context"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v9
const-string v0, "token"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
const-string v0, "userUri"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_56
iget-object v1, p0, Lcom/bbm/ui/activities/MainActivity;->af:Landroid/os/Handler;
invoke-virtual {v1}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;
move-result-object v1
new-instance v2, Ljava/util/HashMap;
invoke-direct {v2}, Ljava/util/HashMap;-><init>()V
const-string v3, "appId"
invoke-interface {v2, v3, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "appMessage"
invoke-interface {v2, v3, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "appContext"
invoke-interface {v2, v3, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "customMessage"
invoke-interface {v2, v3, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
const-string v3, "receiverUri"
invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
iput-object v2, v1, Landroid/os/Message;->obj:Ljava/lang/Object;
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->af:Landroid/os/Handler;
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:goto_55
return-void
:cond_56
const-string v0, "receiverBbmId"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;
move-result-object v1
iget-wide v1, v1, Lcom/bbm/d/gp;->v:J
invoke-static {v1, v2}, Ljava/lang/Long;->toString(J)Ljava/lang/String;
move-result-object v8
invoke-virtual {v0, v3}, Lcom/bbm/d/a;->c(Ljava/lang/String;)Lcom/google/b/f/a/l;
move-result-object v2
new-instance v0, Lcom/bbm/ui/activities/wd;
move-object v1, p0
invoke-direct/range {v0 .. v9}, Lcom/bbm/ui/activities/wd;-><init>(Lcom/bbm/ui/activities/MainActivity;Lcom/google/b/f/a/l;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Lcom/google/b/f/a/o;->a()Lcom/google/b/f/a/n;
move-result-object v1
invoke-interface {v2, v0, v1}, Lcom/google/b/f/a/l;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
goto :goto_55
.end method
.method static synthetic a(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/ui/c/fm;)V
.registers 2
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/MainActivity;->a(Lcom/bbm/ui/c/fm;)V
return-void
.end method
.method private a(Lcom/bbm/ui/c/fm;)V
.registers 19
move-object/from16 v0, p0
iget-object v1, v0, Lcom/bbm/ui/activities/MainActivity;->o:Lcom/bbm/ui/activities/xn;
if-eqz v1, :cond_7
:goto_6
return-void
:cond_7
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
new-instance v3, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a007b
const v4, 0x7f02024d
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
const v5, 0x7f0e0236
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual/range {p0 .. p0}, Lcom/bbm/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v6
const v7, 0x7f0d0009
const/4 v8, 0x0
const/4 v9, 0x1
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
const/4 v11, 0x0
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v11
aput-object v11, v9, v10
invoke-virtual {v6, v7, v8, v9}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v3, v2, v4, v5, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v8, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a0084
const v4, 0x7f02025a
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
const v5, 0x7f0e0765
move-object/from16 v0, p0
invoke-virtual {v0, v5}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v5
invoke-virtual/range {p0 .. p0}, Lcom/bbm/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v6
const v7, 0x7f0d000c
const/4 v9, 0x0
const/4 v10, 0x1
new-array v10, v10, [Ljava/lang/Object;
const/4 v11, 0x0
const/4 v12, 0x0
invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v12
aput-object v12, v10, v11
invoke-virtual {v6, v7, v9, v10}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v6
invoke-direct {v8, v2, v4, v5, v6}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v5, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a007e
const v4, 0x7f02024f
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
const v6, 0x7f0e044e
move-object/from16 v0, p0
invoke-virtual {v0, v6}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v6
invoke-virtual/range {p0 .. p0}, Lcom/bbm/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v7
const v9, 0x7f0d000e
const/4 v10, 0x0
const/4 v11, 0x1
new-array v11, v11, [Ljava/lang/Object;
const/4 v12, 0x0
const/4 v13, 0x0
invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v13
aput-object v13, v11, v12
invoke-virtual {v7, v9, v10, v11}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v7
invoke-direct {v5, v2, v4, v6, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v4, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a007c
const v6, 0x7f02024e
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
const v7, 0x7f0e026c
move-object/from16 v0, p0
invoke-virtual {v0, v7}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v7
invoke-virtual/range {p0 .. p0}, Lcom/bbm/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v9
const v10, 0x7f0d000d
const/4 v11, 0x0
const/4 v12, 0x1
new-array v12, v12, [Ljava/lang/Object;
const/4 v13, 0x0
const/4 v14, 0x0
invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v14
aput-object v14, v12, v13
invoke-virtual {v9, v10, v11, v12}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v9
invoke-direct {v4, v2, v6, v7, v9}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v7, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a007a
const v6, 0x7f02024b
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
const v9, 0x7f0e0221
move-object/from16 v0, p0
invoke-virtual {v0, v9}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v9
invoke-virtual/range {p0 .. p0}, Lcom/bbm/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v10
const v11, 0x7f0d000a
const/4 v12, 0x0
const/4 v13, 0x1
new-array v13, v13, [Ljava/lang/Object;
const/4 v14, 0x0
const/4 v15, 0x0
invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v15
aput-object v15, v13, v14
invoke-virtual {v10, v11, v12, v13}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v10
invoke-direct {v7, v2, v6, v9, v10}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v6, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a007f
const v9, 0x7f020251
invoke-static {v9}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v9
const v10, 0x7f0e04b6
move-object/from16 v0, p0
invoke-virtual {v0, v10}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v10
invoke-virtual/range {p0 .. p0}, Lcom/bbm/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v11
const v12, 0x7f0d000b
const/4 v13, 0x0
const/4 v14, 0x1
new-array v14, v14, [Ljava/lang/Object;
const/4 v15, 0x0
const/16 v16, 0x0
invoke-static/range {v16 .. v16}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v16
aput-object v16, v14, v15
invoke-virtual {v11, v12, v13, v14}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v11
invoke-direct {v6, v2, v9, v10, v11}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v9, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a0082
const v10, 0x7f020259
invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v10
const v11, 0x7f0e069a
move-object/from16 v0, p0
invoke-virtual {v0, v11}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v11
const/4 v12, 0x0
invoke-direct {v9, v2, v10, v11, v12}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v1, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z
const/4 v2, 0x0
const/4 v10, 0x0
move-object/from16 v0, p1
invoke-virtual {v0, v1, v2, v10}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
move-object/from16 v0, p0
iget-object v1, v0, Lcom/bbm/ui/activities/MainActivity;->ag:Lcom/bbm/ui/c/fq;
move-object/from16 v0, p1
iput-object v1, v0, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
new-instance v1, Lcom/bbm/ui/activities/xn;
move-object/from16 v2, p0
invoke-direct/range {v1 .. v9}, Lcom/bbm/ui/activities/xn;-><init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
move-object/from16 v0, p0
iput-object v1, v0, Lcom/bbm/ui/activities/MainActivity;->o:Lcom/bbm/ui/activities/xn;
goto/16 :goto_6
.end method
.method private a(Ljava/util/List;)V
.registers 7
const/4 v4, 0x0
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v1, 0x7f0a0053
const v2, 0x7f020250
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
const v3, 0x7f0e0466
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v1, v2, v3, v4}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v1, 0x7f0a0058
const v2, 0x7f020257
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
const v3, 0x7f0e0665
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v1, v2, v3, v4}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method static synthetic a(ZJ)V
.registers 9
new-instance v0, Lorg/json/JSONObject;
invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V
new-instance v1, Lorg/json/JSONObject;
invoke-direct {v1}, Lorg/json/JSONObject;-><init>()V
new-instance v2, Ljava/util/LinkedList;
invoke-direct {v2}, Ljava/util/LinkedList;-><init>()V
:try_start_f
const-string v3, "enabled"
invoke-virtual {v0, v3, p0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;
const-wide/16 v3, 0x0
cmp-long v3, p1, v3
if-eqz v3, :cond_27
const-string v3, "nextDisplayTime"
const-wide/32 v4, 0x3f480
add-long/2addr v4, p1
invoke-static {v4, v5}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
:cond_27
const-string v3, "name"
const-string v4, "rateBbmNotification"
invoke-virtual {v1, v3, v4}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
const-string v3, "value"
invoke-virtual {v1, v3, v0}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
const-string v1, "global"
invoke-static {v2, v1}, Lcom/bbm/d/z;->b(Ljava/util/List;Ljava/lang/String;)Lcom/bbm/d/cz;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
:goto_43
:try_end_43
.catch Lorg/json/JSONException; {:try_start_f .. :try_end_43} :catch_44
return-void
:catch_44
move-exception v0
invoke-virtual {v0}, Lorg/json/JSONException;->toString()Ljava/lang/String;
move-result-object v0
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_43
.end method
.method static synthetic a(Lcom/bbm/ui/activities/MainActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/bbm/ui/activities/MainActivity;->ai:Z
return p1
.end method
.method static synthetic b(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/d;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/activities/MainActivity;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/MainActivity;->d(I)V
return-void
.end method
.method static synthetic c(Lcom/bbm/ui/activities/MainActivity;I)I
.registers 2
iput p1, p0, Lcom/bbm/ui/activities/MainActivity;->F:I
return p1
.end method
.method static synthetic c(Lcom/bbm/ui/activities/MainActivity;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->x()V
return-void
.end method
.method static synthetic d(Lcom/bbm/ui/activities/MainActivity;I)I
.registers 2
iput p1, p0, Lcom/bbm/ui/activities/MainActivity;->H:I
return p1
.end method
.method static synthetic d(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/g/am;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->X:Lcom/bbm/g/am;
return-object v0
.end method
.method private d(I)V
.registers 7
const/4 v4, 0x1
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
packed-switch p1, :pswitch_data_134
:pswitch_9
iget-object v1, p0, Lcom/bbm/ui/activities/MainActivity;->h:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;)V
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->x()V
iget-object v1, p0, Lcom/bbm/ui/activities/MainActivity;->r:Landroid/widget/ImageButton;
const v0, 0x7f0a007b
if-ne p1, v0, :cond_12f
move v0, v3
:goto_19
invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
:cond_1c
:goto_1c
return-void
:pswitch_1d
iput-boolean v3, p0, Lcom/bbm/ui/activities/MainActivity;->ai:Z
invoke-direct {p0, v0, p1}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/app/ActionBar;I)V
goto :goto_1c
:pswitch_23
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v1
invoke-virtual {v1}, Lcom/bbm/af;->n()Z
move-result v1
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v2
invoke-virtual {v2}, Lcom/bbm/af;->o()Z
move-result v2
if-eqz v1, :cond_6f
if-nez v2, :cond_6f
new-instance v1, Lcom/bbm/ui/b/j;
invoke-direct {v1, p0}, Lcom/bbm/ui/b/j;-><init>(Landroid/content/Context;)V
const v3, 0x7f0e01a4
invoke-virtual {v1, v3}, Lcom/bbm/ui/b/j;->setTitle(I)V
const v3, 0x7f0e019e
invoke-virtual {v1, v3}, Lcom/bbm/ui/b/j;->e(I)V
const v3, 0x7f0e019d
invoke-virtual {v1, v3}, Lcom/bbm/ui/b/j;->f(I)V
iput-boolean v4, v1, Lcom/bbm/ui/b/j;->e:Z
const v3, 0x7f0e019b
invoke-virtual {v1, v3}, Lcom/bbm/ui/b/j;->a(I)V
const v3, 0x7f0e019c
invoke-virtual {v1, v3}, Lcom/bbm/ui/b/j;->b(I)V
new-instance v3, Lcom/bbm/ui/activities/vn;
invoke-direct {v3, p0, v1}, Lcom/bbm/ui/activities/vn;-><init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/ui/b/j;)V
invoke-virtual {v1, v3}, Lcom/bbm/ui/b/j;->a(Landroid/view/View$OnClickListener;)V
new-instance v3, Lcom/bbm/ui/activities/vo;
invoke-direct {v3, p0, v1}, Lcom/bbm/ui/activities/vo;-><init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/ui/b/j;)V
invoke-virtual {v1, v3}, Lcom/bbm/ui/b/j;->b(Landroid/view/View$OnClickListener;)V
invoke-virtual {v1}, Lcom/bbm/ui/b/j;->show()V
:cond_6f
if-eqz v2, :cond_74
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->p()V
:cond_74
invoke-direct {p0, v0, p1}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/app/ActionBar;I)V
goto :goto_1c
:pswitch_78
invoke-direct {p0, v0, p1}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/app/ActionBar;I)V
goto :goto_1c
:pswitch_7c
const v1, 0x7f03010f
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V
const v0, 0x7f0a0548
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
invoke-virtual {v0, v4}, Landroid/widget/EditText;->setFocusable(Z)V
new-instance v1, Lcom/bbm/ui/activities/vq;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/vq;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V
const v1, 0x7f0a0549
invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/MainActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
new-instance v2, Lcom/bbm/ui/activities/vr;
invoke-direct {v2, p0, v0}, Lcom/bbm/ui/activities/vr;-><init>(Lcom/bbm/ui/activities/MainActivity;Landroid/widget/EditText;)V
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-static {}, Lcom/bbm/util/fb;->h()Z
move-result v2
if-eqz v2, :cond_b7
invoke-virtual {v1}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
check-cast v2, Landroid/widget/FrameLayout$LayoutParams;
const/16 v4, 0x13
iput v4, v2, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
:cond_b7
new-instance v2, Lcom/bbm/ui/activities/vs;
invoke-direct {v2, p0, v1, v0}, Lcom/bbm/ui/activities/vs;-><init>(Lcom/bbm/ui/activities/MainActivity;Landroid/widget/ImageView;Landroid/widget/EditText;)V
invoke-virtual {v0, v2}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
const v1, 0x7f0a0546
invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/MainActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V
new-instance v2, Lcom/bbm/ui/activities/vt;
invoke-direct {v2, p0, v0}, Lcom/bbm/ui/activities/vt;-><init>(Lcom/bbm/ui/activities/MainActivity;Landroid/widget/EditText;)V
invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto/16 :goto_1c
:pswitch_d5
const v1, 0x7f030105
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V
goto/16 :goto_1c
:pswitch_dd
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v1
invoke-virtual {v1}, Landroid/view/View;->getId()I
move-result v1
const v2, 0x7f0a0510
if-eq v1, v2, :cond_1c
const v1, 0x7f030104
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setCustomView(I)V
const v0, 0x7f0a0511
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->findViewById(I)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a0513
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->findViewById(I)Landroid/view/View;
move-result-object v2
const v0, 0x7f0a0512
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
const v0, 0x7f0a0514
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
new-instance v4, Lcom/bbm/ui/activities/vu;
invoke-direct {v4, p0}, Lcom/bbm/ui/activities/vu;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
invoke-virtual {v0, v4}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
new-instance v4, Lcom/bbm/ui/activities/vv;
invoke-direct {v4, p0, v1, v2, v0}, Lcom/bbm/ui/activities/vv;-><init>(Lcom/bbm/ui/activities/MainActivity;Landroid/view/View;Landroid/view/View;Landroid/widget/EditText;)V
invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v3, 0x7f0a0515
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/MainActivity;->findViewById(I)Landroid/view/View;
move-result-object v3
new-instance v4, Lcom/bbm/ui/activities/vw;
invoke-direct {v4, p0, v1, v2, v0}, Lcom/bbm/ui/activities/vw;-><init>(Lcom/bbm/ui/activities/MainActivity;Landroid/view/View;Landroid/view/View;Landroid/widget/EditText;)V
invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
goto/16 :goto_1c
:cond_12f
const/16 v0, 0x8
goto/16 :goto_19
nop
:pswitch_data_134
.packed-switch 0x7f0a0078
:pswitch_1d
:pswitch_9
:pswitch_9
:pswitch_9
:pswitch_9
:pswitch_23
:pswitch_9
:pswitch_dd
:pswitch_78
:pswitch_7c
:pswitch_d5
.end packed-switch
.end method
.method static synthetic e(Lcom/bbm/ui/activities/MainActivity;I)I
.registers 2
iput p1, p0, Lcom/bbm/ui/activities/MainActivity;->w:I
return p1
.end method
.method private e(I)V
.registers 4
invoke-static {}, Lcom/bbm/util/ac;->b()Z
move-result v0
if-eqz v0, :cond_16
new-instance v0, Lcom/bbm/ui/b/a;
invoke-direct {v0, p0}, Lcom/bbm/ui/b/a;-><init>(Landroid/app/Activity;)V
new-instance v1, Lcom/bbm/ui/activities/xh;
invoke-direct {v1, p0, p1, v0}, Lcom/bbm/ui/activities/xh;-><init>(Lcom/bbm/ui/activities/MainActivity;ILcom/bbm/ui/b/a;)V
iput-object v1, v0, Lcom/bbm/ui/b/a;->a:Lcom/bbm/ui/b/f;
invoke-virtual {v0}, Lcom/bbm/ui/b/a;->show()V
:goto_15
:cond_15
return-void
:cond_16
const v0, 0x7f0a0036
if-ne p1, v0, :cond_26
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/NewChannelActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_15
:cond_26
const v0, 0x7f0a0038
if-ne p1, v0, :cond_15
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/ChannelOwnerProfileActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_15
.end method
.method static synthetic e(Lcom/bbm/ui/activities/MainActivity;)V
.registers 9
const/4 v7, 0x0
sget-object v0, Lcom/bbm/ui/activities/MainActivity;->g:Lcom/bbm/d/a;
const-string v1, "rateBbmNotification"
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->E(Ljava/lang/String;)Lcom/bbm/util/bl;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/util/bl;->d()Lorg/json/JSONObject;
move-result-object v0
const-string v1, "nextDisplayTime"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J
move-result-wide v0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
const-wide/16 v4, 0x3e8
div-long/2addr v2, v4
iget-boolean v4, p0, Lcom/bbm/ui/activities/MainActivity;->e:Z
if-eqz v4, :cond_94
cmp-long v0, v2, v0
if-lez v0, :cond_94
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const v0, 0x7f0e05f9
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const v0, 0x7f0e05fa
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
const v0, 0x7f0e05f7
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
new-instance v0, Landroid/app/AlertDialog$Builder;
const/4 v4, 0x2
invoke-direct {v0, p0, v4}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;I)V
const v4, 0x7f0e05fb
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getLayoutInflater()Landroid/view/LayoutInflater;
move-result-object v4
const v5, 0x7f030078
const/4 v6, 0x0
invoke-virtual {v4, v5, v6}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v4
iput-boolean v7, p0, Lcom/bbm/ui/activities/MainActivity;->e:Z
invoke-virtual {v0, v4}, Landroid/app/AlertDialog$Builder;->setView(Landroid/view/View;)Landroid/app/AlertDialog$Builder;
invoke-virtual {v0}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;
move-result-object v5
const v0, 0x7f0a035d
invoke-virtual {v4, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
new-instance v4, Landroid/widget/ArrayAdapter;
const v6, 0x7f0300ea
invoke-direct {v4, p0, v6, v1}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
invoke-virtual {v0, v4}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
new-instance v1, Lcom/bbm/ui/activities/xj;
invoke-direct {v1, p0, v2, v3, v5}, Lcom/bbm/ui/activities/xj;-><init>(Lcom/bbm/ui/activities/MainActivity;JLandroid/app/AlertDialog;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
new-instance v0, Lcom/bbm/ui/activities/xk;
invoke-direct {v0, p0, v2, v3}, Lcom/bbm/ui/activities/xk;-><init>(Lcom/bbm/ui/activities/MainActivity;J)V
invoke-virtual {v5, v0}, Landroid/app/AlertDialog;->setOnKeyListener(Landroid/content/DialogInterface$OnKeyListener;)V
invoke-virtual {v5, v7}, Landroid/app/AlertDialog;->setCancelable(Z)V
invoke-virtual {v5}, Landroid/app/AlertDialog;->show()V
:cond_94
return-void
.end method
.method static synthetic f(Lcom/bbm/ui/activities/MainActivity;I)I
.registers 2
iput p1, p0, Lcom/bbm/ui/activities/MainActivity;->G:I
return p1
.end method
.method static synthetic f(Lcom/bbm/ui/activities/MainActivity;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/activities/MainActivity;->e:Z
return v0
.end method
.method static synthetic g(Lcom/bbm/ui/activities/MainActivity;)V
.registers 4
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget-object v0, v0, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
new-instance v2, Lcom/bbm/d/co;
invoke-direct {v2}, Lcom/bbm/d/co;-><init>()V
invoke-static {v0}, Lcom/bbm/util/ac;->a(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Lcom/bbm/d/co;->a(Ljava/lang/String;)Lcom/bbm/d/co;
move-result-object v0
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
return-void
.end method
.method static synthetic g(Lcom/bbm/ui/activities/MainActivity;I)Z
.registers 6
const/4 v1, 0x0
const/4 v0, 0x1
sparse-switch p1, :sswitch_data_10e
move v0, v1
:goto_6
return v0
:sswitch_7
const-string v1, "Settings handleCommonSlideMenuItemClick"
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1, v0}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
new-instance v1, Landroid/content/Intent;
const-class v2, Lcom/bbm/ui/activities/SettingsActivity;
invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_6
:sswitch_20
const-string v1, "Help handleCommonSlideMenuItemClick"
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1, v0}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
const v3, 0x7f0e0467
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_6
:sswitch_44
const-string v1, "Chat handleCommonSlideMenuItemClick"
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->w()V
goto :goto_6
:sswitch_4f
const-string v2, "MultiChat handleCommonSlideMenuItemClick"
const-class v3, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v2, v3}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v2, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v2, v2, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v2, v0}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
new-instance v2, Landroid/content/Intent;
const-class v3, Lcom/bbm/ui/activities/SelectContactActivity;
invoke-direct {v2, p0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v3, "com.bbm.showifbusy"
invoke-virtual {v2, v3, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-virtual {p0, v2, v1}, Lcom/bbm/ui/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_6
:sswitch_6d
const-string v1, "Broadcast handleCommonSlideMenuItemClick"
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1, v0}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
new-instance v1, Landroid/content/Intent;
const-class v2, Lcom/bbm/ui/activities/BroadcastActivity;
invoke-direct {v1, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V
goto :goto_6
:sswitch_86
const-string v1, "Channel handleCommonSlideMenuItemClick"
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1, v0}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
const v1, 0x7f0a0036
invoke-direct {p0, v1}, Lcom/bbm/ui/activities/MainActivity;->e(I)V
goto/16 :goto_6
:sswitch_9c
const-string v1, "Channel handleCommonSlideMenuItemClick"
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1, v0}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
const v1, 0x7f0a0038
invoke-direct {p0, v1}, Lcom/bbm/ui/activities/MainActivity;->e(I)V
goto/16 :goto_6
:sswitch_b2
const-string v1, "Channel handleCommonSlideMenuItemClick"
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1, v0}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
const/16 v1, 0x3e8
iget-object v2, p0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v2}, Lcom/bbm/d/a;->h()Ljava/lang/String;
move-result-object v2
invoke-static {p0, v1, v2}, Lcom/bbm/h/aq;->a(Landroid/app/Activity;ILjava/lang/String;)V
goto/16 :goto_6
:sswitch_cf
const-string v1, "FindFriends handleCommonSlideMenuItemClick"
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1, v0}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->f()V
goto/16 :goto_6
:sswitch_e2
const-string v1, "StartMeeting handleCommonSlideMenuItemClick"
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v1, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v1, v1, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v1, v0}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
invoke-static {p0}, Lcom/bbm/meetings/a;->b(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_108
new-instance v1, Landroid/content/Intent;
const-string v2, "android.intent.action.VIEW"
const-string v3, "bbmmtg://"
invoke-static {v3}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v3
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V
invoke-virtual {p0, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
goto/16 :goto_6
:cond_108
invoke-static {p0}, Lcom/bbm/meetings/a;->a(Landroid/content/Context;)V
goto/16 :goto_6
nop
:sswitch_data_10e
.sparse-switch
0x7f0a0036 -> :sswitch_86
0x7f0a0038 -> :sswitch_9c
0x7f0a003e -> :sswitch_b2
0x7f0a0052 -> :sswitch_6d
0x7f0a0053 -> :sswitch_20
0x7f0a0054 -> :sswitch_cf
0x7f0a0055 -> :sswitch_4f
0x7f0a0056 -> :sswitch_44
0x7f0a0058 -> :sswitch_7
0x7f0a009e -> :sswitch_e2
.end sparse-switch
.end method
.method static synthetic h(Lcom/bbm/ui/activities/MainActivity;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/activities/MainActivity;->M:I
return v0
.end method
.method static synthetic i(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/ui/MainTabBarView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->j:Lcom/bbm/ui/MainTabBarView;
return-object v0
.end method
.method static synthetic j(Lcom/bbm/ui/activities/MainActivity;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->l()V
return-void
.end method
.method static synthetic k()Lcom/bbm/d/a;
.registers 1
sget-object v0, Lcom/bbm/ui/activities/MainActivity;->g:Lcom/bbm/d/a;
return-object v0
.end method
.method static synthetic k(Lcom/bbm/ui/activities/MainActivity;)V
.registers 4
const v0, 0x7f0a0081
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->d(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
invoke-virtual {v0}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0548
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/EditText;
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->u:Landroid/widget/EditText;
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->u:Landroid/widget/EditText;
new-instance v1, Lcom/bbm/ui/activities/vj;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/vj;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->u:Landroid/widget/EditText;
new-instance v1, Lcom/bbm/ui/activities/vk;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/vk;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->u:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->requestFocus()Z
move-result v0
if-eqz v0, :cond_42
const-string v0, "input_method"
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/inputmethod/InputMethodManager;
const/4 v1, 0x2
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->toggleSoftInput(II)V
:cond_42
return-void
.end method
.method private l()V
.registers 3
invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
iget v0, p0, Lcom/bbm/ui/activities/MainActivity;->F:I
iput v0, p0, Lcom/bbm/ui/activities/MainActivity;->w:I
iget v0, p0, Lcom/bbm/ui/activities/MainActivity;->H:I
iput v0, p0, Lcom/bbm/ui/activities/MainActivity;->G:I
iget-wide v0, p0, Lcom/bbm/ui/activities/MainActivity;->J:J
iput-wide v0, p0, Lcom/bbm/ui/activities/MainActivity;->I:J
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->a(Z)V
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->m()V
return-void
.end method
.method static synthetic l(Lcom/bbm/ui/activities/MainActivity;)V
.registers 5
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->u:Landroid/widget/EditText;
invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-nez v1, :cond_31
invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
:try_start_17
new-instance v1, Landroid/content/Intent;
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v2
const-class v3, Lcom/bbm/ui/activities/SearchResultsChannelsActivity;
invoke-direct {v1, v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "searchId"
invoke-virtual {v1, v2, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v1}, Lcom/bbm/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V
:try_end_2a
.catch Ljava/lang/Exception; {:try_start_17 .. :try_end_2a} :catch_32
:goto_2a
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->b()I
move-result v0
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->d(I)V
:cond_31
return-void
:catch_32
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto :goto_2a
.end method
.method private m()V
.registers 5
const/16 v2, 0x8
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/bbm/ui/activities/MainActivity;->v:Z
if-nez v0, :cond_26
const/4 v0, 0x1
:goto_8
iput-boolean v0, p0, Lcom/bbm/ui/activities/MainActivity;->v:Z
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->s:Landroid/widget/ImageView;
if-eqz v0, :cond_18
iget-object v3, p0, Lcom/bbm/ui/activities/MainActivity;->s:Landroid/widget/ImageView;
iget-boolean v0, p0, Lcom/bbm/ui/activities/MainActivity;->v:Z
if-eqz v0, :cond_28
move v0, v1
:goto_15
invoke-virtual {v3, v0}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_18
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->t:Landroid/widget/ImageView;
if-eqz v0, :cond_25
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->t:Landroid/widget/ImageView;
iget-boolean v3, p0, Lcom/bbm/ui/activities/MainActivity;->v:Z
if-eqz v3, :cond_2a
:goto_22
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_25
return-void
:cond_26
move v0, v1
goto :goto_8
:cond_28
move v0, v2
goto :goto_15
:cond_2a
move v1, v2
goto :goto_22
.end method
.method static synthetic m(Lcom/bbm/ui/activities/MainActivity;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/activities/MainActivity;->L:Z
return v0
.end method
.method static synthetic n(Lcom/bbm/ui/activities/MainActivity;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->p()V
return-void
.end method
.method static synthetic o(Lcom/bbm/ui/activities/MainActivity;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->w()V
return-void
.end method
.method static synthetic p(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/util/cr;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->q:Lcom/bbm/util/cr;
return-object v0
.end method
.method private p()V
.registers 4
const-string v0, "location"
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/location/LocationManager;
:try_start_8
iget-boolean v1, p0, Lcom/bbm/ui/activities/MainActivity;->L:Z
if-eqz v1, :cond_4c
const-string v1, "network"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->isProviderEnabled(Landroid/location/LocationManager;Ljava/lang/String;)Z
move-result v1
if-nez v1, :cond_4c
const-string v1, "gps"
invoke-static {v0, v1}, Ldroidbox/android/location/LocationManager;->isProviderEnabled(Landroid/location/LocationManager;Ljava/lang/String;)Z
move-result v0
if-nez v0, :cond_4c
new-instance v0, Lcom/bbm/ui/b/o;
invoke-direct {v0, p0}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
const v1, 0x7f0e01a4
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->setTitle(I)V
const v1, 0x7f0e01a0
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->e(I)V
const v1, 0x7f0e01a2
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(I)V
const v1, 0x7f0e01a1
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(I)V
new-instance v1, Lcom/bbm/ui/activities/vl;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/vl;-><init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/ui/b/o;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->a(Landroid/view/View$OnClickListener;)V
new-instance v1, Lcom/bbm/ui/activities/vm;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/vm;-><init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/ui/b/o;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(Landroid/view/View$OnClickListener;)V
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V
:goto_4c
:try_end_4c
.catch Ljava/lang/SecurityException; {:try_start_8 .. :try_end_4c} :catch_4d
:cond_4c
return-void
:catch_4d
move-exception v0
const-string v1, "Can\'t check if Location Provider is enabled"
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v0, v1, v2}, Lcom/bbm/x;->a(Ljava/lang/Throwable;Ljava/lang/Object;[Ljava/lang/Object;)V
goto :goto_4c
.end method
.method static synthetic q(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/ui/activities/xn;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->o:Lcom/bbm/ui/activities/xn;
return-object v0
.end method
.method private q()V
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->f:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->f:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/b/s;
invoke-virtual {v0}, Lcom/bbm/ui/b/s;->dismiss()V
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->f:Lcom/google/b/a/l;
:cond_19
return-void
.end method
.method private r()Lcom/bbm/ui/slidingmenu/a;
.registers 6
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v1, 0x7f0a0054
const v2, 0x7f02026c
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
const v3, 0x7f0e06ab
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-direct {v0, v1, v2, v3, v4}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method static synthetic r(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/util/cr;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->Z:Lcom/bbm/util/cr;
return-object v0
.end method
.method static synthetic s(Lcom/bbm/ui/activities/MainActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->af:Landroid/os/Handler;
return-object v0
.end method
.method private s()Lcom/bbm/ui/slidingmenu/a;
.registers 6
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v1, 0x7f0a0055
const v2, 0x7f020270
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
const v3, 0x7f0e06ca
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-direct {v0, v1, v2, v3, v4}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method private t()Lcom/bbm/ui/slidingmenu/a;
.registers 6
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v1, 0x7f0a0052
const v2, 0x7f020263
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
const v3, 0x7f0e0141
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-direct {v0, v1, v2, v3, v4}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method static synthetic t(Lcom/bbm/ui/activities/MainActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/MainActivity;->ai:Z
return v0
.end method
.method static synthetic u(Lcom/bbm/ui/activities/MainActivity;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/activities/MainActivity;->w:I
return v0
.end method
.method private u()Lcom/bbm/ui/slidingmenu/a;
.registers 6
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v1, 0x7f0a0056
const v2, 0x7f020271
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
const v3, 0x7f0e06c5
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-direct {v0, v1, v2, v3, v4}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
return-object v0
.end method
.method static synthetic v(Lcom/bbm/ui/activities/MainActivity;)J
.registers 3
iget-wide v0, p0, Lcom/bbm/ui/activities/MainActivity;->I:J
return-wide v0
.end method
.method private v()V
.registers 3
invoke-static {}, Lcom/bbm/Alaska;->l()Lcom/bbm/af;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/af;->m()Z
move-result v0
if-nez v0, :cond_b
:cond_a
:goto_a
return-void
:cond_b
new-instance v0, Lcom/bbm/ui/b/o;
invoke-direct {v0, p0}, Lcom/bbm/ui/b/o;-><init>(Landroid/content/Context;)V
const v1, 0x7f0e0105
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->setTitle(I)V
const v1, 0x7f0e0559
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->e(I)V
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->a()V
new-instance v1, Lcom/bbm/ui/activities/xe;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/xe;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V
const v1, 0x7f0e0553
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(I)V
new-instance v1, Lcom/bbm/ui/activities/xf;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/xf;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/b/o;->b(Landroid/view/View$OnClickListener;)V
invoke-static {v0}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->ah:Lcom/google/b/a/l;
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->ah:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_a
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->isFinishing()Z
move-result v0
if-nez v0, :cond_a
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->ah:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/b/o;
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->show()V
goto :goto_a
.end method
.method static synthetic w(Lcom/bbm/ui/activities/MainActivity;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/activities/MainActivity;->F:I
return v0
.end method
.method private w()V
.registers 4
const/4 v2, 0x1
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v2}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
new-instance v0, Landroid/content/Intent;
const-class v1, Lcom/bbm/ui/activities/SelectContactActivity;
invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v1, "com.bbm.onlyone"
invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Z)Landroid/content/Intent;
invoke-virtual {p0, v0, v2}, Lcom/bbm/ui/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
return-void
.end method
.method static synthetic x(Lcom/bbm/ui/activities/MainActivity;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/activities/MainActivity;->H:I
return v0
.end method
.method private x()V
.registers 7
const/16 v2, 0x8
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;
move-result-object v3
if-eqz v3, :cond_92
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->i:Lcom/bbm/ui/ObservingImageView;
iget-object v4, p0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
iget-object v4, v4, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v4, v3}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;
move-result-object v4
invoke-virtual {v0, v4}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
iget-object v4, p0, Lcom/bbm/ui/activities/MainActivity;->m:Landroid/widget/ImageView;
iget-boolean v0, v3, Lcom/bbm/d/gp;->w:Z
if-eqz v0, :cond_93
move v0, v1
:goto_21
invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->n:Landroid/widget/ImageView;
iget-object v4, v3, Lcom/bbm/d/gp;->n:Ljava/lang/String;
invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z
move-result v4
if-eqz v4, :cond_95
:goto_2e
invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->k:Landroid/widget/TextView;
invoke-static {v3}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->l:Landroid/widget/TextView;
iget-object v2, p0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
invoke-static {p0, v2}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-boolean v0, v3, Lcom/bbm/d/gp;->w:Z
if-nez v0, :cond_51
iget-object v0, v3, Lcom/bbm/d/gp;->n:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_97
:cond_51
const/4 v0, 0x1
move v2, v0
:goto_53
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v3, 0x7f0b035f
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v4
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v3, 0x7f0b035d
invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v5
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->m:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I
move-result v0
if-nez v0, :cond_99
move v3, v4
:goto_72
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->k:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
if-eqz v2, :cond_a5
:goto_7c
iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->n:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I
move-result v0
if-nez v0, :cond_a7
:goto_86
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->l:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
if-eqz v2, :cond_b1
:goto_90
iput v4, v0, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I
:cond_92
return-void
:cond_93
move v0, v2
goto :goto_21
:cond_95
move v2, v1
goto :goto_2e
:cond_97
move v2, v1
goto :goto_53
:cond_99
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->n:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I
move-result v0
if-nez v0, :cond_b5
add-int v0, v5, v4
move v3, v0
goto :goto_72
:cond_a5
move v3, v1
goto :goto_7c
:cond_a7
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->m:Landroid/widget/ImageView;
invoke-virtual {v0}, Landroid/widget/ImageView;->getVisibility()I
move-result v0
if-nez v0, :cond_b3
add-int/2addr v4, v5
goto :goto_86
:cond_b1
move v4, v1
goto :goto_90
:cond_b3
move v4, v1
goto :goto_86
:cond_b5
move v3, v1
goto :goto_72
.end method
.method static synthetic y(Lcom/bbm/ui/activities/MainActivity;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/activities/MainActivity;->G:I
return v0
.end method
.method static synthetic z(Lcom/bbm/ui/activities/MainActivity;)Lcom/bbm/j/a;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->ab:Lcom/bbm/j/a;
return-object v0
.end method
.method public final a(Ljava/lang/Class;)Lcom/google/b/a/l;
.registers 4
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;
move-result-object v0
const-string v1, "FRAGMENT_TAG"
invoke-virtual {v0, v1}, Landroid/app/FragmentManager;->findFragmentByTag(Ljava/lang/String;)Landroid/app/Fragment;
move-result-object v0
invoke-virtual {p1, v0}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_19
invoke-virtual {p1, v0}, Ljava/lang/Class;->cast(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
:goto_18
return-object v0
:cond_19
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
goto :goto_18
.end method
.method protected final a()V
.registers 3
iget-object v1, p0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->q:Lcom/bbm/util/cr;
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {p0, v1, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Lcom/bbm/ui/c/fm;I)V
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->q:Lcom/bbm/util/cr;
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
packed-switch v0, :pswitch_data_5e
:cond_20
:goto_20
return-void
:pswitch_21
const-class v0, Lcom/bbm/ui/c/at;
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Ljava/lang/Class;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_20
const-class v0, Lcom/bbm/ui/c/at;
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Ljava/lang/Class;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/at;
iget-object v0, v0, Lcom/bbm/ui/c/at;->b:Lcom/bbm/ui/dn;
invoke-virtual {v0}, Lcom/bbm/ui/dn;->c()V
goto :goto_20
:pswitch_3f
const-class v0, Lcom/bbm/ui/c/bm;
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Ljava/lang/Class;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_20
const-class v0, Lcom/bbm/ui/c/bm;
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Ljava/lang/Class;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/bm;
iget-object v0, v0, Lcom/bbm/ui/c/bm;->b:Lcom/bbm/ui/dn;
invoke-virtual {v0}, Lcom/bbm/ui/dn;->c()V
goto :goto_20
nop
:pswitch_data_5e
.packed-switch 0x7f0a007b
:pswitch_21
:pswitch_3f
.end packed-switch
.end method
.method public final a(I)V
.registers 9
const v1, 0x7f0a0084
const v3, 0x7f0e0221
const/4 v6, 0x1
const/4 v5, 0x0
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->isFinishing()Z
move-result v0
if-nez v0, :cond_3d
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->q:Lcom/bbm/util/cr;
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
if-ne p1, v0, :cond_3e
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v6}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
invoke-virtual {p0, v0, p1}, Lcom/bbm/ui/activities/MainActivity;->a(Lcom/bbm/ui/c/fm;I)V
if-ne p1, v1, :cond_3d
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->N:Landroid/app/Fragment;
instance-of v0, v0, Lcom/bbm/ui/c/hk;
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->N:Landroid/app/Fragment;
check-cast v0, Lcom/bbm/ui/c/hk;
iget-object v1, v0, Lcom/bbm/ui/c/hk;->a:Landroid/widget/ListView;
if-eqz v1, :cond_3d
iget-object v0, v0, Lcom/bbm/ui/c/hk;->a:Landroid/widget/ListView;
invoke-virtual {v0, v5}, Landroid/widget/ListView;->setSelection(I)V
:cond_3d
:goto_3d
return-void
:cond_3e
const v0, 0x7f0a007f
if-ne p1, v0, :cond_b9
iget v0, p0, Lcom/bbm/ui/activities/MainActivity;->F:I
iput v0, p0, Lcom/bbm/ui/activities/MainActivity;->w:I
:goto_47
:cond_47
iget-object v1, p0, Lcom/bbm/ui/activities/MainActivity;->o:Lcom/bbm/ui/activities/xn;
iget-object v0, v1, Lcom/bbm/ui/activities/xn;->a:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v0, v5}, Lcom/bbm/ui/slidingmenu/a;->c(Z)V
iget-object v0, v1, Lcom/bbm/ui/activities/xn;->b:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v0, v5}, Lcom/bbm/ui/slidingmenu/a;->c(Z)V
iget-object v0, v1, Lcom/bbm/ui/activities/xn;->c:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v0, v5}, Lcom/bbm/ui/slidingmenu/a;->c(Z)V
iget-object v0, v1, Lcom/bbm/ui/activities/xn;->d:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v0, v5}, Lcom/bbm/ui/slidingmenu/a;->c(Z)V
iget-object v0, v1, Lcom/bbm/ui/activities/xn;->e:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v0, v5}, Lcom/bbm/ui/slidingmenu/a;->c(Z)V
iget-object v0, v1, Lcom/bbm/ui/activities/xn;->f:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v0, v5}, Lcom/bbm/ui/slidingmenu/a;->c(Z)V
iget-object v0, v1, Lcom/bbm/ui/activities/xn;->g:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v0, v5}, Lcom/bbm/ui/slidingmenu/a;->c(Z)V
iget-object v0, v1, Lcom/bbm/ui/activities/xn;->m:Lcom/bbm/ui/activities/MainActivity;
iget v0, v0, Lcom/bbm/ui/activities/MainActivity;->M:I
if-ne p1, v0, :cond_1f8
const v0, 0x7f0a007a
:goto_75
packed-switch v0, :pswitch_data_1fc
:pswitch_78
:goto_78
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
invoke-virtual {p0, v0, p1}, Lcom/bbm/ui/activities/MainActivity;->a(Lcom/bbm/ui/c/fm;I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getFragmentManager()Landroid/app/FragmentManager;
move-result-object v0
invoke-virtual {v0}, Landroid/app/FragmentManager;->executePendingTransactions()Z
invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;
move-result-object v1
const/4 v0, 0x0
packed-switch p1, :pswitch_data_21a
:pswitch_8c
const-string v2, "Unknow MainActivity section id %d"
new-array v3, v6, [Ljava/lang/Object;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v4
aput-object v4, v3, v5
invoke-static {v2, v3}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_99
if-eqz v0, :cond_ad
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
const-string v3, "getFragmentForSectionId"
invoke-static {v2, v3}, Lcom/bbm/x;->a(Ljava/lang/Class;Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v2
const-string v3, "getFragmentForSectionId"
invoke-static {v2, v3}, Lcom/bbm/x;->b(Ljava/lang/Class;Ljava/lang/String;)V
:cond_ad
if-nez v0, :cond_1a5
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->isFinishing()Z
move-result v2
if-nez v2, :cond_1a5
invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
goto :goto_3d
:cond_b9
if-ne p1, v1, :cond_c0
iget v0, p0, Lcom/bbm/ui/activities/MainActivity;->H:I
iput v0, p0, Lcom/bbm/ui/activities/MainActivity;->G:I
goto :goto_47
:cond_c0
const v0, 0x7f0a0082
if-ne p1, v0, :cond_47
iget-wide v0, p0, Lcom/bbm/ui/activities/MainActivity;->J:J
iput-wide v0, p0, Lcom/bbm/ui/activities/MainActivity;->I:J
goto/16 :goto_47
:pswitch_cb
iget-object v0, v1, Lcom/bbm/ui/activities/xn;->a:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v0, v6}, Lcom/bbm/ui/slidingmenu/a;->c(Z)V
goto :goto_78
:pswitch_d1
iget-object v0, v1, Lcom/bbm/ui/activities/xn;->b:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v0, v6}, Lcom/bbm/ui/slidingmenu/a;->c(Z)V
goto :goto_78
:pswitch_d7
iget-object v0, v1, Lcom/bbm/ui/activities/xn;->c:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v0, v6}, Lcom/bbm/ui/slidingmenu/a;->c(Z)V
goto :goto_78
:pswitch_dd
iget-object v0, v1, Lcom/bbm/ui/activities/xn;->d:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v0, v6}, Lcom/bbm/ui/slidingmenu/a;->c(Z)V
goto :goto_78
:pswitch_e3
iget-object v0, v1, Lcom/bbm/ui/activities/xn;->e:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v0, v6}, Lcom/bbm/ui/slidingmenu/a;->c(Z)V
goto :goto_78
:pswitch_e9
iget-object v0, v1, Lcom/bbm/ui/activities/xn;->f:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v0, v6}, Lcom/bbm/ui/slidingmenu/a;->c(Z)V
goto :goto_78
:pswitch_ef
iget-object v0, v1, Lcom/bbm/ui/activities/xn;->g:Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v0, v6}, Lcom/bbm/ui/slidingmenu/a;->c(Z)V
goto :goto_78
:pswitch_f5
const-string v0, "Menu Chat getFragmentForSectionId"
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
const v0, 0x7f0e0236
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->setTitle(I)V
new-instance v0, Lcom/bbm/ui/c/at;
invoke-direct {v0}, Lcom/bbm/ui/c/at;-><init>()V
goto :goto_99
:pswitch_108
const-string v0, "Menu Contacts getFragmentForSectionId"
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
const v0, 0x7f0e026c
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->setTitle(I)V
new-instance v0, Lcom/bbm/ui/c/bm;
invoke-direct {v0}, Lcom/bbm/ui/c/bm;-><init>()V
goto/16 :goto_99
:pswitch_11c
const-string v0, "Menu Groups getFragmentForSectionId"
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
const v0, 0x7f0e044e
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->setTitle(I)V
new-instance v0, Lcom/bbm/ui/c/de;
invoke-direct {v0}, Lcom/bbm/ui/c/de;-><init>()V
goto/16 :goto_99
:pswitch_130
const-string v0, "Menu Invites getFragmentForSectionId"
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
const v0, 0x7f0e04b6
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->setTitle(I)V
new-instance v0, Lcom/bbm/h/m;
invoke-direct {v0}, Lcom/bbm/h/m;-><init>()V
goto/16 :goto_99
:pswitch_144
const-string v0, "Menu My Channels getFragmentForSectionId"
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/MainActivity;->setTitle(I)V
new-instance v0, Lcom/bbm/ui/c/du;
invoke-direct {v0}, Lcom/bbm/ui/c/du;-><init>()V
iput p1, p0, Lcom/bbm/ui/activities/MainActivity;->M:I
goto/16 :goto_99
:pswitch_157
const-string v0, "Menu Discover Channels getFragmentForSectionId"
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/MainActivity;->setTitle(I)V
new-instance v0, Lcom/bbm/ui/c/cd;
invoke-direct {v0}, Lcom/bbm/ui/c/cd;-><init>()V
iput p1, p0, Lcom/bbm/ui/activities/MainActivity;->M:I
goto/16 :goto_99
:pswitch_16a
const-string v0, "Menu Channels Notifications getFragmentForSectionId"
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/MainActivity;->setTitle(I)V
new-instance v0, Lcom/bbm/ui/c/am;
invoke-direct {v0}, Lcom/bbm/ui/c/am;-><init>()V
iput p1, p0, Lcom/bbm/ui/activities/MainActivity;->M:I
goto/16 :goto_99
:pswitch_17d
const-string v0, "Menu Updates getFragmentForSectionId"
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
const v0, 0x7f0e0765
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->setTitle(I)V
new-instance v0, Lcom/bbm/ui/c/hk;
invoke-direct {v0}, Lcom/bbm/ui/c/hk;-><init>()V
goto/16 :goto_99
:pswitch_191
const-string v0, "Menu Shop getFragmentForSectionId"
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
const v0, 0x7f0e069a
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->setTitle(I)V
new-instance v0, Lcom/bbm/ui/c/gz;
invoke-direct {v0}, Lcom/bbm/ui/c/gz;-><init>()V
goto/16 :goto_99
:cond_1a5
const v2, 0x7f0a0221
const-string v3, "FRAGMENT_TAG"
invoke-virtual {v1, v2, v0, v3}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;Ljava/lang/String;)Landroid/app/FragmentTransaction;
iget-object v2, p0, Lcom/bbm/ui/activities/MainActivity;->q:Lcom/bbm/util/cr;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->N:Landroid/app/Fragment;
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v6}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->isFinishing()Z
move-result v0
if-nez v0, :cond_1c8
invoke-virtual {v1}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I
:cond_1c8
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/MainActivity;->d(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->i:Lcom/bbm/ui/ObservingImageView;
if-eqz v0, :cond_1dc
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->i:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->c()Z
move-result v0
if-eqz v0, :cond_1dc
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->i:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->d()V
:cond_1dc
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->invalidateOptionsMenu()V
new-instance v0, Ljava/lang/StringBuilder;
const-string v1, "MainActivity: Trying to prefetch an ad for activeSection="
invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
new-array v1, v5, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/bbm/b/e;->a()V
goto/16 :goto_3d
:cond_1f8
move v0, p1
goto/16 :goto_75
nop
:pswitch_data_1fc
.packed-switch 0x7f0a0078
:pswitch_e3
:pswitch_78
:pswitch_e3
:pswitch_cb
:pswitch_dd
:pswitch_78
:pswitch_d7
:pswitch_e9
:pswitch_78
:pswitch_78
:pswitch_ef
:pswitch_78
:pswitch_d1
.end packed-switch
:pswitch_data_21a
.packed-switch 0x7f0a0078
:pswitch_16a
:pswitch_8c
:pswitch_8c
:pswitch_f5
:pswitch_108
:pswitch_157
:pswitch_11c
:pswitch_130
:pswitch_144
:pswitch_8c
:pswitch_191
:pswitch_8c
:pswitch_17d
.end packed-switch
.end method
.method public final a(II)V
.registers 11
const v7, 0x7f040004
const v6, 0x7f040001
const/4 v5, 0x1
const/4 v3, 0x0
packed-switch p1, :pswitch_data_16c
:goto_b
return-void
:pswitch_c
const-class v0, Lcom/bbm/ui/c/at;
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Ljava/lang/Class;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/at;
iget-object v1, v0, Lcom/bbm/ui/c/at;->b:Lcom/bbm/ui/dn;
invoke-virtual {v1}, Lcom/bbm/ui/dn;->a()Ljava/util/List;
move-result-object v1
invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/ui/activities/eu;
packed-switch p2, :pswitch_data_174
:goto_27
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v5}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
goto :goto_b
:pswitch_2f
iget-object v2, v1, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-nez v2, :cond_60
iget-object v1, v1, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;
iget-object v1, v1, Lcom/bbm/d/es;->r:Ljava/util/List;
invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
new-instance v2, Landroid/content/Intent;
invoke-virtual {v0}, Lcom/bbm/ui/c/at;->getActivity()Landroid/app/Activity;
move-result-object v3
const-class v4, Lcom/bbm/ui/activities/ProfileActivity;
invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v3, "user_uri"
invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v0}, Lcom/bbm/ui/c/at;->getActivity()Landroid/app/Activity;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
invoke-virtual {v0}, Lcom/bbm/ui/c/at;->getActivity()Landroid/app/Activity;
move-result-object v0
invoke-virtual {v0, v6, v7}, Landroid/app/Activity;->overridePendingTransition(II)V
goto :goto_27
:cond_60
const-string v0, "ChatsFragment: Selected chat is not a conversation chat."
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Selected chat is not a conversation chat."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_6f
iget-object v2, v1, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;
invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z
move-result v2
if-ne v2, v5, :cond_b6
iget-object v1, v1, Lcom/bbm/ui/activities/eu;->b:Lcom/bbm/g/q;
iget-object v2, v1, Lcom/bbm/g/q;->d:Ljava/lang/String;
if-eqz v2, :cond_85
iget-object v2, v1, Lcom/bbm/g/q;->d:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
move-result v2
if-eqz v2, :cond_94
:cond_85
const-string v0, "ChatsFragment: Group URI is empty."
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Group URI is empty."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:cond_94
new-instance v2, Landroid/content/Intent;
invoke-virtual {v0}, Lcom/bbm/ui/c/at;->getActivity()Landroid/app/Activity;
move-result-object v3
const-class v4, Lcom/bbm/ui/activities/GroupLobbyActivity;
invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v3, "groupUri"
iget-object v1, v1, Lcom/bbm/g/q;->d:Ljava/lang/String;
invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v0}, Lcom/bbm/ui/c/at;->getActivity()Landroid/app/Activity;
move-result-object v1
invoke-virtual {v1, v2}, Landroid/app/Activity;->startActivity(Landroid/content/Intent;)V
invoke-virtual {v0}, Lcom/bbm/ui/c/at;->getActivity()Landroid/app/Activity;
move-result-object v0
invoke-virtual {v0, v6, v7}, Landroid/app/Activity;->overridePendingTransition(II)V
goto/16 :goto_27
:cond_b6
const-string v0, "ChatsFragment: Selected chat is not a group chat."
new-array v1, v3, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
new-instance v0, Ljava/lang/IllegalStateException;
const-string v1, "Selected chat is not a group chat."
invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_c5
iget-object v1, v0, Lcom/bbm/ui/c/at;->b:Lcom/bbm/ui/dn;
iget-object v0, v0, Lcom/bbm/ui/c/at;->a:Landroid/widget/ListView;
invoke-virtual {v1, v0}, Lcom/bbm/ui/dn;->a(Landroid/widget/AbsListView;)V
goto/16 :goto_27
:pswitch_ce
invoke-virtual {v0}, Lcom/bbm/ui/c/at;->a()V
goto/16 :goto_27
:pswitch_d3
const-class v0, Lcom/bbm/ui/c/bm;
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Ljava/lang/Class;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/bm;
packed-switch p2, :pswitch_data_180
:pswitch_e2
:cond_e2
:goto_e2
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
invoke-virtual {v0, v5}, Lcom/slidingmenu/lib/SlidingMenu;->c(Z)V
goto/16 :goto_b
:pswitch_eb
const-string v1, "View Profile onSlidingContextItemSelected"
const-class v2, Lcom/bbm/ui/c/bm;
invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v1, v0, Lcom/bbm/ui/c/bm;->b:Lcom/bbm/ui/dn;
invoke-virtual {v1}, Lcom/bbm/ui/dn;->a()Ljava/util/List;
move-result-object v1
invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/bbm/d/gp;
new-instance v2, Landroid/content/Intent;
invoke-virtual {v0}, Lcom/bbm/ui/c/bm;->getActivity()Landroid/app/Activity;
move-result-object v3
const-class v4, Lcom/bbm/ui/activities/ProfileActivity;
invoke-direct {v2, v3, v4}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v3, "user_uri"
iget-object v1, v1, Lcom/bbm/d/gp;->A:Ljava/lang/String;
invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {v0, v2}, Lcom/bbm/ui/c/bm;->startActivity(Landroid/content/Intent;)V
invoke-virtual {v0}, Lcom/bbm/ui/c/bm;->getActivity()Landroid/app/Activity;
move-result-object v0
invoke-virtual {v0, v6, v7}, Landroid/app/Activity;->overridePendingTransition(II)V
goto :goto_e2
:pswitch_11b
const-string v1, "Invite to Group onSlidingContextItemSelected"
const-class v2, Lcom/bbm/ui/c/bm;
invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {v0}, Lcom/bbm/ui/c/bm;->b()Ljava/util/ArrayList;
move-result-object v1
invoke-virtual {v0}, Lcom/bbm/ui/c/bm;->getActivity()Landroid/app/Activity;
move-result-object v0
check-cast v0, Lcom/bbm/ui/activities/MainActivity;
if-eqz v0, :cond_e2
new-instance v2, Landroid/content/Intent;
const-class v3, Lcom/bbm/ui/activities/SelectGroupActivity;
invoke-direct {v2, v0, v3}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v3, "com.bbm.selecteduris"
invoke-virtual {v2, v3, v1}, Landroid/content/Intent;->putStringArrayListExtra(Ljava/lang/String;Ljava/util/ArrayList;)Landroid/content/Intent;
const/4 v1, 0x6
invoke-virtual {v0, v2, v1}, Lcom/bbm/ui/activities/MainActivity;->startActivityForResult(Landroid/content/Intent;I)V
goto :goto_e2
:pswitch_13f
const-string v1, "Move Contact onSlidingContextItemSelected"
const-class v2, Lcom/bbm/ui/c/bm;
invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {v0}, Lcom/bbm/ui/c/bm;->a()V
goto :goto_e2
:pswitch_14a
const-string v1, "Select More onSlidingContextItemSelected"
const-class v2, Lcom/bbm/ui/c/bm;
invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v1, v0, Lcom/bbm/ui/c/bm;->b:Lcom/bbm/ui/dn;
iget-object v0, v0, Lcom/bbm/ui/c/bm;->a:Lcom/tonicartos/widget/stickygridheaders/StickyGridHeadersGridView;
invoke-virtual {v1, v0}, Lcom/bbm/ui/dn;->a(Landroid/widget/AbsListView;)V
goto :goto_e2
:pswitch_159
const-string v1, "Delete Contact onSlidingContextItemSelected"
const-class v2, Lcom/bbm/ui/c/bm;
invoke-static {v1, v2}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v1, v0, Lcom/bbm/ui/c/bm;->b:Lcom/bbm/ui/dn;
invoke-virtual {v1}, Lcom/bbm/ui/dn;->a()Ljava/util/List;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/c/bm;->a(Ljava/util/List;)V
goto/16 :goto_e2
nop
:pswitch_data_174
.packed-switch 0x0
:pswitch_2f
:pswitch_6f
:pswitch_c5
:pswitch_ce
.end packed-switch
:pswitch_data_16c
.packed-switch 0x7f0a007b
:pswitch_c
:pswitch_d3
.end packed-switch
:pswitch_data_180
.packed-switch 0x7f0a005c
:pswitch_159
:pswitch_11b
:pswitch_13f
:pswitch_e2
:pswitch_e2
:pswitch_e2
:pswitch_14a
:pswitch_eb
.end packed-switch
.end method
.method protected final a(Lcom/bbm/ui/c/fm;I)V
.registers 9
const/4 v5, 0x0
packed-switch p2, :pswitch_data_1a2
:pswitch_4
:goto_4
return-void
:pswitch_5
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Ljava/util/List;)V
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->r()Lcom/bbm/ui/slidingmenu/a;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a009e
const v3, 0x7f0202a0
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
const v4, 0x7f0e06c7
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->s()Lcom/bbm/ui/slidingmenu/a;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->t()Lcom/bbm/ui/slidingmenu/a;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->u()Lcom/bbm/ui/slidingmenu/a;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p1, v0, v5, v5}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
new-instance v0, Lcom/bbm/ui/activities/wu;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/wu;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v0, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
goto :goto_4
:pswitch_4d
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Ljava/util/List;)V
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->r()Lcom/bbm/ui/slidingmenu/a;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->u()Lcom/bbm/ui/slidingmenu/a;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->s()Lcom/bbm/ui/slidingmenu/a;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->t()Lcom/bbm/ui/slidingmenu/a;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a005b
const v3, 0x7f020013
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
const v4, 0x7f0e0260
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p1, v0, v5, v5}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
new-instance v0, Lcom/bbm/ui/activities/wv;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/wv;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v0, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
goto/16 :goto_4
:pswitch_96
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Ljava/util/List;)V
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->r()Lcom/bbm/ui/slidingmenu/a;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a0064
const v3, 0x7f0201e3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
const v4, 0x7f0e00ff
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a0066
const v3, 0x7f020235
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
const v4, 0x7f0e04c3
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p1, v0, v5, v5}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
new-instance v0, Lcom/bbm/ui/activities/wy;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/wy;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v0, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
goto/16 :goto_4
:pswitch_e3
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Ljava/util/List;)V
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->r()Lcom/bbm/ui/slidingmenu/a;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p1, v0, v5, v5}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
new-instance v0, Lcom/bbm/ui/activities/wz;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/wz;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v0, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
goto/16 :goto_4
:pswitch_fe
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Ljava/util/List;)V
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a0036
const v3, 0x7f020267
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
const v4, 0x7f0e02d8
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a0038
const v3, 0x7f02026a
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
const v4, 0x7f0e0304
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a003e
const v3, 0x7f020234
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
const v4, 0x7f0e04c0
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p1, v0, v5, v5}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
new-instance v0, Lcom/bbm/ui/activities/xa;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/xa;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v0, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
goto/16 :goto_4
:pswitch_15d
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Ljava/util/List;)V
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->r()Lcom/bbm/ui/slidingmenu/a;
move-result-object v1
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p1, v0, v5, v5}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
new-instance v0, Lcom/bbm/ui/activities/xc;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/xc;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v0, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
goto/16 :goto_4
:pswitch_178
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f0a009d
const v3, 0x7f02025a
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
const v4, 0x7f0e0624
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v1, v2, v3, v4, v5}, Lcom/bbm/ui/slidingmenu/a;-><init>(ILjava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {p1, v0, v5, v5}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
new-instance v0, Lcom/bbm/ui/activities/xd;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/xd;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v0, p1, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
goto/16 :goto_4
:pswitch_data_1a2
.packed-switch 0x7f0a0078
:pswitch_fe
:pswitch_4
:pswitch_fe
:pswitch_5
:pswitch_4d
:pswitch_fe
:pswitch_96
:pswitch_e3
:pswitch_fe
:pswitch_4
:pswitch_178
:pswitch_4
:pswitch_15d
.end packed-switch
.end method
.method public final a(Z)V
.registers 5
const/16 v2, 0x8
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->j:Lcom/bbm/ui/MainTabBarView;
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->j:Lcom/bbm/ui/MainTabBarView;
invoke-virtual {v0, v2}, Lcom/bbm/ui/MainTabBarView;->c(I)Landroid/view/View;
move-result-object v1
if-eqz v1, :cond_23
invoke-virtual {v1, p1}, Landroid/view/View;->setEnabled(Z)V
invoke-virtual {v0, v2}, Lcom/bbm/ui/MainTabBarView;->d(I)Landroid/widget/ImageView;
move-result-object v1
if-eqz v1, :cond_1a
invoke-virtual {v1, p1}, Landroid/widget/ImageView;->setEnabled(Z)V
:cond_1a
invoke-virtual {v0, v2}, Lcom/bbm/ui/MainTabBarView;->b(I)Landroid/widget/TextView;
move-result-object v0
if-eqz v0, :cond_23
invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V
:cond_23
return-void
.end method
.method public final b()I
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->q:Lcom/bbm/util/cr;
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
return v0
.end method
.method public final b(I)V
.registers 4
packed-switch p1, :pswitch_data_36
:goto_3
:pswitch_3
return-void
:pswitch_4
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->j:Lcom/bbm/ui/MainTabBarView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/MainTabBarView;->a(I)V
goto :goto_3
:pswitch_b
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->j:Lcom/bbm/ui/MainTabBarView;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Lcom/bbm/ui/MainTabBarView;->a(I)V
goto :goto_3
:pswitch_12
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->j:Lcom/bbm/ui/MainTabBarView;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/bbm/ui/MainTabBarView;->a(I)V
goto :goto_3
:pswitch_19
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->j:Lcom/bbm/ui/MainTabBarView;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lcom/bbm/ui/MainTabBarView;->a(I)V
goto :goto_3
:pswitch_20
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->j:Lcom/bbm/ui/MainTabBarView;
const/4 v1, 0x5
invoke-virtual {v0, v1}, Lcom/bbm/ui/MainTabBarView;->a(I)V
goto :goto_3
:pswitch_27
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->j:Lcom/bbm/ui/MainTabBarView;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/bbm/ui/MainTabBarView;->a(I)V
goto :goto_3
:pswitch_2e
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->j:Lcom/bbm/ui/MainTabBarView;
const/4 v1, 0x6
invoke-virtual {v0, v1}, Lcom/bbm/ui/MainTabBarView;->a(I)V
goto :goto_3
nop
:pswitch_data_36
.packed-switch 0x7f0a0078
:pswitch_20
:pswitch_3
:pswitch_20
:pswitch_4
:pswitch_b
:pswitch_20
:pswitch_12
:pswitch_19
:pswitch_20
:pswitch_3
:pswitch_2e
:pswitch_3
:pswitch_27
.end packed-switch
.end method
.method public final c(I)V
.registers 14
const v4, 0x7f020268
const/4 v7, 0x0
iget-object v8, p0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
sparse-switch p1, :sswitch_data_186
:goto_9
:cond_9
return-void
:sswitch_a
const-class v0, Lcom/bbm/ui/c/at;
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Ljava/lang/Class;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/at;
iget-object v9, v0, Lcom/bbm/ui/c/at;->c:Lcom/bbm/ui/activities/eu;
if-eqz v9, :cond_9
new-instance v10, Ljava/util/ArrayList;
invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V
iget-object v0, v9, Lcom/bbm/ui/activities/eu;->e:Ljava/lang/Boolean;
invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z
move-result v0
if-nez v0, :cond_10b
iget-object v3, v9, Lcom/bbm/ui/activities/eu;->a:Lcom/bbm/d/es;
iget-boolean v0, v3, Lcom/bbm/d/es;->k:Z
if-eqz v0, :cond_75
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const v2, 0x7f0e023b
invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
move-object v6, v0
:goto_3e
new-instance v11, Ljava/lang/StringBuilder;
invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V
const/4 v0, 0x0
move v1, v0
:goto_45
iget-object v0, v3, Lcom/bbm/d/es;->r:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_87
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
iget-object v2, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v0, v3, Lcom/bbm/d/es;->r:Ljava/util/List;
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {v2, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v0
if-lez v1, :cond_6e
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_6e
const-string v2, ", "
invoke-virtual {v11, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_6e
invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_45
:cond_75
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
const v2, 0x7f0e0238
invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v1, v2, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
move-object v6, v0
goto :goto_3e
:cond_87
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v1, v3, Lcom/bbm/d/es;->b:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/d/a;->e(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-wide v4, v3, Lcom/bbm/d/es;->n:J
invoke-virtual {v0, v1, v4, v5}, Lcom/bbm/d/a;->a(Ljava/lang/String;J)Lcom/bbm/d/fg;
move-result-object v2
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v1, v2, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v4
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
iget-object v1, v3, Lcom/bbm/d/es;->q:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v5
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
iget-object v1, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
move-object v0, p0
invoke-static/range {v0 .. v5}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;Lcom/bbm/d/es;Lcom/bbm/d/gp;Lcom/bbm/d/gp;)Landroid/text/Spanned;
move-result-object v0
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
if-eqz v0, :cond_108
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
:goto_c0
invoke-direct {v1, v7, v2, v0}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
iget-boolean v0, v3, Lcom/bbm/d/es;->k:Z
if-nez v0, :cond_dd
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f020282
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
const v3, 0x7f0e0240
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v2, v3, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_dd
move-object v0, v1
:goto_de
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f020278
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
const v3, 0x7f0e023d
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v10, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-virtual {v8, v10, v0, v6}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
new-instance v0, Lcom/bbm/ui/activities/wl;
invoke-direct {v0, p0, v9}, Lcom/bbm/ui/activities/wl;-><init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/ui/activities/eu;)V
iput-object v0, v8, Lcom/bbm/ui/c/fm;->b:Lcom/bbm/ui/c/fq;
new-instance v0, Lcom/bbm/ui/activities/wm;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/wm;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
invoke-virtual {v8, v0}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V
goto/16 :goto_9
:cond_108
const-string v0, ""
goto :goto_c0
:cond_10b
iget-object v2, v9, Lcom/bbm/ui/activities/eu;->b:Lcom/bbm/g/q;
iget-object v0, v2, Lcom/bbm/g/q;->d:Ljava/lang/String;
if-eqz v0, :cond_183
iget-object v0, v2, Lcom/bbm/g/q;->d:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-nez v0, :cond_183
invoke-static {}, Lcom/bbm/Alaska;->f()Lcom/bbm/g/am;
move-result-object v0
iget-object v1, v2, Lcom/bbm/g/q;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/g/am;->t(Ljava/lang/String;)Lcom/bbm/g/a;
move-result-object v0
if-eqz v0, :cond_183
iget-object v0, v0, Lcom/bbm/g/a;->r:Ljava/lang/String;
:goto_127
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
iget-object v2, v2, Lcom/bbm/g/q;->g:Ljava/lang/String;
invoke-direct {v1, v7, v0, v2}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/bbm/ui/slidingmenu/a;
const v2, 0x7f02024f
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
const v3, 0x7f0e023c
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, v2, v3, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-interface {v10, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v6, Lcom/bbm/ui/slidingmenu/a;
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
const v2, 0x7f0e0239
invoke-virtual {p0, v2}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-direct {v6, v0, v2, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
move-object v0, v1
goto :goto_de
:sswitch_156
const-class v0, Lcom/bbm/ui/c/at;
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Ljava/lang/Class;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/c/at;
iget-object v0, v0, Lcom/bbm/ui/c/at;->d:Lcom/bbm/d/gl;
if-eqz v0, :cond_9
new-instance v1, Lcom/bbm/ui/slidingmenu/a;
invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
const v3, 0x7f0e02ea
invoke-virtual {p0, v3}, Lcom/bbm/ui/activities/MainActivity;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v1, v2, v3, v7}, Lcom/bbm/ui/slidingmenu/a;-><init>(Ljava/lang/Integer;Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {v8, v7, v7, v1}, Lcom/bbm/ui/c/fm;->a(Ljava/util/List;Lcom/bbm/ui/slidingmenu/a;Lcom/bbm/ui/slidingmenu/a;)V
new-instance v1, Lcom/bbm/ui/activities/wk;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/activities/wk;-><init>(Lcom/bbm/ui/activities/MainActivity;Lcom/bbm/d/gl;)V
invoke-virtual {v8, v1}, Lcom/bbm/ui/c/fm;->a(Landroid/view/View$OnClickListener;)V
goto/16 :goto_9
:cond_183
move-object v0, v7
goto :goto_127
nop
:sswitch_data_186
.sparse-switch
0x7f0a007b -> :sswitch_a
0x7f0a0083 -> :sswitch_156
.end sparse-switch
.end method
.method protected final e()V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->l()V
return-void
.end method
.method public final f()V
.registers 6
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
new-instance v1, Lcom/bbm/ui/b/aa;
const v2, 0x7f0e049e
const v3, 0x7f0202e8
new-instance v4, Lcom/bbm/ui/activities/wp;
invoke-direct {v4, p0}, Lcom/bbm/ui/activities/wp;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
invoke-direct {v1, v2, v3, v4}, Lcom/bbm/ui/b/aa;-><init>(IILcom/bbm/ui/b/ab;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/bbm/ui/b/aa;
const v2, 0x7f0e04a1
const v3, 0x7f0202eb
new-instance v4, Lcom/bbm/ui/activities/wq;
invoke-direct {v4, p0}, Lcom/bbm/ui/activities/wq;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
invoke-direct {v1, v2, v3, v4}, Lcom/bbm/ui/b/aa;-><init>(IILcom/bbm/ui/b/ab;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v1, Lcom/bbm/ui/b/aa;
const v2, 0x7f0e049f
const v3, 0x7f0202e9
new-instance v4, Lcom/bbm/ui/activities/wr;
invoke-direct {v4, p0}, Lcom/bbm/ui/activities/wr;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
invoke-direct {v1, v2, v3, v4}, Lcom/bbm/ui/b/aa;-><init>(IILcom/bbm/ui/b/ab;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
invoke-static {p0}, Lcom/bbm/h/aq;->c(Landroid/content/Context;)Z
move-result v1
if-eqz v1, :cond_57
new-instance v1, Lcom/bbm/ui/b/aa;
const v2, 0x7f0e04a2
const v3, 0x7f0202ec
new-instance v4, Lcom/bbm/ui/activities/ws;
invoke-direct {v4, p0}, Lcom/bbm/ui/activities/ws;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
invoke-direct {v1, v2, v3, v4}, Lcom/bbm/ui/b/aa;-><init>(IILcom/bbm/ui/b/ab;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_57
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v1
const-string v2, "android.hardware.nfc"
invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_76
new-instance v1, Lcom/bbm/ui/b/aa;
const v2, 0x7f0e04a0
const v3, 0x7f0202ea
new-instance v4, Lcom/bbm/ui/activities/wt;
invoke-direct {v4, p0}, Lcom/bbm/ui/activities/wt;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
invoke-direct {v1, v2, v3, v4}, Lcom/bbm/ui/b/aa;-><init>(IILcom/bbm/ui/b/ab;)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
:cond_76
invoke-static {p0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;
invoke-static {p0, v0}, Lcom/bbm/h/aq;->b(Landroid/content/Context;Ljava/util/List;)V
return-void
.end method
.method protected final g()V
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/MainActivity;->v:Z
if-eqz v0, :cond_7
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->m()V
:cond_7
return-void
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 11
const-wide/16 v4, -0x1
const/4 v2, 0x0
const/4 v3, 0x0
invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/ev;->onActivityResult(IILandroid/content/Intent;)V
const/4 v0, -0x1
if-ne p2, v0, :cond_d
sparse-switch p1, :sswitch_data_192
:cond_d
:goto_d
return-void
:sswitch_e
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;
move-result-object v0
invoke-virtual {v0, p3, p0}, Lcom/bbm/h/aq;->b(Landroid/content/Intent;Landroid/app/Activity;)V
goto :goto_d
:sswitch_1a
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getApplicationContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/bbm/h/aq;->a(Landroid/content/Context;)Lcom/bbm/h/aq;
move-result-object v0
invoke-virtual {v0, p3, p0}, Lcom/bbm/h/aq;->a(Landroid/content/Intent;Landroid/app/Activity;)V
goto :goto_d
:sswitch_26
invoke-static {p3}, Lcom/bbm/h/aq;->b(Landroid/content/Intent;)V
goto :goto_d
:sswitch_2a
const-string v0, "com.bbm.selectedcontacts"
invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v1
if-lez v1, :cond_d
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "bbmpim://conversation/"
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v2, p0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v2}, Lcom/bbm/d/a;->v()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
new-instance v3, Lcom/bbm/d/dj;
invoke-direct {v3, v1, v0}, Lcom/bbm/d/dj;-><init>(Ljava/lang/String;Ljava/util/List;)V
invoke-virtual {v2, v3}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
invoke-static {}, Lcom/bbm/Alaska;->g()Lcom/bbm/c/c;
move-result-object v2
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
invoke-virtual {v2, v1, v0}, Lcom/bbm/c/c;->a(Ljava/lang/String;I)V
new-instance v0, Landroid/content/Intent;
const-class v2, Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {v0, p0, v2}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V
const-string v2, "conversation_uri"
invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->startActivity(Landroid/content/Intent;)V
const-string v0, "open"
const-string v1, "Conversation"
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_d
:sswitch_7d
const-string v0, "com.bbm.selectedcontacts"
invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
if-eqz v0, :cond_d
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v1
if-lez v1, :cond_d
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-static {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;)V
goto/16 :goto_d
:sswitch_96
const-string v0, "SCAN_RESULT"
invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0, p0}, Lcom/bbm/h/aq;->a(Ljava/lang/String;Landroid/app/Activity;)V
goto/16 :goto_d
:sswitch_a1
const-string v0, "com.bbm.selectedcategoryid"
invoke-virtual {p3, v0, v4, v5}, Landroid/content/Intent;->getLongExtra(Ljava/lang/String;J)J
move-result-wide v0
cmp-long v2, v0, v4
if-eqz v2, :cond_d
const-string v2, "com.bbm.selectedcontacts"
invoke-virtual {p3, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v2
if-eqz v2, :cond_d
const-string v2, "com.bbm.selectedcontacts"
invoke-virtual {p3, v2}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
iget-object v3, v3, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-static {v2, v0, v1}, Lcom/bbm/d/z;->a(Ljava/util/List;J)Lcom/bbm/d/cv;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
goto/16 :goto_d
:sswitch_c6
const-string v0, "com.bbm.selectedgroupuri"
invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_d
const-string v0, "com.bbm.selecteduris"
invoke-virtual {p3, v0}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_d
const-string v0, "com.bbm.selectedgroupuri"
invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
const-string v1, "com.bbm.selecteduris"
invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v1
new-instance v2, Lcom/bbm/ui/activities/xm;
invoke-direct {v2, p0, v0, v1}, Lcom/bbm/ui/activities/xm;-><init>(Lcom/bbm/ui/activities/MainActivity;Ljava/util/ArrayList;Ljava/util/ArrayList;)V
iput-object v2, p0, Lcom/bbm/ui/activities/MainActivity;->p:Lcom/bbm/ui/activities/xm;
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->p:Lcom/bbm/ui/activities/xm;
invoke-virtual {v0}, Lcom/bbm/ui/activities/xm;->c()V
goto/16 :goto_d
:sswitch_f0
const-string v0, "com.bbm.selectedcontacts"
invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringArrayListExtra(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v0
const-string v1, "com.bbm.resultadid"
invoke-virtual {p3, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v5
if-eqz v0, :cond_d
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v1
if-lez v1, :cond_d
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Ljava/lang/String;
const-string v4, "contextContentType_shareAd"
move-object v0, p0
move-object v3, v2
move-object v6, v2
invoke-static/range {v0 .. v6}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/util/HashMap;)V
goto/16 :goto_d
:sswitch_114
invoke-static {p0, p3}, Lcom/bbm/util/ac;->a(Landroid/app/Activity;Landroid/content/Intent;)V
goto/16 :goto_d
:sswitch_119
if-eqz p3, :cond_121
invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v0
if-nez v0, :cond_139
:cond_121
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->d:Landroid/net/Uri;
:goto_123
if-eqz v0, :cond_d
const/16 v1, 0x16
const/4 v2, 0x0
:try_start_128
invoke-static {p0, v1, v0, v2}, Lcom/bbm/ui/el;->a(Landroid/app/Activity;ILandroid/net/Uri;Z)Z
move-result v0
if-eqz v0, :cond_d
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->q()V
:try_end_131
.catch Ljava/io/IOException; {:try_start_128 .. :try_end_131} :catch_133
goto/16 :goto_d
:catch_133
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto/16 :goto_d
:cond_139
invoke-virtual {p3}, Landroid/content/Intent;->getData()Landroid/net/Uri;
move-result-object v0
goto :goto_123
:sswitch_13e
invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_d
const-string v1, "data"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
:try_start_14c
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {p0}, Lcom/bbm/util/bi;->a(Landroid/content/Context;)Ljava/io/File;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
iget-object v2, v2, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v2}, Lcom/bbm/d/a;->i()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ".jpg"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-static {v0, v1, v2}, Lcom/bbm/util/b/h;->a(Landroid/graphics/Bitmap;Ljava/lang/String;Z)Z
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->b:Lcom/bbm/d/a;
const-string v2, "image/jpeg"
invoke-static {v1, v2}, Lcom/bbm/d/z;->b(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/d/cu;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->a(Lcom/bbm/d/dw;)V
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->q()V
:try_end_189
.catch Ljava/lang/Exception; {:try_start_14c .. :try_end_189} :catch_18b
goto/16 :goto_d
:catch_18b
move-exception v0
invoke-static {v0}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto/16 :goto_d
nop
:sswitch_data_192
.sparse-switch
0x0 -> :sswitch_2a
0x1 -> :sswitch_7d
0x2 -> :sswitch_1a
0x3 -> :sswitch_26
0x4 -> :sswitch_96
0x5 -> :sswitch_a1
0x6 -> :sswitch_c6
0x8 -> :sswitch_f0
0x14 -> :sswitch_119
0x15 -> :sswitch_119
0x16 -> :sswitch_13e
0x64 -> :sswitch_114
0x3e8 -> :sswitch_e
.end sparse-switch
.end method
.method public onBackPressed()V
.registers 1
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onBackPressed()V
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 12
const-string v1, " + Lcom/bbm/ui/activities/MainActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-wide/16 v6, 0x0
const v5, 0x7f0a007c
const v4, 0x7f0a007b
const/4 v9, 0x1
const/4 v8, 0x0
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onCreate(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
if-eqz v0, :cond_16
invoke-virtual {v0, v9}, Lcom/slidingmenu/lib/SlidingMenu;->setTouchModeAbove(I)V
:cond_16
const-string v0, "activity"
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/ActivityManager;
invoke-virtual {v0}, Landroid/app/ActivityManager;->getMemoryClass()I
move-result v1
invoke-virtual {v0}, Landroid/app/ActivityManager;->getLargeMemoryClass()I
move-result v0
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "normalMemorySize in MB "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
const-class v2, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v1, v2}, Lcom/bbm/x;->a(Ljava/lang/String;Ljava/lang/Class;)V
new-instance v1, Ljava/lang/StringBuilder;
const-string v2, "largeMemorySize in MB "
invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-class v1, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/String;Ljava/lang/Class;)V
invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Runtime;->maxMemory()J
move-result-wide v0
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "max memory in bytes "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
const-class v1, Lcom/bbm/ui/activities/MainActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/String;Ljava/lang/Class;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->j()V
invoke-static {}, Lcom/bbm/Alaska;->c()Lcom/bbm/d;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
iput-boolean v9, p0, Lcom/bbm/ui/activities/MainActivity;->e:Z
const v0, 0x7f03003c
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->setContentView(I)V
const v0, 0x7f0a0220
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/MainTabBarView;
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->j:Lcom/bbm/ui/MainTabBarView;
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->j:Lcom/bbm/ui/MainTabBarView;
iget-object v1, p0, Lcom/bbm/ui/activities/MainActivity;->ac:Lcom/bbm/ui/dw;
invoke-virtual {v0, v1}, Lcom/bbm/ui/MainTabBarView;->setOnTabClickListener(Lcom/bbm/ui/dw;)V
iget-object v0, p0, Lcom/slidingmenu/lib/a/a;->E:Lcom/slidingmenu/lib/a/c;
iget-object v0, v0, Lcom/slidingmenu/lib/a/c;->b:Lcom/slidingmenu/lib/SlidingMenu;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/slidingmenu/lib/SlidingMenu;->setMode(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->A:Lcom/bbm/ui/c/fm;
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Lcom/bbm/ui/c/fm;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ev;->B:Lcom/bbm/ui/c/fm;
invoke-virtual {p0, v0, v4}, Lcom/bbm/ui/activities/MainActivity;->a(Lcom/bbm/ui/c/fm;I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getWindow()Landroid/view/Window;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v1
const v0, 0x7f030109
invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setCustomView(I)V
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->h:Landroid/view/View;
const/16 v0, 0x10
invoke-virtual {v1, v0}, Landroid/app/ActionBar;->setDisplayOptions(I)V
const v0, 0x7f0a0527
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->i:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v2, 0x7f0a052e
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->k:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v2, 0x7f0a0530
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->l:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v2, 0x7f0a052d
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->m:Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v2, 0x7f0a052f
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->n:Landroid/widget/ImageView;
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v2, 0x7f0a052b
invoke-virtual {v0, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->r:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->r:Landroid/widget/ImageButton;
new-instance v2, Lcom/bbm/ui/activities/vy;
invoke-direct {v2, p0}, Lcom/bbm/ui/activities/vy;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0526
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v2, Lcom/bbm/ui/activities/vz;
invoke-direct {v2, p0}, Lcom/bbm/ui/activities/vz;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
if-eqz p1, :cond_137
const-string v0, "cameraFileUri"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/net/Uri;
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->d:Landroid/net/Uri;
:cond_137
const-string v0, "android.nfc.action.NDEF_DISCOVERED"
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getIntent()Landroid/content/Intent;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1c2
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/content/Intent;)V
invoke-virtual {p0, v5}, Lcom/bbm/ui/activities/MainActivity;->b(I)V
:goto_151
invoke-virtual {v1}, Landroid/app/ActionBar;->getCustomView()Landroid/view/View;
move-result-object v0
const v1, 0x7f0a0519
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->s:Landroid/widget/ImageView;
const v0, 0x7f0a0222
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->t:Landroid/widget/ImageView;
new-instance v0, Lcom/bbm/ui/activities/wb;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/wb;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Lcom/slidingmenu/lib/a/b;)V
const-string v0, "showOngoingNotificationExplanation"
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_23d
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->v()V
:cond_186
:goto_186
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->W:Lcom/bbm/j/u;
invoke-virtual {v0}, Lcom/bbm/j/u;->c()V
iget-boolean v0, p0, Lcom/bbm/ui/activities/MainActivity;->Q:Z
if-nez v0, :cond_1c1
invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;
move-result-object v0
const-string v1, "stickers_last_fetch_time"
invoke-interface {v0, v1, v6, v7}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v1
const-string v3, "stickers_fetch_period"
const-wide/32 v4, 0x240c8400
invoke-interface {v0, v3, v4, v5}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J
move-result-wide v3
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
sub-long v1, v5, v1
cmp-long v5, v1, v3
if-lez v5, :cond_252
iget-object v1, p0, Lcom/bbm/ui/activities/MainActivity;->P:Landroid/os/Handler;
iget-object v2, p0, Lcom/bbm/ui/activities/MainActivity;->T:Ljava/lang/Runnable;
invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_1b3
iput-boolean v9, p0, Lcom/bbm/ui/activities/MainActivity;->Q:Z
new-instance v1, Lcom/bbm/ui/activities/wc;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/wc;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
iput-object v1, p0, Lcom/bbm/ui/activities/MainActivity;->S:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
iget-object v1, p0, Lcom/bbm/ui/activities/MainActivity;->S:Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
invoke-interface {v0, v1}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V
:cond_1c1
const-string v1, " - Lcom/bbm/ui/activities/MainActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_1c2
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v2, "active_section"
invoke-virtual {v0, v2}, Landroid/content/Intent;->hasExtra(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1e4
invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/f/a;->b()V
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v2, "active_section"
invoke-virtual {v0, v2, v4}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->b(I)V
goto/16 :goto_151
:cond_1e4
if-eqz p1, :cond_225
const-string v0, "previousChannelTab"
const v2, 0x7f0a007d
invoke-virtual {p1, v0, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/bbm/ui/activities/MainActivity;->M:I
const-string v0, "previousChannelNotificationTabSplatState"
invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/bbm/ui/activities/MainActivity;->ai:Z
const-string v0, "active_section"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iget-object v2, p0, Lcom/bbm/ui/activities/MainActivity;->q:Lcom/bbm/util/cr;
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/bbm/util/cr;->b(Ljava/lang/Object;)V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->b(I)V
const-string v0, "previousNumInvites"
invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/bbm/ui/activities/MainActivity;->w:I
const-string v0, "previousNumUpdates"
invoke-virtual {p1, v0, v8}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/bbm/ui/activities/MainActivity;->G:I
const-string v0, "previousStickerUpdateTime"
invoke-virtual {p1, v0, v6, v7}, Landroid/os/Bundle;->getLong(Ljava/lang/String;J)J
move-result-wide v2
iput-wide v2, p0, Lcom/bbm/ui/activities/MainActivity;->I:J
goto/16 :goto_151
:cond_225
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/Alaska;->c:Z
if-eqz v0, :cond_238
invoke-virtual {p0, v5}, Lcom/bbm/ui/activities/MainActivity;->b(I)V
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
iput-boolean v8, v0, Lcom/bbm/Alaska;->c:Z
goto/16 :goto_151
:cond_238
invoke-virtual {p0, v4}, Lcom/bbm/ui/activities/MainActivity;->b(I)V
goto/16 :goto_151
:cond_23d
const-string v0, "com.bbm.ui.activities.action.CREATE_CONVERSATION"
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getIntent()Landroid/content/Intent;
move-result-object v1
invoke-virtual {v1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_186
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->w()V
goto/16 :goto_186
:cond_252
new-instance v5, Ljava/lang/StringBuilder;
const-string v6, "STICKERS: poll scheduled in"
invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
sub-long v6, v3, v1
invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v5
new-array v6, v8, [Ljava/lang/Object;
invoke-static {v5, v6}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
iget-object v5, p0, Lcom/bbm/ui/activities/MainActivity;->P:Landroid/os/Handler;
iget-object v6, p0, Lcom/bbm/ui/activities/MainActivity;->T:Ljava/lang/Runnable;
sub-long v1, v3, v1
invoke-virtual {v5, v6, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
goto/16 :goto_1b3
.end method
.method protected onDestroy()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/MainActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->ah:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->ah:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/b/o;
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->dismiss()V
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->ah:Lcom/google/b/a/l;
:cond_19
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onDestroy()V
const-string v1, " - Lcom/bbm/ui/activities/MainActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onNewIntent(Landroid/content/Intent;)V
.registers 4
if-eqz p1, :cond_1c
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_1c
const-string v0, "startConversation"
invoke-virtual {p1, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_1c
invoke-virtual {p1}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/os/Bundle;)V
const-string v0, "startConversation"
invoke-virtual {p1, v0}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
:cond_1c
const-string v0, "android.nfc.action.NDEF_DISCOVERED"
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_32
invoke-direct {p0, p1}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/content/Intent;)V
const v0, 0x7f0a007c
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->b(I)V
:goto_31
:cond_31
return-void
:cond_32
const-string v0, "com.bbm.ui.activities.action.SECTION_CHANGED"
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_5f
invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/f/a;->b()V
const-string v0, "active_section"
const v1, 0x7f0a007b
invoke-virtual {p1, v0, v1}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
const v1, 0x7f0a007a
if-ne v0, v1, :cond_5b
const-string v1, "conversation_uri"
invoke-virtual {p1, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/bbm/ui/activities/MainActivity;->K:Ljava/lang/String;
:cond_5b
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->b(I)V
goto :goto_31
:cond_5f
const-string v0, "showOngoingNotificationExplanation"
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_6f
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->v()V
goto :goto_31
:cond_6f
const-string v0, "com.bbm.ui.activities.action.CREATE_CONVERSATION"
invoke-virtual {p1}, Landroid/content/Intent;->getAction()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_31
invoke-direct {p0}, Lcom/bbm/ui/activities/MainActivity;->w()V
goto :goto_31
.end method
.method protected onPause()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/MainActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->o:Lcom/bbm/ui/activities/xn;
invoke-virtual {v0}, Lcom/bbm/ui/activities/xn;->e()V
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->p:Lcom/bbm/ui/activities/xm;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->p:Lcom/bbm/ui/activities/xm;
invoke-virtual {v0}, Lcom/bbm/ui/activities/xm;->e()V
:cond_e
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->ah:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->ah:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/b/o;
invoke-virtual {v0}, Lcom/bbm/ui/b/o;->dismiss()V
:cond_21
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->U:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->V:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->Y:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->e()V
invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onPause()V
const-string v1, " - Lcom/bbm/ui/activities/MainActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onResume()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/MainActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onResume()V
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->b()I
move-result v0
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->d(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->i:Lcom/bbm/ui/ObservingImageView;
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->i:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->c()Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->i:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0}, Lcom/bbm/ui/ObservingImageView;->d()V
:cond_1b
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->o:Lcom/bbm/ui/activities/xn;
invoke-virtual {v0}, Lcom/bbm/ui/activities/xn;->c()V
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->U:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->V:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->Y:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->aa:Lcom/bbm/j/k;
invoke-virtual {v0}, Lcom/bbm/j/k;->c()V
invoke-static {}, Lcom/bbm/Alaska;->i()Lcom/bbm/ui/f/a;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/f/a;->b()V
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->a:Lcom/bbm/d;
iget-object v0, v0, Lcom/bbm/d;->a:Lcom/bbm/b/q;
sget-object v0, Lcom/bbm/b/q;->a:Lcom/bbm/b/s;
invoke-virtual {v0}, Lcom/bbm/b/s;->a()V
const-string v0, "MainActivity: Trying to prefetch an ad onResume"
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->c(Ljava/lang/Object;[Ljava/lang/Object;)V
invoke-static {}, Lcom/bbm/b/e;->a()V
const-string v1, " - Lcom/bbm/ui/activities/MainActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onSaveInstanceState(Landroid/os/Bundle;)V
.registers 5
const-string v1, " + Lcom/bbm/ui/activities/MainActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onSaveInstanceState(Landroid/os/Bundle;)V
:try_start_3
const-string v1, "active_section"
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->q:Lcom/bbm/util/cr;
invoke-virtual {v0}, Lcom/bbm/util/cr;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {p1, v1, v0}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:goto_14
:try_end_14
.catch Lcom/bbm/j/z; {:try_start_3 .. :try_end_14} :catch_3f
const-string v0, "previousNumInvites"
iget v1, p0, Lcom/bbm/ui/activities/MainActivity;->w:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "previousNumInvites"
iget v1, p0, Lcom/bbm/ui/activities/MainActivity;->G:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "previousStickerUpdateTime"
iget-wide v1, p0, Lcom/bbm/ui/activities/MainActivity;->I:J
invoke-virtual {p1, v0, v1, v2}, Landroid/os/Bundle;->putLong(Ljava/lang/String;J)V
const-string v0, "previousChannelTab"
iget v1, p0, Lcom/bbm/ui/activities/MainActivity;->M:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "previousChannelNotificationTabSplatState"
iget-boolean v1, p0, Lcom/bbm/ui/activities/MainActivity;->ai:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "cameraFileUri"
iget-object v1, p0, Lcom/bbm/ui/activities/MainActivity;->d:Landroid/net/Uri;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v1, " - Lcom/bbm/ui/activities/MainActivity; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_3f
move-exception v0
goto :goto_14
.end method
.method public onShowDialog(Landroid/view/View;)V
.registers 4
new-instance v0, Lcom/bbm/ui/b/s;
invoke-direct {v0, p0}, Lcom/bbm/ui/b/s;-><init>(Lcom/bbm/ui/activities/MainActivity;)V
invoke-static {v0}, Lcom/google/b/a/l;->b(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v1
iput-object v1, p0, Lcom/bbm/ui/activities/MainActivity;->f:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/bbm/ui/b/s;->show()V
return-void
.end method
.method protected onStart()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/MainActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onStart()V
const-string v1, " - Lcom/bbm/ui/activities/MainActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onStop()V
.registers 3
const-string v1, " + Lcom/bbm/ui/activities/MainActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/bbm/ui/activities/ev;->onStop()V
const-string v1, " - Lcom/bbm/ui/activities/MainActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onTitleChanged(Ljava/lang/CharSequence;I)V
.registers 3
invoke-super {p0, p1, p2}, Lcom/bbm/ui/activities/ev;->onTitleChanged(Ljava/lang/CharSequence;I)V
return-void
.end method
.method public onWindowFocusChanged(Z)V
.registers 4
iget-object v0, p0, Lcom/bbm/ui/activities/MainActivity;->b:Lcom/bbm/j/t;
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ev;->onWindowFocusChanged(Z)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
if-eqz v0, :cond_3c
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_3c
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "startConversation"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_3c
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/MainActivity;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/MainActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "startConversation"
invoke-virtual {v0, v1}, Landroid/content/Intent;->removeExtra(Ljava/lang/String;)V
:cond_3c
return-void
.end method