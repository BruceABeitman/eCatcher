.class public final Lcom/spotify/mobile/android/spotlets/browse/b;
.super Landroid/support/v4/app/x;
.source "SourceFile"
.implements Landroid/widget/AbsListView$OnScrollListener;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/util/aa;
.implements Lcom/spotify/mobile/android/util/cd;
.field final Y:Lcom/spotify/mobile/android/spotlets/browse/datasource/a;
.field private Z:Lcom/spotify/mobile/android/spotlets/browse/a/c;
.field private aa:Landroid/view/View;
.field private ab:Landroid/view/View;
.field private ac:Landroid/view/ViewGroup;
.field private ad:Landroid/widget/ListView;
.field private ae:Landroid/view/ViewGroup;
.field private af:Landroid/widget/ImageView;
.field private ag:Landroid/widget/ImageView;
.field private ah:Landroid/widget/TextView;
.field private ai:Landroid/widget/TextView;
.field private aj:Landroid/view/View;
.field private ak:Lcom/spotify/mobile/android/ui/view/LoadingView;
.field private al:Ljava/lang/String;
.field private am:Ljava/lang/String;
.field private an:Lcom/spotify/mobile/android/util/cc;
.field private ao:Lcom/spotify/mobile/android/util/z;
.field private ap:Lcom/spotify/mobile/android/util/dw;
.field private aq:Z
.field private ar:Z
.field private as:Lcom/spotify/mobile/android/util/tracking/n;
.field private at:Lcom/spotify/mobile/android/spotlets/browse/datasource/a/c;
.field private final au:Lcom/spotify/mobile/android/spotlets/browse/b/e;
.field final i:Lcom/spotify/mobile/android/spotlets/browse/datasource/a;
.method public constructor <init>()V
.registers 6
const/4 v0, 0x0
invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->aq:Z
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ar:Z
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b/e;
new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b/d;
sget-object v2, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->N:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri;->j:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v4, Lcom/spotify/mobile/android/util/ViewUri$SubView;->f:Lcom/spotify/mobile/android/util/ViewUri$SubView;
invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/spotlets/browse/b/d;-><init>(Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;)V
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/browse/b/e;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b/d;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->au:Lcom/spotify/mobile/android/spotlets/browse/b/e;
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/browse/b$1;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->i:Lcom/spotify/mobile/android/spotlets/browse/datasource/a;
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/b$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/browse/b$2;-><init>(Lcom/spotify/mobile/android/spotlets/browse/b;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->Y:Lcom/spotify/mobile/android/spotlets/browse/datasource/a;
return-void
.end method
.method private E()V
.registers 7
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/d;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->Y:Lcom/spotify/mobile/android/spotlets/browse/datasource/a;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->am:Ljava/lang/String;
const-string v3, "new-releases-header"
const-string v4, "new-releases-header"
sget-object v5, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->c:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
invoke-direct/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/d;-><init>(Lcom/spotify/mobile/android/spotlets/browse/datasource/a;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V
const/4 v1, 0x0
const/16 v2, 0xa
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/d;->b(II)V
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->G()V
return-void
.end method
.method private G()V
.registers 4
const/16 v2, 0xa
monitor-enter p0
:try_start_3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->Z:Lcom/spotify/mobile/android/spotlets/browse/a/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a/c;->a()I
move-result v0
if-lez v0, :cond_f
if-ge v0, v2, :cond_f
monitor-exit p0
:goto_e
return-void
:cond_f
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->aq:Z
if-eqz v0, :cond_18
monitor-exit p0
:try_end_14
.catchall {:try_start_3 .. :try_end_14} :catchall_15
goto :goto_e
:catchall_15
move-exception v0
monitor-exit p0
throw v0
:cond_18
const/4 v0, 0x1
:try_start_19
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->aq:Z
monitor-exit p0
:try_end_1c
.catchall {:try_start_19 .. :try_end_1c} :catchall_15
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->Z:Lcom/spotify/mobile/android/spotlets/browse/a/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/browse/a/c;->a()I
move-result v0
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ab:Landroid/view/View;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
:cond_2a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->at:Lcom/spotify/mobile/android/spotlets/browse/datasource/a/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->Z:Lcom/spotify/mobile/android/spotlets/browse/a/c;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/browse/a/c;->a()I
move-result v1
div-int/lit8 v1, v1, 0xa
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/c;->b(II)V
goto :goto_e
.end method
.method public static a(Ljava/lang/String;Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/browse/b;
.registers 4
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
const-string v1, "title"
invoke-virtual {v0, v1, p0}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "country"
invoke-virtual {v0, v1, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
new-instance v1, Lcom/spotify/mobile/android/spotlets/browse/b;
invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/browse/b;-><init>()V
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->c_(Landroid/os/Bundle;)V
return-object v1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/browse/b;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->aq:Z
return v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/browse/b;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ar:Z
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ad:Landroid/widget/ListView;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/browse/b;)Lcom/spotify/mobile/android/ui/view/LoadingView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ak:Lcom/spotify/mobile/android/ui/view/LoadingView;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/browse/b;)Lcom/spotify/mobile/android/spotlets/browse/a/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->Z:Lcom/spotify/mobile/android/spotlets/browse/a/c;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/browse/b;)Lcom/spotify/mobile/android/util/tracking/n;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->as:Lcom/spotify/mobile/android/util/tracking/n;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ab:Landroid/view/View;
return-object v0
.end method
.method static synthetic g(Lcom/spotify/mobile/android/spotlets/browse/b;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->al:Ljava/lang/String;
return-object v0
.end method
.method static synthetic h(Lcom/spotify/mobile/android/spotlets/browse/b;)Lcom/spotify/mobile/android/spotlets/browse/b/e;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->au:Lcom/spotify/mobile/android/spotlets/browse/b/e;
return-object v0
.end method
.method static synthetic i(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->aj:Landroid/view/View;
return-object v0
.end method
.method static synthetic j(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ag:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic k(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->af:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic l(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ah:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic m(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ai:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic n(Lcom/spotify/mobile/android/spotlets/browse/b;)Landroid/view/ViewGroup;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ae:Landroid/view/ViewGroup;
return-object v0
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final F()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->Z:Lcom/spotify/mobile/android/spotlets/browse/a/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->an:Lcom/spotify/mobile/android/util/cc;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cc;->a()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->an:Lcom/spotify/mobile/android/util/cc;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/cc;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/a/c;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 8
const/4 v3, 0x0
const v0, 0x7f030061
invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ac:Landroid/view/ViewGroup;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;)Lcom/spotify/mobile/android/ui/view/LoadingView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ak:Lcom/spotify/mobile/android/ui/view/LoadingView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ac:Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ak:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ak:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ac:Landroid/view/ViewGroup;
const v1, 0x102000a
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ad:Landroid/widget/ListView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ad:Landroid/widget/ListView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->c:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_94
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ad:Landroid/widget/ListView;
const v0, 0x7f030031
const/4 v2, 0x0
invoke-virtual {p1, v0, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ae:Landroid/view/ViewGroup;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ae:Landroid/view/ViewGroup;
const v2, 0x7f0a024a
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->af:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ae:Landroid/view/ViewGroup;
const v2, 0x7f0a01f8
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ag:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ae:Landroid/view/ViewGroup;
const v2, 0x7f0a01fc
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ah:Landroid/widget/TextView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ae:Landroid/view/ViewGroup;
const v2, 0x7f0a024d
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ai:Landroid/widget/TextView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ae:Landroid/view/ViewGroup;
const v2, 0x7f0a024c
invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->aj:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ae:Landroid/view/ViewGroup;
invoke-virtual {v1, v0}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V
:cond_94
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ac:Landroid/view/ViewGroup;
return-object v0
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->al:Ljava/lang/String;
if-eqz v0, :cond_7
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->al:Ljava/lang/String;
:goto_6
return-object v0
:cond_7
const-string v0, "New releases"
goto :goto_6
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "title"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->al:Ljava/lang/String;
new-instance v0, Lcom/spotify/mobile/android/util/z;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/z;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/aa;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ao:Lcom/spotify/mobile/android/util/z;
new-instance v0, Lcom/spotify/mobile/android/util/cc;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1, p0}, Lcom/spotify/mobile/android/util/cc;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/cd;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->an:Lcom/spotify/mobile/android/util/cc;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const-string v1, "spotify:app:browse:new_releases"
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->as:Lcom/spotify/mobile/android/util/tracking/n;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->as:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->as:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->a()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/util/ViewUri;->k:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ap:Lcom/spotify/mobile/android/util/dw;
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/a/c;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v1}, Landroid/support/v4/app/FragmentActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0d0008
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I
move-result v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->an:Lcom/spotify/mobile/android/util/cc;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/a/c;-><init>(ILcom/spotify/mobile/android/a/b;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->Z:Lcom/spotify/mobile/android/spotlets/browse/a/c;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "country"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->am:Ljava/lang/String;
new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->i:Lcom/spotify/mobile/android/spotlets/browse/datasource/a;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->am:Ljava/lang/String;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a/c;-><init>(Lcom/spotify/mobile/android/spotlets/browse/datasource/a;Ljava/lang/String;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->at:Lcom/spotify/mobile/android/spotlets/browse/datasource/a/c;
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 9
const/4 v4, 0x0
const/4 v2, 0x0
invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03005e
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ab:Landroid/view/View;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->a()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnScrollListener(Landroid/widget/AbsListView$OnScrollListener;)V
new-instance v1, Landroid/view/View;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-direct {v1, v3}, Landroid/view/View;-><init>(Landroid/content/Context;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->k()Landroid/content/res/Resources;
move-result-object v3
const v5, 0x7f0b0027
invoke-virtual {v3, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v3
new-instance v5, Landroid/widget/AbsListView$LayoutParams;
invoke-direct {v5, v4, v3}, Landroid/widget/AbsListView$LayoutParams;-><init>(II)V
invoke-virtual {v1, v5}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ac:Landroid/view/ViewGroup;
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/browse/util/a;->a(Landroid/view/View;)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->aa:Landroid/view/View;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ab:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->addFooterView(Landroid/view/View;)V
if-eqz p2, :cond_89
const-string v0, "new_releases"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelableArrayList(Ljava/lang/String;)Ljava/util/ArrayList;
move-result-object v1
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->i:Lcom/spotify/mobile/android/spotlets/browse/datasource/a;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v3
sget-object v5, Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;->e:Lcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;
invoke-interface/range {v0 .. v5}, Lcom/spotify/mobile/android/spotlets/browse/datasource/a;->a(Ljava/util/List;Ljava/util/Map;IZLcom/spotify/mobile/android/spotlets/browse/datasource/RequestType;)V
const-string v0, "list"
invoke-virtual {p2, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
if-eqz v0, :cond_6b
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->a()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/ListView;->onRestoreInstanceState(Landroid/os/Parcelable;)V
:goto_6b
:cond_6b
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a015a
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->an:Lcom/spotify/mobile/android/util/cc;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a0159
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ao:Lcom/spotify/mobile/android/util/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->Z:Lcom/spotify/mobile/android/spotlets/browse/a/c;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/browse/b;->a(Landroid/widget/ListAdapter;)V
return-void
:cond_89
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->E()V
goto :goto_6b
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 5
invoke-super {p0, p1}, Landroid/support/v4/app/x;->d(Landroid/os/Bundle;)V
new-instance v1, Ljava/util/ArrayList;
invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V
const/4 v0, 0x0
:goto_9
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->Z:Lcom/spotify/mobile/android/spotlets/browse/a/c;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/browse/a/c;->a()I
move-result v2
if-ge v0, v2, :cond_1d
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->Z:Lcom/spotify/mobile/android/spotlets/browse/a/c;
invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/spotlets/browse/a/c;->a(I)Lcom/spotify/mobile/android/spotlets/browse/model/NewRelease;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_1d
const-string v0, "new_releases"
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelableArrayList(Ljava/lang/String;Ljava/util/ArrayList;)V
const-string v0, "list"
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->a()Landroid/widget/ListView;
move-result-object v1
invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->as:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V
return-void
.end method
.method public final d(Z)V
.registers 5
const/16 v2, 0x8
const/4 v1, 0x0
if-eqz p1, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->aa:Landroid/view/View;
invoke-virtual {v0, v2}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->a()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setVisibility(I)V
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->E()V
:goto_14
return-void
:cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->aa:Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->a()Landroid/widget/ListView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setVisibility(I)V
goto :goto_14
.end method
.method public final onScroll(Landroid/widget/AbsListView;III)V
.registers 7
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/browse/b; onScroll "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
add-int v0, p2, p3
add-int/lit8 v1, p4, -0x5
add-int/lit8 v1, v1, 0x1
if-lt v0, v1, :cond_13
const/4 v0, 0x1
:goto_9
if-eqz v0, :cond_12
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ar:Z
if-nez v0, :cond_12
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/browse/b;->G()V
:cond_12
const-string v1, " - Lcom/spotify/mobile/android/spotlets/browse/b; onScroll"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_13
const/4 v0, 0x0
goto :goto_9
.end method
.method public final onScrollStateChanged(Landroid/widget/AbsListView;I)V
.registers 5
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/spotify/mobile/android/spotlets/browse/b; onScrollStateChanged "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const-string v1, " - Lcom/spotify/mobile/android/spotlets/browse/b; onScrollStateChanged"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public final s_()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->s_()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->as:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V
return-void
.end method
.method public final x()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->x()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ap:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
return-void
.end method
.method public final y()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/b;->ap:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V
return-void
.end method