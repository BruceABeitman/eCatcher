.class public Lcom/admarvel/android/ads/AdMarvelActivity;
.super Landroid/app/Activity;
.source "SourceFile"
.field static b:I
.field private A:Ljava/lang/String;
.field private B:Ljava/lang/String;
.field private C:Ljava/lang/String;
.field private D:Ljava/lang/String;
.field private E:Z
.field private F:Ljava/lang/String;
.field private G:Z
.field private H:Z
.field private I:Z
.field private J:Ljava/lang/String;
.field private K:Landroid/os/Handler;
.field private L:Landroid/os/Handler;
.field  a:Ljava/lang/ref/WeakReference;
.field public c:Z
.field public d:Z
.field public e:Ljava/lang/String;
.field public f:Ljava/lang/String;
.field private g:Z
.field private h:Z
.field private i:Lcom/admarvel/android/ads/AdMarvelActivity$b;
.field private j:I
.field private k:Ljava/lang/Runnable;
.field private l:Ljava/lang/Runnable;
.field private m:Ljava/lang/String;
.field private n:Ljava/lang/String;
.field private o:Ljava/lang/String;
.field private p:I
.field private q:Z
.field private r:Z
.field private s:Ljava/lang/String;
.field private final t:Landroid/os/Handler;
.field private u:Ljava/lang/String;
.field private v:Lcom/admarvel/android/ads/AdMarvelAd;
.field private w:Lcom/admarvel/android/ads/AdMarvelActivity$aa;
.field private x:Ljava/lang/String;
.field private y:Ljava/lang/String;
.field private z:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const v0, 0x193fe
sput v0, Lcom/admarvel/android/ads/AdMarvelActivity;->b:I
return-void
.end method
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Landroid/app/Activity;-><init>()V
iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->g:Z
iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->h:Z
iput v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->j:I
new-instance v0, Lcom/admarvel/android/ads/AdMarvelActivity$1;
invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelActivity$1;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->k:Ljava/lang/Runnable;
new-instance v0, Lcom/admarvel/android/ads/AdMarvelActivity$2;
invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelActivity$2;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->l:Ljava/lang/Runnable;
iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->q:Z
iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->r:Z
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->t:Landroid/os/Handler;
iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->c:Z
iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->d:Z
iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->E:Z
iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->G:Z
iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->H:Z
iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->I:Z
new-instance v0, Lcom/admarvel/android/ads/AdMarvelActivity$3;
invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelActivity$3;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->K:Landroid/os/Handler;
new-instance v0, Lcom/admarvel/android/ads/AdMarvelActivity$4;
invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelActivity$4;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->L:Landroid/os/Handler;
return-void
.end method
.method static synthetic A(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->y:Ljava/lang/String;
return-object v0
.end method
.method static synthetic B(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->C:Ljava/lang/String;
return-object v0
.end method
.method static synthetic C(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->A:Ljava/lang/String;
return-object v0
.end method
.method static synthetic D(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->l:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic E(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->k:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelActivity$aa;)Lcom/admarvel/android/ads/AdMarvelActivity$aa;
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->w:Lcom/admarvel/android/ads/AdMarvelActivity$aa;
return-object p1
.end method
.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->o:Ljava/lang/String;
return-object p1
.end method
.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->q:Z
return v0
.end method
.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->g:Z
return p1
.end method
.method static synthetic b(Lcom/admarvel/android/ads/AdMarvelActivity;)I
.registers 3
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->j:I
add-int/lit8 v1, v0, 0x1
iput v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->j:I
return v0
.end method
.method static synthetic b(Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->x:Ljava/lang/String;
return-object p1
.end method
.method static synthetic b(Lcom/admarvel/android/ads/AdMarvelActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->h:Z
return p1
.end method
.method static synthetic c(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->u:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->y:Ljava/lang/String;
return-object p1
.end method
.method static synthetic c(Lcom/admarvel/android/ads/AdMarvelActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->E:Z
return p1
.end method
.method static synthetic d(Lcom/admarvel/android/ads/AdMarvelActivity;)I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->j:I
return v0
.end method
.method static synthetic d(Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->z:Ljava/lang/String;
return-object p1
.end method
.method static synthetic e(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->s:Ljava/lang/String;
return-object v0
.end method
.method static synthetic e(Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->A:Ljava/lang/String;
return-object p1
.end method
.method static synthetic f(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->t:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic f(Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->B:Ljava/lang/String;
return-object p1
.end method
.method static synthetic g(Lcom/admarvel/android/ads/AdMarvelActivity;)Lcom/admarvel/android/ads/AdMarvelAd;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->v:Lcom/admarvel/android/ads/AdMarvelAd;
return-object v0
.end method
.method static synthetic g(Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->C:Ljava/lang/String;
return-object p1
.end method
.method static synthetic h(Lcom/admarvel/android/ads/AdMarvelActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->D:Ljava/lang/String;
return-object p1
.end method
.method static synthetic h(Lcom/admarvel/android/ads/AdMarvelActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->G:Z
return v0
.end method
.method static synthetic i(Lcom/admarvel/android/ads/AdMarvelActivity;)Lcom/admarvel/android/ads/AdMarvelActivity$b;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->i:Lcom/admarvel/android/ads/AdMarvelActivity$b;
return-object v0
.end method
.method static synthetic j(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->m:Ljava/lang/String;
return-object v0
.end method
.method static synthetic k(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->F:Ljava/lang/String;
return-object v0
.end method
.method static synthetic l(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->o:Ljava/lang/String;
return-object v0
.end method
.method static synthetic m(Lcom/admarvel/android/ads/AdMarvelActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->H:Z
return v0
.end method
.method static synthetic n(Lcom/admarvel/android/ads/AdMarvelActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->I:Z
return v0
.end method
.method static synthetic o(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->J:Ljava/lang/String;
return-object v0
.end method
.method static synthetic p(Lcom/admarvel/android/ads/AdMarvelActivity;)I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->p:I
return v0
.end method
.method static synthetic q(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->K:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic r(Lcom/admarvel/android/ads/AdMarvelActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->E:Z
return v0
.end method
.method static synthetic s(Lcom/admarvel/android/ads/AdMarvelActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->r:Z
return v0
.end method
.method static synthetic t(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->n:Ljava/lang/String;
return-object v0
.end method
.method static synthetic u(Lcom/admarvel/android/ads/AdMarvelActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->L:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic v(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->x:Ljava/lang/String;
return-object v0
.end method
.method static synthetic w(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->z:Ljava/lang/String;
return-object v0
.end method
.method static synthetic x(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->B:Ljava/lang/String;
return-object v0
.end method
.method static synthetic y(Lcom/admarvel/android/ads/AdMarvelActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->D:Ljava/lang/String;
return-object v0
.end method
.method static synthetic z(Lcom/admarvel/android/ads/AdMarvelActivity;)Lcom/admarvel/android/ads/AdMarvelActivity$aa;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->w:Lcom/admarvel/android/ads/AdMarvelActivity$aa;
return-object v0
.end method
.method public a()I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->j:I
return v0
.end method
.method  a(Ljava/lang/String;)V
.registers 8
const/16 v5, 0x9
const/high16 v1, -0x8000
const/4 v4, 0x0
const/4 v3, 0x1
const-string v0, "DisableActivityOrientation"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
if-ge v0, v5, :cond_2f
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelActivity;->getResources()Landroid/content/res/Resources;
move-result-object v0
invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;
move-result-object v0
iget v0, v0, Landroid/content/res/Configuration;->orientation:I
:cond_1b
if-eqz p1, :cond_2e
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v1
if-ge v1, v5, :cond_60
const-string v1, "Portrait"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_3f
invoke-virtual {p0, v3}, Lcom/admarvel/android/ads/AdMarvelActivity;->setRequestedOrientation(I)V
:goto_2e
:cond_2e
return-void
:cond_2f
new-instance v2, Lcom/admarvel/android/ads/AdMarvelActivity$n;
invoke-direct {v2, p0}, Lcom/admarvel/android/ads/AdMarvelActivity$n;-><init>(Landroid/app/Activity;)V
invoke-virtual {v2}, Lcom/admarvel/android/ads/AdMarvelActivity$n;->run()V
move v0, v1
:goto_38
if-ne v0, v1, :cond_1b
invoke-static {v2}, Lcom/admarvel/android/ads/AdMarvelActivity$n;->a(Lcom/admarvel/android/ads/AdMarvelActivity$n;)I
move-result v0
goto :goto_38
:cond_3f
const-string v1, "LandscapeLeft"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_4b
invoke-virtual {p0, v4}, Lcom/admarvel/android/ads/AdMarvelActivity;->setRequestedOrientation(I)V
goto :goto_2e
:cond_4b
const-string v1, "Current"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_2e
if-ne v0, v3, :cond_59
invoke-virtual {p0, v3}, Lcom/admarvel/android/ads/AdMarvelActivity;->setRequestedOrientation(I)V
goto :goto_2e
:cond_59
const/4 v1, 0x2
if-ne v0, v1, :cond_2e
invoke-virtual {p0, v4}, Lcom/admarvel/android/ads/AdMarvelActivity;->setRequestedOrientation(I)V
goto :goto_2e
:cond_60
const-string v1, "Portrait"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_6c
invoke-virtual {p0, v3}, Lcom/admarvel/android/ads/AdMarvelActivity;->setRequestedOrientation(I)V
goto :goto_2e
:cond_6c
const-string v1, "LandscapeLeft"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_78
invoke-virtual {p0, v4}, Lcom/admarvel/android/ads/AdMarvelActivity;->setRequestedOrientation(I)V
goto :goto_2e
:cond_78
const-string v1, "Current"
invoke-virtual {p1, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_ab
if-nez v0, :cond_8f
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->t:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/AdMarvelActivity$w;
const-string v2, "Portrait"
invoke-direct {v1, p0, v2}, Lcom/admarvel/android/ads/AdMarvelActivity$w;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_2e
:cond_8f
if-ne v0, v3, :cond_9e
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->t:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/AdMarvelActivity$w;
const-string v2, "LandscapeLeft"
invoke-direct {v1, p0, v2}, Lcom/admarvel/android/ads/AdMarvelActivity$w;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_2e
:cond_9e
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->t:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/AdMarvelActivity$w;
const-string v2, "none"
invoke-direct {v1, p0, v2}, Lcom/admarvel/android/ads/AdMarvelActivity$w;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto :goto_2e
:cond_ab
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->t:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/AdMarvelActivity$w;
invoke-direct {v1, p0, p1}, Lcom/admarvel/android/ads/AdMarvelActivity$w;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
goto/16 :goto_2e
.end method
.method public b()V
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->j:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->j:I
return-void
.end method
.method  c()Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->q:Z
return v0
.end method
.method  d()Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->r:Z
return v0
.end method
.method  e()Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->G:Z
return v0
.end method
.method  f()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->n:Ljava/lang/String;
return-object v0
.end method
.method  g()V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->K:Landroid/os/Handler;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
return-void
.end method
.method public h()V
.registers 5
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->t:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/AdMarvelActivity$h;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->v:Lcom/admarvel/android/ads/AdMarvelAd;
invoke-direct {v1, v2, p0}, Lcom/admarvel/android/ads/AdMarvelActivity$h;-><init>(Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V
const-wide/16 v2, 0x3e8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method public i()V
.registers 5
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->t:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/AdMarvelActivity$i;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->v:Lcom/admarvel/android/ads/AdMarvelAd;
invoke-direct {v1, v2, p0}, Lcom/admarvel/android/ads/AdMarvelActivity$i;-><init>(Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V
const-wide/16 v2, 0xbb8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 10
const-string v1, " + Lcom/admarvel/android/ads/AdMarvelActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/16 v7, 0x200
const/16 v6, 0xb
const/4 v5, 0x1
const/4 v4, -0x1
const/4 v3, 0x0
invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V
invoke-static {p0}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdmarvelActivityOrientationInfo(Landroid/content/Context;)Ljava/lang/Integer;
move-result-object v0
if-eqz v0, :cond_1b
invoke-static {p0}, Lcom/admarvel/android/ads/AdMarvelUtils;->getAdmarvelActivityOrientationInfo(Landroid/content/Context;)Ljava/lang/Integer;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->setRequestedOrientation(I)V
:cond_1b
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
if-lt v0, v6, :cond_24
invoke-static {p0}, Lcom/admarvel/android/ads/AdMarvelActivity$o;->a(Landroid/app/Activity;)V
:cond_24
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v1
if-eqz v1, :cond_b6
const-string v0, "url"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->m:Ljava/lang/String;
const-string v0, "source"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->n:Ljava/lang/String;
const-string v0, "html"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->o:Ljava/lang/String;
const-string v0, "xml"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->s:Ljava/lang/String;
const-string v0, "isInterstitial"
invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->q:Z
const-string v0, "isInterstitialClick"
invoke-virtual {v1, v0, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;Z)Z
move-result v0
iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->r:Z
const-string v0, "GUID"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->u:Ljava/lang/String;
const-string v0, "serialized_admarvelad"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getByteArray(Ljava/lang/String;)[B
move-result-object v0
if-eqz v0, :cond_80
:try_start_6e
new-instance v2, Ljava/io/ByteArrayInputStream;
invoke-direct {v2, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V
new-instance v0, Ljava/io/ObjectInputStream;
invoke-direct {v0, v2}, Ljava/io/ObjectInputStream;-><init>(Ljava/io/InputStream;)V
invoke-virtual {v0}, Ljava/io/ObjectInputStream;->readObject()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelAd;
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->v:Lcom/admarvel/android/ads/AdMarvelAd;
:try_end_80
.catch Ljava/lang/Exception; {:try_start_6e .. :try_end_80} :catch_145
:cond_80
:goto_80
const-string v0, "backgroundcolor"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->p:I
const-string v0, "expand_url"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->F:Ljava/lang/String;
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->F:Ljava/lang/String;
if-eqz v0, :cond_b6
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->F:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_b6
iput-boolean v5, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->G:Z
const-string v0, "closeBtnEnabled"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->H:Z
const-string v0, "closeAreaEnabled"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->I:Z
const-string v0, "orientationState"
invoke-virtual {v1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->J:Ljava/lang/String;
:cond_b6
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->isNotificationBarInFullScreenLaunchEnabled()Z
move-result v0
if-nez v0, :cond_d4
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->q:Z
if-nez v0, :cond_14f
sget-object v0, Landroid/os/Build;->MODEL:Ljava/lang/String;
const-string v1, "Kindle"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_d4
sget-object v0, Landroid/os/Build;->PRODUCT:Ljava/lang/String;
const-string v1, "Kindle"
invoke-virtual {v0, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_14f
:cond_d4
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelActivity;->getWindow()Landroid/view/Window;
move-result-object v0
const/16 v1, 0x100
invoke-virtual {v0, v1}, Landroid/view/Window;->addFlags(I)V
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelActivity;->getWindow()Landroid/view/Window;
move-result-object v0
const/16 v1, 0x400
invoke-virtual {v0, v1}, Landroid/view/Window;->clearFlags(I)V
:goto_e6
new-instance v0, Lcom/admarvel/android/ads/AdMarvelActivity$b;
invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelActivity$b;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->i:Lcom/admarvel/android/ads/AdMarvelActivity$b;
new-instance v0, Landroid/widget/RelativeLayout;
invoke-direct {v0, p0}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
sget v1, Lcom/admarvel/android/ads/AdMarvelActivity;->b:I
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V
new-instance v1, Landroid/view/ViewGroup$LayoutParams;
invoke-direct {v1, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const/high16 v1, -0x100
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setBackgroundColor(I)V
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->setContentView(Landroid/view/View;)V
new-instance v0, Lcom/admarvel/android/a/a;
invoke-direct {v0, p0}, Lcom/admarvel/android/a/a;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/admarvel/android/a/a;->a()V
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->q:Z
if-ne v0, v5, :cond_11a
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelInterstitialAds;->getListener()Lcom/admarvel/android/ads/i;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/i;->a(Lcom/admarvel/android/ads/AdMarvelActivity;)V
:cond_11a
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
if-lt v0, v6, :cond_157
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->t:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/AdMarvelActivity$j;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->v:Lcom/admarvel/android/ads/AdMarvelAd;
invoke-direct {v1, p0, v2}, Lcom/admarvel/android/ads/AdMarvelActivity$j;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelAd;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:goto_12c
new-instance v0, Lcom/admarvel/android/ads/AdMarvelActivity$g;
invoke-direct {v0, p0, p0}, Lcom/admarvel/android/ads/AdMarvelActivity$g;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;Landroid/content/Context;)V
const-string v1, "ADM_DIALOG"
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->setTag(Ljava/lang/Object;)V
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v1
invoke-virtual {p0, v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v1, Ljava/lang/ref/WeakReference;
invoke-direct {v1, v0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
iput-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;
const-string v1, " - Lcom/admarvel/android/ads/AdMarvelActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_145
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_80
:cond_14f
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelActivity;->getWindow()Landroid/view/Window;
move-result-object v0
invoke-virtual {v0, v7, v7}, Landroid/view/Window;->setFlags(II)V
goto :goto_e6
:cond_157
new-instance v0, Lcom/admarvel/android/ads/AdMarvelActivity$a;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->v:Lcom/admarvel/android/ads/AdMarvelAd;
invoke-direct {v0, p0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity$a;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelAd;)V
new-array v1, v3, [Ljava/lang/Object;
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelActivity$a;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_12c
.end method
.method protected onDestroy()V
.registers 6
const-string v1, " + Lcom/admarvel/android/ads/AdMarvelActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v4, 0x0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_dd
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelActivity$g;
:goto_d
if-eqz v0, :cond_1d
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->b()V
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->a(Lcom/admarvel/android/ads/AdMarvelActivity$g;)V
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelActivity$g;->c()V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->clear()V
:cond_1d
invoke-static {}, Lcom/admarvel/android/ads/n;->a()Lcom/admarvel/android/ads/n;
move-result-object v0
invoke-virtual {v0}, Lcom/admarvel/android/ads/n;->b()Z
move-result v1
if-eqz v1, :cond_2a
invoke-virtual {v0}, Lcom/admarvel/android/ads/n;->c()V
:cond_2a
new-instance v0, Lcom/admarvel/android/ads/AdMarvelActivity$d;
invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelActivity$d;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;)V
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->t:Landroid/os/Handler;
invoke-virtual {v1, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
sget v0, Lcom/admarvel/android/ads/AdMarvelActivity;->b:I
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelActivity;->e()Z
move-result v1
if-eqz v1, :cond_53
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->u:Ljava/lang/String;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/o;
move-result-object v1
if-eqz v1, :cond_53
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->u:Ljava/lang/String;
invoke-static {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->c(Ljava/lang/String;)Lcom/admarvel/android/ads/o;
move-result-object v1
invoke-interface {v1}, Lcom/admarvel/android/ads/o;->a()V
:cond_53
if-eqz v0, :cond_a6
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->u:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "WEBVIEW"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_a6
iget-object v2, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;
if-eqz v2, :cond_a6
iget-object v2, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->length()I
move-result v2
if-lez v2, :cond_a6
iget-boolean v2, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z
if-eqz v2, :cond_a6
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
iget-object v3, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->visibilityCallback:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, "("
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ")"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->injectJavaScript(Ljava/lang/String;)V
iput-boolean v4, v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z
:cond_a6
if-eqz v0, :cond_d0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->u:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "WEBVIEW"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v1, :cond_d0
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
const-string v0, ""
invoke-virtual {v1, v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
invoke-virtual {v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->a()V
:cond_d0
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->q:Z
if-eqz v0, :cond_d9
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->u:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->b(Ljava/lang/String;)V
:cond_d9
invoke-super {p0}, Landroid/app/Activity;->onDestroy()V
const-string v1, " - Lcom/admarvel/android/ads/AdMarvelActivity; onDestroy"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_dd
const/4 v0, 0x0
goto/16 :goto_d
.end method
.method public onKeyDown(ILandroid/view/KeyEvent;)Z
.registers 5
invoke-virtual {p2}, Landroid/view/KeyEvent;->getAction()I
move-result v0
if-nez v0, :cond_9
packed-switch p1, :pswitch_data_36
:cond_9
invoke-super {p0, p1, p2}, Landroid/app/Activity;->onKeyDown(ILandroid/view/KeyEvent;)Z
move-result v0
:goto_d
return v0
:pswitch_e
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->g:Z
if-nez v0, :cond_16
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->h:Z
if-eqz v0, :cond_18
:cond_16
const/4 v0, 0x0
goto :goto_d
:cond_18
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelActivity;->g()V
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelActivity;->c()Z
move-result v0
if-nez v0, :cond_34
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->u:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->d(Ljava/lang/String;)Lcom/admarvel/android/ads/g;
move-result-object v0
if-eqz v0, :cond_34
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->u:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->d(Ljava/lang/String;)Lcom/admarvel/android/ads/g;
move-result-object v0
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->u:Ljava/lang/String;
invoke-interface {v0, v1}, Lcom/admarvel/android/ads/g;->a(Ljava/lang/String;)V
:cond_34
const/4 v0, 0x1
goto :goto_d
:pswitch_data_36
.packed-switch 0x4
:pswitch_e
.end packed-switch
.end method
.method protected onPause()V
.registers 4
const-string v1, " + Lcom/admarvel/android/ads/AdMarvelActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
sget v0, Lcom/admarvel/android/ads/AdMarvelActivity;->b:I
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;
if-eqz v1, :cond_14
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->a:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/admarvel/android/ads/AdMarvelActivity$g;
:cond_14
if-eqz v0, :cond_41
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->u:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "WEBVIEW"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_41
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v1
const/16 v2, 0xb
if-lt v1, v2, :cond_a5
invoke-static {v0}, Lcom/admarvel/android/ads/ak;->b(Landroid/webkit/WebView;)V
:goto_3e
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->e()V
:cond_41
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelActivity;->isFinishing()Z
move-result v0
if-nez v0, :cond_98
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->f:Ljava/lang/String;
if-eqz v0, :cond_98
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->f:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
if-lez v0, :cond_98
sget v0, Lcom/admarvel/android/ads/AdMarvelActivity;->b:I
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
if-eqz v0, :cond_98
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->u:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "WEBVIEW"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_98
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "javascript:"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->f:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "()"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->loadUrl(Ljava/lang/String;)V
:cond_98
:try_start_98
const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"
invoke-static {v0, p0}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->resume()V
:try_end_a1
.catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a1} :catch_a9
:goto_a1
invoke-super {p0}, Landroid/app/Activity;->onPause()V
const-string v1, " - Lcom/admarvel/android/ads/AdMarvelActivity; onPause"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_a5
invoke-static {v0}, Lcom/admarvel/android/ads/al;->b(Landroid/webkit/WebView;)V
goto :goto_3e
:catch_a9
move-exception v0
goto :goto_a1
.end method
.method protected onResume()V
.registers 4
const-string v1, " + Lcom/admarvel/android/ads/AdMarvelActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/app/Activity;->onResume()V
sget v0, Lcom/admarvel/android/ads/AdMarvelActivity;->b:I
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
if-eqz v0, :cond_50
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->u:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "WEBVIEW"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;
if-eqz v0, :cond_50
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v1
const/16 v2, 0xb
if-lt v1, v2, :cond_5a
invoke-static {v0}, Lcom/admarvel/android/ads/ak;->a(Landroid/webkit/WebView;)V
:goto_35
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "#### activity onResume "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-boolean v2, v0, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->isLastStateVisible:Z
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelInternalWebView;->f()V
:try_start_50
:cond_50
const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"
invoke-static {v0, p0}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->resume()V
:try_end_59
.catch Ljava/lang/Exception; {:try_start_50 .. :try_end_59} :catch_5e
:goto_59
const-string v1, " - Lcom/admarvel/android/ads/AdMarvelActivity; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_5a
invoke-static {v0}, Lcom/admarvel/android/ads/al;->a(Landroid/webkit/WebView;)V
goto :goto_35
:catch_5e
move-exception v0
goto :goto_59
.end method
.method protected onStart()V
.registers 3
const-string v1, " + Lcom/admarvel/android/ads/AdMarvelActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
:try_start_0
const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"
invoke-static {v0, p0}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->start()V
:try_end_9
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_9} :catch_d
:goto_9
invoke-super {p0}, Landroid/app/Activity;->onStart()V
const-string v1, " - Lcom/admarvel/android/ads/AdMarvelActivity; onStart"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_d
move-exception v0
goto :goto_9
.end method
.method protected onStop()V
.registers 4
const-string v1, " + Lcom/admarvel/android/ads/AdMarvelActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/4 v1, 0x7
if-lt v0, v1, :cond_12
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelActivity;->t:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/AdMarvelActivity$k;
const/4 v2, 0x0
invoke-direct {v1, p0, v2}, Lcom/admarvel/android/ads/AdMarvelActivity$k;-><init>(Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelActivity$1;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:cond_12
:try_start_12
const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"
invoke-static {v0, p0}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->stop()V
:goto_1b
:try_end_1b
.catch Ljava/lang/Exception; {:try_start_12 .. :try_end_1b} :catch_1f
invoke-super {p0}, Landroid/app/Activity;->onStop()V
const-string v1, " - Lcom/admarvel/android/ads/AdMarvelActivity; onStop"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:catch_1f
move-exception v0
goto :goto_1b
.end method