.class public Lcom/twidroid/ui/themes/a/b;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final a:Ljava/lang/String; = "SoundThemePlayer"
.field private b:Lcom/twidroid/ui/themes/a/a;
.field private c:Landroid/content/Context;
.field private d:Landroid/media/MediaPlayer;
.field private e:Lcom/twidroid/d/v;
.method public constructor <init>(Landroid/content/Context;Lcom/twidroid/d/v;)V
.registers 4
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/twidroid/ui/themes/a/b;->c:Landroid/content/Context;
iput-object p2, p0, Lcom/twidroid/ui/themes/a/b;->e:Lcom/twidroid/d/v;
invoke-virtual {p0, p2}, Lcom/twidroid/ui/themes/a/b;->a(Lcom/twidroid/d/v;)V
new-instance v0, Landroid/media/MediaPlayer;
invoke-direct {v0}, Landroid/media/MediaPlayer;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/themes/a/b;->d:Landroid/media/MediaPlayer;
return-void
.end method
.method static synthetic a(Lcom/twidroid/ui/themes/a/b;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/ui/themes/a/b;->a(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
move-result-object v0
return-object v0
.end method
.method private a(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
.registers 5
iget-object v0, p0, Lcom/twidroid/ui/themes/a/b;->c:Landroid/content/Context;
invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;
move-result-object v0
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "sound/themes/"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/content/res/AssetManager;->openFd(Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/ui/themes/a/b;)Landroid/media/MediaPlayer;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/a/b;->d:Landroid/media/MediaPlayer;
return-object v0
.end method
.method private b(Ljava/lang/String;)V
.registers 4
iget-object v0, p0, Lcom/twidroid/ui/themes/a/b;->e:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->f()Z
move-result v0
if-eqz v0, :cond_a
if-nez p1, :cond_b
:cond_a
:goto_a
return-void
:cond_b
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/twidroid/ui/themes/a/b$1;
invoke-direct {v1, p0, p1}, Lcom/twidroid/ui/themes/a/b$1;-><init>(Lcom/twidroid/ui/themes/a/b;Ljava/lang/String;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
goto :goto_a
.end method
.method public a()V
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/a/b;->b:Lcom/twidroid/ui/themes/a/a;
invoke-interface {v0}, Lcom/twidroid/ui/themes/a/a;->a()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a/b;->b(Ljava/lang/String;)V
return-void
.end method
.method public a(Lcom/twidroid/d/v;)V
.registers 3
new-instance v0, Lcom/twidroid/ui/themes/a/c;
invoke-direct {v0}, Lcom/twidroid/ui/themes/a/c;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/themes/a/b;->b:Lcom/twidroid/ui/themes/a/a;
return-void
.end method
.method public b()V
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/a/b;->b:Lcom/twidroid/ui/themes/a/a;
invoke-interface {v0}, Lcom/twidroid/ui/themes/a/a;->b()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a/b;->b(Ljava/lang/String;)V
return-void
.end method
.method public c()V
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/a/b;->b:Lcom/twidroid/ui/themes/a/a;
invoke-interface {v0}, Lcom/twidroid/ui/themes/a/a;->c()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a/b;->b(Ljava/lang/String;)V
return-void
.end method
.method public d()V
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/a/b;->b:Lcom/twidroid/ui/themes/a/a;
invoke-interface {v0}, Lcom/twidroid/ui/themes/a/a;->d()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a/b;->b(Ljava/lang/String;)V
return-void
.end method
.method public e()V
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/a/b;->b:Lcom/twidroid/ui/themes/a/a;
invoke-interface {v0}, Lcom/twidroid/ui/themes/a/a;->e()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a/b;->b(Ljava/lang/String;)V
return-void
.end method
.method public f()V
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/a/b;->b:Lcom/twidroid/ui/themes/a/a;
invoke-interface {v0}, Lcom/twidroid/ui/themes/a/a;->f()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a/b;->b(Ljava/lang/String;)V
return-void
.end method
.method public g()V
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/a/b;->b:Lcom/twidroid/ui/themes/a/a;
invoke-interface {v0}, Lcom/twidroid/ui/themes/a/a;->g()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a/b;->b(Ljava/lang/String;)V
return-void
.end method
.method public h()V
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/a/b;->b:Lcom/twidroid/ui/themes/a/a;
invoke-interface {v0}, Lcom/twidroid/ui/themes/a/a;->h()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a/b;->b(Ljava/lang/String;)V
return-void
.end method
.method public i()V
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/a/b;->b:Lcom/twidroid/ui/themes/a/a;
invoke-interface {v0}, Lcom/twidroid/ui/themes/a/a;->i()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a/b;->b(Ljava/lang/String;)V
return-void
.end method
.method public j()V
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/a/b;->b:Lcom/twidroid/ui/themes/a/a;
invoke-interface {v0}, Lcom/twidroid/ui/themes/a/a;->j()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a/b;->b(Ljava/lang/String;)V
return-void
.end method
.method public k()V
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/a/b;->b:Lcom/twidroid/ui/themes/a/a;
invoke-interface {v0}, Lcom/twidroid/ui/themes/a/a;->k()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a/b;->b(Ljava/lang/String;)V
return-void
.end method
.method public l()V
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/a/b;->b:Lcom/twidroid/ui/themes/a/a;
invoke-interface {v0}, Lcom/twidroid/ui/themes/a/a;->l()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a/b;->b(Ljava/lang/String;)V
return-void
.end method
.method public m()V
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/themes/a/b;->b:Lcom/twidroid/ui/themes/a/a;
invoke-interface {v0}, Lcom/twidroid/ui/themes/a/a;->m()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/ui/themes/a/b;->b(Ljava/lang/String;)V
return-void
.end method