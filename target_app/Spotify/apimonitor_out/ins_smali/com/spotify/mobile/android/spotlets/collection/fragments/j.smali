.class public final Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
.super Landroid/support/v4/app/x;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/spotlets/collection/fragments/g;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.field private static final Y:Lcom/spotify/mobile/android/util/cz;
.field private static final Z:Ljava/util/List;
.field private static final aC:Lcom/spotify/mobile/android/ui/adapter/z;
.field private static final aa:Lcom/spotify/mobile/android/util/cw;
.field public static final i:Ljava/lang/String;
.field private aA:Lcom/spotify/mobile/android/util/tracking/n;
.field private final aB:Lcom/spotify/mobile/android/ui/contextmenu/f;
.field private aD:Z
.field private aE:Lcom/spotify/mobile/android/spotlets/collection/b/d;
.field private aF:Landroid/view/View$OnClickListener;
.field private aG:Lcom/spotify/mobile/android/ui/view/g;
.field private aH:Lcom/spotify/mobile/android/util/ds;
.field private aI:Lcom/spotify/mobile/android/ui/view/j;
.field private aJ:Landroid/view/View$OnClickListener;
.field private aK:Landroid/support/v4/app/z;
.field private aL:Landroid/support/v4/app/z;
.field private ab:Ljava/lang/String;
.field private ac:Lcom/spotify/mobile/android/util/cw;
.field private ad:Landroid/widget/ListView;
.field private ae:Lcom/spotify/android/paste/widget/EmptyView;
.field private af:Lcom/spotify/android/paste/widget/EmptyView;
.field private ag:Lcom/spotify/android/paste/widget/EmptyView;
.field private ah:Landroid/os/Parcelable;
.field private ai:I
.field private aj:Lcom/spotify/mobile/android/util/dr;
.field private ak:Lcom/spotify/mobile/android/util/dw;
.field private al:Lcom/spotify/mobile/android/util/ViewUri$Verified;
.field private am:Lcom/spotify/mobile/android/util/cx;
.field private an:I
.field private ao:Lcom/spotify/mobile/android/spotlets/collection/b/c;
.field private ap:Lcom/spotify/mobile/android/util/f;
.field private aq:Landroid/support/v4/widget/b;
.field private ar:Lcom/spotify/mobile/android/ui/adapter/o;
.field private as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
.field private at:Landroid/view/View;
.field private au:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
.field private av:Lcom/spotify/mobile/android/ui/view/LoadingView;
.field private aw:I
.field private ax:I
.field private ay:Lcom/spotify/mobile/android/ui/actions/a;
.field private az:Lcom/spotify/mobile/android/ui/actions/d;
.method static constructor <clinit>()V
.registers 4
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aM:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->i:Ljava/lang/String;
const-string v0, "tracks_sort_order"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->Y:Lcom/spotify/mobile/android/util/cz;
new-instance v0, Lcom/spotify/mobile/android/util/cw;
const-string v1, "time_added"
const v2, 0x7f0f03aa
invoke-direct {v0, v1, v2}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;I)V
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aa:Lcom/spotify/mobile/android/util/cw;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->Z:Ljava/util/List;
new-instance v1, Lcom/spotify/mobile/android/util/cw;
const-string v2, "name"
const v3, 0x7f0f03ab
invoke-direct {v1, v2, v3}, Lcom/spotify/mobile/android/util/cw;-><init>(Ljava/lang/String;I)V
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->Z:Ljava/util/List;
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aa:Lcom/spotify/mobile/android/util/cw;
invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$3;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$3;-><init>()V
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aC:Lcom/spotify/mobile/android/ui/adapter/z;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/x;-><init>()V
const/4 v0, 0x1
iput v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->an:I
const-class v0, Lcom/spotify/mobile/android/ui/actions/a;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/a;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ay:Lcom/spotify/mobile/android/ui/actions/a;
const-class v0, Lcom/spotify/mobile/android/ui/actions/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/actions/d;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->az:Lcom/spotify/mobile/android/ui/actions/d;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$1;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aB:Lcom/spotify/mobile/android/ui/contextmenu/f;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$4;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$4;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aE:Lcom/spotify/mobile/android/spotlets/collection/b/d;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$5;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$5;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aF:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$6;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$6;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aG:Lcom/spotify/mobile/android/ui/view/g;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$7;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$7;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aH:Lcom/spotify/mobile/android/util/ds;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$8;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$8;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aI:Lcom/spotify/mobile/android/ui/view/j;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$9;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$9;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aJ:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$10;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$10;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aK:Landroid/support/v4/app/z;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j$2;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aL:Landroid/support/v4/app/z;
return-void
.end method
.method public static E()Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
.registers 2
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;-><init>()V
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->c_(Landroid/os/Bundle;)V
return-object v0
.end method
.method static synthetic F()Lcom/spotify/mobile/android/util/cz;
.registers 1
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->Y:Lcom/spotify/mobile/android/util/cz;
return-object v0
.end method
.method private G()V
.registers 4
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->n()Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_11
instance-of v1, v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
if-eqz v1, :cond_11
check-cast v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->a(Ljava/lang/String;)V
:goto_10
return-void
:cond_11
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
const v2, 0x7f0f0117
invoke-virtual {v1, v2}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-interface {v0, p0, v1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->c()V
goto :goto_10
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ai:I
return p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Lcom/spotify/mobile/android/util/ViewUri$Verified;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->al:Lcom/spotify/mobile/android/util/ViewUri$Verified;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;Lcom/spotify/mobile/android/util/cw;)Lcom/spotify/mobile/android/util/cw;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ac:Lcom/spotify/mobile/android/util/cw;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ab:Ljava/lang/String;
return-object p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aw:I
return p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)V
.registers 5
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->o()Z
move-result v0
if-eqz v0, :cond_13
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a016e
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aK:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->b(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
:cond_13
return-void
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;I)I
.registers 2
iput p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ax:I
return p1
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Lcom/spotify/mobile/android/spotlets/collection/b/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ao:Lcom/spotify/mobile/android/spotlets/collection/b/c;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ad:Landroid/widget/ListView;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->an:I
return v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ai:I
return v0
.end method
.method static synthetic g(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)I
.registers 4
const/4 v2, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->at:Landroid/view/View;
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->at:Landroid/view/View;
instance-of v0, v0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->at:Landroid/view/View;
check-cast v0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->e()Z
move-result v1
if-eqz v1, :cond_27
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->getHeight()I
move-result v1
if-nez v1, :cond_25
invoke-virtual {v0, v2, v2}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->measure(II)V
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/StickyHeaderView;->getMeasuredHeight()I
move-result v0
:goto_22
return v0
:cond_23
move v0, v2
goto :goto_22
:cond_25
move v0, v1
goto :goto_22
:cond_27
move v0, v2
goto :goto_22
.end method
.method static synthetic h(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Lcom/spotify/mobile/android/util/cw;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ac:Lcom/spotify/mobile/android/util/cw;
return-object v0
.end method
.method static synthetic i(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Lcom/spotify/mobile/android/util/cx;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->am:Lcom/spotify/mobile/android/util/cx;
return-object v0
.end method
.method static synthetic j(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Lcom/spotify/mobile/android/ui/actions/a;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ay:Lcom/spotify/mobile/android/ui/actions/a;
return-object v0
.end method
.method static synthetic k(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ab:Ljava/lang/String;
return-object v0
.end method
.method static synthetic l(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Lcom/spotify/mobile/android/ui/actions/d;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->az:Lcom/spotify/mobile/android/ui/actions/d;
return-object v0
.end method
.method static synthetic m(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Landroid/support/v4/widget/b;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aq:Landroid/support/v4/widget/b;
return-object v0
.end method
.method static synthetic n(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)V
.registers 6
const/4 v1, 0x0
const/16 v3, 0x8
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aq:Landroid/support/v4/widget/b;
invoke-virtual {v0}, Landroid/support/v4/widget/b;->a()Landroid/database/Cursor;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/provider/ac;->a(Landroid/database/Cursor;)Z
move-result v0
if-eqz v0, :cond_39
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aq:Landroid/support/v4/widget/b;
invoke-virtual {v0}, Landroid/support/v4/widget/b;->getCount()I
move-result v0
if-nez v0, :cond_3a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->b()Z
move-result v0
if-nez v0, :cond_3a
const/4 v0, 0x1
:goto_20
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ao:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-virtual {v2}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c()Z
move-result v2
if-eqz v2, :cond_3c
if-eqz v0, :cond_3c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ae:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v1}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->af:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v3}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ad:Landroid/widget/ListView;
:goto_36
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setVisibility(I)V
:cond_39
return-void
:cond_3a
move v0, v1
goto :goto_20
:cond_3c
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ae:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v2, v3}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->af:Lcom/spotify/android/paste/widget/EmptyView;
if-eqz v0, :cond_4f
move v2, v1
:goto_46
invoke-virtual {v4, v2}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ad:Landroid/widget/ListView;
if-eqz v0, :cond_51
move-object v0, v2
goto :goto_36
:cond_4f
move v2, v3
goto :goto_46
:cond_51
move v3, v1
move-object v0, v2
goto :goto_36
.end method
.method static synthetic o(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Landroid/os/Parcelable;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ah:Landroid/os/Parcelable;
return-object v0
.end method
.method static synthetic p(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Landroid/os/Parcelable;
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ah:Landroid/os/Parcelable;
return-object v0
.end method
.method static synthetic q(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Lcom/spotify/mobile/android/util/tracking/n;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aA:Lcom/spotify/mobile/android/util/tracking/n;
return-object v0
.end method
.method static synthetic r(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Lcom/spotify/mobile/android/ui/adapter/o;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ar:Lcom/spotify/mobile/android/ui/adapter/o;
return-object v0
.end method
.method static synthetic s(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Lcom/spotify/mobile/android/ui/view/LoadingView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->av:Lcom/spotify/mobile/android/ui/view/LoadingView;
return-object v0
.end method
.method static synthetic t(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
return-object v0
.end method
.method static synthetic u(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Lcom/spotify/android/paste/widget/EmptyView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ag:Lcom/spotify/android/paste/widget/EmptyView;
return-object v0
.end method
.method static synthetic v(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->G()V
return-void
.end method
.method static synthetic w(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aw:I
return v0
.end method
.method static synthetic x(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)I
.registers 2
iget v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ax:I
return v0
.end method
.method static synthetic y(Lcom/spotify/mobile/android/spotlets/collection/fragments/j;)Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->au:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
return-object v0
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 16
const/16 v5, 0x8
const/4 v4, 0x2
const/4 v11, 0x1
const/4 v10, 0x0
const/4 v9, 0x0
const v0, 0x7f03008b
invoke-virtual {p1, v0, p2, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
move-object v7, v0
check-cast v7, Landroid/view/ViewGroup;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ar:Lcom/spotify/mobile/android/ui/adapter/o;
new-instance v0, Lcom/spotify/mobile/android/ui/adapter/y;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aC:Lcom/spotify/mobile/android/ui/adapter/z;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aB:Lcom/spotify/mobile/android/ui/contextmenu/f;
invoke-direct {v0, v1, v2, v3}, Lcom/spotify/mobile/android/ui/adapter/y;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/ui/adapter/z;Lcom/spotify/mobile/android/ui/contextmenu/f;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aq:Landroid/support/v4/widget/b;
const v0, 0x102000a
invoke-virtual {v7, v0}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ad:Landroid/widget/ListView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ad:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getParent()Landroid/view/ViewParent;
move-result-object v0
move-object v8, v0
check-cast v8, Landroid/view/ViewGroup;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->af:Lcom/spotify/android/paste/widget/EmptyView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->af:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v5}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->af:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aF:Landroid/view/View$OnClickListener;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Landroid/view/View$OnClickListener;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ae:Lcom/spotify/android/paste/widget/EmptyView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ae:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v0, v5}, Lcom/spotify/android/paste/widget/EmptyView;->setVisibility(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ae:Lcom/spotify/android/paste/widget/EmptyView;
invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const-string v1, ""
invoke-static {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/b;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/android/paste/widget/EmptyView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ag:Lcom/spotify/android/paste/widget/EmptyView;
const v0, 0x7f030042
invoke-virtual {p1, v0, v10, v9}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
const v1, 0x7f0a025a
invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aF:Landroid/view/View$OnClickListener;
invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ar:Lcom/spotify/mobile/android/ui/adapter/o;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aq:Landroid/support/v4/widget/b;
invoke-virtual {v1, v2, v10, v9}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ar:Lcom/spotify/mobile/android/ui/adapter/o;
new-instance v2, Lcom/spotify/mobile/android/ui/adapter/t;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ag:Lcom/spotify/android/paste/widget/EmptyView;
invoke-direct {v2, v3, v9}, Lcom/spotify/mobile/android/ui/adapter/t;-><init>(Landroid/view/View;B)V
invoke-virtual {v1, v2, v10, v11}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ar:Lcom/spotify/mobile/android/ui/adapter/o;
new-instance v2, Lcom/spotify/mobile/android/ui/adapter/t;
invoke-direct {v2, v0, v9}, Lcom/spotify/mobile/android/ui/adapter/t;-><init>(Landroid/view/View;B)V
invoke-virtual {v1, v2, v10, v4}, Lcom/spotify/mobile/android/ui/adapter/o;->a(Landroid/widget/ListAdapter;Ljava/lang/String;I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ar:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v0, v9}, Lcom/spotify/mobile/android/ui/adapter/o;->d(I)Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ar:Lcom/spotify/mobile/android/ui/adapter/o;
new-array v1, v4, [I
fill-array-data v1, :array_194
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/adapter/o;->b([I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ab:Ljava/lang/String;
sget-object v2, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->Z:Ljava/util/List;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ac:Lcom/spotify/mobile/android/util/cw;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ao:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->b()Ljava/util/List;
move-result-object v4
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aI:Lcom/spotify/mobile/android/ui/view/j;
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ad:Landroid/widget/ListView;
move-object v0, p1
invoke-static/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Landroid/view/LayoutInflater;Ljava/lang/String;Ljava/util/List;Lcom/spotify/mobile/android/util/cw;Ljava/util/List;Lcom/spotify/mobile/android/ui/view/j;Landroid/widget/ListView;)Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->k()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f090012
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getColor(I)I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->al:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const-string v2, "tracks"
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
const v1, 0x7f0f022f
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(I)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/k;->a(Landroid/content/Context;)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->au:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->au:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aG:Lcom/spotify/mobile/android/ui/view/g;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;->a(Lcom/spotify/mobile/android/ui/view/g;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/k;->b(Landroid/content/Context;)Landroid/view/ViewGroup;
move-result-object v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->a(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_13a
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ad:Landroid/widget/ListView;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aJ:Landroid/view/View$OnClickListener;
invoke-static {v0, v2, v3}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->a(Landroid/content/Context;Landroid/widget/ListView;Landroid/view/View$OnClickListener;)Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->at:Landroid/view/View;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->at:Landroid/view/View;
check-cast v0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->at:Landroid/view/View;
check-cast v0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;
invoke-virtual {v0, v11}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->b(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->at:Landroid/view/View;
check-cast v0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->d()Landroid/view/ViewGroup;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
:cond_13a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->au:Lcom/spotify/mobile/android/ui/view/DownloadHeaderView;
invoke-virtual {v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ad:Landroid/widget/ListView;
invoke-virtual {v0, v1, v10, v9}, Landroid/widget/ListView;->addHeaderView(Landroid/view/View;Ljava/lang/Object;Z)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a(Landroid/view/LayoutInflater;)Lcom/spotify/mobile/android/ui/view/LoadingView;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->av:Lcom/spotify/mobile/android/ui/view/LoadingView;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->av:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v8, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ad:Landroid/widget/ListView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ar:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ad:Landroid/widget/ListView;
invoke-virtual {v0, v11}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ad:Landroid/widget/ListView;
new-instance v1, Lcom/spotify/mobile/android/ui/contextmenu/b;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v1, v2}, Lcom/spotify/mobile/android/ui/contextmenu/b;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v1}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aA:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->av:Lcom/spotify/mobile/android/ui/view/LoadingView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/LoadingView;->a()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a015d
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aL:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v10, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a016e
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aK:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v10, v2}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-object v7
:array_194
.array-data 0x4
0x1t 0x0t 0x0t 0x0t
0x2t 0x0t 0x0t 0x0t
.end array-data
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const v0, 0x7f0f0117
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 9
invoke-super {p0, p1}, Landroid/support/v4/app/x;->a(Landroid/os/Bundle;)V
if-eqz p1, :cond_c1
const-string v0, "filter"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ab:Ljava/lang/String;
const-string v0, "list"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ah:Landroid/os/Parcelable;
const-string v0, "can_download"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aD:Z
:goto_1d
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->am:Lcom/spotify/mobile/android/util/cx;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->am:Lcom/spotify/mobile/android/util/cx;
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->Y:Lcom/spotify/mobile/android/util/cz;
sget-object v2, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aa:Lcom/spotify/mobile/android/util/cw;
sget-object v3, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->Z:Ljava/util/List;
invoke-static {v0, v1, v2, v3}, Lcom/spotify/mobile/android/util/cw;->a(Lcom/spotify/mobile/android/util/cx;Lcom/spotify/mobile/android/util/cz;Lcom/spotify/mobile/android/util/cw;Ljava/util/List;)Lcom/spotify/mobile/android/util/cw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ac:Lcom/spotify/mobile/android/util/cw;
const/4 v0, -0x1
iput v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ai:I
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->h()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_68
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ab:Ljava/lang/String;
if-nez v1, :cond_52
const-string v1, "filter"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_52
const-string v1, "filter"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ab:Ljava/lang/String;
:cond_52
const-string v1, "sort_order"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_68
const-string v1, "sort_order"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->Z:Ljava/util/List;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/cw;->a(Ljava/lang/String;Ljava/util/List;)Lcom/spotify/mobile/android/util/cw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ac:Lcom/spotify/mobile/android/util/cw;
:cond_68
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ab:Ljava/lang/String;
if-nez v0, :cond_70
const-string v0, ""
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ab:Ljava/lang/String;
:cond_70
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ac:Lcom/spotify/mobile/android/util/cw;
if-nez v0, :cond_78
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aa:Lcom/spotify/mobile/android/util/cw;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ac:Lcom/spotify/mobile/android/util/cw;
:cond_78
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aM:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->al:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->al:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/content/Context;Ljava/lang/String;)Lcom/spotify/mobile/android/util/tracking/n;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aA:Lcom/spotify/mobile/android/util/tracking/n;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aA:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->b(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->al:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/dy;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;)Lcom/spotify/mobile/android/util/dw;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ak:Lcom/spotify/mobile/android/util/dw;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->al:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const-string v3, "tracks"
iget-boolean v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aD:Z
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->am:Lcom/spotify/mobile/android/util/cx;
sget-object v6, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c:Lcom/spotify/mobile/android/util/cz;
invoke-direct/range {v0 .. v6}, Lcom/spotify/mobile/android/spotlets/collection/b/c;-><init>(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Ljava/lang/String;ZLcom/spotify/mobile/android/util/cx;Lcom/spotify/mobile/android/util/cz;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ao:Lcom/spotify/mobile/android/spotlets/collection/b/c;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ao:Lcom/spotify/mobile/android/spotlets/collection/b/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aE:Lcom/spotify/mobile/android/spotlets/collection/b/d;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->a(Lcom/spotify/mobile/android/spotlets/collection/b/d;)V
new-instance v0, Lcom/spotify/mobile/android/util/f;
invoke-direct {v0}, Lcom/spotify/mobile/android/util/f;-><init>()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ap:Lcom/spotify/mobile/android/util/f;
return-void
:cond_c1
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/service/session/e;->a(Landroid/app/Activity;)Lcom/spotify/mobile/android/service/session/e;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->i()Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aD:Z
goto/16 :goto_1d
.end method
.method public final a(Landroid/view/Menu;)V
.registers 9
invoke-interface {p1}, Landroid/view/Menu;->clear()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/dv;->b(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aq:Landroid/support/v4/widget/b;
if-eqz v0, :cond_31
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aq:Landroid/support/v4/widget/b;
invoke-virtual {v0}, Landroid/support/v4/widget/b;->getCount()I
move-result v0
if-lez v0, :cond_31
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->al:Lcom/spotify/mobile/android/util/ViewUri$Verified;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ab:Ljava/lang/String;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ao:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-virtual {v3}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c()Z
move-result v3
invoke-static {v2, v3}, Lcom/spotify/mobile/android/provider/c;->a(Ljava/lang/String;Z)Landroid/net/Uri;
move-result-object v2
invoke-static {v0, p1, v1, v2}, Lcom/spotify/mobile/android/ui/menus/a;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;)Landroid/view/View;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->at:Landroid/view/View;
:cond_31
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->al:Lcom/spotify/mobile/android/util/ViewUri$Verified;
sget-object v3, Lcom/spotify/mobile/android/provider/c;->a:Landroid/net/Uri;
sget-object v4, Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;->r:Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;
iget v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aw:I
iget v6, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ax:I
move-object v1, p1
invoke-static/range {v0 .. v6}, Lcom/spotify/mobile/android/ui/menus/e;->a(Landroid/content/Context;Landroid/view/Menu;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;Lcom/spotify/mobile/android/util/SpotifyLink$LinkType;II)V
return-void
.end method
.method public final a(Landroid/view/View;Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1, p2}, Landroid/support/v4/app/x;->a(Landroid/view/View;Landroid/os/Bundle;)V
return-void
.end method
.method public final a(Landroid/widget/ListView;Landroid/view/View;IJ)V
.registers 13
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ad:Landroid/widget/ListView;
invoke-virtual {v0}, Landroid/widget/ListView;->getHeaderViewsCount()I
move-result v0
sub-int v0, p3, v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ar:Lcom/spotify/mobile/android/ui/adapter/o;
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/ui/adapter/o;->b(I)I
move-result v0
packed-switch v0, :pswitch_data_84
:goto_11
return-void
:pswitch_12
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ab:Ljava/lang/String;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ao:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->c()Z
move-result v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/provider/c;->a(Ljava/lang/String;Z)Landroid/net/Uri;
move-result-object v1
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/model/n;
sget-object v2, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->h:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v2}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v2
if-eqz v2, :cond_5d
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ay:Lcom/spotify/mobile/android/ui/actions/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->al:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const-string v3, "tracks"
sget-object v4, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->ax:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;
move-result-object v0
invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
invoke-static {v3, v4, v0, v5}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v0
invoke-static {v1, v2, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->at:Landroid/view/View;
instance-of v0, v0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;
if-eqz v0, :cond_55
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->at:Landroid/view/View;
check-cast v0, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->b()V
goto :goto_11
:cond_55
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ap:Lcom/spotify/mobile/android/util/f;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->at:Landroid/view/View;
invoke-static {v0, v1}, Lcom/spotify/mobile/android/ui/view/ShufflePlayHeaderView;->a(Lcom/spotify/mobile/android/util/f;Landroid/view/View;)V
goto :goto_11
:cond_5d
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ay:Lcom/spotify/mobile/android/ui/actions/a;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->al:Lcom/spotify/mobile/android/util/ViewUri$Verified;
const-string v4, "tracks"
sget-object v5, Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;->aw:Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;
invoke-interface {v0}, Lcom/spotify/mobile/android/model/n;->getTrackUri()Ljava/lang/String;
move-result-object v0
invoke-static {p4, p5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v6
invoke-static {v4, v5, v0, v6}, Lcom/spotify/mobile/android/util/ClientEventFactory;->a(Ljava/lang/String;Lcom/spotify/mobile/android/util/ClientEvent$SubEvent;Ljava/lang/String;Ljava/lang/Long;)Lcom/spotify/mobile/android/util/ClientEvent;
move-result-object v0
invoke-static {v2, v3, v0}, Lcom/spotify/mobile/android/ui/actions/a;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Lcom/spotify/mobile/android/util/ClientEvent;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->az:Lcom/spotify/mobile/android/ui/actions/d;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->al:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-static {v0, v2, v1, p4, p5}, Lcom/spotify/mobile/android/ui/actions/d;->a(Landroid/content/Context;Lcom/spotify/mobile/android/util/ViewUri$Verified;Landroid/net/Uri;J)V
goto :goto_11
:pswitch_data_84
.packed-switch 0x0
:pswitch_12
.end packed-switch
.end method
.method public final b(Z)V
.registers 3
const/4 v0, 0x1
invoke-super {p0, v0}, Landroid/support/v4/app/x;->b(Z)V
return-void
.end method
.method public final c(Landroid/os/Bundle;)V
.registers 7
invoke-super {p0, p1}, Landroid/support/v4/app/x;->c(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->h()Landroid/os/Bundle;
move-result-object v0
if-eqz v0, :cond_42
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->h()Landroid/os/Bundle;
move-result-object v0
const-string v1, "lookup_track_uri"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_42
new-instance v0, Lcom/spotify/mobile/android/util/dr;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->u()Landroid/support/v4/app/y;
move-result-object v2
const v3, 0x7f0a016f
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aH:Lcom/spotify/mobile/android/util/ds;
invoke-direct {v0, v1, v2, v3, v4}, Lcom/spotify/mobile/android/util/dr;-><init>(Landroid/content/Context;Landroid/support/v4/app/y;ILcom/spotify/mobile/android/util/ds;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aj:Lcom/spotify/mobile/android/util/dr;
invoke-static {}, Lcom/spotify/mobile/android/provider/c;->a()Landroid/net/Uri;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->h()Landroid/os/Bundle;
move-result-object v1
const-string v2, "lookup_track_uri"
invoke-virtual {v1, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aj:Lcom/spotify/mobile/android/util/dr;
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ac:Lcom/spotify/mobile/android/util/cw;
invoke-virtual {v3}, Lcom/spotify/mobile/android/util/cw;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v0, v1, v3}, Lcom/spotify/mobile/android/util/dr;->a(Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V
:cond_42
return-void
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/x;->d(Landroid/os/Bundle;)V
const-string v0, "filter"
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ab:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ad:Landroid/widget/ListView;
if-eqz v0, :cond_19
const-string v0, "list"
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ad:Landroid/widget/ListView;
invoke-virtual {v1}, Landroid/widget/ListView;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
:cond_19
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aA:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/util/tracking/n;->a(Landroid/os/Bundle;)V
const-string v0, "can_download"
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aD:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
return-void
.end method
.method public final f()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-static {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a(Lcom/spotify/mobile/android/ui/view/FilterHeaderView;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ad:Landroid/widget/ListView;
instance-of v0, v0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ad:Landroid/widget/ListView;
check-cast v0, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/view/HideableHeadersListView;->a(Landroid/view/View;)V
:goto_14
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->aA:Lcom/spotify/mobile/android/util/tracking/n;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/tracking/n;->c()V
invoke-super {p0}, Landroid/support/v4/app/x;->f()V
return-void
:cond_1d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ad:Landroid/widget/ListView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0, v1}, Landroid/widget/ListView;->removeHeaderView(Landroid/view/View;)Z
goto :goto_14
.end method
.method public final h_()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ak:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->a()V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->a(Z)V
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->G()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->al:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/tracking/k;->a(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public final i_()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ak:Lcom/spotify/mobile/android/util/dw;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/dw;->b()V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->a(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a()V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->al:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/spotify/mobile/android/util/tracking/k;->b(Landroid/content/Context;Ljava/lang/String;)V
return-void
.end method
.method public final y()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->as:Lcom/spotify/mobile/android/ui/view/FilterHeaderView;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/view/FilterHeaderView;->a()V
return-void
.end method
.method public final z()V
.registers 2
invoke-super {p0}, Landroid/support/v4/app/x;->z()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/j;->ao:Lcom/spotify/mobile/android/spotlets/collection/b/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/b/c;->a()V
return-void
.end method