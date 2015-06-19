.class public final Lcom/spotify/mobile/android/ui/fragments/r;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/service/connections/j;
.field private Y:Z
.field private Z:Ljava/lang/String;
.field private a:Landroid/view/View;
.field private aa:Ljava/lang/String;
.field private ab:Lcom/spotify/mobile/android/model/c;
.field private ac:Z
.field private ad:Z
.field private ae:Lcom/spotify/mobile/android/service/connections/b;
.field private af:Z
.field private ag:Z
.field private ah:Lcom/spotify/mobile/android/ui/actions/d;
.field private ai:Lcom/spotify/mobile/android/ui/actions/a;
.field private aj:Lcom/spotify/mobile/android/ui/view/snackbar/f;
.field private ak:Lcom/spotify/mobile/android/ui/view/snackbar/f;
.field private al:Lcom/spotify/mobile/android/ui/view/snackbar/f;
.field private am:Lcom/spotify/mobile/android/ui/view/snackbar/e;
.field private an:Lcom/spotify/mobile/android/ui/view/snackbar/e;
.field private ao:Lcom/spotify/mobile/android/service/player/c;
.field private ap:Lcom/spotify/mobile/android/service/player/d;
.field private aq:I
.field private ar:Z
.field private as:Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
.field private at:Lcom/spotify/mobile/android/ui/adapter/k;
.field private au:Landroid/support/v4/view/ViewPager;
.field private av:Landroid/support/v4/view/br;
.field private aw:Lcom/spotify/mobile/android/service/connections/c;
.field private ax:Lcom/spotify/mobile/android/service/player/a/g;
.field private b:Landroid/view/View;
.field private c:Lcom/spotify/mobile/android/ui/view/ConnectIconView;
.field private d:Landroid/widget/ImageButton;
.field private e:Landroid/widget/ImageButton;
.field private f:Z
.field private g:Z
.field private h:Z
.field private i:Z
.method public constructor <init>()V
.registers 3
const/4 v1, 0x0
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ac:Z
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ad:Z
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->af:Z
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ag:Z
const-class v0, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ah:Lcom/spotify/mobile/android/ui/actions/d;
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ai:Lcom/spotify/mobile/android/ui/actions/a;
const-class v0, Lcom/spotify/mobile/android/service/player/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/d;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ap:Lcom/spotify/mobile/android/service/player/d;
iput v1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->aq:I
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ar:Z
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/r$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/r$1;-><init>(Lcom/spotify/mobile/android/ui/fragments/r;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->av:Landroid/support/v4/view/br;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/r$7;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/r$7;-><init>(Lcom/spotify/mobile/android/ui/fragments/r;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->aw:Lcom/spotify/mobile/android/service/connections/c;
new-instance v0, Lcom/spotify/mobile/android/ui/fragments/r$8;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/ui/fragments/r$8;-><init>(Lcom/spotify/mobile/android/ui/fragments/r;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ax:Lcom/spotify/mobile/android/service/player/a/g;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/r;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->aq:I
return p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/r;Lcom/spotify/mobile/android/model/c;)Lcom/spotify/mobile/android/model/c;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ab:Lcom/spotify/mobile/android/model/c;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/r;Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;)Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->as:Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/adapter/k;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->at:Lcom/spotify/mobile/android/ui/adapter/k;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/r;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->aa:Ljava/lang/String;
return-object p1
.end method
.method private a(Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;)V
.registers 4
const/4 v1, 0x1
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->getTrackUri()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->Z:Ljava/lang/String;
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->f:Z
if-nez v0, :cond_12
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->f:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->aj:Lcom/spotify/mobile/android/ui/view/snackbar/f;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/view/snackbar/f;->a(Z)V
:cond_12
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/ui/fragments/r;Z)V
.registers 4
if-eqz p1, :cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->d:Landroid/widget/ImageButton;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/r;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/j;->c(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:goto_f
return-void
:cond_10
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->d:Landroid/widget/ImageButton;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/r;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/ui/fragments/j;->d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
goto :goto_f
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/service/player/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ao:Lcom/spotify/mobile/android/service/player/c;
return-object v0
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/r;Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/ui/fragments/r;->a(Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;)V
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/ui/fragments/r;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->g:Z
return p1
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/r;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->f:Z
return v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/ui/fragments/r;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->h:Z
return p1
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/actions/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ah:Lcom/spotify/mobile/android/ui/actions/d;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/ui/fragments/r;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->Y:Z
return p1
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/fragments/r;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ad:Z
return v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/ui/fragments/r;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->i:Z
return p1
.end method
.method static synthetic f(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/view/ConnectIconView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->c:Lcom/spotify/mobile/android/ui/view/ConnectIconView;
return-object v0
.end method
.method static synthetic g(Lcom/spotify/mobile/android/ui/fragments/r;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->aq:I
return v0
.end method
.method static synthetic h(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/actions/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ai:Lcom/spotify/mobile/android/ui/actions/a;
return-object v0
.end method
.method static synthetic i(Lcom/spotify/mobile/android/ui/fragments/r;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->Y:Z
return v0
.end method
.method static synthetic j(Lcom/spotify/mobile/android/ui/fragments/r;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->g:Z
return v0
.end method
.method static synthetic k(Lcom/spotify/mobile/android/ui/fragments/r;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->i:Z
return v0
.end method
.method static synthetic l(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/service/connections/b;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ae:Lcom/spotify/mobile/android/service/connections/b;
return-object v0
.end method
.method static synthetic m(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/view/snackbar/e;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->an:Lcom/spotify/mobile/android/ui/view/snackbar/e;
return-object v0
.end method
.method static synthetic n(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/view/snackbar/f;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->al:Lcom/spotify/mobile/android/ui/view/snackbar/f;
return-object v0
.end method
.method static synthetic o(Lcom/spotify/mobile/android/ui/fragments/r;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ag:Z
return v0
.end method
.method static synthetic p(Lcom/spotify/mobile/android/ui/fragments/r;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ag:Z
return v0
.end method
.method static synthetic q(Lcom/spotify/mobile/android/ui/fragments/r;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->b:Landroid/view/View;
return-object v0
.end method
.method static synthetic r(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/view/snackbar/f;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ak:Lcom/spotify/mobile/android/ui/view/snackbar/f;
return-object v0
.end method
.method static synthetic s(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/ui/view/snackbar/e;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->am:Lcom/spotify/mobile/android/ui/view/snackbar/e;
return-object v0
.end method
.method static synthetic t(Lcom/spotify/mobile/android/ui/fragments/r;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->h:Z
return v0
.end method
.method static synthetic u(Lcom/spotify/mobile/android/ui/fragments/r;)Landroid/widget/ImageButton;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->d:Landroid/widget/ImageButton;
return-object v0
.end method
.method static synthetic v(Lcom/spotify/mobile/android/ui/fragments/r;)Landroid/widget/ImageButton;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->e:Landroid/widget/ImageButton;
return-object v0
.end method
.method static synthetic w(Lcom/spotify/mobile/android/ui/fragments/r;)V
.registers 3
const/4 v1, 0x0
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->f:Z
if-eqz v0, :cond_c
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->f:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->aj:Lcom/spotify/mobile/android/ui/view/snackbar/f;
invoke-interface {v0, v1}, Lcom/spotify/mobile/android/ui/view/snackbar/f;->a(Z)V
:cond_c
return-void
.end method
.method static synthetic x(Lcom/spotify/mobile/android/ui/fragments/r;)Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->as:Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
return-object v0
.end method
.method static synthetic y(Lcom/spotify/mobile/android/ui/fragments/r;)Landroid/support/v4/view/ViewPager;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->au:Landroid/support/v4/view/ViewPager;
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 9
iput-object p2, p0, Lcom/spotify/mobile/android/ui/fragments/r;->a:Landroid/view/View;
const v0, 0x7f0300bc
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a0371
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/support/v4/view/ViewPager;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->au:Landroid/support/v4/view/ViewPager;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/k;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/r;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/ui/fragments/r;->au:Landroid/support/v4/view/ViewPager;
new-instance v4, Lcom/spotify/mobile/android/ui/fragments/r$2;
invoke-direct {v4, p0}, Lcom/spotify/mobile/android/ui/fragments/r$2;-><init>(Lcom/spotify/mobile/android/ui/fragments/r;)V
invoke-direct {v0, v2, v3, v4}, Lcom/spotify/mobile/android/ui/adapter/k;-><init>(Landroid/content/Context;Landroid/view/ViewGroup;Landroid/view/View$OnClickListener;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->at:Lcom/spotify/mobile/android/ui/adapter/k;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->au:Landroid/support/v4/view/ViewPager;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/r;->at:Lcom/spotify/mobile/android/ui/adapter/k;
invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ah;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->au:Landroid/support/v4/view/ViewPager;
iget-object v2, p0, Lcom/spotify/mobile/android/ui/fragments/r;->av:Landroid/support/v4/view/br;
invoke-virtual {v0, v2}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/br;)V
const v0, 0x7f0a0370
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->b:Landroid/view/View;
const v0, 0x7f0a035c
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/ConnectIconView;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->c:Lcom/spotify/mobile/android/ui/view/ConnectIconView;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->c:Lcom/spotify/mobile/android/ui/view/ConnectIconView;
const/4 v2, 0x4
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->c:Lcom/spotify/mobile/android/ui/view/ConnectIconView;
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/r$3;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/r$3;-><init>(Lcom/spotify/mobile/android/ui/fragments/r;)V
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->a(Lcom/spotify/mobile/android/ui/view/d;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->c:Lcom/spotify/mobile/android/ui/view/ConnectIconView;
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/r$4;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/r$4;-><init>(Lcom/spotify/mobile/android/ui/fragments/r;)V
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/view/ConnectIconView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0374
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->d:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->d:Landroid/widget/ImageButton;
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/r$5;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/r$5;-><init>(Lcom/spotify/mobile/android/ui/fragments/r;)V
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a0373
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->e:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->e:Landroid/widget/ImageButton;
new-instance v2, Lcom/spotify/mobile/android/ui/fragments/r$6;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/ui/fragments/r$6;-><init>(Lcom/spotify/mobile/android/ui/fragments/r;)V
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->e:Landroid/widget/ImageButton;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/r;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/j;->h(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return-object v1
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V
if-eqz p1, :cond_27
const-string v0, "key_active_connect_device_hash"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->aa:Ljava/lang/String;
const-string v0, "key_was_in_background"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ac:Z
const-string v0, "key_device_discovery_requested"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ar:Z
const-string v0, "key_queue_item"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->as:Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
:cond_27
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ap:Lcom/spotify/mobile/android/service/player/d;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/r;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/service/player/d;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/service/player/c;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ao:Lcom/spotify/mobile/android/service/player/c;
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1, p2}, Landroid/support/v4/app/Fragment;->a(Landroid/view/View;Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->as:Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->as:Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/ui/fragments/r;->a(Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;)V
:cond_c
return-void
.end method
.method public final a(Lcom/spotify/mobile/android/ui/view/snackbar/f;Lcom/spotify/mobile/android/ui/view/snackbar/f;Lcom/spotify/mobile/android/ui/view/snackbar/f;Lcom/spotify/mobile/android/ui/view/snackbar/e;Lcom/spotify/mobile/android/ui/view/snackbar/e;)V
.registers 6
iput-object p1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->aj:Lcom/spotify/mobile/android/ui/view/snackbar/f;
iput-object p2, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ak:Lcom/spotify/mobile/android/ui/view/snackbar/f;
iput-object p3, p0, Lcom/spotify/mobile/android/ui/fragments/r;->al:Lcom/spotify/mobile/android/ui/view/snackbar/f;
iput-object p4, p0, Lcom/spotify/mobile/android/ui/fragments/r;->am:Lcom/spotify/mobile/android/ui/view/snackbar/e;
iput-object p5, p0, Lcom/spotify/mobile/android/ui/fragments/r;->an:Lcom/spotify/mobile/android/ui/view/snackbar/e;
return-void
.end method
.method public final c()V
.registers 3
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ae:Lcom/spotify/mobile/android/service/connections/b;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ae:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->i()V
:cond_a
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ad:Z
if-nez v0, :cond_14
const/4 v0, 0x1
:goto_f
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ac:Z
iput-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ad:Z
return-void
:cond_14
move v0, v1
goto :goto_f
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V
const-string v0, "key_device_discovery_requested"
iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ar:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "key_active_connect_device_hash"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->aa:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "key_was_in_background"
iget-boolean v1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ac:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "key_queue_item"
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->as:Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
return-void
.end method
.method public final r_()V
.registers 3
invoke-super {p0}, Landroid/support/v4/app/Fragment;->r_()V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->i:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_20
new-instance v0, Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {p0}, Lcom/spotify/mobile/android/ui/fragments/r;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/service/connections/b;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ae:Lcom/spotify/mobile/android/service/connections/b;
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ae:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0, p0}, Lcom/spotify/mobile/android/service/connections/b;->a(Lcom/spotify/mobile/android/service/connections/j;)V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ae:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->j()V
:cond_20
return-void
.end method
.method public final s_()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/Fragment;->s_()V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->i:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_19
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->af:Z
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ae:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->a()Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ae:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->k()V
:cond_19
return-void
.end method
.method public final u_()V
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->af:Z
return-void
.end method
.method public final v_()V
.registers 4
const/4 v2, 0x1
iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/r;->af:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ae:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->a()Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ae:Lcom/spotify/mobile/android/service/connections/b;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->aw:Lcom/spotify/mobile/android/service/connections/c;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/connections/b;->a(Lcom/spotify/mobile/android/service/connections/c;)Z
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ar:Z
if-nez v0, :cond_1a
iput-boolean v2, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ar:Z
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ae:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->c()V
:cond_1a
return-void
.end method
.method public final x()V
.registers 3
invoke-super {p0}, Landroid/support/v4/app/Fragment;->x()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ao:Lcom/spotify/mobile/android/service/player/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ao:Lcom/spotify/mobile/android/service/player/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ax:Lcom/spotify/mobile/android/service/player/a/g;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/player/c;->a(Ljava/lang/Object;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ag:Z
iget-boolean v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ac:Z
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ae:Lcom/spotify/mobile/android/service/connections/b;
if-eqz v0, :cond_1f
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ae:Lcom/spotify/mobile/android/service/connections/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/connections/b;->i()V
:cond_1f
return-void
.end method
.method public final y()V
.registers 3
invoke-super {p0}, Landroid/support/v4/app/Fragment;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ao:Lcom/spotify/mobile/android/service/player/c;
iget-object v1, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ax:Lcom/spotify/mobile/android/service/player/a/g;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/player/c;->b(Ljava/lang/Object;)V
return-void
.end method
.method public final z()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/Fragment;->z()V
iget-object v0, p0, Lcom/spotify/mobile/android/ui/fragments/r;->ao:Lcom/spotify/mobile/android/service/player/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->b()V
return-void
.end method