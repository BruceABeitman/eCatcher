.class final Lcom/spotify/mobile/android/ui/activity/upsell/f;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/activity/upsell/n;
.implements Ljava/lang/Runnable;
.field private static final a:Lcom/spotify/mobile/android/util/cn;
.field private static final b:Lcom/spotify/mobile/android/util/cn;
.field private static final c:Lcom/spotify/mobile/android/util/cn;
.field private final d:Landroid/content/Context;
.field private final e:Lcom/spotify/mobile/android/util/cl;
.field private f:Lcom/spotify/mobile/android/ui/activity/upsell/m;
.field private g:Lcom/spotify/mobile/android/ui/activity/upsell/g;
.field private h:Landroid/os/AsyncTask;
.method static constructor <clinit>()V
.registers 6
const-wide/16 v1, 0xa
new-instance v0, Lcom/spotify/mobile/android/util/cq;
sget-object v3, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cq;-><init>(JLjava/util/concurrent/TimeUnit;)V
sput-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->a:Lcom/spotify/mobile/android/util/cn;
new-instance v0, Lcom/spotify/mobile/android/util/cr;
const-wide/16 v3, 0x1e
sget-object v5, Ljava/util/concurrent/TimeUnit;->MINUTES:Ljava/util/concurrent/TimeUnit;
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/util/cr;-><init>(JJLjava/util/concurrent/TimeUnit;)V
sput-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->b:Lcom/spotify/mobile/android/util/cn;
new-instance v0, Lcom/spotify/mobile/android/util/cr;
const-wide/16 v1, 0x8
const-wide/16 v3, 0xe
sget-object v5, Ljava/util/concurrent/TimeUnit;->HOURS:Ljava/util/concurrent/TimeUnit;
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/util/cr;-><init>(JJLjava/util/concurrent/TimeUnit;)V
sput-object v0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->c:Lcom/spotify/mobile/android/util/cn;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->d:Landroid/content/Context;
new-instance v0, Lcom/spotify/mobile/android/util/cm;
const-string v1, "gpiab-fetch-purchases"
invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/cm;-><init>(Ljava/lang/String;Ljava/lang/Runnable;)V
sget-object v1, Lcom/spotify/mobile/android/ui/activity/upsell/f;->a:Lcom/spotify/mobile/android/util/cn;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->a(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/activity/upsell/f;->b:Lcom/spotify/mobile/android/util/cn;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->c(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;
move-result-object v0
const/16 v1, 0xa
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->a(I)Lcom/spotify/mobile/android/util/cm;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/ui/activity/upsell/f;->c:Lcom/spotify/mobile/android/util/cn;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/util/cm;->d(Lcom/spotify/mobile/android/util/cn;)Lcom/spotify/mobile/android/util/cm;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cm;->a()Lcom/spotify/mobile/android/util/cl;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->e:Lcom/spotify/mobile/android/util/cl;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/f;)Lcom/spotify/mobile/android/ui/activity/upsell/m;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->f:Lcom/spotify/mobile/android/ui/activity/upsell/m;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/activity/upsell/f;ZLjava/util/ArrayList;)V
.registers 7
const-string v0, "Got %d purchases (complete? %s)"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-virtual {p2}, Ljava/util/ArrayList;->size()I
move-result v3
invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->g:Lcom/spotify/mobile/android/ui/activity/upsell/g;
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->g:Lcom/spotify/mobile/android/ui/activity/upsell/g;
invoke-interface {v0, p2}, Lcom/spotify/mobile/android/ui/activity/upsell/g;->a(Ljava/util/ArrayList;)V
:cond_23
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->f:Lcom/spotify/mobile/android/ui/activity/upsell/m;
if-eqz v0, :cond_2f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->f:Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->b()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->f:Lcom/spotify/mobile/android/ui/activity/upsell/m;
:cond_2f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->e:Lcom/spotify/mobile/android/util/cl;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/cl;->a(Z)V
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/activity/upsell/f;)Landroid/os/AsyncTask;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->h:Landroid/os/AsyncTask;
return-object v0
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->e:Lcom/spotify/mobile/android/util/cl;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->a()V
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/ui/activity/upsell/g;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->g:Lcom/spotify/mobile/android/ui/activity/upsell/g;
return-void
.end method
.method public final b()V
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->e:Lcom/spotify/mobile/android/util/cl;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->d()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->h:Landroid/os/AsyncTask;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->h:Landroid/os/AsyncTask;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z
iput-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->h:Landroid/os/AsyncTask;
:cond_12
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->f:Lcom/spotify/mobile/android/ui/activity/upsell/m;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->f:Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->b()V
iput-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->f:Lcom/spotify/mobile/android/ui/activity/upsell/m;
:cond_1d
iput-object v2, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->g:Lcom/spotify/mobile/android/ui/activity/upsell/g;
return-void
.end method
.method public final c()V
.registers 4
const/4 v2, 0x0
const-string v0, "Got connection to Google Play, start fetching purchases"
new-array v1, v2, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/br;->a(Ljava/lang/String;[Ljava/lang/Object;)V
new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/f$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/f$1;-><init>(Lcom/spotify/mobile/android/ui/activity/upsell/f;)V
new-array v1, v2, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/f$1;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->h:Landroid/os/AsyncTask;
return-void
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->e:Lcom/spotify/mobile/android/util/cl;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cl;->b()V
return-void
.end method
.method public final run()V
.registers 3
new-instance v0, Lcom/spotify/mobile/android/ui/activity/upsell/m;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->d:Landroid/content/Context;
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/activity/upsell/m;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->f:Lcom/spotify/mobile/android/ui/activity/upsell/m;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->f:Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a(Lcom/spotify/mobile/android/ui/activity/upsell/n;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/activity/upsell/f;->f:Lcom/spotify/mobile/android/ui/activity/upsell/m;
invoke-static {}, Lcom/spotify/mobile/android/ui/activity/upsell/m;->a()Z
return-void
.end method