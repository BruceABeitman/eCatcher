.class public final Lcom/spotify/mobile/android/spotlets/collection/fragments/d;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/collection/fragments/g;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/ui/n;
.field public static final a:Ljava/lang/String;
.field private static final b:Lcom/spotify/mobile/android/util/cz;
.field private static final c:Ljava/util/List;
.field private static final d:Lcom/spotify/mobile/android/util/cw;
.field private Y:Lcom/spotify/android/paste/widget/EmptyView;
.field private Z:Landroid/os/Parcelable;
.field private aa:Lcom/spotify/mobile/android/spotlets/collection/b/c;
.field private ab:Lcom/spotify/mobile/android/util/dw;
.field private ac:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field private ad:Lcom/spotify/mobile/android/util/cx;
.field private ae:Lcom/spotify/mobile/android/spotlets/collection/adapter/b;
.field private af:Lcom/spotify/mobile/android/ui/adapter/o;
.field private ag:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
.field private ah:Lcom/spotify/mobile/android/ui/view/LoadingView;
.field private ai:Lcom/spotify/mobile/android/ui/adapter/i;
.field private aj:Lcom/spotify/mobile/android/ui/l;
.field private ak:Lcom/spotify/mobile/android/ui/actions/a;
.field private al:Lcom/spotify/mobile/android/util/tracking/n;
.field private am:Z
.field private an:Lcom/spotify/mobile/android/spotlets/collection/b/d;
.field private ao:Landroid/view/View$OnClickListener;
.field private ap:Lcom/spotify/mobile/android/ui/view/j;
.field private aq:Landroid/widget/AdapterView$OnItemClickListener;
.field private ar:Landroid/support/v4/app/z;
.field private e:Ljava/lang/String;
.field private f:Lcom/spotify/mobile/android/util/cw;
.field private g:Landroid/widget/ListView;
.field private h:Lcom/spotify/android/paste/widget/EmptyView;
.field private i:Lcom/spotify/android/paste/widget/EmptyView;
.method static constructor <clinit>()V
.registers 5
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aI:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->a:Ljava/lang/String;
const-string v0, "artists_sort_order"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->b:Lcom/spotify/mobile/android/util/cz;
new-instance v0, Lcom/spotify/mobile/android/util/cw;
const-string v1, "name"
const v2, 0x7f0f03a9
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->d:Lcom/spotify/mobile/android/util/cw;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->c:Ljava/util/List;
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->d:Lcom/spotify/mobile/android/util/cw;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->c:Ljava/util/List;
new-instance v1, Lcom/spotify/mobile/android/util/cw;
const-string v2, "time_added"
const v3, 0x7f0f03aa
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;I)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->c:Ljava/util/List;
new-instance v1, Lcom/spotify/mobile/android/util/cw;
const-string v2, "most_played_rank"
const v3, 0x7f0f03a8
const/4 v4, 0x0
invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;IZ)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ak:Lcom/spotify/mobile/android/ui/actions/a;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$1;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->an:Lcom/spotify/mobile/android/spotlets/collection/b/d;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$2;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ao:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$3;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ap:Lcom/spotify/mobile/android/ui/view/j;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$4;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$4;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->aq:Landroid/widget/AdapterView$OnItemClickListener;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d$5;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ar:Landroid/support/v4/app/z;
return-void
.end method
.method public static E()Lcom/spotify/mobile/android/spotlets/collection/fragments/d;
.registers 2
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;-><init>()V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->c_(Landroid/os/Bundle;)V
return-object v0
.end method
.method private F()V
.registers 4
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->n()Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_1f
instance-of v1, v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
if-eqz v1, :cond_1f
const/4 v1, 0x0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->aj:Lcom/spotify/mobile/android/ui/l;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/l;->b()Z
move-result v2
if-eqz v2, :cond_19
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->aj:Lcom/spotify/mobile/android/ui/l;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/l;->a()Ljava/lang/String;
move-result-object v1
:cond_19
check-cast v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->a(Ljava/lang/String;)V
:goto_1e
return-void
:cond_1f
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v2, 0x7f0f0110
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, p0, v1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->c()V
goto :goto_1e
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;Lcom/spotify/mobile/android/util/cw;)Lcom/spotify/mobile/android/util/cw;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->f:Lcom/spotify/mobile/android/util/cw;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->e:Ljava/lang/String;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)V
.registers 5
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->o()Z
move-result v0
if-eqz v0, :cond_13
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a016a
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ar:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->b(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
:cond_13
return-void
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/spotlets/collection/b/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->aa:Lcom/spotify/mobile/android/spotlets/collection/b/c;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/ui/adapter/i;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ai:Lcom/spotify/mobile/android/ui/adapter/i;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ac:Lcom/spotify/mobile/android/util/ViewUri$Verified;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/ui/actions/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ak:Lcom/spotify/mobile/android/ui/actions/a;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/ui/l;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->aj:Lcom/spotify/mobile/android/ui/l;
return-object v0
.end method
.method static synthetic g(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/spotlets/collection/adapter/b;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ae:Lcom/spotify/mobile/android/spotlets/collection/adapter/b;
return-object v0
.end method
.method static synthetic h(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->g:Landroid/widget/ListView;
return-object v0
.end method
.method static synthetic i(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)V
.registers 7
const/4 v1, 0x1
const/16 v4, 0x8
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ae:Lcom/spotify/mobile/android/spotlets/collection/adapter/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->a()Landroid/database/Cursor;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z
move-result v0
if-eqz v0, :cond_41
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ae:Lcom/spotify/mobile/android/spotlets/collection/adapter/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->getCount()I
move-result v0
if-nez v0, :cond_42
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ag:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b()Z
move-result v0
if-nez v0, :cond_42
move v0, v1
:goto_21
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->aa:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c()Z
move-result v3
if-eqz v3, :cond_44
if-eqz v0, :cond_44
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->h:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->i:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v4}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->g:Landroid/widget/ListView;
invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->aj:Lcom/spotify/mobile/android/ui/l;
:goto_3c
move v1, v2
move-object v3, v0
:cond_3e
invoke-virtual {v3, v1}, Lcom/spotify/mobile/android/ui/l;->a(Z)V
:cond_41
return-void
:cond_42
move v0, v2
goto :goto_21
:cond_44
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->h:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v3, v4}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->i:Lcom/spotify/android/paste/widget/EmptyView;
if-eqz v0, :cond_5e
move v3, v2
:goto_4e
invoke-virtual {v5, v3}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->g:Landroid/widget/ListView;
if-eqz v0, :cond_60
:goto_55
invoke-virtual {v3, v4}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->aj:Lcom/spotify/mobile/android/ui/l;
if-eqz v0, :cond_3e
move-object v0, v3
goto :goto_3c
:cond_5e
move v3, v4
goto :goto_4e
:cond_60
move v4, v2
goto :goto_55
.end method
.method static synthetic j(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Landroid/os/Parcelable;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->Z:Landroid/os/Parcelable;
return-object v0
.end method
.method static synthetic k(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Landroid/os/Parcelable;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->Z:Landroid/os/Parcelable;
return-object v0
.end method
.method static synthetic l(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/util/tracking/n;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->al:Lcom/spotify/mobile/android/util/tracking/n;
return-object v0
.end method
.method static synthetic m(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/ui/adapter/o;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->af:Lcom/spotify/mobile/android/ui/adapter/o;
return-object v0
.end method
.method static synthetic n(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/ui/view/LoadingView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ah:Lcom/spotify/mobile/android/ui/view/LoadingView;
return-object v0
.end method
.method static synthetic o(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ag:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
return-object v0
.end method
.method static synthetic p(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->e:Ljava/lang/String;
return-object v0
.end method
.method static synthetic q(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/android/paste/widget/EmptyView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->Y:Lcom/spotify/android/paste/widget/EmptyView;
return-object v0
.end method
.method static synthetic r(Lcom/spotify/mobile/android/spotlets/collection/fragments/d;)Lcom/spotify/mobile/android/util/cw;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->f:Lcom/spotify/mobile/android/util/cw;
return-object v0
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.registers 4
const/4 v0, 0x1
invoke-static {p1, p2, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/c;->a(Ljava/lang/String;Ljava/lang/String;Z)Lcom/spotify/mobile/android/spotlets/collection/fragments/c;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 16
const/16 v2, 0x8
const/4 v5, 0x2
const/4 v10, 0x1
const/4 v11, 0x0
const/4 v9, 0x0
const v0, 0x7f03008b
invoke-virtual {p1, v0, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
move-object v7, v0
check-cast v7, Landroid/view/ViewGroup;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ae:Lcom/spotify/mobile/android/spotlets/collection/adapter/b;
const v0, 0x102000a
invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->g:Landroid/widget/ListView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->g:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;
move-result-object v0
move-object v8, v0
check-cast v8, Landroid/view/ViewGroup;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->c(Landroid/content/Context;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->i:Lcom/spotify/android/paste/widget/EmptyView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->i:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->i:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ao:Landroid/view/View$OnClickListener;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Landroid/view/View$OnClickListener;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->h:Lcom/spotify/android/paste/widget/EmptyView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->h:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v2}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->h:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const-string v1, ""
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->Y:Lcom/spotify/android/paste/widget/EmptyView;
const v0, 0x7f030042
invoke-virtual {p1, v0, v11, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a025a
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ao:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v0, v2}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->af:Lcom/spotify/mobile/android/ui/adapter/o;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/i;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ae:Lcom/spotify/mobile/android/spotlets/collection/adapter/b;
const/16 v4, 0xe
invoke-direct {v0, v2, v3, v4}, Lcom/spotify/mobile/android/ui/adapter/i;-><init>(Landroid/content/Context;Landroid/support/v4/widget/b;I)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ai:Lcom/spotify/mobile/android/ui/adapter/i;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ai:Lcom/spotify/mobile/android/ui/adapter/i;
const-string v0, "time_added"
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->f:Lcom/spotify/mobile/android/util/cw;
invoke-virtual {v3}, Lcom/spotify/mobile/android/util/cw;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-nez v0, :cond_b0
const-string v0, "most_played_rank"
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->f:Lcom/spotify/mobile/android/util/cw;
invoke-virtual {v3}, Lcom/spotify/mobile/android/util/cw;->a()Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16e
:cond_b0
move v0, v10
:goto_b1
invoke-virtual {v2, v0}, Lcom/spotify/mobile/android/ui/adapter/i;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->af:Lcom/spotify/mobile/android/ui/adapter/o;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ai:Lcom/spotify/mobile/android/ui/adapter/i;
invoke-virtual {v0, v2, v11, v9}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->af:Lcom/spotify/mobile/android/ui/adapter/o;
new-instance v2, Lcom/spotify/mobile/android/ui/adapter/t;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->Y:Lcom/spotify/android/paste/widget/EmptyView;
invoke-direct {v2, v3, v9}, Lcom/spotify/mobile/android/ui/adapter/t;-><init>(Landroid/view/View;B)V
invoke-virtual {v0, v2, v11, v10}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->af:Lcom/spotify/mobile/android/ui/adapter/o;
new-instance v2, Lcom/spotify/mobile/android/ui/adapter/t;
invoke-direct {v2, v1, v9}, Lcom/spotify/mobile/android/ui/adapter/t;-><init>(Landroid/view/View;B)V
invoke-virtual {v0, v2, v11, v5}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->af:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v0, v9}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->af:Lcom/spotify/mobile/android/ui/adapter/o;
new-array v1, v5, [I
fill-array-data v1, :array_172
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->e:Ljava/lang/String;
sget-object v2, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->c:Ljava/util/List;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->f:Lcom/spotify/mobile/android/util/cw;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->aa:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->b()Ljava/util/List;
move-result-object v4
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ap:Lcom/spotify/mobile/android/ui/view/j;
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->g:Landroid/widget/ListView;
move-object v0, p1
invoke-static/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/util/cw;Ljava/util/List;Lcom/spotify/mobile/android/ui/view/j;Landroid/widget/ListView;)Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ag:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ag:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->k()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f090012
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ag:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
const v1, 0x7f0f022c
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;)Lcom/spotify/mobile/android/ui/view/LoadingView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ah:Lcom/spotify/mobile/android/ui/view/LoadingView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ah:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->g:Landroid/widget/ListView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->af:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->g:Landroid/widget/ListView;
invoke-virtual {v0, v9}, Landroid/widget/ListView;->setChoiceMode(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->g:Landroid/widget/ListView;
invoke-virtual {v0, v10}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->g:Landroid/widget/ListView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->aq:Landroid/widget/AdapterView$OnItemClickListener;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->g:Landroid/widget/ListView;
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/b;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/b;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
new-instance v0, Lcom/spotify/mobile/android/ui/l;
invoke-direct {v0, p0, p0, v7}, Lcom/spotify/mobile/android/ui/l;-><init>(Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/n;Landroid/view/View;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->aj:Lcom/spotify/mobile/android/ui/l;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->aj:Lcom/spotify/mobile/android/ui/l;
invoke-virtual {v0, p3}, Lcom/spotify/mobile/android/ui/l;->a(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->al:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ah:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a016a
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ar:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v11, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-object v7
:cond_16e
move v0, v9
goto/16 :goto_b1
nop
:array_172
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const v0, 0x7f0f0110
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 9
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V
if-eqz p1, :cond_87
const-string v0, "filter"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->e:Ljava/lang/String;
const-string v0, "list"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->Z:Landroid/os/Parcelable;
const-string v0, "can_sync"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->am:Z
:goto_1d
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ad:Lcom/spotify/mobile/android/util/cx;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ad:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->b:Lcom/spotify/mobile/android/util/cz;
sget-object v2, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->d:Lcom/spotify/mobile/android/util/cw;
sget-object v3, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->c:Ljava/util/List;
invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cw;->a(Lcom/spotify/mobile/android/util/cx;Lcom/spotify/mobile/android/util/cz;Lcom/spotify/mobile/android/util/cw;Ljava/util/List;)Lcom/spotify/mobile/android/util/cw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->f:Lcom/spotify/mobile/android/util/cw;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->e:Ljava/lang/String;
if-nez v0, :cond_3d
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->e:Ljava/lang/String;
:cond_3d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->f:Lcom/spotify/mobile/android/util/cw;
if-nez v0, :cond_45
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->d:Lcom/spotify/mobile/android/util/cw;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->f:Lcom/spotify/mobile/android/util/cw;
:cond_45
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aI:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ac:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ac:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->al:Lcom/spotify/mobile/android/util/tracking/n;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->al:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ac:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ab:Lcom/spotify/mobile/android/util/dw;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ac:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const-string v3, "artists"
iget-boolean v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->am:Z
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ad:Lcom/spotify/mobile/android/util/cx;
sget-object v6, Lcom/spotify/mobile/android/spotlets/collection/b/c;->b:Lcom/spotify/mobile/android/util/cz;
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/collection/b/c;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;ZLcom/spotify/mobile/android/util/cx;Lcom/spotify/mobile/android/util/cz;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->aa:Lcom/spotify/mobile/android/spotlets/collection/b/c;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->aa:Lcom/spotify/mobile/android/spotlets/collection/b/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->an:Lcom/spotify/mobile/android/spotlets/collection/b/d;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->a(Lcom/spotify/mobile/android/spotlets/collection/b/d;)V
return-void
:cond_87
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/service/session/e;->a(Landroid/app/Activity;)Lcom/spotify/mobile/android/service/session/e;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->i()Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->am:Z
goto :goto_1d
.end method
.method public final a(Landroid/view/Menu;)V
.registers 3
invoke-interface {p1}, Landroid/view/Menu;->clear()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->aj:Lcom/spotify/mobile/android/ui/l;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/l;->a(Landroid/view/Menu;)V
return-void
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ae:Lcom/spotify/mobile/android/spotlets/collection/adapter/b;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/collection/adapter/b;->a(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->F()V
return-void
.end method
.method public final b(Z)V
.registers 3
const/4 v0, 0x1
invoke-super {p0, v0}, Landroid/support/v4/app/Fragment;->b(Z)V
return-void
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V
const-string v0, "filter"
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->e:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->g:Landroid/widget/ListView;
if-eqz v0, :cond_19
const-string v0, "list"
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->g:Landroid/widget/ListView;
invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->aj:Lcom/spotify/mobile/android/ui/l;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/l;->b(Landroid/os/Bundle;)V
const-string v0, "can_sync"
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->am:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->al:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V
return-void
.end method
.method public final f()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ag:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->g:Landroid/widget/ListView;
instance-of v0, v0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->g:Landroid/widget/ListView;
check-cast v0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ag:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->a(Landroid/view/View;)V
:goto_14
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->al:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V
invoke-super {p0}, Landroid/support/v4/app/Fragment;->f()V
return-void
:cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->g:Landroid/widget/ListView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ag:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z
goto :goto_14
.end method
.method public final h_()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ab:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->a(Z)V
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->F()V
return-void
.end method
.method public final i_()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ab:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ag:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a()V
return-void
.end method
.method public final y()V
.registers 4
invoke-super {p0}, Landroid/support/v4/app/Fragment;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ag:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->ad:Lcom/spotify/mobile/android/util/cx;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->b:Lcom/spotify/mobile/android/util/cz;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->f:Lcom/spotify/mobile/android/util/cw;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/cw;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
return-void
.end method
.method public final z()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/Fragment;->z()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/d;->aa:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->a()V
return-void
.end method