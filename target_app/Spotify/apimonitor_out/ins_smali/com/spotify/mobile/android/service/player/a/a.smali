.class public final Lcom/spotify/mobile/android/service/player/a/a;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/player/a/f;
.field private a:Lcom/spotify/mobile/android/ui/actions/d;
.field private final b:Landroid/content/Context;
.field private c:Lcom/spotify/mobile/android/service/player/a/g;
.field private d:Lcom/spotify/mobile/android/service/player/a/c;
.field private e:I
.field private f:I
.field private final g:Lcom/spotify/mobile/android/util/by;
.field private h:Lcom/spotify/mobile/android/util/u;
.field private i:J
.field private j:Lcom/spotify/mobile/android/service/player/a/d;
.field private final k:Ljava/lang/Runnable;
.method public constructor <init>(Landroid/content/Context;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const-class v0, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;
iput-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->a:Lcom/spotify/mobile/android/ui/actions/d;
const-class v0, Lcom/spotify/mobile/android/util/do;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
invoke-static {}, Lcom/spotify/mobile/android/util/do;->b()Lcom/spotify/mobile/android/util/by;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->g:Lcom/spotify/mobile/android/util/by;
const-class v0, Lcom/spotify/mobile/android/util/do;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
invoke-static {}, Lcom/spotify/mobile/android/util/do;->a()Lcom/spotify/mobile/android/util/u;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->h:Lcom/spotify/mobile/android/util/u;
new-instance v0, Lcom/spotify/mobile/android/service/player/a/a$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/player/a/a$1;-><init>(Lcom/spotify/mobile/android/service/player/a/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->j:Lcom/spotify/mobile/android/service/player/a/d;
new-instance v0, Lcom/spotify/mobile/android/service/player/a/a$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/service/player/a/a$2;-><init>(Lcom/spotify/mobile/android/service/player/a/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->k:Ljava/lang/Runnable;
iput-object p1, p0, Lcom/spotify/mobile/android/service/player/a/a;->b:Landroid/content/Context;
new-instance v0, Lcom/spotify/mobile/android/service/player/a/c;
iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/a;->j:Lcom/spotify/mobile/android/service/player/a/d;
invoke-direct {v0, p1, v1}, Lcom/spotify/mobile/android/service/player/a/c;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/service/player/a/d;)V
iput-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->d:Lcom/spotify/mobile/android/service/player/a/c;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/player/a/a;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/service/player/a/a;->e:I
return p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/player/a/a;J)J
.registers 3
iput-wide p1, p0, Lcom/spotify/mobile/android/service/player/a/a;->i:J
return-wide p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/service/player/a/a;)Lcom/spotify/mobile/android/service/player/a/g;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->c:Lcom/spotify/mobile/android/service/player/a/g;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/service/player/a/a;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->e:I
return v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/service/player/a/a;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/service/player/a/a;->f:I
return p1
.end method
.method static synthetic c(Lcom/spotify/mobile/android/service/player/a/a;)Lcom/spotify/mobile/android/util/u;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->h:Lcom/spotify/mobile/android/util/u;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/service/player/a/a;)Ljava/lang/Runnable;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->k:Ljava/lang/Runnable;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/service/player/a/a;)Lcom/spotify/mobile/android/util/by;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->g:Lcom/spotify/mobile/android/util/by;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/service/player/a/a;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->f:I
return v0
.end method
.method static synthetic g(Lcom/spotify/mobile/android/service/player/a/a;)J
.registers 3
iget-wide v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->i:J
return-wide v0
.end method
.method public final a()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->a:Lcom/spotify/mobile/android/ui/actions/d;
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->b:Landroid/content/Context;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;)V
return-void
.end method
.method public final a(I)V
.registers 3
if-ltz p1, :cond_e
const/4 v0, 0x1
:goto_3
invoke-static {v0}, Lcom/google/common/base/i;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->a:Lcom/spotify/mobile/android/ui/actions/d;
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->b:Landroid/content/Context;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;I)V
return-void
:cond_e
const/4 v0, 0x0
goto :goto_3
.end method
.method public final a(Lcom/spotify/mobile/android/service/player/a/g;)V
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/service/player/a/a;->c:Lcom/spotify/mobile/android/service/player/a/g;
return-void
.end method
.method public final a(Z)V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->a:Lcom/spotify/mobile/android/ui/actions/d;
iget-object v1, p0, Lcom/spotify/mobile/android/service/player/a/a;->b:Landroid/content/Context;
if-nez p1, :cond_b
const/4 v0, 0x1
:goto_7
invoke-static {v1, v0}, Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/content/Context;Z)V
return-void
:cond_b
const/4 v0, 0x0
goto :goto_7
.end method
.method public final b()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->a:Lcom/spotify/mobile/android/ui/actions/d;
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->b:Landroid/content/Context;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/actions/d;->b(Landroid/content/Context;)V
return-void
.end method
.method public final b(Z)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->a:Lcom/spotify/mobile/android/ui/actions/d;
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->b:Landroid/content/Context;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/actions/d;->c(Landroid/content/Context;Z)V
return-void
.end method
.method public final c()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->d:Lcom/spotify/mobile/android/service/player/a/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/a/c;->a()V
return-void
.end method
.method public final c(Z)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->a:Lcom/spotify/mobile/android/ui/actions/d;
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->b:Landroid/content/Context;
invoke-static {v0, p1}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Z)V
return-void
.end method
.method public final d()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/service/player/a/a;->d:Lcom/spotify/mobile/android/service/player/a/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/a/c;->b()V
return-void
.end method