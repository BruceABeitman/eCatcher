.class public Lcom/instagram/android/feed/a/a/j;
.super Ljava/lang/Object;
.source "FeedVideoPlayer.java"
.implements Lcom/instagram/android/feed/a/a/ae;
.implements Lcom/instagram/common/e/c/d;
.field private static final a:Ljava/lang/Class;
.field private final b:Landroid/support/v4/app/Fragment;
.field private final c:Lcom/instagram/feed/g/a;
.field private final d:Landroid/view/animation/Animation;
.field private final e:Landroid/view/animation/Animation;
.field private final f:Lcom/instagram/android/feed/a/a/p;
.field private g:Lcom/instagram/android/feed/a/a/n;
.field private h:Lcom/instagram/android/feed/a/a/o;
.field private i:Lcom/instagram/android/m/a/c;
.field private j:I
.field private k:Lcom/instagram/feed/d/l;
.field private l:Lcom/instagram/android/feed/a/b/ac;
.field private m:Z
.field private n:Z
.field private o:Z
.field private p:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/instagram/android/feed/a/a/j;
sput-object v0, Lcom/instagram/android/feed/a/a/j;->a:Ljava/lang/Class;
return-void
.end method
.method public constructor <init>(Landroid/support/v4/app/Fragment;Lcom/instagram/feed/g/a;)V
.registers 6
const/4 v2, 0x1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
new-instance v0, Lcom/instagram/android/feed/a/a/p;
const/4 v1, 0x0
invoke-direct {v0, p0, v1}, Lcom/instagram/android/feed/a/a/p;-><init>(Lcom/instagram/android/feed/a/a/j;B)V
iput-object v0, p0, Lcom/instagram/android/feed/a/a/j;->f:Lcom/instagram/android/feed/a/a/p;
const/4 v0, -0x1
iput v0, p0, Lcom/instagram/android/feed/a/a/j;->j:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/feed/a/a/j;->k:Lcom/instagram/feed/d/l;
iput-boolean v2, p0, Lcom/instagram/android/feed/a/a/j;->n:Z
iput-boolean v2, p0, Lcom/instagram/android/feed/a/a/j;->o:Z
iput-object p1, p0, Lcom/instagram/android/feed/a/a/j;->b:Landroid/support/v4/app/Fragment;
iput-object p2, p0, Lcom/instagram/android/feed/a/a/j;->c:Lcom/instagram/feed/g/a;
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->b:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/aq;->cover_photo_fade_in:I
invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/feed/a/a/j;->d:Landroid/view/animation/Animation;
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->b:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;
move-result-object v0
sget v1, Lcom/facebook/aq;->cover_photo_fade_out:I
invoke-static {v0, v1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;
move-result-object v0
iput-object v0, p0, Lcom/instagram/android/feed/a/a/j;->e:Landroid/view/animation/Animation;
return-void
.end method
.method static synthetic a(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/feed/d/l;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->k:Lcom/instagram/feed/d/l;
return-object v0
.end method
.method static synthetic a(Lcom/instagram/android/feed/a/a/j;Ljava/lang/String;)V
.registers 3
const/4 v0, 0x1
invoke-direct {p0, v0, v0, p1}, Lcom/instagram/android/feed/a/a/j;->a(ZZLjava/lang/String;)V
return-void
.end method
.method private a(Lcom/instagram/feed/d/l;I)V
.registers 6
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->b:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->u()Z
move-result v0
if-nez v0, :cond_9
:goto_8
return-void
:cond_9
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "LegacyVideoPlayerFragment.MEDIA_ID"
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "LegacyVideoPlayerFragement.POSITION"
invoke-virtual {v0, v1, p2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
new-instance v1, Lcom/instagram/android/util/b;
iget-object v2, p0, Lcom/instagram/android/feed/a/a/j;->b:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->p()Landroid/support/v4/app/s;
move-result-object v2
invoke-direct {v1, v2}, Lcom/instagram/android/util/b;-><init>(Landroid/support/v4/app/s;)V
new-instance v2, Lcom/instagram/android/feed/a/a/q;
invoke-direct {v2}, Lcom/instagram/android/feed/a/a/q;-><init>()V
invoke-virtual {v1, v2, v0}, Lcom/instagram/android/util/b;->a(Landroid/support/v4/app/f;Landroid/os/Bundle;)Lcom/instagram/android/util/b;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/util/b;->a()V
goto :goto_8
.end method
.method private a(ZZLjava/lang/String;)V
.registers 16
const/4 v11, 0x0
const/4 v2, 0x1
const/4 v10, 0x0
const/4 v9, -0x1
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->f:Lcom/instagram/android/feed/a/a/p;
invoke-virtual {v0, v2}, Lcom/instagram/android/feed/a/a/p;->removeMessages(I)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->f:Lcom/instagram/android/feed/a/a/p;
const/4 v1, 0x5
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/p;->removeMessages(I)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->f:Lcom/instagram/android/feed/a/a/p;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/p;->removeMessages(I)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->f:Lcom/instagram/android/feed/a/a/p;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/p;->removeMessages(I)V
iput-boolean v2, p0, Lcom/instagram/android/feed/a/a/j;->o:Z
iget v0, p0, Lcom/instagram/android/feed/a/a/j;->j:I
if-eq v0, v9, :cond_ae
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/m/a/c;->a()V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->i:Lcom/instagram/android/m/a/c;
invoke-virtual {v0}, Lcom/instagram/android/m/a/c;->h()Z
move-result v0
if-eqz v0, :cond_56
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->k:Lcom/instagram/feed/d/l;
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/m/a/c;->l()I
move-result v1
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/android/m/a/c;->n()I
move-result v2
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v3
invoke-virtual {v3}, Lcom/instagram/android/m/a/c;->m()I
move-result v3
iget v4, p0, Lcom/instagram/android/feed/a/a/j;->j:I
iget-boolean v5, p0, Lcom/instagram/android/feed/a/a/j;->n:Z
iget-object v6, p0, Lcom/instagram/android/feed/a/a/j;->c:Lcom/instagram/feed/g/a;
iget-object v7, p0, Lcom/instagram/android/feed/a/a/j;->p:Ljava/lang/String;
move-object v8, p3
invoke-static/range {v0 .. v8}, Lcom/instagram/feed/c/f;->a(Lcom/instagram/feed/d/l;IIIIZLcom/instagram/feed/g/a;Ljava/lang/String;Ljava/lang/String;)V
:cond_56
if-eqz p1, :cond_af
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->f:Lcom/instagram/android/feed/a/a/p;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/p;->sendEmptyMessage(I)Z
:goto_5e
invoke-static {}, Lcom/instagram/common/e/c/a;->a()Lcom/instagram/common/e/c/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/a/a/j;->k:Lcom/instagram/feed/d/l;
iget-object v2, p0, Lcom/instagram/android/feed/a/a/j;->b:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/instagram/feed/d/l;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1, p0}, Lcom/instagram/common/e/c/a;->a(Ljava/lang/String;Lcom/instagram/common/e/c/d;)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->l:Lcom/instagram/android/feed/a/b/ac;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->a()Lcom/instagram/feed/widget/a;
move-result-object v0
sget v1, Lcom/facebook/av;->key_list_position:I
invoke-virtual {v0, v1}, Lcom/instagram/feed/widget/a;->getTag(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iget v1, p0, Lcom/instagram/android/feed/a/a/j;->j:I
if-ne v0, v1, :cond_a6
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->l:Lcom/instagram/android/feed/a/b/ac;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;
move-result-object v0
if-eqz p2, :cond_b7
sget v1, Lcom/instagram/android/widget/o;->g:I
invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIconState$736bb5a1(I)V
:goto_94
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->l:Lcom/instagram/android/feed/a/b/ac;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->a()Lcom/instagram/feed/widget/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/widget/a;->clearAnimation()V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->l:Lcom/instagram/android/feed/a/b/ac;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->a()Lcom/instagram/feed/widget/a;
move-result-object v0
invoke-virtual {v0, v10}, Lcom/instagram/feed/widget/a;->setVisibility(I)V
:cond_a6
iput-object v11, p0, Lcom/instagram/android/feed/a/a/j;->l:Lcom/instagram/android/feed/a/b/ac;
iput v9, p0, Lcom/instagram/android/feed/a/a/j;->j:I
iput-object v11, p0, Lcom/instagram/android/feed/a/a/j;->k:Lcom/instagram/feed/d/l;
iput-boolean v10, p0, Lcom/instagram/android/feed/a/a/j;->m:Z
:cond_ae
return-void
:cond_af
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/m/a/c;->e()V
goto :goto_5e
:cond_b7
iget-object v1, p0, Lcom/instagram/android/feed/a/a/j;->g:Lcom/instagram/android/feed/a/a/n;
if-eqz v1, :cond_cb
iget-object v1, p0, Lcom/instagram/android/feed/a/a/j;->g:Lcom/instagram/android/feed/a/a/n;
iget v2, p0, Lcom/instagram/android/feed/a/a/j;->j:I
invoke-interface {v1, v2}, Lcom/instagram/android/feed/a/a/n;->a(I)Z
move-result v1
if-eqz v1, :cond_cb
sget v1, Lcom/instagram/android/widget/o;->b:I
invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIconState$736bb5a1(I)V
goto :goto_94
:cond_cb
sget v1, Lcom/instagram/android/widget/o;->d:I
invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIconState$736bb5a1(I)V
goto :goto_94
.end method
.method static synthetic a(Lcom/instagram/android/feed/a/a/j;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/instagram/android/feed/a/a/j;->o:Z
return p1
.end method
.method static synthetic b(Lcom/instagram/android/feed/a/a/j;)I
.registers 2
iget v0, p0, Lcom/instagram/android/feed/a/a/j;->j:I
return v0
.end method
.method static synthetic c(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/feed/g/a;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->c:Lcom/instagram/feed/g/a;
return-object v0
.end method
.method static synthetic d(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/android/feed/a/b/ac;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->l:Lcom/instagram/android/feed/a/b/ac;
return-object v0
.end method
.method static synthetic e(Lcom/instagram/android/feed/a/a/j;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/feed/a/a/j;->n:Z
return v0
.end method
.method static synthetic f(Lcom/instagram/android/feed/a/a/j;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->p:Ljava/lang/String;
return-object v0
.end method
.method static synthetic g(Lcom/instagram/android/feed/a/a/j;)Landroid/view/animation/Animation;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->e:Landroid/view/animation/Animation;
return-object v0
.end method
.method static synthetic h(Lcom/instagram/android/feed/a/a/j;)Z
.registers 2
iget-boolean v0, p0, Lcom/instagram/android/feed/a/a/j;->m:Z
return v0
.end method
.method static synthetic i(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/android/feed/a/a/p;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->f:Lcom/instagram/android/feed/a/a/p;
return-object v0
.end method
.method static synthetic j(Lcom/instagram/android/feed/a/a/j;)Lcom/instagram/android/m/a/c;
.registers 2
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v0
return-object v0
.end method
.method static synthetic j()Ljava/lang/Class;
.registers 1
sget-object v0, Lcom/instagram/android/feed/a/a/j;->a:Ljava/lang/Class;
return-object v0
.end method
.method static synthetic k(Lcom/instagram/android/feed/a/a/j;)Landroid/view/animation/Animation;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->d:Landroid/view/animation/Animation;
return-object v0
.end method
.method private k()Lcom/instagram/android/m/a/c;
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->i:Lcom/instagram/android/m/a/c;
if-nez v0, :cond_2f
invoke-static {}, Lcom/instagram/creation/c/a;->a()Z
move-result v0
if-eqz v0, :cond_32
new-instance v0, Lcom/instagram/android/m/a/a;
invoke-direct {v0}, Lcom/instagram/android/m/a/a;-><init>()V
iput-object v0, p0, Lcom/instagram/android/feed/a/a/j;->i:Lcom/instagram/android/m/a/c;
:goto_11
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->i:Lcom/instagram/android/m/a/c;
new-instance v1, Lcom/instagram/android/feed/a/a/k;
invoke-direct {v1, p0}, Lcom/instagram/android/feed/a/a/k;-><init>(Lcom/instagram/android/feed/a/a/j;)V
invoke-virtual {v0, v1}, Lcom/instagram/android/m/a/c;->a(Lcom/instagram/android/m/a/e;)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->i:Lcom/instagram/android/m/a/c;
new-instance v1, Lcom/instagram/android/feed/a/a/l;
invoke-direct {v1, p0}, Lcom/instagram/android/feed/a/a/l;-><init>(Lcom/instagram/android/feed/a/a/j;)V
invoke-virtual {v0, v1}, Lcom/instagram/android/m/a/c;->a(Lcom/instagram/android/m/a/f;)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->i:Lcom/instagram/android/m/a/c;
new-instance v1, Lcom/instagram/android/feed/a/a/m;
invoke-direct {v1, p0}, Lcom/instagram/android/feed/a/a/m;-><init>(Lcom/instagram/android/feed/a/a/j;)V
invoke-virtual {v0, v1}, Lcom/instagram/android/m/a/c;->a(Lcom/instagram/android/m/a/d;)V
:cond_2f
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->i:Lcom/instagram/android/m/a/c;
return-object v0
:cond_32
new-instance v0, Lcom/instagram/android/m/a/b;
invoke-direct {v0}, Lcom/instagram/android/m/a/b;-><init>()V
iput-object v0, p0, Lcom/instagram/android/feed/a/a/j;->i:Lcom/instagram/android/m/a/c;
goto :goto_11
.end method
.method public final a(ILcom/instagram/feed/d/l;)I
.registers 5
invoke-virtual {p2}, Lcom/instagram/feed/d/l;->v()Lcom/instagram/model/a/a;
move-result-object v0
sget-object v1, Lcom/instagram/model/a/a;->b:Lcom/instagram/model/a/a;
if-eq v0, v1, :cond_b
sget v0, Lcom/instagram/android/widget/o;->a:I
:goto_a
return v0
:cond_b
invoke-static {}, Lcom/instagram/creation/c/a;->a()Z
move-result v0
if-eqz v0, :cond_14
sget v0, Lcom/instagram/android/widget/o;->d:I
goto :goto_a
:cond_14
iget v0, p0, Lcom/instagram/android/feed/a/a/j;->j:I
if-ne v0, p1, :cond_41
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/m/a/c;->k()Z
move-result v1
if-nez v1, :cond_25
sget v0, Lcom/instagram/android/widget/o;->c:I
goto :goto_a
:cond_25
invoke-virtual {v0}, Lcom/instagram/android/m/a/c;->h()Z
move-result v1
if-eqz v1, :cond_35
iget-boolean v0, p0, Lcom/instagram/android/feed/a/a/j;->n:Z
if-eqz v0, :cond_32
sget v0, Lcom/instagram/android/widget/o;->a:I
goto :goto_a
:cond_32
sget v0, Lcom/instagram/android/widget/o;->f:I
goto :goto_a
:cond_35
invoke-virtual {v0}, Lcom/instagram/android/m/a/c;->j()Z
move-result v0
if-eqz v0, :cond_3e
sget v0, Lcom/instagram/android/widget/o;->d:I
goto :goto_a
:cond_3e
sget v0, Lcom/instagram/android/widget/o;->e:I
goto :goto_a
:cond_41
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->g:Lcom/instagram/android/feed/a/a/n;
if-eqz v0, :cond_50
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->g:Lcom/instagram/android/feed/a/a/n;
invoke-interface {v0, p1}, Lcom/instagram/android/feed/a/a/n;->a(I)Z
move-result v0
if-eqz v0, :cond_50
sget v0, Lcom/instagram/android/widget/o;->b:I
goto :goto_a
:cond_50
sget v0, Lcom/instagram/android/widget/o;->d:I
goto :goto_a
.end method
.method public final a(ILcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;)V
.registers 13
iget-boolean v0, p0, Lcom/instagram/android/feed/a/a/j;->o:Z
if-nez v0, :cond_7
sget-object v0, Lcom/instagram/android/feed/a/a/j;->a:Ljava/lang/Class;
:goto_6
:cond_6
return-void
:cond_7
iget v0, p0, Lcom/instagram/android/feed/a/a/j;->j:I
if-eq v0, p1, :cond_20
invoke-static {}, Lcom/instagram/creation/c/a;->a()Z
move-result v0
if-eqz v0, :cond_1b
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->b:Landroid/support/v4/app/Fragment;
instance-of v0, v0, Lcom/instagram/android/feed/a/a/q;
if-nez v0, :cond_1b
invoke-direct {p0, p2, p1}, Lcom/instagram/android/feed/a/a/j;->a(Lcom/instagram/feed/d/l;I)V
goto :goto_6
:cond_1b
const/4 v0, 0x0
invoke-virtual {p0, p2, p3, p1, v0}, Lcom/instagram/android/feed/a/a/j;->a(Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;IZ)V
goto :goto_6
:cond_20
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/m/a/c;->k()Z
move-result v0
if-eqz v0, :cond_6
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/m/a/c;->h()Z
move-result v0
if-eqz v0, :cond_6c
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/m/a/c;->l()I
move-result v1
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/m/a/c;->n()I
move-result v2
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/m/a/c;->m()I
move-result v3
iget-boolean v5, p0, Lcom/instagram/android/feed/a/a/j;->n:Z
iget-object v6, p0, Lcom/instagram/android/feed/a/a/j;->c:Lcom/instagram/feed/g/a;
iget-object v7, p0, Lcom/instagram/android/feed/a/a/j;->p:Ljava/lang/String;
const-string v8, "tapped"
move-object v0, p2
move v4, p1
invoke-static/range {v0 .. v8}, Lcom/instagram/feed/c/f;->a(Lcom/instagram/feed/d/l;IIIIZLcom/instagram/feed/g/a;Ljava/lang/String;Ljava/lang/String;)V
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/m/a/c;->g()V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->l:Lcom/instagram/android/feed/a/b/ac;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;
move-result-object v0
sget v1, Lcom/instagram/android/widget/o;->e:I
invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaActionsView;->a(I)V
goto :goto_6
:cond_6c
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/m/a/c;->i()Z
move-result v0
if-nez v0, :cond_81
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->l:Lcom/instagram/android/feed/a/b/ac;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->a()Lcom/instagram/feed/widget/a;
move-result-object v0
iget-object v1, p0, Lcom/instagram/android/feed/a/a/j;->e:Landroid/view/animation/Animation;
invoke-virtual {v0, v1}, Lcom/instagram/feed/widget/a;->startAnimation(Landroid/view/animation/Animation;)V
:cond_81
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->l:Lcom/instagram/android/feed/a/b/ac;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;
move-result-object v1
iget-boolean v0, p0, Lcom/instagram/android/feed/a/a/j;->n:Z
if-eqz v0, :cond_c5
sget v0, Lcom/instagram/android/widget/o;->a:I
:goto_8d
invoke-virtual {v1, v0}, Lcom/instagram/android/widget/MediaActionsView;->a(I)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->f:Lcom/instagram/android/feed/a/a/p;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/p;->removeMessages(I)V
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/m/a/c;->i()Z
move-result v0
if-eqz v0, :cond_c8
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->k:Lcom/instagram/feed/d/l;
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v1
invoke-virtual {v1}, Lcom/instagram/android/m/a/c;->l()I
move-result v1
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v2
invoke-virtual {v2}, Lcom/instagram/android/m/a/c;->m()I
move-result v2
iget-boolean v4, p0, Lcom/instagram/android/feed/a/a/j;->n:Z
iget-object v5, p0, Lcom/instagram/android/feed/a/a/j;->c:Lcom/instagram/feed/g/a;
const-string v6, "tapped"
move v3, p1
invoke-static/range {v0 .. v6}, Lcom/instagram/feed/c/f;->a(Lcom/instagram/feed/d/l;IIIZLcom/instagram/feed/g/a;Ljava/lang/String;)V
:goto_bc
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/android/m/a/c;->d()V
goto/16 :goto_6
:cond_c5
sget v0, Lcom/instagram/android/widget/o;->f:I
goto :goto_8d
:cond_c8
const-string v0, "tapped"
iput-object v0, p0, Lcom/instagram/android/feed/a/a/j;->p:Ljava/lang/String;
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->k:Lcom/instagram/feed/d/l;
iget-boolean v1, p0, Lcom/instagram/android/feed/a/a/j;->n:Z
iget-object v2, p0, Lcom/instagram/android/feed/a/a/j;->c:Lcom/instagram/feed/g/a;
const-string v3, "tapped"
invoke-static {v0, p1, v1, v2, v3}, Lcom/instagram/feed/c/f;->a(Lcom/instagram/feed/d/l;IZLcom/instagram/feed/g/a;Ljava/lang/String;)V
goto :goto_bc
.end method
.method public final a(Lcom/instagram/android/feed/a/a/n;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/a/a/j;->g:Lcom/instagram/android/feed/a/a/n;
return-void
.end method
.method public final a(Lcom/instagram/android/feed/a/a/o;)V
.registers 2
iput-object p1, p0, Lcom/instagram/android/feed/a/a/j;->h:Lcom/instagram/android/feed/a/a/o;
return-void
.end method
.method public final a(Lcom/instagram/feed/d/l;Lcom/instagram/android/feed/a/b/ac;IZ)V
.registers 9
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->b:Landroid/support/v4/app/Fragment;
invoke-virtual {v0}, Landroid/support/v4/app/Fragment;->u()Z
move-result v0
if-nez v0, :cond_a
:goto_9
:cond_9
return-void
:cond_a
const-string v0, "scroll"
invoke-direct {p0, v1, v1, v0}, Lcom/instagram/android/feed/a/a/j;->a(ZZLjava/lang/String;)V
if-eqz p4, :cond_63
const-string v0, "autoplay"
iput-object v0, p0, Lcom/instagram/android/feed/a/a/j;->p:Ljava/lang/String;
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->c:Lcom/instagram/feed/g/a;
invoke-static {p1, v0}, Lcom/instagram/feed/c/f;->a(Lcom/instagram/feed/d/l;Lcom/instagram/feed/g/a;)V
:goto_1a
iput-object p2, p0, Lcom/instagram/android/feed/a/a/j;->l:Lcom/instagram/android/feed/a/b/ac;
iput p3, p0, Lcom/instagram/android/feed/a/a/j;->j:I
iput-object p1, p0, Lcom/instagram/android/feed/a/a/j;->k:Lcom/instagram/feed/d/l;
iput-boolean p4, p0, Lcom/instagram/android/feed/a/a/j;->m:Z
invoke-static {}, Lcom/instagram/k/b/a;->a()Lcom/instagram/k/b/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/k/b/a;->v()Z
move-result v0
iput-boolean v0, p0, Lcom/instagram/android/feed/a/a/j;->n:Z
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v1
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->l:Lcom/instagram/android/feed/a/b/ac;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->a()Lcom/instagram/feed/widget/a;
move-result-object v0
invoke-virtual {v0}, Lcom/instagram/feed/widget/a;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout;
invoke-virtual {v1, v0}, Lcom/instagram/android/m/a/c;->a(Landroid/widget/FrameLayout;)V
invoke-static {}, Lcom/instagram/common/e/c/a;->a()Lcom/instagram/common/e/c/a;
move-result-object v0
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->w()Z
move-result v1
if-eqz v1, :cond_68
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->f:Lcom/instagram/android/feed/a/a/p;
iget-object v1, p0, Lcom/instagram/android/feed/a/a/j;->f:Lcom/instagram/android/feed/a/a/p;
const/4 v2, 0x5
invoke-virtual {p1}, Lcom/instagram/feed/d/l;->x()Ljava/lang/String;
move-result-object v3
invoke-virtual {v1, v2, v3}, Lcom/instagram/android/feed/a/a/p;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/p;->sendMessage(Landroid/os/Message;)Z
:goto_59
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->h:Lcom/instagram/android/feed/a/a/o;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->h:Lcom/instagram/android/feed/a/a/o;
invoke-interface {v0, p3}, Lcom/instagram/android/feed/a/a/o;->e(I)V
goto :goto_9
:cond_63
const-string v0, "tapped"
iput-object v0, p0, Lcom/instagram/android/feed/a/a/j;->p:Ljava/lang/String;
goto :goto_1a
:cond_68
iget-object v1, p0, Lcom/instagram/android/feed/a/a/j;->b:Landroid/support/v4/app/Fragment;
invoke-virtual {v1}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;
move-result-object v1
invoke-virtual {p1, v1}, Lcom/instagram/feed/d/l;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
invoke-virtual {v0, v1, v2, p0}, Lcom/instagram/common/e/c/a;->a(Ljava/lang/String;ZLcom/instagram/common/e/c/d;)V
goto :goto_59
.end method
.method public final a()Z
.registers 3
iget v0, p0, Lcom/instagram/android/feed/a/a/j;->j:I
const/4 v1, -0x1
if-ne v0, v1, :cond_7
const/4 v0, 0x1
:goto_6
return v0
:cond_7
const/4 v0, 0x0
goto :goto_6
.end method
.method public final b()I
.registers 2
iget v0, p0, Lcom/instagram/android/feed/a/a/j;->j:I
return v0
.end method
.method public final c()Lcom/instagram/feed/d/l;
.registers 2
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->k:Lcom/instagram/feed/d/l;
return-object v0
.end method
.method public final d()V
.registers 4
const/high16 v1, 0x3f80
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/instagram/android/feed/a/a/j;->n:Z
invoke-direct {p0}, Lcom/instagram/android/feed/a/a/j;->k()Lcom/instagram/android/m/a/c;
move-result-object v0
invoke-virtual {v0, v1, v1}, Lcom/instagram/android/m/a/c;->a(FF)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->l:Lcom/instagram/android/feed/a/b/ac;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;
move-result-object v0
sget v1, Lcom/instagram/android/widget/o;->a:I
invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIconState$736bb5a1(I)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->k:Lcom/instagram/feed/d/l;
iget v1, p0, Lcom/instagram/android/feed/a/a/j;->j:I
iget-object v2, p0, Lcom/instagram/android/feed/a/a/j;->c:Lcom/instagram/feed/g/a;
invoke-static {v0, v1, v2}, Lcom/instagram/feed/c/f;->a(Lcom/instagram/feed/d/l;ILcom/instagram/feed/g/a;)V
return-void
.end method
.method public final e()V
.registers 3
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->l:Lcom/instagram/android/feed/a/b/ac;
invoke-virtual {v0}, Lcom/instagram/android/feed/a/b/ac;->d()Lcom/instagram/android/widget/MediaActionsView;
move-result-object v0
sget v1, Lcom/instagram/android/widget/o;->c:I
invoke-virtual {v0, v1}, Lcom/instagram/android/widget/MediaActionsView;->setVideoIconState$736bb5a1(I)V
return-void
.end method
.method public final f()V
.registers 4
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->f:Lcom/instagram/android/feed/a/a/p;
iget-object v1, p0, Lcom/instagram/android/feed/a/a/j;->k:Lcom/instagram/feed/d/l;
iget-object v2, p0, Lcom/instagram/android/feed/a/a/j;->b:Landroid/support/v4/app/Fragment;
invoke-virtual {v2}, Landroid/support/v4/app/Fragment;->n()Landroid/content/Context;
move-result-object v2
invoke-virtual {v1, v2}, Lcom/instagram/feed/d/l;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/instagram/android/feed/a/a/p;->a(Ljava/lang/String;)V
return-void
.end method
.method public final g()V
.registers 3
const/4 v1, 0x1
const-string v0, "error"
invoke-direct {p0, v1, v1, v0}, Lcom/instagram/android/feed/a/a/j;->a(ZZLjava/lang/String;)V
return-void
.end method
.method public final h()V
.registers 4
const/4 v0, 0x1
const/4 v1, 0x0
const-string v2, "scroll"
invoke-direct {p0, v0, v1, v2}, Lcom/instagram/android/feed/a/a/j;->a(ZZLjava/lang/String;)V
return-void
.end method
.method public final i()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->i:Lcom/instagram/android/m/a/c;
if-eqz v0, :cond_12
const-string v0, "scroll"
invoke-direct {p0, v1, v1, v0}, Lcom/instagram/android/feed/a/a/j;->a(ZZLjava/lang/String;)V
iget-object v0, p0, Lcom/instagram/android/feed/a/a/j;->i:Lcom/instagram/android/m/a/c;
invoke-virtual {v0}, Lcom/instagram/android/m/a/c;->f()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/instagram/android/feed/a/a/j;->i:Lcom/instagram/android/m/a/c;
:cond_12
return-void
.end method