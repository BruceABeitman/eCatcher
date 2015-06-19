.class public final Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;
.super Ljava/lang/Object;
.source "SourceFile"
.field private final a:Landroid/view/View;
.field private final b:Landroid/view/View;
.field private final c:Landroid/view/View;
.field private d:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
.field private e:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
.field private f:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
.field private g:Ljava/lang/Runnable;
.method public constructor <init>(Landroid/view/View;Landroid/view/View;Landroid/view/View;)V
.registers 6
const/16 v1, 0x8
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$1;-><init>(Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;)V
iput-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->g:Ljava/lang/Runnable;
iput-object p1, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->b:Landroid/view/View;
iput-object p2, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->c:Landroid/view/View;
iput-object p3, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->a:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->b:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->c:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->a:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;)Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->e:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;)Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->d:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
return-object p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;)Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->f:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->e()V
return-void
.end method
.method private d()V
.registers 6
sget-object v0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;->d:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
iput-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->d:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
sget-object v0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;->c:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
iput-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->e:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
iget-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->g:Ljava/lang/Runnable;
iget-object v1, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->c:Landroid/view/View;
const/4 v2, 0x2
new-array v2, v2, [Landroid/view/View;
const/4 v3, 0x0
iget-object v4, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->a:Landroid/view/View;
aput-object v4, v2, v3
const/4 v3, 0x1
iget-object v4, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->b:Landroid/view/View;
aput-object v4, v2, v3
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/eb;->a(Ljava/lang/Runnable;Landroid/view/View;[Landroid/view/View;)V
return-void
.end method
.method static synthetic d(Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->f()V
return-void
.end method
.method private e()V
.registers 6
sget-object v0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;->d:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
iput-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->d:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
sget-object v0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;->a:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
iput-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->e:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
iget-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->g:Ljava/lang/Runnable;
iget-object v1, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->b:Landroid/view/View;
const/4 v2, 0x2
new-array v2, v2, [Landroid/view/View;
const/4 v3, 0x0
iget-object v4, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->c:Landroid/view/View;
aput-object v4, v2, v3
const/4 v3, 0x1
iget-object v4, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->a:Landroid/view/View;
aput-object v4, v2, v3
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/eb;->a(Ljava/lang/Runnable;Landroid/view/View;[Landroid/view/View;)V
return-void
.end method
.method static synthetic e(Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->d()V
return-void
.end method
.method static synthetic f(Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;)Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->f:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
return-object v0
.end method
.method private f()V
.registers 6
sget-object v0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;->d:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
iput-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->d:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
sget-object v0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;->b:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
iput-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->e:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
iget-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->g:Ljava/lang/Runnable;
iget-object v1, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->a:Landroid/view/View;
const/4 v2, 0x2
new-array v2, v2, [Landroid/view/View;
const/4 v3, 0x0
iget-object v4, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->c:Landroid/view/View;
aput-object v4, v2, v3
const/4 v3, 0x1
iget-object v4, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->b:Landroid/view/View;
aput-object v4, v2, v3
invoke-static {v0, v1, v2}, Lcom/spotify/mobile/android/util/eb;->a(Ljava/lang/Runnable;Landroid/view/View;[Landroid/view/View;)V
return-void
.end method
.method public final a()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->d:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
sget-object v1, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;->d:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
if-ne v0, v1, :cond_b
sget-object v0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;->c:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
iput-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->f:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
:goto_a
return-void
:cond_b
invoke-direct {p0}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->d()V
goto :goto_a
.end method
.method public final b()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->d:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
sget-object v1, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;->d:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
if-ne v0, v1, :cond_b
sget-object v0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;->a:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
iput-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->f:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
:goto_a
return-void
:cond_b
invoke-direct {p0}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->e()V
goto :goto_a
.end method
.method public final c()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->d:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
sget-object v1, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;->d:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
if-ne v0, v1, :cond_b
sget-object v0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;->b:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
iput-object v0, p0, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->f:Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager$State;
:goto_a
return-void
:cond_b
invoke-direct {p0}, Lcom/spotify/mobile/android/util/ProgressAndErrorViewManager;->f()V
goto :goto_a
.end method