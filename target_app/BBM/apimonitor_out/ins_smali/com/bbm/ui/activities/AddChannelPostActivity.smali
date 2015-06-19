.class public Lcom/bbm/ui/activities/AddChannelPostActivity;
.super Lcom/bbm/ui/activities/ajy;
.source "AddChannelPostActivity.java"
.implements Lcom/bbm/ui/br;
.field public static a:I
.field private b:Lcom/bbm/ui/ObservingImageView;
.field private c:Landroid/widget/ImageButton;
.field private d:Landroid/widget/ImageButton;
.field private e:Lcom/bbm/ui/HeaderButtonActionBar;
.field private f:Lcom/bbm/ui/InlineImageEditText;
.field private g:Lcom/bbm/ui/InlineImageEditText;
.field private h:Landroid/widget/TextView;
.field private i:Ljava/lang/String;
.field private j:Lcom/bbm/ui/EmoticonPicker;
.field private k:Landroid/widget/ImageButton;
.field private l:Landroid/widget/ImageButton;
.field private m:Ljava/lang/String;
.field private n:Lcom/cropimage/f;
.field private o:Z
.field private final p:Landroid/os/Handler;
.field private q:Landroid/widget/ProgressBar;
.field private r:Z
.field private s:Z
.field private t:I
.field private u:Z
.method static constructor <clinit>()V
.registers 1
const/4 v0, 0x1
sput v0, Lcom/bbm/ui/activities/AddChannelPostActivity;->a:I
return-void
.end method
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/bbm/ui/activities/ajy;-><init>()V
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->p:Landroid/os/Handler;
const/4 v0, -0x1
iput v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->t:I
new-instance v0, Lcom/bbm/ui/fv;
invoke-direct {v0}, Lcom/bbm/ui/fv;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->a(Lcom/bbm/ui/activities/aka;)V
new-instance v0, Lcom/bbm/ui/voice/o;
invoke-direct {v0}, Lcom/bbm/ui/voice/o;-><init>()V
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->a(Lcom/bbm/ui/activities/aka;)V
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/AddChannelPostActivity;Lcom/cropimage/f;)Lcom/cropimage/f;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->n:Lcom/cropimage/f;
return-object p1
.end method
.method static synthetic a(Lcom/bbm/ui/activities/AddChannelPostActivity;Ljava/lang/String;)Ljava/lang/String;
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->i:Ljava/lang/String;
return-object p1
.end method
.method private a()V
.registers 5
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->o:Z
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->l:Landroid/widget/ImageButton;
const v1, 0x7f020016
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->p:Landroid/os/Handler;
new-instance v1, Lcom/bbm/ui/activities/e;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/e;-><init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
const-wide/16 v2, 0x64
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/activities/AddChannelPostActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->u:Z
return v0
.end method
.method static synthetic a(Lcom/bbm/ui/activities/AddChannelPostActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->r:Z
return p1
.end method
.method static synthetic b(Lcom/bbm/ui/activities/AddChannelPostActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->i:Ljava/lang/String;
return-object v0
.end method
.method private b(Ljava/lang/String;)V
.registers 6
const/16 v3, 0x8
const/4 v2, 0x0
new-instance v0, Lcom/bbm/ui/activities/c;
iget-object v1, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->b:Lcom/bbm/ui/ObservingImageView;
invoke-direct {v0, p0, p0, v1, p1}, Lcom/bbm/ui/activities/c;-><init>(Lcom/bbm/ui/activities/AddChannelPostActivity;Landroid/app/Activity;Lcom/bbm/ui/ObservingImageView;Ljava/lang/String;)V
new-array v1, v2, [Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/e/a;->c([Ljava/lang/Object;)Lcom/bbm/util/b;
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->b:Lcom/bbm/ui/ObservingImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->q:Landroid/widget/ProgressBar;
invoke-virtual {v0, v2}, Landroid/widget/ProgressBar;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->c:Landroid/widget/ImageButton;
invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->d:Landroid/widget/ImageButton;
invoke-virtual {v0, v3}, Landroid/widget/ImageButton;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {v0, v2}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->s:Z
return-void
.end method
.method static synthetic b(Lcom/bbm/ui/activities/AddChannelPostActivity;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->u:Z
return p1
.end method
.method static synthetic c(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/cropimage/f;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->n:Lcom/cropimage/f;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/bbm/ui/ObservingImageView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->b:Lcom/bbm/ui/ObservingImageView;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/ImageButton;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->c:Landroid/widget/ImageButton;
return-object v0
.end method
.method static synthetic f(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/ImageButton;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->d:Landroid/widget/ImageButton;
return-object v0
.end method
.method static synthetic g(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/ProgressBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->q:Landroid/widget/ProgressBar;
return-object v0
.end method
.method static synthetic h(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/ImageButton;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->k:Landroid/widget/ImageButton;
return-object v0
.end method
.method static synthetic i(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/bbm/ui/InlineImageEditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->f:Lcom/bbm/ui/InlineImageEditText;
return-object v0
.end method
.method static synthetic j(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/bbm/ui/InlineImageEditText;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->g:Lcom/bbm/ui/InlineImageEditText;
return-object v0
.end method
.method static synthetic k(Lcom/bbm/ui/activities/AddChannelPostActivity;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->m:Ljava/lang/String;
return-object v0
.end method
.method static synthetic l(Lcom/bbm/ui/activities/AddChannelPostActivity;)I
.registers 2
iget v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->t:I
return v0
.end method
.method static synthetic m(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
.registers 1
invoke-direct {p0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->a()V
return-void
.end method
.method static synthetic n(Lcom/bbm/ui/activities/AddChannelPostActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->r:Z
return v0
.end method
.method static synthetic o(Lcom/bbm/ui/activities/AddChannelPostActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->s:Z
return v0
.end method
.method static synthetic p(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/bbm/ui/HeaderButtonActionBar;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;
return-object v0
.end method
.method static synthetic q(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/widget/TextView;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->h:Landroid/widget/TextView;
return-object v0
.end method
.method static synthetic r(Lcom/bbm/ui/activities/AddChannelPostActivity;)Z
.registers 2
iget-boolean v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->o:Z
return v0
.end method
.method static synthetic s(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
.registers 5
invoke-static {p0}, Lcom/bbm/util/fb;->b(Landroid/app/Activity;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->o:Z
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->l:Landroid/widget/ImageButton;
const v1, 0x7f02001c
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setBackgroundResource(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->p:Landroid/os/Handler;
new-instance v1, Lcom/bbm/ui/activities/f;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/f;-><init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
const-wide/16 v2, 0xc8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method static synthetic t(Lcom/bbm/ui/activities/AddChannelPostActivity;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->p:Landroid/os/Handler;
return-object v0
.end method
.method static synthetic u(Lcom/bbm/ui/activities/AddChannelPostActivity;)Z
.registers 2
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->s:Z
return v0
.end method
.method static synthetic v(Lcom/bbm/ui/activities/AddChannelPostActivity;)Lcom/bbm/ui/EmoticonPicker;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->j:Lcom/bbm/ui/EmoticonPicker;
return-object v0
.end method
.method public final a(Ljava/lang/String;)V
.registers 4
invoke-virtual {p0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->getCurrentFocus()Landroid/view/View;
move-result-object v0
instance-of v1, v0, Landroid/widget/EditText;
if-eqz v1, :cond_14
iget-object v1, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->g:Lcom/bbm/ui/InlineImageEditText;
if-ne v0, v1, :cond_15
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->g:Lcom/bbm/ui/InlineImageEditText;
invoke-static {v0, p1}, Lcom/bbm/ui/EmoticonPicker;->a(Landroid/widget/EditText;Ljava/lang/String;)V
:goto_11
:cond_11
invoke-direct {p0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->a()V
:cond_14
return-void
:cond_15
iget-object v1, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->f:Lcom/bbm/ui/InlineImageEditText;
if-ne v0, v1, :cond_11
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->f:Lcom/bbm/ui/InlineImageEditText;
invoke-static {v0, p1}, Lcom/bbm/ui/EmoticonPicker;->a(Landroid/widget/EditText;Ljava/lang/String;)V
goto :goto_11
.end method
.method protected onActivityResult(IILandroid/content/Intent;)V
.registers 6
invoke-super {p0, p1, p2, p3}, Lcom/bbm/ui/activities/ajy;->onActivityResult(IILandroid/content/Intent;)V
const/4 v0, 0x1
if-ne p1, v0, :cond_15
const/16 v0, 0xa
if-ne p2, v0, :cond_15
const-string v0, "imageUrl"
invoke-virtual {p3, v0}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_15
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->b(Ljava/lang/String;)V
:cond_15
const/4 v0, 0x2
if-ne p1, v0, :cond_28
const/4 v0, -0x1
if-ne p2, v0, :cond_28
invoke-virtual {p3}, Landroid/content/Intent;->getExtras()Landroid/os/Bundle;
move-result-object v0
const-string v1, "path"
invoke-virtual {v0, v1}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->b(Ljava/lang/String;)V
:cond_28
return-void
.end method
.method protected onCreate(Landroid/os/Bundle;)V
.registers 10
const-string v1, " + Lcom/bbm/ui/activities/AddChannelPostActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v7, 0x0
const/4 v6, -0x1
const/16 v5, 0x8
invoke-super {p0, p1}, Lcom/bbm/ui/activities/ajy;->onCreate(Landroid/os/Bundle;)V
const/high16 v0, 0x7f03
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->setContentView(I)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "channelURI"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->m:Ljava/lang/String;
invoke-virtual {p0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->getIntent()Landroid/content/Intent;
move-result-object v0
const-string v1, "initiator"
invoke-virtual {v0, v1, v6}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I
move-result v0
iput v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->t:I
const v0, 0x7f0a00a9
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->b:Lcom/bbm/ui/ObservingImageView;
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v5}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
const v0, 0x7f0a00aa
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->c:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->c:Landroid/widget/ImageButton;
new-instance v1, Lcom/bbm/ui/activities/a;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/a;-><init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->c:Landroid/widget/ImageButton;
invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V
const v0, 0x7f0a00ab
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->d:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->d:Landroid/widget/ImageButton;
new-instance v1, Lcom/bbm/ui/activities/g;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/g;-><init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->d:Landroid/widget/ImageButton;
invoke-virtual {v0, v5}, Landroid/widget/ImageButton;->setVisibility(I)V
const v0, 0x7f0a00a5
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ProgressBar;
iput-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->q:Landroid/widget/ProgressBar;
new-instance v0, Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {p0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e00f6
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-virtual {p0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x7f0e0171
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {p0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f0e01c5
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v3
invoke-direct {v0, p0, v1, v2, v3}, Lcom/bbm/ui/HeaderButtonActionBar;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
iput-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/h;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/h;-><init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v1, Lcom/bbm/ui/activities/i;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/i;-><init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/HeaderButtonActionBar;->setNegativeButtonOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;
invoke-virtual {v0, v7}, Lcom/bbm/ui/HeaderButtonActionBar;->setPositiveButtonEnabled(Z)V
invoke-virtual {p0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->getActionBar()Landroid/app/ActionBar;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->e:Lcom/bbm/ui/HeaderButtonActionBar;
new-instance v2, Landroid/app/ActionBar$LayoutParams;
invoke-direct {v2, v6, v6}, Landroid/app/ActionBar$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1, v2}, Landroid/app/ActionBar;->setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
const/16 v1, 0x10
invoke-virtual {v0, v1}, Landroid/app/ActionBar;->setDisplayOptions(I)V
const v0, 0x7f0a00ac
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageEditText;
iput-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->f:Lcom/bbm/ui/InlineImageEditText;
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->f:Lcom/bbm/ui/InlineImageEditText;
const/16 v1, 0x64
invoke-static {v0, v1}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->f:Lcom/bbm/ui/InlineImageEditText;
new-instance v1, Lcom/bbm/ui/activities/j;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/j;-><init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v0, 0x7f0a00ae
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageEditText;
iput-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->g:Lcom/bbm/ui/InlineImageEditText;
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->g:Lcom/bbm/ui/InlineImageEditText;
const/16 v1, 0x190
invoke-static {v0, v1}, Lcom/bbm/ui/gw;->a(Landroid/widget/EditText;I)Lcom/bbm/ui/gw;
new-instance v0, Lcom/bbm/ui/activities/k;
invoke-direct {v0, p0}, Lcom/bbm/ui/activities/k;-><init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
iget-object v1, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->g:Lcom/bbm/ui/InlineImageEditText;
invoke-virtual {v1, v0}, Lcom/bbm/ui/InlineImageEditText;->addTextChangedListener(Landroid/text/TextWatcher;)V
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->g:Lcom/bbm/ui/InlineImageEditText;
invoke-virtual {v0}, Lcom/bbm/ui/InlineImageEditText;->requestFocus()Z
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->g:Lcom/bbm/ui/InlineImageEditText;
new-instance v1, Lcom/bbm/ui/activities/l;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/l;-><init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageEditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->g:Lcom/bbm/ui/InlineImageEditText;
new-instance v1, Lcom/bbm/ui/activities/m;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/m;-><init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/InlineImageEditText;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v0, 0x7f0a00b0
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->h:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->h:Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v2, 0x7f0e01d1
invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v2, v7
invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
const v0, 0x7f0a00b2
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->k:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->k:Landroid/widget/ImageButton;
new-instance v1, Lcom/bbm/ui/activities/n;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/n;-><init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a00b1
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->l:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->l:Landroid/widget/ImageButton;
new-instance v1, Lcom/bbm/ui/activities/b;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/b;-><init>(Lcom/bbm/ui/activities/AddChannelPostActivity;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const v0, 0x7f0a00b3
invoke-virtual {p0, v0}, Lcom/bbm/ui/activities/AddChannelPostActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/EmoticonPicker;
iput-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->j:Lcom/bbm/ui/EmoticonPicker;
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->j:Lcom/bbm/ui/EmoticonPicker;
invoke-virtual {v0, v5}, Lcom/bbm/ui/EmoticonPicker;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/activities/AddChannelPostActivity;->j:Lcom/bbm/ui/EmoticonPicker;
invoke-virtual {v0, p0}, Lcom/bbm/ui/EmoticonPicker;->setEmoticonPickerListener(Lcom/bbm/ui/br;)V
const-string v1, " - Lcom/bbm/ui/activities/AddChannelPostActivity; onCreate"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method