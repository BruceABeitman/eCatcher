.class public final Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.implements Lcom/spotify/mobile/android/ui/NavigationItem;
.implements Lcom/spotify/mobile/android/ui/fragments/e;
.field public static final a:Ljava/lang/String;
.field private static final d:Lcom/spotify/mobile/android/util/cz;
.field private static final e:[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
.field private static final f:[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
.field private static final g:[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
.field private Y:Lcom/spotify/mobile/android/spotlets/collection/fragments/f;
.field private Z:Lcom/spotify/mobile/android/spotlets/collection/fragments/g;
.field private aa:Ljava/lang/String;
.field private ab:Z
.field  b:Landroid/os/Handler;
.field  c:Landroid/support/v4/view/br;
.field private h:[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
.field private i:Landroid/support/v4/view/ViewPager;
.method static constructor <clinit>()V
.registers 7
const/4 v6, 0x4
const/4 v5, 0x3
const/4 v4, 0x2
const/4 v3, 0x1
const/4 v2, 0x0
sget-object v0, Lcom/spotify/mobile/android/util/ViewUri;->aG:Lcom/spotify/mobile/android/util/ViewUri$Verified;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/ViewUri$Verified;->toString()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->a:Ljava/lang/String;
const-string v0, "page"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->d:Lcom/spotify/mobile/android/util/cz;
new-array v0, v6, [Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->d:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->c:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
aput-object v1, v0, v5
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->e:[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
const/4 v0, 0x5
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->d:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->e:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
aput-object v1, v0, v5
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->c:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
aput-object v1, v0, v6
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->f:[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
const/4 v0, 0x5
new-array v0, v0, [Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->d:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
aput-object v1, v0, v2
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
aput-object v1, v0, v3
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->e:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
aput-object v1, v0, v4
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->b:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
aput-object v1, v0, v5
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->c:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
aput-object v1, v0, v6
sput-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->g:[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->Z:Lcom/spotify/mobile/android/spotlets/collection/fragments/g;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/e;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/e;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->b:Landroid/os/Handler;
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$1;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->c:Landroid/support/v4/view/br;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)Landroid/support/v4/view/ViewPager;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->i:Landroid/support/v4/view/ViewPager;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;I)Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
.registers 3
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->c(I)Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
move-result-object v0
return-object v0
.end method
.method public static a()Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
.registers 2
new-instance v0, Landroid/os/Bundle;
invoke-direct {v0}, Landroid/os/Bundle;-><init>()V
new-instance v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;
invoke-direct {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;-><init>()V
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->c_(Landroid/os/Bundle;)V
return-object v1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;Lcom/spotify/mobile/android/spotlets/collection/fragments/g;)Lcom/spotify/mobile/android/spotlets/collection/fragments/g;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->Z:Lcom/spotify/mobile/android/spotlets/collection/fragments/g;
return-object p1
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)Lcom/spotify/mobile/android/spotlets/collection/fragments/g;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->Z:Lcom/spotify/mobile/android/spotlets/collection/fragments/g;
return-object v0
.end method
.method private c(I)Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->h:[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
array-length v0, v0
if-ge p1, v0, :cond_a
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->h:[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
aget-object v0, v0, p1
:goto_9
return-object v0
:cond_a
sget-object v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->d:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
goto :goto_9
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)Lcom/spotify/mobile/android/spotlets/collection/fragments/f;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->Y:Lcom/spotify/mobile/android/spotlets/collection/fragments/f;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->h:[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
return-object v0
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->aa:Ljava/lang/String;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;)Z
.registers 2
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->ab:Z
return v0
.end method
.method public final D()Landroid/support/v4/app/Fragment;
.registers 1
return-object p0
.end method
.method public final E()Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
.registers 2
sget-object v0, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->i:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 11
const/4 v2, 0x0
const v0, 0x7f030065
invoke-virtual {p1, v0, p2, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->Z:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v1
if-nez v1, :cond_1a
sget-object v1, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->aa:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v1}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v1
if-eqz v1, :cond_9b
:cond_1a
const/4 v1, 0x1
:goto_1b
sget-object v3, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->ab:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v3}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v3
if-eqz v3, :cond_9e
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->f:[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->h:[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->e:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->ordinal()I
move-result v1
move v3, v1
:goto_2e
new-instance v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->m()Landroid/support/v4/app/r;
move-result-object v4
invoke-direct {v1, p0, v4, p3}, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;-><init>(Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;Landroid/support/v4/app/r;Landroid/os/Bundle;)V
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->Y:Lcom/spotify/mobile/android/spotlets/collection/fragments/f;
const v1, 0x7f0a0291
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/support/v4/view/ViewPager;
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->i:Landroid/support/v4/view/ViewPager;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->i:Landroid/support/v4/view/ViewPager;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->Y:Lcom/spotify/mobile/android/spotlets/collection/fragments/f;
invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->a(Landroid/support/v4/view/ah;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->i:Landroid/support/v4/view/ViewPager;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->Y:Lcom/spotify/mobile/android/spotlets/collection/fragments/f;
invoke-virtual {v4}, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->b()I
move-result v4
invoke-virtual {v1, v4}, Landroid/support/v4/view/ViewPager;->b(I)V
const v1, 0x7f0a0290
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Lcom/spotify/android/paste/widget/SlidingTabLayout;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->i:Landroid/support/v4/view/ViewPager;
invoke-virtual {v1, v4}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->a(Landroid/support/v4/view/ViewPager;)V
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->c:Landroid/support/v4/view/br;
invoke-virtual {v1, v4}, Lcom/spotify/android/paste/widget/SlidingTabLayout;->a(Landroid/support/v4/view/br;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v1
sget-object v4, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->d:Lcom/spotify/mobile/android/util/cz;
sget-object v5, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->d:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
invoke-virtual {v5}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->ordinal()I
move-result v5
sget-object v6, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->a:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
invoke-virtual {v6}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->ordinal()I
move-result v6
invoke-virtual {v1, v4, v5, v6, v3}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;III)I
move-result v1
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->b:Landroid/os/Handler;
invoke-static {}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->values()[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
move-result-object v4
aget-object v4, v4, v1
move v1, v2
:goto_8c
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->h:[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
array-length v5, v5
if-ge v1, v5, :cond_bc
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->h:[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
aget-object v5, v5, v1
if-ne v4, v5, :cond_b9
:goto_97
invoke-virtual {v3, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
return-object v0
:cond_9b
move v1, v2
goto/16 :goto_1b
:cond_9e
if-eqz v1, :cond_ac
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->g:[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->h:[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->e:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->ordinal()I
move-result v1
move v3, v1
goto :goto_2e
:cond_ac
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->e:[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->h:[Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
sget-object v1, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->d:Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
invoke-virtual {v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->ordinal()I
move-result v1
move v3, v1
goto/16 :goto_2e
:cond_b9
add-int/lit8 v1, v1, 0x1
goto :goto_8c
:cond_bc
move v1, v2
goto :goto_97
.end method
.method public final a(Landroid/content/Context;)Ljava/lang/String;
.registers 3
const v0, 0x7f0f0116
invoke-virtual {p1, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public final a(IILandroid/content/Intent;)V
.registers 6
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->Y:Lcom/spotify/mobile/android/spotlets/collection/fragments/f;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->i:Landroid/support/v4/view/ViewPager;
invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->b()I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->d(I)Landroid/support/v4/app/Fragment;
move-result-object v0
if-eqz v0, :cond_11
invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/Fragment;->a(IILandroid/content/Intent;)V
:cond_11
return-void
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V
if-eqz p1, :cond_16
const-string v0, "user"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->aa:Ljava/lang/String;
const-string v0, "can_download"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->ab:Z
:goto_15
return-void
:cond_16
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/service/session/e;->a(Landroid/app/Activity;)Lcom/spotify/mobile/android/service/session/e;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->h()Ljava/lang/String;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->aa:Ljava/lang/String;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/session/e;->i()Z
move-result v0
iput-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->ab:Z
goto :goto_15
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-eqz v0, :cond_11
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const v1, 0x7f0f0116
invoke-virtual {v0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object p1
:cond_11
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
invoke-interface {v0, p0, p1}, Lcom/spotify/mobile/android/ui/activity/n;->a(Landroid/support/v4/app/Fragment;Ljava/lang/String;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->c()V
return-void
.end method
.method public final b()V
.registers 1
invoke-super {p0}, Landroid/support/v4/app/Fragment;->b()V
invoke-static {p0}, Lcom/spotify/mobile/android/util/ay;->a(Landroid/support/v4/app/Fragment;)V
return-void
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->Y:Lcom/spotify/mobile/android/spotlets/collection/fragments/f;
invoke-virtual {v0, p1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->a(Landroid/os/Bundle;)V
const-string v0, "can_download"
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->ab:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "user"
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->aa:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public final x()V
.registers 3
invoke-super {p0}, Landroid/support/v4/app/Fragment;->x()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->Y:Lcom/spotify/mobile/android/spotlets/collection/fragments/f;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->i:Landroid/support/v4/view/ViewPager;
invoke-virtual {v1}, Landroid/support/v4/view/ViewPager;->b()I
move-result v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/f;->d(I)Landroid/support/v4/app/Fragment;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/g;
if-eqz v0, :cond_1c
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->Z:Lcom/spotify/mobile/android/spotlets/collection/fragments/g;
if-nez v1, :cond_1c
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/g;->h_()V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->Z:Lcom/spotify/mobile/android/spotlets/collection/fragments/g;
:cond_1c
return-void
.end method
.method public final y()V
.registers 4
invoke-super {p0}, Landroid/support/v4/app/Fragment;->y()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->Z:Lcom/spotify/mobile/android/spotlets/collection/fragments/g;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->Z:Lcom/spotify/mobile/android/spotlets/collection/fragments/g;
invoke-interface {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/g;->i_()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->Z:Lcom/spotify/mobile/android/spotlets/collection/fragments/g;
:cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->i:Landroid/support/v4/view/ViewPager;
invoke-virtual {v0}, Landroid/support/v4/view/ViewPager;->b()I
move-result v0
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->c(I)Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v1
invoke-virtual {v1}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v1
sget-object v2, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment;->d:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/CollectionFragment$Page;->ordinal()I
move-result v0
invoke-virtual {v1, v2, v0}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;I)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
return-void
.end method