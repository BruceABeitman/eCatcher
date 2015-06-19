.class public final Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.field static final a:Lcom/spotify/mobile/android/util/cz;
.field static final b:Lcom/spotify/mobile/android/util/cz;
.field private Y:Landroid/view/View;
.field private Z:Landroid/widget/TextView;
.field private aa:Landroid/view/View;
.field private ab:Landroid/view/View;
.field private ac:Landroid/widget/ImageView;
.field private ad:Landroid/widget/TextView;
.field private ae:Landroid/widget/TextView;
.field private af:Lcom/spotify/cosmos/android/Resolver;
.field private ag:Lcom/spotify/mobile/android/util/cx;
.field private ah:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
.field private ai:Landroid/view/View$OnClickListener;
.field private aj:Landroid/view/View$OnClickListener;
.field private ak:Lcom/squareup/picasso/f;
.field private al:Landroid/support/v4/app/z;
.field private am:Landroid/support/v4/app/z;
.field private an:Landroid/support/v4/app/z;
.field private ao:Lcom/spotify/mobile/android/ui/k;
.field private c:Ljava/lang/String;
.field private d:Z
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:I
.field private h:Ljava/lang/Integer;
.field private i:I
.method static constructor <clinit>()V
.registers 1
const-string v0, "profile_panel_seen_unclaimed_invitation_codes_count"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->a:Lcom/spotify/mobile/android/util/cz;
const-string v0, "profile_panel_seen_unclaimed_invitation_codes_username"
invoke-static {v0}, Lcom/spotify/mobile/android/util/cz;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/util/cz;
move-result-object v0
sput-object v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->b:Lcom/spotify/mobile/android/util/cz;
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
sget-object v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;->a:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ah:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$1;-><init>(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ai:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$2;-><init>(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->aj:Landroid/view/View$OnClickListener;
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$3;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$3;-><init>(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ak:Lcom/squareup/picasso/f;
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$4;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$4;-><init>(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->al:Landroid/support/v4/app/z;
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$5;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$5;-><init>(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->am:Landroid/support/v4/app/z;
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$6;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$6;-><init>(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->an:Landroid/support/v4/app/z;
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$7;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$7;-><init>(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ao:Lcom/spotify/mobile/android/ui/k;
return-void
.end method
.method private D()V
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->h:Ljava/lang/Integer;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->h:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
:goto_a
iget v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->g:I
if-ne v0, v1, :cond_11
:goto_e
return-void
:cond_f
const/4 v0, 0x0
goto :goto_a
:cond_11
iput v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->g:I
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ag:Lcom/spotify/mobile/android/util/cx;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cx;->b()Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->a:Lcom/spotify/mobile/android/util/cz;
iget v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->g:I
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;I)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->b:Lcom/spotify/mobile/android/util/cz;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->c:Ljava/lang/String;
invoke-virtual {v0, v1, v2}, Lcom/spotify/mobile/android/util/cy;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Lcom/spotify/mobile/android/util/cy;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/cy;->b()V
goto :goto_e
.end method
.method private E()V
.registers 4
sget-object v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;->b:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ah:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/ui/stuff/k;->d(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v1
const-class v0, Lcom/spotify/mobile/android/util/df;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/util/df;
invoke-virtual {v0}, Lcom/spotify/mobile/android/util/df;->a()Lcom/squareup/picasso/Picasso;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->f:Ljava/lang/String;
invoke-static {v2}, Lcom/spotify/mobile/android/provider/i;->a(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/squareup/picasso/Picasso;->a(Landroid/net/Uri;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->b(Landroid/graphics/drawable/Drawable;)Lcom/squareup/picasso/ad;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ac:Landroid/widget/ImageView;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ak:Lcom/squareup/picasso/f;
invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/df;->a(Landroid/widget/ImageView;Lcom/squareup/picasso/f;)Lcom/squareup/picasso/ai;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/squareup/picasso/ad;->a(Lcom/squareup/picasso/ai;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;)Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ah:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
return-object p1
.end method
.method public static a()Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;
.registers 1
new-instance v0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;-><init>()V
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;Ljava/lang/Integer;)Ljava/lang/Integer;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->h:Ljava/lang/Integer;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->c:Ljava/lang/String;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;I)V
.registers 2
invoke-direct {p0, p1}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->c(I)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;Ljava/lang/String;Ljava/lang/String;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;Ljava/lang/String;Z)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->a(Ljava/lang/String;Z)V
return-void
.end method
.method private a(Ljava/lang/String;Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->e:Ljava/lang/String;
invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_11
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->e:Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ad:Landroid/widget/TextView;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_11
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->f:Ljava/lang/String;
invoke-static {v0, p2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_1e
iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->f:Ljava/lang/String;
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->E()V
:cond_1e
return-void
.end method
.method private a(Ljava/lang/String;Z)V
.registers 8
const/4 v4, 0x0
const/4 v1, 0x0
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->c:Ljava/lang/String;
invoke-static {v0, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_95
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->c:Ljava/lang/String;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->c:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_95
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->u()Landroid/support/v4/app/y;
move-result-object v0
const v2, 0x7f0a019e
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->am:Landroid/support/v4/app/z;
invoke-virtual {v0, v2, v4, v3}, Landroid/support/v4/app/y;->b(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->u()Landroid/support/v4/app/y;
move-result-object v0
const v2, 0x7f0a019c
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->an:Landroid/support/v4/app/z;
invoke-virtual {v0, v2, v4, v3}, Landroid/support/v4/app/y;->b(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->h:Ljava/lang/Integer;
if-nez v0, :cond_95
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ag:Lcom/spotify/mobile/android/util/cx;
sget-object v2, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->b:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v2, v4}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->c:Ljava/lang/String;
invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_ad
move v0, v1
:goto_41
iput v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->g:I
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->S:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_95
const-string v0, "Fetching invitation code info"
new-array v2, v1, [Ljava/lang/Object;
invoke-static {v0, v2}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
sget-object v0, Ljava/util/Locale;->US:Ljava/util/Locale;
const-string v2, "hm://user-profile-view/v1/android/profile/%s/panel"
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->c:Ljava/lang/String;
invoke-static {v4}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v4
aput-object v4, v3, v1
invoke-static {v0, v2, v3}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->get(Ljava/lang/String;)Lcom/spotify/mobile/android/cosmos/RequestBuilder;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/cosmos/RequestBuilder;->build()Lcom/spotify/cosmos/router/Request;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->af:Lcom/spotify/cosmos/android/Resolver;
if-nez v1, :cond_80
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {v1}, Lcom/spotify/cosmos/android/Cosmos;->getResolver(Landroid/content/Context;)Lcom/spotify/cosmos/android/DeferredResolver;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->af:Lcom/spotify/cosmos/android/Resolver;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->af:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v1}, Lcom/spotify/cosmos/android/Resolver;->connect()V
:cond_80
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->af:Lcom/spotify/cosmos/android/Resolver;
new-instance v2, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$8;
new-instance v3, Landroid/os/Handler;
invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;
move-result-object v4
invoke-direct {v3, v4}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V
const-class v4, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelModel;
invoke-direct {v2, p0, v3, v4}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$8;-><init>(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;Landroid/os/Handler;Ljava/lang/Class;)V
invoke-virtual {v1, v0, v2}, Lcom/spotify/cosmos/android/Resolver;->resolve(Lcom/spotify/cosmos/router/Request;Lcom/spotify/cosmos/android/Resolver$CallbackReceiver;)Z
:cond_95
iput-boolean p2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->d:Z
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ah:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
sget-object v1, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;->d:Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment$ImageLoadingState;
if-ne v0, v1, :cond_ac
iget-boolean v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->d:Z
if-eqz v0, :cond_ac
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->f:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_ac
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->E()V
:cond_ac
return-void
:cond_ad
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ag:Lcom/spotify/mobile/android/util/cx;
sget-object v2, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->a:Lcom/spotify/mobile/android/util/cz;
invoke-virtual {v0, v2, v1}, Lcom/spotify/mobile/android/util/cx;->a(Lcom/spotify/mobile/android/util/cz;I)I
move-result v0
goto :goto_41
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->aa:Landroid/view/View;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)Landroid/view/View;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ab:Landroid/view/View;
return-object v0
.end method
.method private c()V
.registers 8
const/16 v3, 0x8
const/4 v1, 0x1
const/4 v2, 0x0
sget-object v0, Lcom/spotify/mobile/android/ui/fragments/logic/FeatureFragment;->S:Lcom/spotify/mobile/android/ui/fragments/logic/b;
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/fragments/logic/b;->a()Z
move-result v0
if-eqz v0, :cond_6f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->h:Ljava/lang/Integer;
if-eqz v0, :cond_6d
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->h:Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
iget v4, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->g:I
if-le v0, v4, :cond_6d
move v0, v1
:goto_1b
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->h:Ljava/lang/Integer;
if-eqz v4, :cond_40
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->h:Ljava/lang/Integer;
invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
move-result v4
iget v5, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->g:I
if-ge v4, v5, :cond_40
const-string v4, "Unclaimed count has reduced (%d->%d), reset seen count"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
iget v6, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->g:I
invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v5, v2
iget-object v6, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->h:Ljava/lang/Integer;
aput-object v6, v5, v1
invoke-static {v4, v5}, Lcom/spotify/mobile/android/util/br;->c(Ljava/lang/String;[Ljava/lang/Object;)V
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->D()V
:cond_40
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->Y:Landroid/view/View;
if-eqz v0, :cond_45
move v3, v2
:cond_45
invoke-virtual {v4, v3}, Landroid/view/View;->setVisibility(I)V
if-eqz v0, :cond_6c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->Z:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v3, 0x7f0e000c
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->h:Ljava/lang/Integer;
invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
move-result v4
new-array v1, v1, [Ljava/lang/Object;
iget-object v5, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->h:Ljava/lang/Integer;
aput-object v5, v1, v2
invoke-virtual {v0, v3, v4, v1}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->Z:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_6c
:cond_6c
return-void
:cond_6d
move v0, v2
goto :goto_1b
:cond_6f
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->Y:Landroid/view/View;
invoke-virtual {v0, v3}, Landroid/view/View;->setVisibility(I)V
goto :goto_6c
.end method
.method private c(I)V
.registers 4
iget v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->i:I
if-eq v0, p1, :cond_1d
iput p1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->i:I
iget v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->i:I
const/16 v1, 0x63
if-le v0, v1, :cond_1e
const-string v0, "99+"
:goto_e
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ae:Landroid/widget/TextView;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ae:Landroid/widget/TextView;
iget v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->i:I
if-lez v0, :cond_25
const/4 v0, 0x0
:goto_1a
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V
:cond_1d
return-void
:cond_1e
iget v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->i:I
invoke-static {v0}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;
move-result-object v0
goto :goto_e
:cond_25
const/16 v0, 0x8
goto :goto_1a
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)V
.registers 6
const/4 v2, 0x1
const/4 v3, 0x0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
if-eqz v0, :cond_3b
sget-object v1, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->a:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->d()Lcom/spotify/mobile/android/ui/f;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/ui/f;->b()Landroid/support/v4/app/Fragment;
move-result-object v0
instance-of v4, v0, Lcom/spotify/mobile/android/ui/NavigationItem;
if-eqz v4, :cond_40
check-cast v0, Lcom/spotify/mobile/android/ui/NavigationItem;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/NavigationItem;->E()Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
move-result-object v0
:goto_1e
iget-object v4, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->aa:Landroid/view/View;
sget-object v1, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->m:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
if-ne v0, v1, :cond_3c
move v1, v2
:goto_25
invoke-virtual {v4, v1}, Landroid/view/View;->setSelected(Z)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ab:Landroid/view/View;
sget-object v4, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->k:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
if-ne v0, v4, :cond_3e
:goto_2e
invoke-virtual {v1, v2}, Landroid/view/View;->setSelected(Z)V
sget-object v1, Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;->m:Lcom/spotify/mobile/android/ui/NavigationItem$NavigationGroup;
if-ne v0, v1, :cond_3b
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->D()V
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->c()V
:cond_3b
return-void
:cond_3c
move v1, v3
goto :goto_25
:cond_3e
move v2, v3
goto :goto_2e
:cond_40
move-object v0, v1
goto :goto_1e
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;)V
.registers 1
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->c()V
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 7
const v0, 0x7f030070
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/view/ViewGroup;
const v1, 0x7f0a01f8
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/ImageView;
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ac:Landroid/widget/ImageView;
const v1, 0x7f0a02ba
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ad:Landroid/widget/TextView;
const v1, 0x7f0a02bc
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ae:Landroid/widget/TextView;
const v1, 0x7f0a02b7
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->Y:Landroid/view/View;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->Y:Landroid/view/View;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ai:Landroid/view/View$OnClickListener;
invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->Y:Landroid/view/View;
const v2, 0x7f0a02b8
invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->Z:Landroid/widget/TextView;
const v1, 0x7f0a02b9
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->aa:Landroid/view/View;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->aa:Landroid/view/View;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ai:Landroid/view/View$OnClickListener;
invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v1, 0x7f0a02bb
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;
move-result-object v1
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ab:Landroid/view/View;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ab:Landroid/view/View;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->aj:Landroid/view/View$OnClickListener;
invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
if-eqz p3, :cond_b0
const-string v1, "seen_unclaimed_invitation_code_count"
invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
iput v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->g:I
const-string v1, "unclaimed_invitation_code_count"
invoke-virtual {p3, v1}, Landroid/os/Bundle;->containsKey(Ljava/lang/String;)Z
move-result v1
if-eqz v1, :cond_c8
const-string v1, "unclaimed_invitation_code_count"
invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
:goto_84
iput-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->h:Ljava/lang/Integer;
invoke-direct {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->c()V
const-string v1, "username_key"
invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "is_connected_key"
invoke-virtual {p3, v2}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v2
invoke-direct {p0, v1, v2}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->a(Ljava/lang/String;Z)V
const-string v1, "profile_name_key"
invoke-virtual {p3, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "profile_image_uri_key"
invoke-virtual {p3, v2}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-direct {p0, v1, v2}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->a(Ljava/lang/String;Ljava/lang/String;)V
const-string v1, "unseen_messages_key"
invoke-virtual {p3, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v1
invoke-direct {p0, v1}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->c(I)V
:cond_b0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
instance-of v1, v1, Lcom/spotify/mobile/android/ui/activity/n;
if-eqz v1, :cond_c7
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
check-cast v1, Lcom/spotify/mobile/android/ui/activity/n;
invoke-interface {v1}, Lcom/spotify/mobile/android/ui/activity/n;->d()Lcom/spotify/mobile/android/ui/f;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ao:Lcom/spotify/mobile/android/ui/k;
invoke-virtual {v1, v2}, Lcom/spotify/mobile/android/ui/f;->a(Lcom/spotify/mobile/android/ui/k;)V
:cond_c7
return-object v0
:cond_c8
const/4 v1, 0x0
goto :goto_84
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 3
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ag:Lcom/spotify/mobile/android/util/cx;
if-nez v0, :cond_11
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/util/cx;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/util/cx;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ag:Lcom/spotify/mobile/android/util/cx;
:cond_11
return-void
.end method
.method public final c(Landroid/os/Bundle;)V
.registers 6
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->c(Landroid/os/Bundle;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->u()Landroid/support/v4/app/y;
move-result-object v0
const v1, 0x7f0a019d
const/4 v2, 0x0
iget-object v3, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->al:Landroid/support/v4/app/z;
invoke-virtual {v0, v1, v2, v3}, Landroid/support/v4/app/y;->a(ILandroid/os/Bundle;Landroid/support/v4/app/z;)Landroid/support/v4/content/k;
return-void
.end method
.method public final d(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->d(Landroid/os/Bundle;)V
const-string v0, "username_key"
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->c:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "is_connected_key"
iget-boolean v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->d:Z
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "profile_name_key"
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->e:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "profile_image_uri_key"
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->f:Ljava/lang/String;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->h:Ljava/lang/Integer;
if-eqz v0, :cond_2e
const-string v0, "unclaimed_invitation_code_count"
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->h:Ljava/lang/Integer;
invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I
move-result v1
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
:cond_2e
const-string v0, "seen_unclaimed_invitation_code_count"
iget v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->g:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "unseen_messages_key"
iget v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->i:I
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
return-void
.end method
.method public final f()V
.registers 3
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
instance-of v0, v0, Lcom/spotify/mobile/android/ui/activity/n;
if-eqz v0, :cond_17
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/activity/n;
invoke-interface {v0}, Lcom/spotify/mobile/android/ui/activity/n;->d()Lcom/spotify/mobile/android/ui/f;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->ao:Lcom/spotify/mobile/android/ui/k;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/ui/f;->b(Lcom/spotify/mobile/android/ui/k;)V
:cond_17
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->af:Lcom/spotify/cosmos/android/Resolver;
if-eqz v0, :cond_23
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->af:Lcom/spotify/cosmos/android/Resolver;
invoke-virtual {v0}, Lcom/spotify/cosmos/android/Resolver;->disconnect()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/user/ProfilePanelFragment;->af:Lcom/spotify/cosmos/android/Resolver;
:cond_23
invoke-super {p0}, Landroid/support/v4/app/Fragment;->f()V
return-void
.end method