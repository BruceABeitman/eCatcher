.class public final Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
.super Landroid/support/v4/app/x;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/collection/fragments/g;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.implements Lcom/spotify/mobile/android/ui/n;
.field private static final Y:Lcom/spotify/mobile/android/util/cz;
.field private static final Z:Ljava/util/List;
.field private static final aa:Lcom/spotify/mobile/android/util/cw;
.field public static final i:Ljava/lang/String;
.field private ab:Ljava/lang/String;
.field private ac:Lcom/spotify/mobile/android/util/cw;
.field private ad:Landroid/widget/ListView;
.field private ae:Lcom/spotify/android/paste/widget/EmptyView;
.field private af:Lcom/spotify/android/paste/widget/EmptyView;
.field private ag:Lcom/spotify/android/paste/widget/EmptyView;
.field private ah:Lcom/spotify/mobile/android/ui/view/LoadingView;
.field private ai:Landroid/os/Parcelable;
.field private aj:Lcom/spotify/mobile/android/util/dw;
.field private ak:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field private al:Lcom/spotify/mobile/android/util/cx;
.field private am:Lcom/spotify/mobile/android/ui/adapter/o;
.field private an:Landroid/support/v4/widget/b;
.field private ao:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
.field private ap:Lcom/spotify/mobile/android/spotlets/collection/b/c;
.field private aq:Lcom/spotify/mobile/android/ui/l;
.field private ar:Lcom/spotify/mobile/android/util/ar;
.field private as:Lcom/spotify/mobile/android/ui/actions/a;
.field private at:Lcom/spotify/mobile/android/util/tracking/n;
.field private au:Lcom/spotify/mobile/android/ui/contextmenu/f;
.field private av:Z
.field private aw:Lcom/spotify/mobile/android/spotlets/collection/b/d;
.field private ax:Landroid/view/View$OnClickListener;
.field private ay:Lcom/spotify/mobile/android/ui/view/j;
.field private az:Landroid/support/v4/app/z;
.method static constructor <clinit>()V
.registers 5
const/4 v4, 0x0
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aH:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->i:Ljava/lang/String;
const-string v0, "playlists_sort_order"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->Y:Lcom/spotify/mobile/android/util/cz;
new-instance v0, Lcom/spotify/mobile/android/util/cw;
const-string v1, ""
const v2, 0x7f0f03a6
invoke-direct {v0, v1, v2, v4}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;IZ)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aa:Lcom/spotify/mobile/android/util/cw;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->Z:Ljava/util/List;
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aa:Lcom/spotify/mobile/android/util/cw;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->Z:Ljava/util/List;
new-instance v1, Lcom/spotify/mobile/android/util/cw;
const-string v2, "name"
const v3, 0x7f0f03a9
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;I)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->Z:Ljava/util/List;
new-instance v1, Lcom/spotify/mobile/android/util/cw;
const-string v2, "most_played_rank"
const v3, 0x7f0f03a8
invoke-direct {v1, v2, v3, v4}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;IZ)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->as:Lcom/spotify/mobile/android/ui/actions/a;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$1;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->au:Lcom/spotify/mobile/android/ui/contextmenu/f;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$3;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aw:Lcom/spotify/mobile/android/spotlets/collection/b/d;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$4;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$4;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ax:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$5;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$5;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ay:Lcom/spotify/mobile/android/ui/view/j;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$6;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$6;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->az:Landroid/support/v4/app/z;
return-void
.end method
.method public static E()Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
.registers 2
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;-><init>()V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->c_(Landroid/os/Bundle;)V
return-object v0
.end method
.method private F()V
.registers 4
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->n()Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_23
instance-of v1, v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
if-eqz v1, :cond_23
const/4 v1, 0x0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aq:Lcom/spotify/mobile/android/ui/l;
if-eqz v2, :cond_1d
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aq:Lcom/spotify/mobile/android/ui/l;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/l;->b()Z
move-result v2
if-eqz v2, :cond_1d
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aq:Lcom/spotify/mobile/android/ui/l;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/l;->a()Ljava/lang/String;
move-result-object v1
:cond_1d
check-cast v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->a(Ljava/lang/String;)V
:goto_22
return-void
:cond_23
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v2, 0x7f0f02ea
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, p0, v1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->c()V
goto :goto_22
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Lcom/spotify/mobile/android/spotlets/collection/b/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ap:Lcom/spotify/mobile/android/spotlets/collection/b/c;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;Lcom/spotify/mobile/android/util/cw;)Lcom/spotify/mobile/android/util/cw;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ac:Lcom/spotify/mobile/android/util/cw;
return-object p1
.end method
.method public static a(Lcom/spotify/mobile/android/util/cx;)Lcom/spotify/mobile/android/util/cw;
.registers 4
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->Y:Lcom/spotify/mobile/android/util/cz;
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aa:Lcom/spotify/mobile/android/util/cw;
sget-object v2, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->Z:Ljava/util/List;
invoke-static {p0, v0, v1, v2}, Lcom/spotify/mobile/android/util/cw;->a(Lcom/spotify/mobile/android/util/cx;Lcom/spotify/mobile/android/util/cz;Lcom/spotify/mobile/android/util/cw;Ljava/util/List;)Lcom/spotify/mobile/android/util/cw;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ab:Ljava/lang/String;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;I)V
.registers 9
const/4 v6, 0x2
const/16 v4, 0x8
const/4 v2, 0x1
const/4 v3, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ao:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b()Z
move-result v0
if-nez v0, :cond_15
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ap:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c()Z
move-result v0
if-eqz v0, :cond_65
:cond_15
move v0, v2
:goto_16
if-nez p1, :cond_67
if-eqz v0, :cond_67
move v1, v2
:goto_1b
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ap:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c()Z
move-result v0
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ad:Landroid/widget/ListView;
instance-of v0, v0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;
if-eqz v0, :cond_30
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ad:Landroid/widget/ListView;
check-cast v0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->a()V
:cond_30
if-nez p1, :cond_69
if-nez v1, :cond_69
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->af:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v4}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ae:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v3}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ad:Landroid/widget/ListView;
invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aq:Lcom/spotify/mobile/android/ui/l;
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/l;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->am:Lcom/spotify/mobile/android/ui/adapter/o;
new-array v1, v2, [I
aput v2, v1, v3
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V
:goto_51
if-eqz p1, :cond_ef
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ap:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c()Z
move-result v0
if-eqz v0, :cond_ef
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->am:Lcom/spotify/mobile/android/ui/adapter/o;
new-array v1, v2, [I
aput v6, v1, v3
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->d([I)V
:goto_64
return-void
:cond_65
move v0, v3
goto :goto_16
:cond_67
move v1, v3
goto :goto_1b
:cond_69
if-eqz v1, :cond_a3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ao:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b()Z
move-result v0
if-eqz v0, :cond_a3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->af:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v4}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ae:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v4}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ad:Landroid/widget/ListView;
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aq:Lcom/spotify/mobile/android/ui/l;
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/l;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->am:Lcom/spotify/mobile/android/ui/adapter/o;
new-array v1, v2, [I
aput v2, v1, v3
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->d([I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ag:Lcom/spotify/android/paste/widget/EmptyView;
const v1, 0x7f0f02ce
new-array v4, v2, [Ljava/lang/Object;
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ab:Ljava/lang/String;
aput-object v5, v4, v3
invoke-virtual {p0, v1, v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->a(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->a(Ljava/lang/CharSequence;)V
goto :goto_51
:cond_a3
if-eqz v1, :cond_cb
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ap:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c()Z
move-result v0
if-eqz v0, :cond_cb
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->af:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v3}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ae:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v4}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ad:Landroid/widget/ListView;
invoke-virtual {v0, v4}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aq:Lcom/spotify/mobile/android/ui/l;
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/l;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->am:Lcom/spotify/mobile/android/ui/adapter/o;
new-array v1, v2, [I
aput v2, v1, v3
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V
goto :goto_51
:cond_cb
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->af:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v4}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ae:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v4}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ad:Landroid/widget/ListView;
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aq:Lcom/spotify/mobile/android/ui/l;
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/l;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->am:Lcom/spotify/mobile/android/ui/adapter/o;
new-array v1, v2, [I
aput v2, v1, v3
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->am:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v0, v3}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z
goto/16 :goto_51
:cond_ef
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->am:Lcom/spotify/mobile/android/ui/adapter/o;
new-array v1, v2, [I
aput v6, v1, v3
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V
goto/16 :goto_64
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ak:Lcom/spotify/mobile/android/util/ViewUri$Verified;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Landroid/os/Parcelable;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ai:Landroid/os/Parcelable;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ad:Landroid/widget/ListView;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Landroid/os/Parcelable;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ai:Landroid/os/Parcelable;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Lcom/spotify/mobile/android/ui/l;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aq:Lcom/spotify/mobile/android/ui/l;
return-object v0
.end method
.method static synthetic g(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Landroid/support/v4/widget/b;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->an:Landroid/support/v4/widget/b;
return-object v0
.end method
.method static synthetic h(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)V
.registers 5
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->o()Z
move-result v0
if-eqz v0, :cond_13
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a016c
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->az:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->b(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
:cond_13
return-void
.end method
.method static synthetic i(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Lcom/spotify/mobile/android/util/tracking/n;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->at:Lcom/spotify/mobile/android/util/tracking/n;
return-object v0
.end method
.method static synthetic j(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Lcom/spotify/mobile/android/ui/view/LoadingView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ah:Lcom/spotify/mobile/android/ui/view/LoadingView;
return-object v0
.end method
.method static synthetic k(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Lcom/spotify/mobile/android/util/ar;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ar:Lcom/spotify/mobile/android/util/ar;
return-object v0
.end method
.method static synthetic l(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ab:Ljava/lang/String;
return-object v0
.end method
.method static synthetic m(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)Lcom/spotify/mobile/android/util/cw;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ac:Lcom/spotify/mobile/android/util/cw;
return-object v0
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final a(Ljava/lang/String;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
.registers 5
new-instance v0, Lcom/spotify/mobile/android/util/SpotifyLink;
invoke-direct {v0, p1}, Lcom/spotify/mobile/android/util/SpotifyLink;-><init>(Ljava/lang/String;)V
new-instance v1, Lcom/spotify/mobile/android/ui/d;
invoke-direct {v1}, Lcom/spotify/mobile/android/ui/d;-><init>()V
invoke-static {v0, p2}, Lcom/spotify/mobile/android/ui/d;->a(Lcom/spotify/mobile/android/util/SpotifyLink;Ljava/lang/String;)Landroid/support/v4/app/Fragment;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 14
const/16 v6, 0x8
const/4 v5, 0x2
const/4 v9, 0x1
const/4 v8, 0x0
const/4 v4, 0x0
const v0, 0x7f03008b
invoke-virtual {p1, v0, p2, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
move-object v7, v0
check-cast v7, Landroid/view/ViewGroup;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/m;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->au:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/ui/adapter/m;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/contextmenu/f;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->an:Landroid/support/v4/widget/b;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const-string v1, ""
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ag:Lcom/spotify/android/paste/widget/EmptyView;
const v0, 0x7f030042
invoke-virtual {p1, v0, v8, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a025a
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ax:Landroid/view/View$OnClickListener;
invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v1, Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v1, v2}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->am:Lcom/spotify/mobile/android/ui/adapter/o;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->am:Lcom/spotify/mobile/android/ui/adapter/o;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->an:Landroid/support/v4/widget/b;
invoke-virtual {v1, v2, v8, v4}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->am:Lcom/spotify/mobile/android/ui/adapter/o;
new-instance v2, Lcom/spotify/mobile/android/ui/adapter/t;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ag:Lcom/spotify/android/paste/widget/EmptyView;
invoke-direct {v2, v3, v4}, Lcom/spotify/mobile/android/ui/adapter/t;-><init>(Landroid/view/View;B)V
invoke-virtual {v1, v2, v8, v9}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->am:Lcom/spotify/mobile/android/ui/adapter/o;
new-instance v2, Lcom/spotify/mobile/android/ui/adapter/t;
invoke-direct {v2, v0, v4}, Lcom/spotify/mobile/android/ui/adapter/t;-><init>(Landroid/view/View;B)V
invoke-virtual {v1, v2, v8, v5}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->am:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v0, v4}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->am:Lcom/spotify/mobile/android/ui/adapter/o;
new-array v1, v5, [I
fill-array-data v1, :array_148
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V
const v0, 0x102000a
invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ad:Landroid/widget/ListView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ad:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ad:Landroid/widget/ListView;
const-string v2, "playlists"
invoke-virtual {v1, v2}, Landroid/widget/ListView;->setTag(Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;)Lcom/spotify/mobile/android/ui/view/LoadingView;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ah:Lcom/spotify/mobile/android/ui/view/LoadingView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ah:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->e(Landroid/content/Context;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ae:Lcom/spotify/android/paste/widget/EmptyView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ae:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v1, v6}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ae:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ax:Landroid/view/View$OnClickListener;
invoke-static {v1, v2}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Landroid/view/View$OnClickListener;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->af:Lcom/spotify/android/paste/widget/EmptyView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->af:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v1, v6}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->af:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ab:Ljava/lang/String;
sget-object v2, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->Z:Ljava/util/List;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ac:Lcom/spotify/mobile/android/util/cw;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ap:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->b()Ljava/util/List;
move-result-object v4
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ay:Lcom/spotify/mobile/android/ui/view/j;
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ad:Landroid/widget/ListView;
move-object v0, p1
invoke-static/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/util/cw;Ljava/util/List;Lcom/spotify/mobile/android/ui/view/j;Landroid/widget/ListView;)Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ao:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ao:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->k()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f090012
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ao:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ak:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const-string v2, "playlists"
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ao:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
const v1, 0x7f0f022e
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ad:Landroid/widget/ListView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->am:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ad:Landroid/widget/ListView;
invoke-virtual {v0, v9}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ad:Landroid/widget/ListView;
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/b;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/b;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->am:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->a(Landroid/widget/ListAdapter;)V
new-instance v0, Lcom/spotify/mobile/android/ui/l;
invoke-direct {v0, p0, p0, v7}, Lcom/spotify/mobile/android/ui/l;-><init>(Landroid/support/v4/app/Fragment;Lcom/spotify/mobile/android/ui/n;Landroid/view/View;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aq:Lcom/spotify/mobile/android/ui/l;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aq:Lcom/spotify/mobile/android/ui/l;
invoke-virtual {v0, p3}, Lcom/spotify/mobile/android/ui/l;->a(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->at:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ah:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a016c
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->az:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v8, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-object v7
nop
:array_148
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const v0, 0x7f0f02ea
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 9
invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V
if-eqz p1, :cond_94
const-string v0, "filter"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ab:Ljava/lang/String;
const-string v0, "list"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ai:Landroid/os/Parcelable;
const-string v0, "can_download"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->av:Z
:goto_1d
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->al:Lcom/spotify/mobile/android/util/cx;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->al:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->Y:Lcom/spotify/mobile/android/util/cz;
sget-object v2, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aa:Lcom/spotify/mobile/android/util/cw;
sget-object v3, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->Z:Ljava/util/List;
invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cw;->a(Lcom/spotify/mobile/android/util/cx;Lcom/spotify/mobile/android/util/cz;Lcom/spotify/mobile/android/util/cw;Ljava/util/List;)Lcom/spotify/mobile/android/util/cw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ac:Lcom/spotify/mobile/android/util/cw;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ab:Ljava/lang/String;
if-nez v0, :cond_3d
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ab:Ljava/lang/String;
:cond_3d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ac:Lcom/spotify/mobile/android/util/cw;
if-nez v0, :cond_45
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aa:Lcom/spotify/mobile/android/util/cw;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ac:Lcom/spotify/mobile/android/util/cw;
:cond_45
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aH:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ak:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ak:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->at:Lcom/spotify/mobile/android/util/tracking/n;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->at:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ak:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aj:Lcom/spotify/mobile/android/util/dw;
new-instance v0, Lcom/spotify/mobile/android/util/ar;
const/4 v1, 0x1
new-instance v2, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$2;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i$2;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/i;)V
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/ar;-><init>(ILcom/spotify/mobile/android/util/as;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ar:Lcom/spotify/mobile/android/util/ar;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ak:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const-string v3, "playlists"
iget-boolean v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->av:Z
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->al:Lcom/spotify/mobile/android/util/cx;
sget-object v6, Lcom/spotify/mobile/android/spotlets/collection/b/c;->d:Lcom/spotify/mobile/android/util/cz;
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/collection/b/c;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;ZLcom/spotify/mobile/android/util/cx;Lcom/spotify/mobile/android/util/cz;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ap:Lcom/spotify/mobile/android/spotlets/collection/b/c;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ap:Lcom/spotify/mobile/android/spotlets/collection/b/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aw:Lcom/spotify/mobile/android/spotlets/collection/b/d;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->a(Lcom/spotify/mobile/android/spotlets/collection/b/d;)V
return-void
:cond_94
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/service/session/e;->a(Landroid/app/Activity;)Lcom/spotify/mobile/android/service/session/e;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->i()Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->av:Z
goto/16 :goto_1d
.end method
.method public final a(Landroid/view/Menu;)V
.registers 4
invoke-interface {p1}, Landroid/view/Menu;->clear()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aq:Lcom/spotify/mobile/android/ui/l;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/l;->a(Landroid/view/Menu;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ak:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, p1, v1}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;)V
return-void
.end method
.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 14
add-int/lit8 v0, p3, -0x1
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->am:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/adapter/o;->b(I)I
move-result v1
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
instance-of v2, v0, Lcom/spotify/mobile/android/model/j;
if-nez v2, :cond_11
:goto_10
return-void
:cond_11
packed-switch v1, :pswitch_data_8e
new-instance v0, Ljava/lang/StringBuilder;
const-string v2, "Section id unknown: "
invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V
goto :goto_10
:pswitch_27
check-cast v0, Lcom/spotify/mobile/android/model/j;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/j;->u()Z
move-result v1
if-eqz v1, :cond_85
invoke-interface {v0}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_85
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->as:Lcom/spotify/mobile/android/ui/actions/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ak:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v3, Lcom/spotify/mobile/android/util/ViewUri$SubView;->a:Lcom/spotify/mobile/android/util/ViewUri$SubView;
const-string v4, "playlists"
sget-object v5, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aB:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;
move-result-object v6
const/4 v7, 0x0
invoke-static {v4, v5, v6, v7}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v4
invoke-static {v1, v2, v3, v4}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ViewUri$SubView;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aq:Lcom/spotify/mobile/android/ui/l;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/l;->b()Z
move-result v1
if-eqz v1, :cond_6d
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aq:Lcom/spotify/mobile/android/ui/l;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-interface {v0, v3}, Lcom/spotify/mobile/android/model/j;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/ui/l;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_10
:cond_6d
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-interface {v0}, Lcom/spotify/mobile/android/model/j;->a()Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-interface {v0, v3}, Lcom/spotify/mobile/android/model/j;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v2, v0}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->a(Landroid/content/Intent;)V
goto :goto_10
:cond_85
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dp;->h(Landroid/content/Context;)V
goto :goto_10
nop
:pswitch_data_8e
.packed-switch 0x0
:pswitch_27
.end packed-switch
.end method
.method public final a(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->an:Landroid/support/v4/widget/b;
check-cast v0, Lcom/spotify/mobile/android/ui/adapter/m;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/adapter/m;->a(Ljava/lang/String;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->F()V
return-void
.end method
.method public final b(Z)V
.registers 3
const/4 v0, 0x1
invoke-super {p0, v0}, Landroid/support/v4/app/x;->b(Z)V
return-void
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/x;->d(Landroid/os/Bundle;)V
const-string v0, "filter"
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ab:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ad:Landroid/widget/ListView;
if-eqz v0, :cond_19
const-string v0, "list"
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ad:Landroid/widget/ListView;
invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aq:Lcom/spotify/mobile/android/ui/l;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/ui/l;->b(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->at:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V
const-string v0, "can_download"
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->av:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
return-void
.end method
.method public final f()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ao:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ad:Landroid/widget/ListView;
instance-of v0, v0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ad:Landroid/widget/ListView;
check-cast v0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ao:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->a(Landroid/view/View;)V
:goto_14
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->at:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V
invoke-super {p0}, Landroid/support/v4/app/x;->f()V
return-void
:cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ad:Landroid/widget/ListView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ao:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z
goto :goto_14
.end method
.method public final h_()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aj:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->a(Z)V
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->F()V
return-void
.end method
.method public final i_()V
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->aj:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ao:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a()V
return-void
.end method
.method public final y()V
.registers 4
invoke-super {p0}, Landroid/support/v4/app/x;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->al:Lcom/spotify/mobile/android/util/cx;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->Y:Lcom/spotify/mobile/android/util/cz;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ac:Lcom/spotify/mobile/android/util/cw;
invoke-virtual {v2}, Lcom/spotify/mobile/android/util/cw;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
return-void
.end method
.method public final z()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->z()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/i;->ap:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->a()V
return-void
.end method