.class public abstract Lcom/twidroid/fragments/base/e;
.super Lcom/twidroid/fragments/base/d;
.source "SourceFile"
.implements Landroid/widget/AdapterView$OnItemSelectedListener;
.field private static I:Landroid/os/Handler; = null
.field private static final L:I = 0x1
.field private static final M:I = 0x2
.field private static N:Lcom/twidroid/net/a/c/a/j; = null
.field private static O:Ljava/util/concurrent/CopyOnWriteArraySet; = null
.field public static final d:I = 0xea60
.field public static final f:Ljava/lang/String; = "BaseTwetTimelineWithAccountSelection"
.field public static final g:Ljava/lang/String; = "LastUserID"
.field public static final h:Ljava/lang/String; = "account"
.field public static j:Z
.field protected static q:Ljava/util/Map;
.field private G:Lcom/twidroid/fragments/base/f;
.field private H:Lcom/twidroid/fragments/base/l;
.field private J:Lcom/twidroid/service/f;
.field private K:Landroid/content/BroadcastReceiver;
.field private P:Lcom/twidroid/fragments/base/j;
.field protected e:Lcom/twidroid/ui/widgets/AccountSpinner;
.field public i:I
.field protected k:Landroid/os/Handler;
.field protected n:I
.field protected o:Lcom/twidroid/fragments/base/g;
.field protected p:J
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x0
sput-boolean v0, Lcom/twidroid/fragments/base/e;->j:Z
new-instance v0, Lcom/twidroid/fragments/base/e$3;
invoke-direct {v0}, Lcom/twidroid/fragments/base/e$3;-><init>()V
sput-object v0, Lcom/twidroid/fragments/base/e;->N:Lcom/twidroid/net/a/c/a/j;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
sput-object v0, Lcom/twidroid/fragments/base/e;->q:Ljava/util/Map;
new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;
invoke-direct {v0}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V
sput-object v0, Lcom/twidroid/fragments/base/e;->O:Ljava/util/concurrent/CopyOnWriteArraySet;
return-void
.end method
.method public constructor <init>()V
.registers 4
const/4 v2, 0x0
invoke-direct {p0}, Lcom/twidroid/fragments/base/d;-><init>()V
new-instance v0, Lcom/twidroid/fragments/base/f;
invoke-direct {v0, p0, v2}, Lcom/twidroid/fragments/base/f;-><init>(Lcom/twidroid/fragments/base/e;Lcom/twidroid/fragments/base/e$1;)V
iput-object v0, p0, Lcom/twidroid/fragments/base/e;->G:Lcom/twidroid/fragments/base/f;
new-instance v0, Lcom/twidroid/fragments/base/l;
invoke-direct {v0, p0, v2}, Lcom/twidroid/fragments/base/l;-><init>(Lcom/twidroid/fragments/base/e;Lcom/twidroid/fragments/base/e$1;)V
iput-object v0, p0, Lcom/twidroid/fragments/base/e;->H:Lcom/twidroid/fragments/base/l;
const/4 v0, -0x1
iput v0, p0, Lcom/twidroid/fragments/base/e;->n:I
new-instance v0, Lcom/twidroid/fragments/base/e$1;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/base/e$1;-><init>(Lcom/twidroid/fragments/base/e;)V
iput-object v0, p0, Lcom/twidroid/fragments/base/e;->K:Landroid/content/BroadcastReceiver;
const-wide/16 v0, -0x1
iput-wide v0, p0, Lcom/twidroid/fragments/base/e;->p:J
new-instance v0, Lcom/twidroid/fragments/base/j;
invoke-direct {v0, p0, v2}, Lcom/twidroid/fragments/base/j;-><init>(Lcom/twidroid/fragments/base/e;Lcom/twidroid/fragments/base/e$1;)V
iput-object v0, p0, Lcom/twidroid/fragments/base/e;->P:Lcom/twidroid/fragments/base/j;
return-void
.end method
.method static synthetic I()Ljava/util/concurrent/CopyOnWriteArraySet;
.registers 1
sget-object v0, Lcom/twidroid/fragments/base/e;->O:Ljava/util/concurrent/CopyOnWriteArraySet;
return-object v0
.end method
.method static synthetic J()Landroid/os/Handler;
.registers 1
sget-object v0, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
return-object v0
.end method
.method private Z()V
.registers 4
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_24
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->getUserVisibleHint()Z
move-result v1
if-eqz v1, :cond_24
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->isVisible()Z
move-result v1
if-eqz v1, :cond_24
const-string v1, "BaseTwetTimelineWithAccountSelection"
const-string v2, "Show multiaccount TOAST"
invoke-static {v1, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
const v1, 0x7f0c01e5
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;II)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:cond_24
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/base/e;Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/fragments/base/e;->f(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/fragments/base/e;Lcom/twidroid/service/f;)Lcom/twidroid/service/f;
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
return-object p1
.end method
.method static synthetic a(Lcom/twidroid/fragments/base/e;)V
.registers 1
invoke-direct {p0}, Lcom/twidroid/fragments/base/e;->aa()V
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/base/e;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/twidroid/fragments/base/e;->f(Z)V
return-void
.end method
.method private a(Lcom/twidroid/net/a/c/a/k;)V
.registers 4
invoke-virtual {p1}, Lcom/twidroid/net/a/c/a/k;->h()Z
move-result v0
if-eqz v0, :cond_e
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "stream already connected, no need to start again"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_d
return-void
:cond_e
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "Refreshing timeline since streaming was down"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/base/e;->b(Z)V
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "Starting stream"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p1}, Lcom/twidroid/net/a/c/a/k;->a()V
goto :goto_d
.end method
.method private aa()V
.registers 6
const/4 v4, 0x2
const/4 v3, 0x1
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "Stop all streams"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
if-eqz v0, :cond_8f
sget-object v0, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-direct {p0, v1}, Lcom/twidroid/fragments/base/e;->f(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;
move-result-object v1
invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_4a
const-string v0, "BaseTwetTimelineWithAccountSelection"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Had old START message for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", removing"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-direct {p0, v1}, Lcom/twidroid/fragments/base/e;->f(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;
move-result-object v1
invoke-virtual {v0, v3, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
:cond_4a
sget-object v0, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-direct {p0, v1}, Lcom/twidroid/fragments/base/e;->f(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;
move-result-object v1
invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z
move-result v0
if-nez v0, :cond_8f
const-string v0, "BaseTwetTimelineWithAccountSelection"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Had no STOP message for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", adding"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
sget-object v1, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
iget-object v2, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-direct {p0, v2}, Lcom/twidroid/fragments/base/e;->f(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;
move-result-object v2
invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
const-wide/16 v2, 0x7530
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:cond_8f
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->w:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->aP()Z
move-result v0
if-eqz v0, :cond_a5
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "Unregestering connection receiver"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:try_start_9e
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->c:Lcom/twidroid/UberSocialApplication;
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->P:Lcom/twidroid/fragments/base/j;
invoke-virtual {v0, v1}, Lcom/twidroid/UberSocialApplication;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
:try_end_a5
.catch Ljava/lang/IllegalArgumentException; {:try_start_9e .. :try_end_a5} :catch_a6
:goto_a5
:cond_a5
return-void
:catch_a6
move-exception v0
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "Receiver already unregistered"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_a5
.end method
.method static synthetic b(Lcom/twidroid/fragments/base/e;)Lcom/twidroid/service/f;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
return-object v0
.end method
.method private b(Lcom/twidroid/net/a/c/a/k;)V
.registers 2
invoke-virtual {p1}, Lcom/twidroid/net/a/c/a/k;->g()V
return-void
.end method
.method private f(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;
.registers 3
invoke-static {p1}, Lcom/twidroid/fragments/base/i;->a(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;
move-result-object v0
return-object v0
.end method
.method private f(Z)V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
invoke-virtual {v0}, Lcom/twidroid/service/f;->e()Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/base/e;->c(Lcom/twidroid/model/twitter/c;)V
:cond_15
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/base/e;->e(Z)V
return-void
.end method
.method protected A()Z
.registers 4
const/4 v1, 0x1
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->c:Lcom/twidroid/UberSocialApplication;
const-string v2, "connectivity"
invoke-virtual {v0, v2}, Lcom/twidroid/UberSocialApplication;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/net/ConnectivityManager;
invoke-virtual {v0}, Landroid/net/ConnectivityManager;->getActiveNetworkInfo()Landroid/net/NetworkInfo;
move-result-object v0
if-eqz v0, :cond_19
invoke-virtual {v0}, Landroid/net/NetworkInfo;->getType()I
move-result v0
if-ne v0, v1, :cond_19
move v0, v1
:goto_18
return v0
:cond_19
const/4 v0, 0x0
goto :goto_18
.end method
.method public B()V
.registers 7
sget-boolean v0, Lcom/twidroid/fragments/base/e;->j:Z
if-eqz v0, :cond_20
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->x()Z
move-result v0
if-eqz v0, :cond_21
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccountWithAllAccount()Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
:goto_14
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->w:Lcom/twidroid/d/v;
iget-object v2, p0, Lcom/twidroid/fragments/base/e;->y:Landroid/database/sqlite/SQLiteDatabase;
const-string v3, "LastUserID"
int-to-long v4, v0
invoke-virtual {v1, v2, v3, v4, v5}, Lcom/twidroid/d/v;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
iput v0, p0, Lcom/twidroid/fragments/base/e;->n:I
:cond_20
return-void
:cond_21
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccount()Lcom/twidroid/model/twitter/c;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
goto :goto_14
.end method
.method protected C()V
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
if-nez v0, :cond_5
:goto_4
return-void
:cond_5
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->b()Z
move-result v0
if-eqz v0, :cond_11
const/4 v0, -0x1
iput v0, p0, Lcom/twidroid/fragments/base/e;->n:I
goto :goto_4
:cond_11
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getCurrentAccountId()I
move-result v0
iput v0, p0, Lcom/twidroid/fragments/base/e;->n:I
goto :goto_4
.end method
.method public D()V
.registers 11
const/4 v1, 0x0
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->w:Lcom/twidroid/d/v;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->w:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->P()Z
move-result v0
if-nez v0, :cond_e
:cond_d
:goto_d
return-void
:cond_e
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
if-nez v0, :cond_1e
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "TPOS tweetlist is empty"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_d
:cond_1e
iget-boolean v0, p0, Lcom/twidroid/fragments/base/e;->A:Z
if-eqz v0, :cond_1c6
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->c:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
iget-object v2, p0, Lcom/twidroid/fragments/base/e;->c:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v2}, Lcom/twidroid/UberSocialApplication;->g()Lcom/twidroid/b/a/b;
move-result-object v2
invoke-virtual {v2}, Lcom/twidroid/b/a/b;->a()Landroid/database/sqlite/SQLiteDatabase;
move-result-object v2
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->m()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v2, v3}, Lcom/twidroid/d/v;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;)J
move-result-wide v4
const-string v0, "BaseTwetTimelineWithAccountSelection"
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "TPOS Using TAG:  "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->m()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " for last timestamp of: "
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
new-instance v3, Ljava/util/Date;
invoke-direct {v3, v4, v5}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v2}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v3
move v2, v1
:goto_6c
if-ge v2, v3, :cond_1d6
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->b:Ljava/util/List;
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
invoke-static {v0}, Lcom/twidroid/d/o;->a(Ljava/lang/Object;)J
move-result-wide v6
cmp-long v6, v6, v4
if-gtz v6, :cond_19f
iget-object v4, p0, Lcom/twidroid/fragments/base/e;->b:Ljava/util/List;
invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v4
instance-of v4, v4, Lcom/twidroid/model/twitter/Tweet;
if-eqz v4, :cond_1d3
const-string v4, "BaseTwetTimelineWithAccountSelection"
new-instance v5, Ljava/lang/StringBuilder;
invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V
const-string v6, "TPOS Found Last Timelineposition position of total ("
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, "): "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v5
const-string v6, " at Timestamp "
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
new-instance v6, Ljava/util/Date;
invoke-static {v0}, Lcom/twidroid/d/o;->a(Ljava/lang/Object;)J
move-result-wide v7
invoke-direct {v6, v7, v8}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, " :"
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->b:Ljava/util/List;
invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/CommunicationEntity;->n()Ljava/lang/String;
move-result-object v0
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v4, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
move v0, v2
:goto_d2
add-int/lit8 v2, v3, -0x8
if-le v0, v2, :cond_d8
add-int/lit8 v0, v3, -0x8
:cond_d8
if-gez v0, :cond_db
move v0, v1
:cond_db
iput v0, p0, Lcom/twidroid/fragments/base/e;->i:I
const-string v2, "BaseTwetTimelineWithAccountSelection"
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "TPOS found position: "
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v3
invoke-static {v2, v3}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v2, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
if-nez v2, :cond_1a3
const/4 v2, 0x0
move-object v4, v2
:goto_fb
if-eqz v4, :cond_1bb
iget-object v2, p0, Lcom/twidroid/fragments/base/e;->b:Ljava/util/List;
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
move v3, v1
:goto_104
if-ge v3, v2, :cond_16e
iget-object v5, p0, Lcom/twidroid/fragments/base/e;->b:Ljava/util/List;
invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v5
invoke-static {v5}, Lcom/twidroid/d/o;->a(Ljava/lang/Object;)J
move-result-wide v6
invoke-virtual {v4}, Lcom/twidroid/fragments/base/TimelineState;->b()J
move-result-wide v8
cmp-long v6, v6, v8
if-gtz v6, :cond_1b7
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->b:Ljava/util/List;
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
instance-of v0, v0, Lcom/twidroid/model/twitter/Tweet;
if-eqz v0, :cond_1d1
const-string v6, "BaseTwetTimelineWithAccountSelection"
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v7, "TPOS Found Last Timelineposition position of total ("
invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v7, "): "
invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
const-string v7, " at Timestamp "
invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
new-instance v7, Ljava/util/Date;
invoke-static {v5}, Lcom/twidroid/d/o;->a(Ljava/lang/Object;)J
move-result-wide v8
invoke-direct {v7, v8, v9}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v5, " :"
invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v5
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->b:Ljava/util/List;
invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/CommunicationEntity;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/CommunicationEntity;->n()Ljava/lang/String;
move-result-object v0
invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v6, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
move v0, v3
:goto_16e
:cond_16e
if-le v0, v2, :cond_171
move v0, v2
:cond_171
if-gez v0, :cond_1cf
:goto_173
iput v1, p0, Lcom/twidroid/fragments/base/e;->i:I
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->getListView()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v4}, Lcom/twidroid/fragments/base/TimelineState;->d()I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->getListView()Landroid/widget/ListView;
move-result-object v0
if-eqz v0, :cond_18d
invoke-virtual {v4}, Lcom/twidroid/fragments/base/TimelineState;->d()I
move-result v2
invoke-virtual {v0, v1, v2}, Landroid/widget/ListView;->setSelectionFromTop(II)V
:cond_18d
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->x:Lcom/twidroid/b/a/b;
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->m()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->p()I
move-result v2
int-to-long v2, v2
invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/b/a/b;->b(Ljava/lang/String;J)V
goto/16 :goto_d
:cond_19f
add-int/lit8 v2, v2, 0x1
goto/16 :goto_6c
:cond_1a3
iget-object v2, p0, Lcom/twidroid/fragments/base/e;->x:Lcom/twidroid/b/a/b;
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->m()Ljava/lang/String;
move-result-object v3
iget-object v4, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v4}, Lcom/twidroid/model/twitter/c;->p()I
move-result v4
int-to-long v4, v4
invoke-virtual {v2, v3, v4, v5}, Lcom/twidroid/b/a/b;->a(Ljava/lang/String;J)Lcom/twidroid/fragments/base/TimelineState;
move-result-object v2
move-object v4, v2
goto/16 :goto_fb
:cond_1b7
add-int/lit8 v3, v3, 0x1
goto/16 :goto_104
:cond_1bb
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->getListView()Landroid/widget/ListView;
move-result-object v1
if-eqz v1, :cond_d
invoke-virtual {v1, v0}, Landroid/widget/ListView;->setSelection(I)V
goto/16 :goto_d
:cond_1c6
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "TPOS no_user_scroll_interaction is false - not jumping to timeline position"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_d
:cond_1cf
move v1, v0
goto :goto_173
:cond_1d1
move v0, v3
goto :goto_16e
:cond_1d3
move v0, v2
goto/16 :goto_d2
:cond_1d6
move v0, v3
goto/16 :goto_d2
.end method
.method public E()J
.registers 3
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->getCount()I
move-result v0
if-nez v0, :cond_d
const-wide/16 v0, 0x0
:goto_c
return-wide v0
:cond_d
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->i()Lcom/twidroid/ui/a/am;
move-result-object v0
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->i()Lcom/twidroid/ui/a/am;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/ui/a/am;->getCount()I
move-result v1
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/a/am;->getItemId(I)J
move-result-wide v0
goto :goto_c
.end method
.method protected F()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method protected G()V
.registers 3
invoke-super {p0}, Lcom/twidroid/fragments/base/d;->G()V
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->w:Lcom/twidroid/d/v;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/base/e;->a(Lcom/twidroid/d/v;)V
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->x()Z
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/AccountSpinner;->setShowAllOption(Z)V
return-void
.end method
.method public H()Z
.registers 5
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "Check if it was interrupted"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-wide v2, p0, Lcom/twidroid/fragments/base/e;->p:J
sub-long/2addr v0, v2
const-wide/32 v2, 0xea60
cmp-long v0, v0, v2
if-lez v0, :cond_1e
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "Needs update"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x1
:goto_1d
return v0
:cond_1e
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "No need for update since downtime was short"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
const/4 v0, 0x0
goto :goto_1d
.end method
.method public a(Lcom/twidroid/d/v;)V
.registers 6
const/4 v2, 0x0
if-eqz p1, :cond_7
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
if-nez v0, :cond_8
:goto_7
:cond_7
return-void
:cond_8
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->y:Landroid/database/sqlite/SQLiteDatabase;
const-string v1, "LastUserID"
invoke-virtual {p1, v0, v1, v2}, Lcom/twidroid/d/v;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
move-result v0
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->x()Z
move-result v1
if-nez v1, :cond_31
const/4 v1, -0x1
if-ne v0, v1, :cond_31
sput-boolean v2, Lcom/twidroid/fragments/base/e;->j:Z
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
const-wide/16 v1, 0x1
invoke-virtual {v0, v1, v2}, Lcom/twidroid/ui/widgets/AccountSpinner;->setAccountByAccountId(J)V
:goto_22
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->x()Z
move-result v0
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccountWithAllAccount()Lcom/twidroid/model/twitter/c;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
goto :goto_7
:cond_31
const/4 v1, 0x1
sput-boolean v1, Lcom/twidroid/fragments/base/e;->j:Z
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
int-to-long v2, v0
invoke-virtual {v1, v2, v3}, Lcom/twidroid/ui/widgets/AccountSpinner;->setAccountByAccountId(J)V
iput v0, p0, Lcom/twidroid/fragments/base/e;->n:I
goto :goto_22
:cond_3d
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccount()Lcom/twidroid/model/twitter/c;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
goto :goto_7
.end method
.method protected a(Lcom/twidroid/net/a/c/a/j;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
invoke-virtual {v0}, Lcom/twidroid/service/f;->e()Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
invoke-virtual {v0}, Lcom/twidroid/service/f;->c()Lcom/twidroid/service/StreamingService;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/twidroid/service/StreamingService;->a(Lcom/twidroid/net/a/c/a/j;)V
:cond_15
return-void
.end method
.method protected a(Lcom/twidroid/ui/widgets/AccountSpinner;)V
.registers 3
iput-object p1, p0, Lcom/twidroid/fragments/base/e;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->w:Lcom/twidroid/d/v;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/base/e;->a(Lcom/twidroid/d/v;)V
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccount()Lcom/twidroid/model/twitter/c;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->C()V
return-void
.end method
.method protected a(Z)V
.registers 7
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->m()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "TPOS::saveTimelineposition (isCalledFromUpdateFunction: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ") for: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->m()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->a(Z)V
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->n()Z
move-result v0
if-nez v0, :cond_3b
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->m()Ljava/lang/String;
move-result-object v0
const-string v1, "TPOS::save timeline position not supported by this fragment."
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:goto_3a
return-void
:cond_3b
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->w:Lcom/twidroid/d/v;
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->y:Landroid/database/sqlite/SQLiteDatabase;
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->m()Ljava/lang/String;
move-result-object v2
iget v3, p0, Lcom/twidroid/fragments/base/e;->n:I
int-to-long v3, v3
invoke-virtual {v0, v1, v2, v3, v4}, Lcom/twidroid/d/v;->b(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;J)V
goto :goto_3a
.end method
.method protected a(ZLcom/twidroid/model/twitter/c;)V
.registers 8
const/4 v4, 0x1
const/4 v3, 0x0
if-eqz p1, :cond_49
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
if-eqz v0, :cond_48
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
if-eqz v1, :cond_48
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1, p2}, Lcom/twidroid/model/twitter/c;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_48
invoke-virtual {v0, v4, v3}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->a(ZZ)Lcom/handmark/pulltorefresh/library/b;
move-result-object v1
const-string v2, "Streaming..."
invoke-interface {v1, v2}, Lcom/handmark/pulltorefresh/library/b;->setPullLabel(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v4, v3}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->a(ZZ)Lcom/handmark/pulltorefresh/library/b;
move-result-object v1
const-string v2, "Streaming..."
invoke-interface {v1, v2}, Lcom/handmark/pulltorefresh/library/b;->setReleaseLabel(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v4, v3}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->a(ZZ)Lcom/handmark/pulltorefresh/library/b;
move-result-object v1
const-string v2, "Streaming..."
invoke-interface {v1, v2}, Lcom/handmark/pulltorefresh/library/b;->setRefreshingLabel(Ljava/lang/CharSequence;)V
sget-object v1, Lcom/handmark/pulltorefresh/library/g;->b:Lcom/handmark/pulltorefresh/library/g;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->d(Lcom/handmark/pulltorefresh/library/g;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
if-eqz v1, :cond_48
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->getResources()Landroid/content/res/Resources;
move-result-object v1
new-instance v2, Lcom/twidroid/fragments/base/e$4;
invoke-direct {v2, p0, v0, v1}, Lcom/twidroid/fragments/base/e$4;-><init>(Lcom/twidroid/fragments/base/e;Lcom/twidroid/ui/widgets/UberPullToRefreshListView;Landroid/content/res/Resources;)V
invoke-virtual {p0, v2}, Lcom/twidroid/fragments/base/e;->a(Ljava/lang/Runnable;)V
:cond_48
:goto_48
return-void
:cond_49
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->s()Lcom/twidroid/ui/widgets/UberPullToRefreshListView;
move-result-object v0
if-eqz v0, :cond_48
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1, p2}, Lcom/twidroid/model/twitter/c;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_48
invoke-virtual {v0, v4, v3}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->a(ZZ)Lcom/handmark/pulltorefresh/library/b;
move-result-object v1
const v2, 0x7f0c02b5
invoke-static {p0, v2}, Lcom/twidroid/d/h;->b(Lcom/twidroid/fragments/base/o;I)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Lcom/handmark/pulltorefresh/library/b;->setPullLabel(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v4, v3}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->a(ZZ)Lcom/handmark/pulltorefresh/library/b;
move-result-object v1
const v2, 0x7f0c02b7
invoke-static {p0, v2}, Lcom/twidroid/d/h;->b(Lcom/twidroid/fragments/base/o;I)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Lcom/handmark/pulltorefresh/library/b;->setReleaseLabel(Ljava/lang/CharSequence;)V
invoke-virtual {v0, v4, v3}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->a(ZZ)Lcom/handmark/pulltorefresh/library/b;
move-result-object v1
const v2, 0x7f0c02b6
invoke-static {p0, v2}, Lcom/twidroid/d/h;->b(Lcom/twidroid/fragments/base/o;I)Ljava/lang/String;
move-result-object v2
invoke-interface {v1, v2}, Lcom/handmark/pulltorefresh/library/b;->setRefreshingLabel(Ljava/lang/CharSequence;)V
invoke-virtual {p0, v3}, Lcom/twidroid/fragments/base/e;->c(Z)V
sget-object v1, Lcom/handmark/pulltorefresh/library/g;->b:Lcom/handmark/pulltorefresh/library/g;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/widgets/UberPullToRefreshListView;->c(Lcom/handmark/pulltorefresh/library/g;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
if-eqz v1, :cond_48
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->getResources()Landroid/content/res/Resources;
move-result-object v1
new-instance v2, Lcom/twidroid/fragments/base/e$5;
invoke-direct {v2, p0, v0, v1}, Lcom/twidroid/fragments/base/e$5;-><init>(Lcom/twidroid/fragments/base/e;Lcom/twidroid/ui/widgets/UberPullToRefreshListView;Landroid/content/res/Resources;)V
invoke-virtual {p0, v2}, Lcom/twidroid/fragments/base/e;->a(Ljava/lang/Runnable;)V
goto :goto_48
.end method
.method protected b(Lcom/twidroid/model/twitter/c;)V
.registers 10
const/4 v3, 0x0
const-wide/16 v6, -0x1
const/4 v5, 0x2
const/4 v4, 0x1
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
if-nez v0, :cond_3e
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->m()Ljava/lang/String;
move-result-object v0
const-string v1, "TPOS onAccountChanged: to NULL!!!???"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
:cond_12
:goto_12
iput-boolean v4, p0, Lcom/twidroid/fragments/base/e;->A:Z
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->w:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->aP()Z
move-result v0
if-eqz v0, :cond_1a3
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0, p1}, Lcom/twidroid/model/twitter/c;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_80
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "Account was not changed"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v0
cmp-long v0, v0, v6
if-nez v0, :cond_3d
sget-object v0, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
invoke-virtual {v0, v4}, Landroid/os/Handler;->removeMessages(I)V
invoke-direct {p0}, Lcom/twidroid/fragments/base/e;->Z()V
:goto_3d
:cond_3d
return-void
:cond_3e
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->w:Lcom/twidroid/d/v;
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->y:Landroid/database/sqlite/SQLiteDatabase;
const-string v2, "LastUserID"
invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/d/v;->a(Landroid/database/sqlite/SQLiteDatabase;Ljava/lang/String;I)I
move-result v0
const/4 v1, -0x1
if-ne v0, v1, :cond_53
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->p()I
move-result v0
if-le v0, v4, :cond_53
sput-boolean v4, Lcom/twidroid/fragments/base/e;->j:Z
:cond_53
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->m()Ljava/lang/String;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "TPOS onAccountChanged: to "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0, p1}, Lcom/twidroid/model/twitter/c;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_12
invoke-virtual {p0, v3}, Lcom/twidroid/fragments/base/e;->a(Z)V
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->B()V
goto :goto_12
:cond_80
sget-object v0, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-direct {p0, v1}, Lcom/twidroid/fragments/base/e;->f(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;
move-result-object v1
invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_db
const-string v0, "BaseTwetTimelineWithAccountSelection"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Had old START message for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", removing"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-direct {p0, v1}, Lcom/twidroid/fragments/base/e;->f(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;
move-result-object v1
invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
:goto_bd
:cond_bd
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v0
cmp-long v0, v0, v6
if-nez v0, :cond_12b
invoke-direct {p0}, Lcom/twidroid/fragments/base/e;->Z()V
:cond_c8
:goto_c8
iput-object p1, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->x:Lcom/twidroid/b/a/b;
if-eqz v0, :cond_3d
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->x:Lcom/twidroid/b/a/b;
invoke-virtual {v0}, Lcom/twidroid/b/a/b;->x()Lcom/twidroid/net/a/c/c;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0, v1}, Lcom/twidroid/net/a/c/c;->a(Lcom/twidroid/model/twitter/c;)V
goto/16 :goto_3d
:cond_db
sget-object v0, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-direct {p0, v1}, Lcom/twidroid/fragments/base/e;->f(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;
move-result-object v1
invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z
move-result v0
if-nez v0, :cond_bd
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/c;->o()J
move-result-wide v0
cmp-long v0, v0, v6
if-eqz v0, :cond_bd
const-string v0, "BaseTwetTimelineWithAccountSelection"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Had no STOP message for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v2}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", adding one"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
sget-object v1, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
iget-object v2, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-direct {p0, v2}, Lcom/twidroid/fragments/base/e;->f(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;
move-result-object v2
invoke-virtual {v1, v5, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
const-wide/16 v2, 0x7530
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
goto :goto_bd
:cond_12b
sget-object v0, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
invoke-direct {p0, p1}, Lcom/twidroid/fragments/base/e;->f(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;
move-result-object v1
invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_162
const-string v0, "BaseTwetTimelineWithAccountSelection"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Had old STOP message for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", removing"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
invoke-direct {p0, p1}, Lcom/twidroid/fragments/base/e;->f(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;
move-result-object v1
invoke-virtual {v0, v5, v1}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
:cond_162
sget-object v0, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
invoke-direct {p0, p1}, Lcom/twidroid/fragments/base/e;->f(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;
move-result-object v1
invoke-virtual {v0, v4, v1}, Landroid/os/Handler;->hasMessages(ILjava/lang/Object;)Z
move-result v0
if-nez v0, :cond_c8
const-string v0, "BaseTwetTimelineWithAccountSelection"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Had no START message for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ", adding"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
sget-object v0, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
sget-object v1, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
invoke-direct {p0, p1}, Lcom/twidroid/fragments/base/e;->f(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;
move-result-object v2
invoke-virtual {v1, v4, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
const-wide/16 v2, 0x1388
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
goto/16 :goto_c8
:cond_1a3
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "Streaming disabled"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
goto/16 :goto_c8
.end method
.method protected b(Lcom/twidroid/net/a/c/a/j;)V
.registers 3
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
invoke-virtual {v0}, Lcom/twidroid/service/f;->e()Z
move-result v0
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
invoke-virtual {v0}, Lcom/twidroid/service/f;->c()Lcom/twidroid/service/StreamingService;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/twidroid/service/StreamingService;->b(Lcom/twidroid/net/a/c/a/j;)V
:cond_15
return-void
.end method
.method protected c(Lcom/twidroid/model/twitter/c;)V
.registers 5
const-string v0, "BaseTwetTimelineWithAccountSelection"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Starting straming for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
invoke-virtual {v0}, Lcom/twidroid/service/f;->e()Z
move-result v0
if-nez v0, :cond_30
:cond_28
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "Service not bound yet!"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_2f
return-void
:cond_30
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
monitor-enter v1
:try_start_33
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
invoke-virtual {v0}, Lcom/twidroid/service/f;->c()Lcom/twidroid/service/StreamingService;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/twidroid/service/StreamingService;->c(Lcom/twidroid/model/twitter/c;)Z
move-result v0
if-nez v0, :cond_57
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
invoke-virtual {v0}, Lcom/twidroid/service/f;->c()Lcom/twidroid/service/StreamingService;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/twidroid/service/StreamingService;->a(Lcom/twidroid/model/twitter/c;)V
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v2, "Refreshing timeline since streaming was down"
invoke-static {v0, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/base/e;->d(Lcom/twidroid/model/twitter/c;)V
:goto_52
monitor-exit v1
goto :goto_2f
:catchall_54
move-exception v0
monitor-exit v1
:try_end_56
.catchall {:try_start_33 .. :try_end_56} :catchall_54
throw v0
:try_start_57
:cond_57
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v2, "no need to refresh or start a stream as it is already started"
invoke-static {v0, v2}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:try_end_5e
.catchall {:try_start_57 .. :try_end_5e} :catchall_54
goto :goto_52
.end method
.method protected d(Lcom/twidroid/model/twitter/c;)V
.registers 2
return-void
.end method
.method protected d(Z)Z
.registers 5
const/4 v0, 0x0
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
if-eqz v1, :cond_d
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
invoke-virtual {v1}, Lcom/twidroid/service/f;->e()Z
move-result v1
if-nez v1, :cond_e
:goto_d
:cond_d
return v0
:cond_e
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
invoke-virtual {v1}, Lcom/twidroid/service/f;->c()Lcom/twidroid/service/StreamingService;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v1, v2}, Lcom/twidroid/service/StreamingService;->c(Lcom/twidroid/model/twitter/c;)Z
move-result v1
if-eqz v1, :cond_d
if-nez p1, :cond_d
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->k:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/fragments/base/e$6;
invoke-direct {v1, p0}, Lcom/twidroid/fragments/base/e$6;-><init>(Lcom/twidroid/fragments/base/e;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
const/4 v0, 0x1
goto :goto_d
.end method
.method protected e(Lcom/twidroid/model/twitter/c;)V
.registers 5
const-string v0, "BaseTwetTimelineWithAccountSelection"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "Closing stream for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
if-eqz v0, :cond_28
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
invoke-virtual {v0}, Lcom/twidroid/service/f;->e()Z
move-result v0
if-nez v0, :cond_30
:cond_28
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "Service not bound yet!"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
:goto_2f
return-void
:cond_30
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
monitor-enter v1
:try_start_33
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
invoke-virtual {v0}, Lcom/twidroid/service/f;->c()Lcom/twidroid/service/StreamingService;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/twidroid/service/StreamingService;->b(Lcom/twidroid/model/twitter/c;)V
monitor-exit v1
goto :goto_2f
:catchall_3e
move-exception v0
monitor-exit v1
:try_end_40
.catchall {:try_start_33 .. :try_end_40} :catchall_3e
throw v0
.end method
.method protected e(Z)V
.registers 2
return-void
.end method
.method protected m()Ljava/lang/String;
.registers 2
const-string v0, "BaseTwetTimelineWithAccountSelection"
return-object v0
.end method
.method public final onActivityCreated(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->onActivityCreated(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->o:Lcom/twidroid/fragments/base/g;
invoke-interface {v0}, Lcom/twidroid/fragments/base/g;->s()Lcom/twidroid/ui/widgets/AccountSpinner;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/base/e;->a(Lcom/twidroid/ui/widgets/AccountSpinner;)V
return-void
.end method
.method public onAttach(Landroid/app/Activity;)V
.registers 7
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->onAttach(Landroid/app/Activity;)V
:try_start_3
move-object v0, p1
check-cast v0, Lcom/twidroid/fragments/base/g;
move-object v1, v0
iput-object v1, p0, Lcom/twidroid/fragments/base/e;->o:Lcom/twidroid/fragments/base/g;
:try_end_9
.catch Ljava/lang/ClassCastException; {:try_start_3 .. :try_end_9} :catch_1a
invoke-static {p1}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/base/e;->K:Landroid/content/BroadcastReceiver;
new-instance v3, Landroid/content/IntentFilter;
const-string v4, "ACTION_APP_CLOSED"
invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v2, v3}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
return-void
:catch_1a
move-exception v1
new-instance v1, Ljava/lang/ClassCastException;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, " must implement AccountSwitcher"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V
throw v1
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->onCreate(Landroid/os/Bundle;)V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/twidroid/fragments/base/e;->k:Landroid/os/Handler;
sget-object v0, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
if-nez v0, :cond_20
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "mStreamHandler was null, so creating one"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/twidroid/fragments/base/m;
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/twidroid/fragments/base/m;-><init>(Lcom/twidroid/fragments/base/e;Landroid/content/Context;)V
sput-object v0, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
:cond_20
return-void
.end method
.method public onDestroy()V
.registers 2
invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onDestroy()V
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
invoke-virtual {v0}, Lcom/twidroid/service/f;->b()V
:cond_c
return-void
.end method
.method public onDetach()V
.registers 3
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->K:Landroid/content/BroadcastReceiver;
invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onDetach()V
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "onDetach"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/twidroid/fragments/base/e;->aa()V
return-void
.end method
.method public final onItemSelected(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
.registers 7
if-eqz p1, :cond_b
invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/c;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/base/e;->b(Lcom/twidroid/model/twitter/c;)V
:cond_b
return-void
.end method
.method public final onNothingSelected(Landroid/widget/AdapterView;)V
.registers 2
return-void
.end method
.method public onPause()V
.registers 3
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "onPause"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onPause()V
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->B()V
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->G:Lcom/twidroid/fragments/base/f;
invoke-virtual {v0, v1}, Landroid/support/v4/content/LocalBroadcastManager;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->H:Lcom/twidroid/fragments/base/l;
invoke-virtual {v0, v1}, Landroid/support/v4/app/FragmentActivity;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V
return-void
.end method
.method public onResume()V
.registers 5
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "onResume"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
if-eqz v0, :cond_19
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->x()Z
move-result v0
if-eqz v0, :cond_56
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccountWithAllAccount()Lcom/twidroid/model/twitter/c;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
:goto_19
:cond_19
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->getUserVisibleHint()Z
move-result v0
if-eqz v0, :cond_22
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->G()V
:cond_22
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
if-eqz v0, :cond_29
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->b()V
:cond_29
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->w:Lcom/twidroid/d/v;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/base/e;->a(Lcom/twidroid/d/v;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onResume()V
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/support/v4/content/LocalBroadcastManager;->getInstance(Landroid/content/Context;)Landroid/support/v4/content/LocalBroadcastManager;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->G:Lcom/twidroid/fragments/base/f;
new-instance v2, Landroid/content/IntentFilter;
const-string v3, "ubersocial.broadcast.account.changed"
invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1, v2}, Landroid/support/v4/content/LocalBroadcastManager;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)V
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->H:Lcom/twidroid/fragments/base/l;
new-instance v2, Landroid/content/IntentFilter;
const-string v3, "twidroid.broadcast"
invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1, v2}, Landroid/support/v4/app/FragmentActivity;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
return-void
:cond_56
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->e:Lcom/twidroid/ui/widgets/AccountSpinner;
invoke-virtual {v0}, Lcom/twidroid/ui/widgets/AccountSpinner;->getSelectedAccount()Lcom/twidroid/model/twitter/c;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
goto :goto_19
.end method
.method public onStart()V
.registers 5
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "onStart"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onStart()V
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->w:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->aP()Z
move-result v0
if-eqz v0, :cond_27
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "Registering connection receiver"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->c:Lcom/twidroid/UberSocialApplication;
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->P:Lcom/twidroid/fragments/base/j;
new-instance v2, Landroid/content/IntentFilter;
const-string v3, "android.net.conn.CONNECTIVITY_CHANGE"
invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1, v2}, Lcom/twidroid/UberSocialApplication;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;
:cond_27
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
if-eqz v0, :cond_37
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->w:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->aP()Z
move-result v0
if-eqz v0, :cond_37
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->y()V
:cond_36
:goto_36
return-void
:cond_37
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->z()V
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->A()Z
move-result v0
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->w:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->T()Z
move-result v0
if-nez v0, :cond_36
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->k:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/fragments/base/e$2;
invoke-direct {v1, p0}, Lcom/twidroid/fragments/base/e$2;-><init>(Lcom/twidroid/fragments/base/e;)V
const-wide/16 v2, 0x1388
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "Just sent broadcast!"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_36
.end method
.method public onStop()V
.registers 3
const-string v0, "BaseTwetTimelineWithAccountSelection"
const-string v1, "onStop"
invoke-static {v0, v1}, Lcom/ubermedia/b/m;->b(Ljava/lang/String;Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/base/d;->onStop()V
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/base/d;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
const/4 v0, 0x0
invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
invoke-virtual {v0}, Lcom/twidroid/service/f;->e()Z
move-result v0
if-nez v0, :cond_14
:cond_13
:goto_13
return-void
:cond_14
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->J:Lcom/twidroid/service/f;
invoke-virtual {v0}, Lcom/twidroid/service/f;->c()Lcom/twidroid/service/StreamingService;
move-result-object v0
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {v0, v1}, Lcom/twidroid/service/StreamingService;->c(Lcom/twidroid/model/twitter/c;)Z
move-result v0
if-eqz v0, :cond_13
const/4 v0, 0x1
iget-object v1, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-virtual {p0, v0, v1}, Lcom/twidroid/fragments/base/e;->a(ZLcom/twidroid/model/twitter/c;)V
goto :goto_13
.end method
.method public q()V
.registers 1
invoke-super {p0}, Lcom/twidroid/fragments/base/d;->q()V
return-void
.end method
.method public x()Z
.registers 2
const/4 v0, 0x0
return v0
.end method
.method public y()V
.registers 4
invoke-virtual {p0}, Lcom/twidroid/fragments/base/e;->A()Z
move-result v0
if-nez v0, :cond_7
:goto_6
return-void
:cond_7
new-instance v0, Lcom/twidroid/fragments/base/n;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/twidroid/fragments/base/n;-><init>(Lcom/twidroid/fragments/base/e;Lcom/twidroid/fragments/base/e$1;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/twidroid/fragments/base/n;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
sget-object v0, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
const/4 v1, 0x2
iget-object v2, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-direct {p0, v2}, Lcom/twidroid/fragments/base/e;->f(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->removeMessages(ILjava/lang/Object;)V
goto :goto_6
.end method
.method public z()V
.registers 4
iget-object v0, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
if-eqz v0, :cond_16
sget-object v0, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
const/4 v1, 0x2
iget-object v2, p0, Lcom/twidroid/fragments/base/e;->a:Lcom/twidroid/model/twitter/c;
invoke-direct {p0, v2}, Lcom/twidroid/fragments/base/e;->f(Lcom/twidroid/model/twitter/c;)Lcom/twidroid/fragments/base/h;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v0
sget-object v1, Lcom/twidroid/fragments/base/e;->I:Landroid/os/Handler;
invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
:cond_16
return-void
.end method