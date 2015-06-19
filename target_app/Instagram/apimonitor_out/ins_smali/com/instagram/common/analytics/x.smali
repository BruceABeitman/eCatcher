.class public final Lcom/instagram/common/analytics/x;
.super Ljava/lang/Object;
.source "InstagramAnalyticsLogger.java"
.implements Lcom/instagram/common/analytics/d;
.implements Lcom/instagram/common/l/b/a;
.field private final a:Landroid/content/Context;
.field private final b:Landroid/app/AlarmManager;
.field private final c:Ljava/lang/String;
.field private final d:Ljava/lang/String;
.field private final e:Ljava/lang/String;
.field private final f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private h:Ljava/lang/String;
.field private i:Lcom/instagram/common/analytics/al;
.field private final j:Lcom/instagram/common/analytics/aa;
.field private k:Lcom/instagram/common/analytics/u;
.field private l:Lcom/instagram/common/analytics/f;
.field private m:Lcom/instagram/common/analytics/f;
.field private n:Z
.field private final o:Landroid/os/Handler;
.field private final p:Ljava/util/Queue;
.field private final q:Lcom/instagram/common/u/c/d;
.field private final r:Ljava/util/concurrent/atomic/AtomicBoolean;
.field private final s:Ljava/lang/Runnable;
.field private final t:Lcom/instagram/common/analytics/h;
.field private final u:Lcom/instagram/common/analytics/j;
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.registers 13
const/4 v3, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/common/analytics/y;
invoke-direct {v0, p0}, Lcom/instagram/common/analytics/y;-><init>(Lcom/instagram/common/analytics/x;)V
iput-object v0, p0, Lcom/instagram/common/analytics/x;->o:Landroid/os/Handler;
new-instance v0, Ljava/util/concurrent/ConcurrentLinkedQueue;
invoke-direct {v0}, Ljava/util/concurrent/ConcurrentLinkedQueue;-><init>()V
iput-object v0, p0, Lcom/instagram/common/analytics/x;->p:Ljava/util/Queue;
invoke-static {}, Lcom/instagram/common/u/c/e;->a()Lcom/instagram/common/u/c/e;
move-result-object v0
const-string v1, "InstagramAnalyticsLogger"
invoke-virtual {v0, v1}, Lcom/instagram/common/u/c/e;->a(Ljava/lang/String;)Lcom/instagram/common/u/c/e;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/common/u/c/e;->c()Lcom/instagram/common/u/c/d;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/analytics/x;->q:Lcom/instagram/common/u/c/d;
new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-direct {v0, v3}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V
iput-object v0, p0, Lcom/instagram/common/analytics/x;->r:Ljava/util/concurrent/atomic/AtomicBoolean;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/analytics/x;->a:Landroid/content/Context;
iget-object v0, p0, Lcom/instagram/common/analytics/x;->a:Landroid/content/Context;
const-string v1, "alarm"
invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/app/AlarmManager;
iput-object v0, p0, Lcom/instagram/common/analytics/x;->b:Landroid/app/AlarmManager;
iput-object p2, p0, Lcom/instagram/common/analytics/x;->c:Ljava/lang/String;
iput-object p4, p0, Lcom/instagram/common/analytics/x;->e:Ljava/lang/String;
iput-object p3, p0, Lcom/instagram/common/analytics/x;->d:Ljava/lang/String;
iput-object p5, p0, Lcom/instagram/common/analytics/x;->f:Ljava/lang/String;
invoke-direct {p0, p7}, Lcom/instagram/common/analytics/x;->d(Ljava/lang/String;)V
invoke-direct {p0, p8}, Lcom/instagram/common/analytics/x;->c(Ljava/lang/String;)V
new-instance v0, Lcom/instagram/common/analytics/u;
invoke-direct {v0}, Lcom/instagram/common/analytics/u;-><init>()V
iput-object v0, p0, Lcom/instagram/common/analytics/x;->k:Lcom/instagram/common/analytics/u;
new-instance v0, Lcom/instagram/common/analytics/al;
invoke-direct {v0}, Lcom/instagram/common/analytics/al;-><init>()V
iput-object v0, p0, Lcom/instagram/common/analytics/x;->i:Lcom/instagram/common/analytics/al;
new-instance v0, Lcom/instagram/common/analytics/ah;
invoke-direct {v0, p0}, Lcom/instagram/common/analytics/ah;-><init>(Lcom/instagram/common/analytics/x;)V
new-instance v1, Lcom/instagram/common/c/j;
invoke-direct {v1, p1}, Lcom/instagram/common/c/j;-><init>(Landroid/content/Context;)V
invoke-virtual {v1}, Lcom/instagram/common/c/j;->a()Lcom/instagram/common/c/g;
move-result-object v1
const-string v2, "android.intent.action.DATE_CHANGED"
invoke-interface {v1, v2, v0}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;
move-result-object v1
const-string v2, "android.intent.action.TIME_SET"
invoke-interface {v1, v2, v0}, Lcom/instagram/common/c/g;->a(Ljava/lang/String;Lcom/instagram/common/c/a;)Lcom/instagram/common/c/g;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/common/c/g;->a()Lcom/instagram/common/c/h;
move-result-object v0
invoke-interface {v0}, Lcom/instagram/common/c/h;->b()V
new-instance v0, Lcom/instagram/common/analytics/aa;
invoke-direct {v0, p0}, Lcom/instagram/common/analytics/aa;-><init>(Lcom/instagram/common/analytics/x;)V
iput-object v0, p0, Lcom/instagram/common/analytics/x;->j:Lcom/instagram/common/analytics/aa;
new-instance v0, Lcom/instagram/common/analytics/z;
invoke-direct {v0, p0, v3}, Lcom/instagram/common/analytics/z;-><init>(Lcom/instagram/common/analytics/x;B)V
iput-object v0, p0, Lcom/instagram/common/analytics/x;->s:Ljava/lang/Runnable;
new-instance v0, Lcom/instagram/common/analytics/h;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/instagram/common/analytics/h;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/instagram/common/analytics/x;->t:Lcom/instagram/common/analytics/h;
new-instance v0, Lcom/instagram/common/analytics/j;
invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/instagram/common/analytics/x;->f:Ljava/lang/String;
invoke-direct {v0, v1, v2, p6}, Lcom/instagram/common/analytics/j;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/instagram/common/analytics/x;->u:Lcom/instagram/common/analytics/j;
invoke-static {}, Lcom/instagram/common/l/b/b;->a()Lcom/instagram/common/l/b/b;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/instagram/common/l/b/b;->a(Lcom/instagram/common/l/b/a;)V
invoke-direct {p0}, Lcom/instagram/common/analytics/x;->g()V
return-void
.end method
.method static synthetic a(Lcom/instagram/common/analytics/x;Lcom/instagram/common/analytics/f;)Lcom/instagram/common/analytics/f;
.registers 2
iput-object p1, p0, Lcom/instagram/common/analytics/x;->m:Lcom/instagram/common/analytics/f;
return-object p1
.end method
.method private a(I)V
.registers 6
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v1
sget v0, Lcom/instagram/common/analytics/an;->d:I
if-ne p1, v0, :cond_1a
const/4 v0, 0x0
:goto_9
if-eqz v0, :cond_e
invoke-virtual {p0, v0}, Lcom/instagram/common/analytics/x;->b(Lcom/instagram/common/analytics/b;)V
:cond_e
iget-object v0, p0, Lcom/instagram/common/analytics/x;->i:Lcom/instagram/common/analytics/al;
invoke-virtual {v0, v1, v2, p1}, Lcom/instagram/common/analytics/al;->a(JI)Lcom/instagram/common/analytics/b;
move-result-object v0
if-eqz v0, :cond_19
invoke-virtual {p0, v0}, Lcom/instagram/common/analytics/x;->a(Lcom/instagram/common/analytics/b;)V
:cond_19
return-void
:cond_1a
iget-object v0, p0, Lcom/instagram/common/analytics/x;->k:Lcom/instagram/common/analytics/u;
iget-object v3, p0, Lcom/instagram/common/analytics/x;->g:Ljava/lang/String;
invoke-virtual {v0, v1, v2, v3}, Lcom/instagram/common/analytics/u;->a(JLjava/lang/String;)Lcom/instagram/common/analytics/b;
move-result-object v0
goto :goto_9
.end method
.method static synthetic a(Lcom/instagram/common/analytics/x;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/common/analytics/x;->n()V
return-void
.end method
.method static synthetic a(Lcom/instagram/common/analytics/x;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/common/analytics/x;->a(I)V
return-void
.end method
.method static synthetic a(Lcom/instagram/common/analytics/x;Lcom/instagram/common/analytics/b;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/common/analytics/x;->c(Lcom/instagram/common/analytics/b;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/common/analytics/x;Ljava/lang/Runnable;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/common/analytics/x;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method static synthetic a(Lcom/instagram/common/analytics/x;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/common/analytics/x;->d(Ljava/lang/String;)V
return-void
.end method
.method private a(Ljava/lang/Runnable;)V
.registers 3
iget-object v0, p0, Lcom/instagram/common/analytics/x;->p:Ljava/util/Queue;
invoke-interface {v0, p1}, Ljava/util/Queue;->add(Ljava/lang/Object;)Z
invoke-direct {p0}, Lcom/instagram/common/analytics/x;->n()V
return-void
.end method
.method private static b(Ljava/lang/String;)Ljava/lang/String;
.registers 2
invoke-static {p0}, Lcom/instagram/common/u/e;->c(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_8
const-string p0, "0"
:cond_8
return-object p0
.end method
.method static synthetic b(Lcom/instagram/common/analytics/x;)Ljava/util/concurrent/atomic/AtomicBoolean;
.registers 2
iget-object v0, p0, Lcom/instagram/common/analytics/x;->r:Ljava/util/concurrent/atomic/AtomicBoolean;
return-object v0
.end method
.method static synthetic b(Lcom/instagram/common/analytics/x;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/instagram/common/analytics/x;->c(Ljava/lang/String;)V
return-void
.end method
.method static synthetic c(Lcom/instagram/common/analytics/x;)Ljava/util/Queue;
.registers 2
iget-object v0, p0, Lcom/instagram/common/analytics/x;->p:Ljava/util/Queue;
return-object v0
.end method
.method private c(Lcom/instagram/common/analytics/b;)V
.registers 3
iget-object v0, p0, Lcom/instagram/common/analytics/x;->g:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/instagram/common/analytics/b;->a(Ljava/lang/String;)Lcom/instagram/common/analytics/b;
return-void
.end method
.method private c(Ljava/lang/String;)V
.registers 3
invoke-static {p1}, Lcom/instagram/common/analytics/x;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/analytics/x;->h:Ljava/lang/String;
return-void
.end method
.method static synthetic d(Lcom/instagram/common/analytics/x;)Lcom/instagram/common/analytics/f;
.registers 2
iget-object v0, p0, Lcom/instagram/common/analytics/x;->m:Lcom/instagram/common/analytics/f;
return-object v0
.end method
.method private d(Ljava/lang/String;)V
.registers 3
invoke-static {p1}, Lcom/instagram/common/analytics/x;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/analytics/x;->g:Ljava/lang/String;
return-void
.end method
.method static synthetic e(Lcom/instagram/common/analytics/x;)Lcom/instagram/common/analytics/h;
.registers 2
iget-object v0, p0, Lcom/instagram/common/analytics/x;->t:Lcom/instagram/common/analytics/h;
return-object v0
.end method
.method static synthetic f(Lcom/instagram/common/analytics/x;)Lcom/instagram/common/analytics/j;
.registers 2
iget-object v0, p0, Lcom/instagram/common/analytics/x;->u:Lcom/instagram/common/analytics/j;
return-object v0
.end method
.method static synthetic g(Lcom/instagram/common/analytics/x;)Lcom/instagram/common/analytics/f;
.registers 2
iget-object v0, p0, Lcom/instagram/common/analytics/x;->l:Lcom/instagram/common/analytics/f;
return-object v0
.end method
.method private g()V
.registers 2
iget-object v0, p0, Lcom/instagram/common/analytics/x;->l:Lcom/instagram/common/analytics/f;
if-eqz v0, :cond_7
invoke-direct {p0}, Lcom/instagram/common/analytics/x;->i()V
:cond_7
invoke-direct {p0}, Lcom/instagram/common/analytics/x;->h()Lcom/instagram/common/analytics/f;
move-result-object v0
iput-object v0, p0, Lcom/instagram/common/analytics/x;->l:Lcom/instagram/common/analytics/f;
return-void
.end method
.method static synthetic h(Lcom/instagram/common/analytics/x;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/instagram/common/analytics/x;->o:Landroid/os/Handler;
return-object v0
.end method
.method private h()Lcom/instagram/common/analytics/f;
.registers 3
new-instance v0, Lcom/instagram/common/analytics/f;
invoke-direct {v0}, Lcom/instagram/common/analytics/f;-><init>()V
iget-object v1, p0, Lcom/instagram/common/analytics/x;->d:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/instagram/common/analytics/f;->b(Ljava/lang/String;)V
iget-object v1, p0, Lcom/instagram/common/analytics/x;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/instagram/common/analytics/f;->c(Ljava/lang/String;)V
iget-object v1, p0, Lcom/instagram/common/analytics/x;->h:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/instagram/common/analytics/f;->e(Ljava/lang/String;)V
iget-object v1, p0, Lcom/instagram/common/analytics/x;->f:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/instagram/common/analytics/f;->d(Ljava/lang/String;)V
iget-object v1, p0, Lcom/instagram/common/analytics/x;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/instagram/common/analytics/f;->a(Ljava/lang/String;)V
return-object v0
.end method
.method private i()V
.registers 4
iget-object v0, p0, Lcom/instagram/common/analytics/x;->l:Lcom/instagram/common/analytics/f;
invoke-virtual {v0}, Lcom/instagram/common/analytics/f;->b()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->isEmpty()Z
move-result v0
if-nez v0, :cond_15
:try_start_c
iget-object v0, p0, Lcom/instagram/common/analytics/x;->l:Lcom/instagram/common/analytics/f;
iget-object v0, p0, Lcom/instagram/common/analytics/x;->t:Lcom/instagram/common/analytics/h;
iget-object v1, p0, Lcom/instagram/common/analytics/x;->l:Lcom/instagram/common/analytics/f;
invoke-virtual {v0, v1}, Lcom/instagram/common/analytics/h;->a(Lcom/instagram/common/analytics/f;)Ljava/io/File;
:try_end_15
.catch Ljava/io/IOException; {:try_start_c .. :try_end_15} :catch_16
:cond_15
:goto_15
return-void
:catch_16
move-exception v0
const-string v1, "InstagramAnalyticsLogger"
const-string v2, "Unable to store batch"
invoke-static {v1, v2, v0}, Lcom/facebook/e/a/a;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_15
.end method
.method static synthetic i(Lcom/instagram/common/analytics/x;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/common/analytics/x;->j()V
return-void
.end method
.method private j()V
.registers 2
invoke-direct {p0}, Lcom/instagram/common/analytics/x;->i()V
iget-object v0, p0, Lcom/instagram/common/analytics/x;->l:Lcom/instagram/common/analytics/f;
invoke-virtual {v0}, Lcom/instagram/common/analytics/f;->a()V
return-void
.end method
.method static synthetic j(Lcom/instagram/common/analytics/x;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/common/analytics/x;->l()V
return-void
.end method
.method static synthetic k(Lcom/instagram/common/analytics/x;)Lcom/instagram/common/analytics/f;
.registers 2
invoke-direct {p0}, Lcom/instagram/common/analytics/x;->h()Lcom/instagram/common/analytics/f;
move-result-object v0
return-object v0
.end method
.method private k()V
.registers 4
sget-object v0, Lcom/instagram/common/analytics/i;->b:Lcom/instagram/common/analytics/i;
iget-object v1, p0, Lcom/instagram/common/analytics/x;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/instagram/common/analytics/x;->b:Landroid/app/AlarmManager;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/i;->a(Landroid/content/Context;Landroid/app/AlarmManager;)V
return-void
.end method
.method private l()V
.registers 4
sget-object v0, Lcom/instagram/common/analytics/i;->a:Lcom/instagram/common/analytics/i;
iget-object v1, p0, Lcom/instagram/common/analytics/x;->a:Landroid/content/Context;
iget-object v2, p0, Lcom/instagram/common/analytics/x;->b:Landroid/app/AlarmManager;
invoke-virtual {v0, v1, v2}, Lcom/instagram/common/analytics/i;->a(Landroid/content/Context;Landroid/app/AlarmManager;)V
return-void
.end method
.method static synthetic l(Lcom/instagram/common/analytics/x;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/common/analytics/x;->g()V
return-void
.end method
.method private m()V
.registers 3
new-instance v0, Lcom/instagram/common/analytics/af;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/instagram/common/analytics/af;-><init>(Lcom/instagram/common/analytics/x;B)V
invoke-direct {p0, v0}, Lcom/instagram/common/analytics/x;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method static synthetic m(Lcom/instagram/common/analytics/x;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/common/analytics/x;->i()V
return-void
.end method
.method private n()V
.registers 4
iget-object v0, p0, Lcom/instagram/common/analytics/x;->r:Ljava/util/concurrent/atomic/AtomicBoolean;
const/4 v1, 0x0
const/4 v2, 0x1
invoke-virtual {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->compareAndSet(ZZ)Z
move-result v0
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/instagram/common/analytics/x;->q:Lcom/instagram/common/u/c/d;
iget-object v1, p0, Lcom/instagram/common/analytics/x;->s:Ljava/lang/Runnable;
invoke-virtual {v0, v1}, Lcom/instagram/common/u/c/d;->execute(Ljava/lang/Runnable;)V
:cond_11
return-void
.end method
.method static synthetic n(Lcom/instagram/common/analytics/x;)V
.registers 1
invoke-direct {p0}, Lcom/instagram/common/analytics/x;->k()V
return-void
.end method
.method public final a()V
.registers 2
sget v0, Lcom/instagram/common/analytics/an;->c:I
invoke-direct {p0, v0}, Lcom/instagram/common/analytics/x;->a(I)V
invoke-direct {p0}, Lcom/instagram/common/analytics/x;->m()V
invoke-virtual {p0}, Lcom/instagram/common/analytics/x;->f()V
return-void
.end method
.method public final a(Landroid/widget/TextView;)V
.registers 3
iget-object v0, p0, Lcom/instagram/common/analytics/x;->j:Lcom/instagram/common/analytics/aa;
invoke-virtual {p1, v0}, Landroid/widget/TextView;->addTextChangedListener(Landroid/text/TextWatcher;)V
return-void
.end method
.method public final a(Lcom/instagram/common/analytics/b;)V
.registers 4
new-instance v0, Lcom/instagram/common/analytics/ab;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, v1}, Lcom/instagram/common/analytics/ab;-><init>(Lcom/instagram/common/analytics/x;Lcom/instagram/common/analytics/b;B)V
invoke-direct {p0, v0}, Lcom/instagram/common/analytics/x;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/instagram/common/analytics/ac;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, v1}, Lcom/instagram/common/analytics/ac;-><init>(Lcom/instagram/common/analytics/x;Ljava/lang/String;B)V
invoke-direct {p0, v0}, Lcom/instagram/common/analytics/x;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
new-instance v0, Lcom/instagram/common/analytics/ad;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, p2, v1}, Lcom/instagram/common/analytics/ad;-><init>(Lcom/instagram/common/analytics/x;Ljava/lang/String;Ljava/lang/String;B)V
invoke-direct {p0, v0}, Lcom/instagram/common/analytics/x;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public final b()V
.registers 2
iget-boolean v0, p0, Lcom/instagram/common/analytics/x;->n:Z
if-nez v0, :cond_8
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/common/analytics/x;->n:Z
:goto_7
return-void
:cond_8
sget v0, Lcom/instagram/common/analytics/an;->a:I
invoke-direct {p0, v0}, Lcom/instagram/common/analytics/x;->a(I)V
invoke-direct {p0}, Lcom/instagram/common/analytics/x;->m()V
goto :goto_7
.end method
.method public final b(Landroid/widget/TextView;)V
.registers 3
iget-object v0, p0, Lcom/instagram/common/analytics/x;->j:Lcom/instagram/common/analytics/aa;
invoke-virtual {p1, v0}, Landroid/widget/TextView;->removeTextChangedListener(Landroid/text/TextWatcher;)V
return-void
.end method
.method public final b(Lcom/instagram/common/analytics/b;)V
.registers 4
new-instance v0, Lcom/instagram/common/analytics/ae;
const/4 v1, 0x0
invoke-direct {v0, p0, p1, v1}, Lcom/instagram/common/analytics/ae;-><init>(Lcom/instagram/common/analytics/x;Lcom/instagram/common/analytics/b;B)V
invoke-direct {p0, v0}, Lcom/instagram/common/analytics/x;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public final c()V
.registers 4
const/4 v2, 0x0
sget v0, Lcom/instagram/common/analytics/an;->f:I
invoke-direct {p0, v0}, Lcom/instagram/common/analytics/x;->a(I)V
new-instance v0, Lcom/instagram/common/analytics/ad;
const/4 v1, 0x0
invoke-direct {v0, p0, v2, v2, v1}, Lcom/instagram/common/analytics/ad;-><init>(Lcom/instagram/common/analytics/x;Ljava/lang/String;Ljava/lang/String;B)V
invoke-direct {p0, v0}, Lcom/instagram/common/analytics/x;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public final d()V
.registers 4
new-instance v0, Lcom/instagram/common/analytics/ac;
const/4 v1, 0x0
const/4 v2, 0x0
invoke-direct {v0, p0, v1, v2}, Lcom/instagram/common/analytics/ac;-><init>(Lcom/instagram/common/analytics/x;Ljava/lang/String;B)V
invoke-direct {p0, v0}, Lcom/instagram/common/analytics/x;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public final e()V
.registers 2
sget v0, Lcom/instagram/common/analytics/an;->b:I
invoke-direct {p0, v0}, Lcom/instagram/common/analytics/x;->a(I)V
return-void
.end method
.method public final f()V
.registers 3
new-instance v0, Lcom/instagram/common/analytics/ai;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/instagram/common/analytics/ai;-><init>(Lcom/instagram/common/analytics/x;B)V
invoke-direct {p0, v0}, Lcom/instagram/common/analytics/x;->a(Ljava/lang/Runnable;)V
return-void
.end method