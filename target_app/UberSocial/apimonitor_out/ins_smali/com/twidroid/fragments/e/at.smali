.class public Lcom/twidroid/fragments/e/at;
.super Lcom/twidroid/fragments/base/d;
.source "SourceFile"
.field public static final d:Ljava/lang/String; = "EXTRA_USER"
.field public static final e:Ljava/lang/String; = "EXTRA_USERNAME"
.field private static final f:Ljava/lang/String; = "UserTimelineFragment"
.field private static final h:I
.field private g:Ljava/lang/String;
.field private i:Lcom/twidroid/ui/a/am;
.field private j:Z
.field private k:Lcom/twidroid/model/twitter/c;
.method static constructor <clinit>()V
.registers 1
sget v0, Lcom/twidroid/activity/UberSocialBaseActivity;->M:I
sput v0, Lcom/twidroid/fragments/e/at;->h:I
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/twidroid/fragments/base/d;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/fragments/e/at;->g:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Lcom/twidroid/model/twitter/c;Ljava/lang/String;)V
.registers 6
invoke-direct {p0}, Lcom/twidroid/fragments/base/d;-><init>()V
const-string v0, ""
iput-object v0, p0, Lcom/twidroid/fragments/e/at;->g:Ljava/lang/String;
iput-object p1, p0, Lcom/twidroid/fragments/e/at;->a:Lcom/twidroid/model/twitter/c;
iput-object p2, p0, Lcom/twidroid/fragments/e/at;->g:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/fragments/e/at;->j:Z
const-string v1, "UserTimelineFragment"
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "ACCOUNT: "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
if-eqz p1, :cond_3d
invoke-virtual {p1}, Lcom/twidroid/model/twitter/c;->h()Ljava/lang/String;
move-result-object v0
:goto_21
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " , SCREENNAME: "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_40
:goto_31
invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
return-void
:cond_3d
const-string v0, ""
goto :goto_21
:cond_40
const-string p2, ""
goto :goto_31
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/at;Lcom/twidroid/model/twitter/c;)Lcom/twidroid/model/twitter/c;
.registers 2
iput-object p1, p0, Lcom/twidroid/fragments/e/at;->k:Lcom/twidroid/model/twitter/c;
return-object p1
.end method
.method private a(Landroid/os/Bundle;)V
.registers 3
if-eqz p1, :cond_d
const-string v0, "screenname"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/fragments/e/at;->g:Ljava/lang/String;
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/fragments/e/at;->j:Z
:cond_d
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/at;Ljava/lang/Runnable;)V
.registers 2
invoke-virtual {p0, p1}, Lcom/twidroid/fragments/e/at;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/fragments/e/at;)Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/fragments/e/at;->j:Z
return v0
.end method
.method static synthetic b(Lcom/twidroid/fragments/e/at;)Lcom/twidroid/model/twitter/c;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/at;->k:Lcom/twidroid/model/twitter/c;
return-object v0
.end method
.method static synthetic c(Lcom/twidroid/fragments/e/at;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/at;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic d(Lcom/twidroid/fragments/e/at;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/at;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic e(Lcom/twidroid/fragments/e/at;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/at;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic f(Lcom/twidroid/fragments/e/at;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/at;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic g(Lcom/twidroid/fragments/e/at;)Lcom/twidroid/b/a/b;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/at;->x:Lcom/twidroid/b/a/b;
return-object v0
.end method
.method static synthetic h(Lcom/twidroid/fragments/e/at;)Lcom/twidroid/ui/a/am;
.registers 2
iget-object v0, p0, Lcom/twidroid/fragments/e/at;->i:Lcom/twidroid/ui/a/am;
return-object v0
.end method
.method static synthetic x()I
.registers 1
sget v0, Lcom/twidroid/fragments/e/at;->h:I
return v0
.end method
.method protected b()V
.registers 1
invoke-virtual {p0}, Lcom/twidroid/fragments/e/at;->d()V
return-void
.end method
.method public b(Z)V
.registers 8
const-wide/16 v3, 0x0
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->b(Z)V
iget-object v0, p0, Lcom/twidroid/fragments/e/at;->i:Lcom/twidroid/ui/a/am;
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->d()Ljava/lang/Long;
move-result-object v2
iget-object v0, p0, Lcom/twidroid/fragments/e/at;->i:Lcom/twidroid/ui/a/am;
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->e()Ljava/lang/Long;
move-result-object v0
if-nez v2, :cond_17
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v2
:cond_17
if-nez v0, :cond_1d
invoke-static {v3, v4}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
:cond_1d
const-string v3, "UserTimelineFragment"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "USERNAME FOR UPDATE: "
invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
iget-object v1, p0, Lcom/twidroid/fragments/e/at;->g:Ljava/lang/String;
if-eqz v1, :cond_5a
iget-object v1, p0, Lcom/twidroid/fragments/e/at;->g:Ljava/lang/String;
:goto_30
invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v3, v1}, Lcom/ubermedia/b/m;->e(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/twidroid/fragments/e/au;
const/4 v3, 0x0
invoke-direct {v1, p0, v3}, Lcom/twidroid/fragments/e/au;-><init>(Lcom/twidroid/fragments/e/at;Lcom/twidroid/fragments/e/at$1;)V
const/4 v3, 0x3
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
iget-object v5, p0, Lcom/twidroid/fragments/e/at;->g:Ljava/lang/String;
aput-object v5, v3, v4
const/4 v4, 0x1
if-eqz p1, :cond_4d
move-object v0, v2
:cond_4d
aput-object v0, v3, v4
const/4 v0, 0x2
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
aput-object v2, v3, v0
invoke-virtual {v1, v3}, Lcom/twidroid/fragments/e/au;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
:cond_5a
const-string v1, ""
goto :goto_30
.end method
.method public d()V
.registers 1
return-void
.end method
.method protected e()V
.registers 5
iget-object v0, p0, Lcom/twidroid/fragments/e/at;->i:Lcom/twidroid/ui/a/am;
if-nez v0, :cond_12
new-instance v0, Lcom/twidroid/ui/a/am;
invoke-virtual {p0}, Lcom/twidroid/fragments/e/at;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/twidroid/fragments/e/at;->b:Ljava/util/List;
const/4 v3, 0x1
invoke-direct {v0, v1, v2, v3}, Lcom/twidroid/ui/a/am;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V
iput-object v0, p0, Lcom/twidroid/fragments/e/at;->i:Lcom/twidroid/ui/a/am;
:cond_12
iget-object v0, p0, Lcom/twidroid/fragments/e/at;->i:Lcom/twidroid/ui/a/am;
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/at;->setListAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/at;->i:Lcom/twidroid/ui/a/am;
invoke-virtual {v0}, Lcom/twidroid/ui/a/am;->getCount()I
move-result v0
if-nez v0, :cond_26
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/twidroid/fragments/e/at;->b(Z)V
invoke-virtual {p0}, Lcom/twidroid/fragments/e/at;->N()V
:cond_26
return-void
.end method
.method public onCreate(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/twidroid/fragments/e/at; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->onCreate(Landroid/os/Bundle;)V
if-eqz p1, :cond_9
:goto_5
invoke-direct {p0, p1}, Lcom/twidroid/fragments/e/at;->a(Landroid/os/Bundle;)V
const-string v1, " - Lcom/twidroid/fragments/e/at; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_9
invoke-virtual {p0}, Lcom/twidroid/fragments/e/at;->getArguments()Landroid/os/Bundle;
move-result-object p1
goto :goto_5
.end method
.method public onSaveInstanceState(Landroid/os/Bundle;)V
.registers 4
const-string v1, " + Lcom/twidroid/fragments/e/at; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0, p1}, Lcom/twidroid/fragments/base/d;->onSaveInstanceState(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/twidroid/fragments/e/at;->g:Ljava/lang/String;
if-eqz v0, :cond_e
const-string v0, "screenname"
iget-object v1, p0, Lcom/twidroid/fragments/e/at;->g:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
:cond_e
const-string v1, " - Lcom/twidroid/fragments/e/at; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method