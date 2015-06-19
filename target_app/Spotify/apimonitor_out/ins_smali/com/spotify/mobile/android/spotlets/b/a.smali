.class public final Lcom/spotify/mobile/android/spotlets/b/a;
.super Landroid/support/v4/app/Fragment;
.source "SourceFile"
.field private Y:Landroid/widget/ImageButton;
.field private Z:Landroid/widget/ImageButton;
.field private a:Landroid/widget/TextView;
.field private aa:Landroid/widget/ImageButton;
.field private ab:Landroid/widget/ListView;
.field private ac:Lcom/spotify/mobile/android/service/player/c;
.field private ad:Lcom/spotify/mobile/android/service/player/d;
.field private ae:Lcom/spotify/mobile/android/service/session/e;
.field private final af:Lcom/spotify/mobile/android/service/session/d;
.field private ag:Lcom/spotify/mobile/android/spotlets/b/b;
.field private ah:Lcom/spotify/mobile/android/model/c;
.field private ai:Lcom/google/common/base/Optional;
.field private aj:Lcom/spotify/mobile/android/service/player/a/g;
.field private ak:Landroid/view/View$OnClickListener;
.field private b:Landroid/widget/TextView;
.field private c:Landroid/widget/TextView;
.field private d:Landroid/widget/ImageView;
.field private e:Landroid/widget/ImageView;
.field private f:Landroid/widget/ImageView;
.field private g:Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;
.field private h:Landroid/widget/ImageButton;
.field private i:Landroid/widget/ImageButton;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Landroid/support/v4/app/Fragment;-><init>()V
const-class v0, Lcom/spotify/mobile/android/service/player/d;
invoke-static {v0}, Lcom/spotify/mobile/android/c/c;->a(Ljava/lang/Class;)Lcom/spotify/mobile/android/c/a;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/d;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ad:Lcom/spotify/mobile/android/service/player/d;
new-instance v0, Lcom/spotify/mobile/android/spotlets/b/a$1;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/b/a$1;-><init>(Lcom/spotify/mobile/android/spotlets/b/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->af:Lcom/spotify/mobile/android/service/session/d;
new-instance v0, Lcom/spotify/mobile/android/spotlets/b/a$10;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/b/a$10;-><init>(Lcom/spotify/mobile/android/spotlets/b/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->aj:Lcom/spotify/mobile/android/service/player/a/g;
new-instance v0, Lcom/spotify/mobile/android/spotlets/b/a$2;
invoke-direct {v0, p0}, Lcom/spotify/mobile/android/spotlets/b/a$2;-><init>(Lcom/spotify/mobile/android/spotlets/b/a;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ak:Landroid/view/View$OnClickListener;
return-void
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageButton;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->aa:Landroid/widget/ImageButton;
return-object v0
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/b/a;Lcom/google/common/base/Optional;)Lcom/google/common/base/Optional;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ai:Lcom/google/common/base/Optional;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/b/a;Lcom/spotify/mobile/android/model/c;)Lcom/spotify/mobile/android/model/c;
.registers 2
iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ah:Lcom/spotify/mobile/android/model/c;
return-object p1
.end method
.method static synthetic a(Lcom/spotify/mobile/android/spotlets/b/a;Lcom/spotify/mobile/android/service/player/model/d;)V
.registers 5
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->j()Z
move-result v0
invoke-direct {p0, v0}, Lcom/spotify/mobile/android/spotlets/b/a;->d(Z)V
const-string v0, "up"
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->i()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
const-string v1, "down"
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->i()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/b/a;->aa:Landroid/widget/ImageButton;
invoke-virtual {v2, v0}, Landroid/widget/ImageButton;->setSelected(Z)V
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/b/a;->Z:Landroid/widget/ImageButton;
invoke-virtual {v2, v1}, Landroid/widget/ImageButton;->setSelected(Z)V
if-nez v0, :cond_41
if-nez v1, :cond_41
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->g()Z
move-result v0
if-nez v0, :cond_41
invoke-virtual {p1}, Lcom/spotify/mobile/android/service/player/model/d;->h()Z
move-result v0
if-nez v0, :cond_41
const/4 v0, 0x1
:goto_36
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a;->aa:Landroid/widget/ImageButton;
invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a;->Z:Landroid/widget/ImageButton;
invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setEnabled(Z)V
return-void
:cond_41
const/4 v0, 0x0
goto :goto_36
.end method
.method static synthetic b(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageButton;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->Z:Landroid/widget/ImageButton;
return-object v0
.end method
.method static synthetic c(Lcom/spotify/mobile/android/spotlets/b/a;)Lcom/spotify/mobile/android/service/player/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ac:Lcom/spotify/mobile/android/service/player/c;
return-object v0
.end method
.method static synthetic d(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ListView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ab:Landroid/widget/ListView;
return-object v0
.end method
.method private d(Z)V
.registers 5
const/16 v0, 0x8
const/4 v1, 0x0
if-eqz p1, :cond_18
move v2, v1
:goto_6
if-eqz p1, :cond_1a
:goto_8
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a;->Z:Landroid/widget/ImageButton;
invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a;->aa:Landroid/widget/ImageButton;
invoke-virtual {v1, v2}, Landroid/widget/ImageButton;->setVisibility(I)V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a;->h:Landroid/widget/ImageButton;
invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->setVisibility(I)V
return-void
:cond_18
move v2, v0
goto :goto_6
:cond_1a
move v0, v1
goto :goto_8
.end method
.method static synthetic e(Lcom/spotify/mobile/android/spotlets/b/a;)Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->g:Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;
return-object v0
.end method
.method static synthetic f(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageButton;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->i:Landroid/widget/ImageButton;
return-object v0
.end method
.method static synthetic g(Lcom/spotify/mobile/android/spotlets/b/a;)Lcom/spotify/mobile/android/model/c;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ah:Lcom/spotify/mobile/android/model/c;
return-object v0
.end method
.method static synthetic h(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->c:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic i(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageButton;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->Y:Landroid/widget/ImageButton;
return-object v0
.end method
.method static synthetic j(Lcom/spotify/mobile/android/spotlets/b/a;)Lcom/spotify/mobile/android/spotlets/b/b;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ag:Lcom/spotify/mobile/android/spotlets/b/b;
return-object v0
.end method
.method static synthetic k(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->a:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic l(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->b:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic m(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->e:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic n(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->d:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic o(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/widget/ImageView;
.registers 2
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->f:Landroid/widget/ImageView;
return-object v0
.end method
.method static synthetic p(Lcom/spotify/mobile/android/spotlets/b/a;)Landroid/content/Intent;
.registers 4
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ah:Lcom/spotify/mobile/android/model/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/model/c;->b()Lcom/spotify/mobile/android/model/ContextType;
move-result-object v0
sget-object v1, Lcom/spotify/mobile/android/model/ContextType;->e:Lcom/spotify/mobile/android/model/ContextType;
if-ne v0, v1, :cond_4e
new-instance v0, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;
invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;-><init>()V
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ah:Lcom/spotify/mobile/android/model/c;
invoke-virtual {v1}, Lcom/spotify/mobile/android/model/c;->c()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a;->c:Landroid/widget/TextView;
invoke-virtual {v1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v1
invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->c(Ljava/lang/String;)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;
move-result-object v1
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ai:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->a()Z
move-result v0
if-eqz v0, :cond_4c
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ai:Lcom/google/common/base/Optional;
invoke-virtual {v0}, Lcom/google/common/base/Optional;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/service/player/model/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/c;->d()Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;
move-result-object v0
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/model/PlayQueueItem;->a()I
move-result v0
:goto_3f
invoke-virtual {v1, v0}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a(I)Lcom/spotify/mobile/android/spotlets/collection/fragments/k;
move-result-object v0
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/b/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/spotlets/collection/fragments/k;->a(Landroid/content/Context;)Landroid/content/Intent;
move-result-object v0
:goto_4b
return-object v0
:cond_4c
const/4 v0, 0x0
goto :goto_3f
:cond_4e
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/b/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ah:Lcom/spotify/mobile/android/model/c;
invoke-virtual {v1}, Lcom/spotify/mobile/android/model/c;->c()Ljava/lang/String;
move-result-object v1
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/b/a;->c:Landroid/widget/TextView;
invoke-virtual {v2}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;
move-result-object v2
invoke-interface {v2}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v0, v1, v2}, Lcom/spotify/music/MainActivity;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;
move-result-object v0
goto :goto_4b
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 8
const/4 v3, 0x0
const v0, 0x7f0300bb
invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a0368
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->c:Landroid/widget/TextView;
const v0, 0x7f0a036c
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->a:Landroid/widget/TextView;
const v0, 0x7f0a0310
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->b:Landroid/widget/TextView;
const v0, 0x7f0a0369
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->d:Landroid/widget/ImageView;
const v0, 0x7f0a036a
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->e:Landroid/widget/ImageView;
const v0, 0x7f0a036b
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->f:Landroid/widget/ImageView;
const v0, 0x7f0a0352
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->g:Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;
const v0, 0x7f0a0359
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->h:Landroid/widget/ImageButton;
const v0, 0x7f0a035a
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->i:Landroid/widget/ImageButton;
const v0, 0x7f0a035b
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->Y:Landroid/widget/ImageButton;
const v0, 0x7f0a036f
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ab:Landroid/widget/ListView;
const v0, 0x7f0a036d
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->Z:Landroid/widget/ImageButton;
const v0, 0x7f0a036e
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->aa:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->i:Landroid/widget/ImageButton;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/b/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/j;->a(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->h:Landroid/widget/ImageButton;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/b/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/j;->e(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->Y:Landroid/widget/ImageButton;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/b/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/j;->f(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->Z:Landroid/widget/ImageButton;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/b/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/j;->p(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->aa:Landroid/widget/ImageButton;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/b/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v2}, Lcom/spotify/mobile/android/ui/fragments/j;->o(Landroid/content/Context;)Landroid/graphics/drawable/Drawable;
move-result-object v2
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-direct {p0, v3}, Lcom/spotify/mobile/android/spotlets/b/a;->d(Z)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->i:Landroid/widget/ImageButton;
new-instance v2, Lcom/spotify/mobile/android/spotlets/b/a$3;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/b/a$3;-><init>(Lcom/spotify/mobile/android/spotlets/b/a;)V
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->h:Landroid/widget/ImageButton;
new-instance v2, Lcom/spotify/mobile/android/spotlets/b/a$4;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/b/a$4;-><init>(Lcom/spotify/mobile/android/spotlets/b/a;)V
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->Y:Landroid/widget/ImageButton;
new-instance v2, Lcom/spotify/mobile/android/spotlets/b/a$5;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/b/a$5;-><init>(Lcom/spotify/mobile/android/spotlets/b/a;)V
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->aa:Landroid/widget/ImageButton;
new-instance v2, Lcom/spotify/mobile/android/spotlets/b/a$6;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/b/a$6;-><init>(Lcom/spotify/mobile/android/spotlets/b/a;)V
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->Z:Landroid/widget/ImageButton;
new-instance v2, Lcom/spotify/mobile/android/spotlets/b/a$7;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/b/a$7;-><init>(Lcom/spotify/mobile/android/spotlets/b/a;)V
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
new-instance v0, Lcom/spotify/mobile/android/spotlets/b/b;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/b/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-direct {v0, v2}, Lcom/spotify/mobile/android/spotlets/b/b;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ag:Lcom/spotify/mobile/android/spotlets/b/b;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ab:Landroid/widget/ListView;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ag:Lcom/spotify/mobile/android/spotlets/b/b;
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ab:Landroid/widget/ListView;
new-instance v2, Lcom/spotify/mobile/android/spotlets/b/a$8;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/b/a$8;-><init>(Lcom/spotify/mobile/android/spotlets/b/a;)V
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ab:Landroid/widget/ListView;
new-instance v2, Lcom/spotify/mobile/android/ui/contextmenu/b;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/b/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v3
invoke-direct {v2, v3}, Lcom/spotify/mobile/android/ui/contextmenu/b;-><init>(Landroid/content/Context;)V
invoke-virtual {v0, v2}, Landroid/widget/ListView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->c:Landroid/widget/TextView;
iget-object v2, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ak:Landroid/view/View$OnClickListener;
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->g:Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;
new-instance v2, Lcom/spotify/mobile/android/spotlets/b/a$9;
invoke-direct {v2, p0}, Lcom/spotify/mobile/android/spotlets/b/a$9;-><init>(Lcom/spotify/mobile/android/spotlets/b/a;)V
invoke-virtual {v0, v2}, Lcom/spotify/mobile/android/ui/view/CancellableSeekBar;->a(Lcom/spotify/mobile/android/ui/view/b;)V
return-object v1
.end method
.method public final a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Landroid/support/v4/app/Fragment;->a(Landroid/os/Bundle;)V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ad:Lcom/spotify/mobile/android/service/player/d;
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/b/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/service/player/d;->a(Landroid/content/Context;)Lcom/spotify/mobile/android/service/player/c;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ac:Lcom/spotify/mobile/android/service/player/c;
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ac:Lcom/spotify/mobile/android/service/player/c;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a;->aj:Lcom/spotify/mobile/android/service/player/a/g;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/player/c;->a(Ljava/lang/Object;)V
invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/b/a;->j()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-static {v0}, Lcom/spotify/mobile/android/service/session/e;->a(Landroid/app/Activity;)Lcom/spotify/mobile/android/service/session/e;
move-result-object v0
iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ae:Lcom/spotify/mobile/android/service/session/e;
return-void
.end method
.method public final x()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ac:Lcom/spotify/mobile/android/service/player/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->a()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ae:Lcom/spotify/mobile/android/service/session/e;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a;->af:Lcom/spotify/mobile/android/service/session/d;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/session/e;->a(Lcom/spotify/mobile/android/service/session/d;)V
invoke-super {p0}, Landroid/support/v4/app/Fragment;->x()V
return-void
.end method
.method public final y()V
.registers 3
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ac:Lcom/spotify/mobile/android/service/player/c;
invoke-virtual {v0}, Lcom/spotify/mobile/android/service/player/c;->b()V
iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/b/a;->ae:Lcom/spotify/mobile/android/service/session/e;
iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/b/a;->af:Lcom/spotify/mobile/android/service/session/d;
invoke-virtual {v0, v1}, Lcom/spotify/mobile/android/service/session/e;->b(Lcom/spotify/mobile/android/service/session/d;)V
invoke-super {p0}, Landroid/support/v4/app/Fragment;->y()V
return-void
.end method