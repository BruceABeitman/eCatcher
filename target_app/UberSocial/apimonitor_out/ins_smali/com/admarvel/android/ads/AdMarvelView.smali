.class public Lcom/admarvel/android/ads/AdMarvelView;
.super Landroid/widget/LinearLayout;
.source "SourceFile"
.field static a:Ljava/lang/String;
.field public static b:Z
.field protected static d:Z
.field private static j:Z
.field private static o:Z
.field private static w:Z
.field private static x:Lcom/admarvel/android/b/c;
.field private static z:Ljava/lang/ref/WeakReference;
.field private A:Lcom/admarvel/android/ads/AdMarvelAd;
.field private B:Z
.field final c:Ljava/lang/String;
.field private e:I
.field private f:I
.field private g:I
.field private h:I
.field private final i:Lcom/admarvel/android/ads/r;
.field private k:Z
.field private l:Z
.field private final m:Ljava/util/concurrent/atomic/AtomicLong;
.field private n:Z
.field private p:Z
.field private final q:Lcom/admarvel/android/ads/AdMarvelView$k;
.field private final r:Lcom/admarvel/android/ads/AdMarvelView$l;
.field private final s:Landroid/os/Handler;
.field private t:Ljava/util/Map;
.field private u:Z
.field private v:Z
.field private y:Z
.method static constructor <clinit>()V
.registers 2
const/4 v1, 0x1
const/4 v0, 0x0
sput-boolean v0, Lcom/admarvel/android/ads/AdMarvelView;->j:Z
sput-boolean v1, Lcom/admarvel/android/ads/AdMarvelView;->o:Z
sput-boolean v1, Lcom/admarvel/android/ads/AdMarvelView;->w:Z
const/4 v0, 0x0
sput-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;
sput-boolean v1, Lcom/admarvel/android/ads/AdMarvelView;->d:Z
return-void
.end method
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/admarvel/android/ads/AdMarvelView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 8
const/16 v4, 0x10
const/4 v1, 0x1
const/4 v3, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelView;->k:Z
iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->n:Z
iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelView;->p:Z
iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->u:Z
iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelView;->v:Z
iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelView;->y:Z
iput-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelView;->B:Z
new-instance v0, Lcom/admarvel/android/ads/r;
invoke-direct {v0}, Lcom/admarvel/android/ads/r;-><init>()V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;
iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->u:Z
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;
invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;
move-result-object v0
invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;
invoke-static {v0}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;)V
invoke-static {}, Lcom/admarvel/android/ads/ac;->b()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/AdMarvelView;->setFocusable(Z)V
const/high16 v0, 0x4
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->setDescendantFocusability(I)V
invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/AdMarvelView;->setClickable(Z)V
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, "http://schemas.android.com/apk/res/"
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
if-eqz p2, :cond_f8
const-string v1, "backgroundColor"
invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_77
const-string v1, "0"
const-string v2, "backgroundColor"
invoke-interface {p2, v0, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_110
iput v3, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I
:cond_77
:goto_77
const-string v1, "textBackgroundColor"
invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_93
const-string v1, "textBackgroundColor"
invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "#"
const-string v3, ""
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->f:I
:cond_93
const-string v1, "textFontColor"
invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_af
const-string v1, "textFontColor"
invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "#"
const-string v3, ""
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->g:I
:cond_af
const-string v1, "textBorderColor"
invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_cb
const-string v1, "textBorderColor"
invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "#"
const-string v3, ""
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->h:I
:cond_cb
const-string v1, "disableAnimation"
invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_df
const-string v1, "disableAnimation"
invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v1
iput-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->l:Z
:cond_df
const-string v1, "enableClickRedirect"
invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
if-eqz v1, :cond_f3
const-string v1, "enableClickRedirect"
invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ljava/lang/Boolean;->parseBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->n:Z
:cond_f3
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->setAdMarvelBackgroundColor(I)V
:cond_f8
new-instance v0, Ljava/util/concurrent/atomic/AtomicLong;
const-wide/16 v1, 0x0
invoke-direct {v0, v1, v2}, Ljava/util/concurrent/atomic/AtomicLong;-><init>(J)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->m:Ljava/util/concurrent/atomic/AtomicLong;
new-instance v0, Lcom/admarvel/android/ads/AdMarvelView$k;
invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelView$k;-><init>(Lcom/admarvel/android/ads/AdMarvelView;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->q:Lcom/admarvel/android/ads/AdMarvelView$k;
new-instance v0, Lcom/admarvel/android/ads/AdMarvelView$l;
invoke-direct {v0, p0}, Lcom/admarvel/android/ads/AdMarvelView$l;-><init>(Lcom/admarvel/android/ads/AdMarvelView;)V
iput-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->r:Lcom/admarvel/android/ads/AdMarvelView$l;
return-void
:cond_110
const-string v1, "backgroundColor"
invoke-interface {p2, v0, v1}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const-string v2, "#"
const-string v3, ""
invoke-virtual {v1, v2, v3}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;
move-result-object v1
invoke-static {v1, v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;I)I
move-result v1
iput v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I
goto/16 :goto_77
.end method
.method static synthetic a(Lcom/admarvel/android/b/c;)Lcom/admarvel/android/b/c;
.registers 1
sput-object p0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;
return-object p0
.end method
.method private a(Landroid/view/View;)V
.registers 3
if-eqz p1, :cond_e
instance-of v0, p1, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v0, :cond_e
check-cast p1, Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelWebView;->d()V
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelWebView;->c()V
:cond_e
return-void
.end method
.method private a(Landroid/view/View;Lcom/admarvel/android/ads/AdMarvelAd;)V
.registers 10
const/4 v6, 0x1
const/high16 v1, 0x4000
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->l:Z
if-eqz v0, :cond_8
:goto_7
return-void
:cond_8
const/16 v0, 0x8
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->setVisibility(I)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->setVisibility(I)V
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getWidth()I
move-result v0
int-to-float v0, v0
div-float v3, v0, v1
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getHeight()I
move-result v0
int-to-float v0, v0
div-float v4, v0, v1
const v0, -0x41666666
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getWidth()I
move-result v1
int-to-float v1, v1
mul-float v5, v0, v1
new-instance v0, Lcom/admarvel/android/ads/aa;
const/4 v1, 0x0
const/high16 v2, -0x3d4c
invoke-direct/range {v0 .. v6}, Lcom/admarvel/android/ads/aa;-><init>(FFFFFZ)V
const-wide/16 v1, 0x2bc
invoke-virtual {v0, v1, v2}, Lcom/admarvel/android/ads/aa;->setDuration(J)V
invoke-virtual {v0, v6}, Lcom/admarvel/android/ads/aa;->setFillAfter(Z)V
new-instance v1, Landroid/view/animation/AccelerateInterpolator;
invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/aa;->setInterpolator(Landroid/view/animation/Interpolator;)V
new-instance v1, Lcom/admarvel/android/ads/AdMarvelView$2;
invoke-direct {v1, p0, p1, p2}, Lcom/admarvel/android/ads/AdMarvelView$2;-><init>(Lcom/admarvel/android/ads/AdMarvelView;Landroid/view/View;Lcom/admarvel/android/ads/AdMarvelAd;)V
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/aa;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_7
.end method
.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelView;Landroid/view/View;)V
.registers 2
invoke-direct {p0, p1}, Lcom/admarvel/android/ads/AdMarvelView;->a(Landroid/view/View;)V
return-void
.end method
.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelView;Landroid/view/View;Lcom/admarvel/android/ads/AdMarvelAd;)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/admarvel/android/ads/AdMarvelView;->a(Landroid/view/View;Lcom/admarvel/android/ads/AdMarvelAd;)V
return-void
.end method
.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelView;)Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->k:Z
return v0
.end method
.method static synthetic a(Lcom/admarvel/android/ads/AdMarvelView;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->k:Z
return p1
.end method
.method private b(Landroid/view/View;)V
.registers 4
:try_start_0
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;
const-string v1, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V
const-string v0, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: cleanupView"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_10
:try_start_10
:try_end_10
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_10} :catch_b4
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;
const-string v1, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V
const-string v0, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: cleanupView"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_20
:try_end_20
.catch Ljava/lang/Exception; {:try_start_10 .. :try_end_20} :catch_b1
:try_start_20
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;
const-string v1, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V
const-string v0, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: cleanupView"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_30
:try_start_30
:try_end_30
.catch Ljava/lang/Exception; {:try_start_20 .. :try_end_30} :catch_af
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;
const-string v1, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V
const-string v0, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: cleanupView"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_40
:try_end_40
.catch Ljava/lang/Exception; {:try_start_30 .. :try_end_40} :catch_ad
:try_start_40
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;
const-string v1, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V
const-string v0, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: cleanupView"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_50
:try_start_50
:try_end_50
.catch Ljava/lang/Exception; {:try_start_40 .. :try_end_50} :catch_ab
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;
const-string v1, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V
const-string v0, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: cleanupView"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_60
.catch Ljava/lang/Exception; {:try_start_50 .. :try_end_60} :catch_a9
:goto_60
:try_start_60
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;
const-string v1, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V
const-string v0, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: cleanupView"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_70
:try_start_70
:try_end_70
.catch Ljava/lang/Exception; {:try_start_60 .. :try_end_70} :catch_a7
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;
const-string v1, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V
const-string v0, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: cleanupView"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_80
:try_end_80
.catch Ljava/lang/Exception; {:try_start_70 .. :try_end_80} :catch_a5
:try_start_80
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;
const-string v1, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V
const-string v0, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: cleanupView"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_start_90
:try_end_90
.catch Ljava/lang/Exception; {:try_start_80 .. :try_end_90} :catch_a3
:goto_90
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;
const-string v1, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->cleanupView(Landroid/view/View;)V
const-string v0, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: cleanupView"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_a0
.catch Ljava/lang/Exception; {:try_start_90 .. :try_end_a0} :catch_a1
:goto_a0
return-void
:catch_a1
move-exception v0
goto :goto_a0
:catch_a3
move-exception v0
goto :goto_90
:catch_a5
move-exception v0
goto :goto_80
:catch_a7
move-exception v0
goto :goto_70
:catch_a9
move-exception v0
goto :goto_60
:catch_ab
move-exception v0
goto :goto_50
:catch_ad
move-exception v0
goto :goto_40
:catch_af
move-exception v0
goto :goto_30
:catch_b1
move-exception v0
goto/16 :goto_20
:catch_b4
move-exception v0
goto/16 :goto_10
.end method
.method static synthetic b(Lcom/admarvel/android/ads/AdMarvelView;Landroid/view/View;)V
.registers 2
invoke-direct {p0, p1}, Lcom/admarvel/android/ads/AdMarvelView;->b(Landroid/view/View;)V
return-void
.end method
.method static synthetic b(Lcom/admarvel/android/ads/AdMarvelView;)Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->l:Z
return v0
.end method
.method static synthetic c()Lcom/admarvel/android/b/c;
.registers 1
sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;
return-object v0
.end method
.method static synthetic c(Lcom/admarvel/android/ads/AdMarvelView;)V
.registers 1
invoke-direct {p0}, Lcom/admarvel/android/ads/AdMarvelView;->e()V
return-void
.end method
.method static synthetic d(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/r;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;
return-object v0
.end method
.method static synthetic d()Ljava/lang/ref/WeakReference;
.registers 1
sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->z:Ljava/lang/ref/WeakReference;
return-object v0
.end method
.method public static declared-synchronized disableNetworkActivity()V
.registers 3
const-class v1, Lcom/admarvel/android/ads/AdMarvelView;
monitor-enter v1
const/4 v0, 0x0
:try_start_4
sput-boolean v0, Lcom/admarvel/android/ads/AdMarvelView;->w:Z
sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;
if-eqz v0, :cond_1b
sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;
invoke-virtual {v0}, Lcom/admarvel/android/b/c;->isCancelled()Z
move-result v0
if-nez v0, :cond_1b
sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;
const/4 v2, 0x1
invoke-virtual {v0, v2}, Lcom/admarvel/android/b/c;->cancel(Z)Z
const/4 v0, 0x0
sput-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;
:cond_1b
:try_end_1b
.catchall {:try_start_4 .. :try_end_1b} :catchall_1d
monitor-exit v1
return-void
:catchall_1d
move-exception v0
monitor-exit v1
throw v0
.end method
.method static synthetic e(Lcom/admarvel/android/ads/AdMarvelView;)Landroid/os/Handler;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;
return-object v0
.end method
.method private e()V
.registers 4
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->l:Z
if-eqz v0, :cond_5
:goto_4
return-void
:cond_5
new-instance v0, Landroid/view/animation/AlphaAnimation;
const/4 v1, 0x0
const/high16 v2, 0x3f80
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
const-wide/16 v1, 0xe9
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
invoke-virtual {v0}, Landroid/view/animation/AlphaAnimation;->startNow()V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V
new-instance v1, Landroid/view/animation/AccelerateInterpolator;
invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V
invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setInterpolator(Landroid/view/animation/Interpolator;)V
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_4
.end method
.method public static declared-synchronized enableNetworkActivity(Landroid/app/Activity;Ljava/lang/String;)V
.registers 5
const/16 v2, 0xb
const-class v1, Lcom/admarvel/android/ads/AdMarvelView;
monitor-enter v1
const/4 v0, 0x1
:try_start_6
sput-boolean v0, Lcom/admarvel/android/ads/AdMarvelView;->w:Z
sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;
if-eqz v0, :cond_33
sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;
invoke-virtual {v0}, Lcom/admarvel/android/b/c;->isCancelled()Z
move-result v0
if-eqz v0, :cond_33
const/4 v0, 0x0
sput-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
if-lt v0, v2, :cond_27
new-instance v0, Lcom/admarvel/android/ads/AdMarvelView$g;
invoke-direct {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelView$g;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelView$g;->run()V
:goto_25
:try_end_25
.catchall {:try_start_6 .. :try_end_25} :catchall_30
monitor-exit v1
return-void
:cond_27
:try_start_27
sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Void;
invoke-virtual {v0, v2}, Lcom/admarvel/android/b/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:try_end_2f
.catchall {:try_start_27 .. :try_end_2f} :catchall_30
goto :goto_25
:catchall_30
move-exception v0
monitor-exit v1
throw v0
:cond_33
:try_start_33
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
if-lt v0, v2, :cond_42
new-instance v0, Lcom/admarvel/android/ads/AdMarvelView$g;
invoke-direct {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelView$g;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelView$g;->run()V
goto :goto_25
:cond_42
sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;
const/4 v2, 0x0
new-array v2, v2, [Ljava/lang/Void;
invoke-virtual {v0, v2}, Lcom/admarvel/android/b/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
:try_end_4a
.catchall {:try_start_33 .. :try_end_4a} :catchall_30
goto :goto_25
.end method
.method static synthetic f(Lcom/admarvel/android/ads/AdMarvelView;)Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->y:Z
return v0
.end method
.method public static forceCloseFullScreenAd(Landroid/app/Activity;Lcom/admarvel/android/ads/AdMarvelActivity;Lcom/admarvel/android/ads/AdMarvelVideoActivity;)V
.registers 5
if-eqz p1, :cond_5
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelActivity;->finish()V
:cond_5
if-eqz p2, :cond_a
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelVideoActivity;->finish()V
:cond_a
:try_start_a
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V
const-string v0, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: forceCloseFullScreenAd"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_1a
.catch Ljava/lang/Exception; {:try_start_a .. :try_end_1a} :catch_be
:try_start_1a
:goto_1a
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V
const-string v0, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: forceCloseFullScreenAd"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_start_2a
:goto_2a
:try_end_2a
.catch Ljava/lang/Exception; {:try_start_1a .. :try_end_2a} :catch_bb
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V
const-string v0, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: forceCloseFullScreenAd"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_3a
.catch Ljava/lang/Exception; {:try_start_2a .. :try_end_3a} :catch_b9
:try_start_3a
:goto_3a
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V
const-string v0, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: forceCloseFullScreenAd"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_4a
:try_start_4a
:try_end_4a
.catch Ljava/lang/Exception; {:try_start_3a .. :try_end_4a} :catch_b7
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V
const-string v0, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: forceCloseFullScreenAd"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_5a
:try_end_5a
.catch Ljava/lang/Exception; {:try_start_4a .. :try_end_5a} :catch_b5
:try_start_5a
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V
const-string v0, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: forceCloseFullScreenAd"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_6a
:try_end_6a
.catch Ljava/lang/Exception; {:try_start_5a .. :try_end_6a} :catch_b3
:try_start_6a
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V
const-string v0, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: forceCloseFullScreenAd"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_7a
.catch Ljava/lang/Exception; {:try_start_6a .. :try_end_7a} :catch_b1
:goto_7a
:try_start_7a
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V
const-string v0, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: forceCloseFullScreenAd"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_start_8a
:goto_8a
:try_end_8a
.catch Ljava/lang/Exception; {:try_start_7a .. :try_end_8a} :catch_af
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V
const-string v0, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: forceCloseFullScreenAd"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_9a
:try_end_9a
.catch Ljava/lang/Exception; {:try_start_8a .. :try_end_9a} :catch_ad
:try_start_9a
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/AdMarvelAdapter;->forceCloseFullScreenAd(Landroid/app/Activity;)V
const-string v0, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: forceCloseFullScreenAd"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_aa
.catch Ljava/lang/Exception; {:try_start_9a .. :try_end_aa} :catch_ab
:goto_aa
return-void
:catch_ab
move-exception v0
goto :goto_aa
:catch_ad
move-exception v0
goto :goto_9a
:catch_af
move-exception v0
goto :goto_8a
:catch_b1
move-exception v0
goto :goto_7a
:catch_b3
move-exception v0
goto :goto_6a
:catch_b5
move-exception v0
goto :goto_5a
:catch_b7
move-exception v0
goto :goto_4a
:catch_b9
move-exception v0
goto :goto_3a
:catch_bb
move-exception v0
goto/16 :goto_2a
:catch_be
move-exception v0
goto/16 :goto_1a
.end method
.method static synthetic g(Lcom/admarvel/android/ads/AdMarvelView;)Lcom/admarvel/android/ads/AdMarvelAd;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->A:Lcom/admarvel/android/ads/AdMarvelAd;
return-object v0
.end method
.method static synthetic h(Lcom/admarvel/android/ads/AdMarvelView;)Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->u:Z
return v0
.end method
.method public static initialize(Landroid/app/Activity;Ljava/util/Map;)V
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xb
if-lt v0, v1, :cond_f
sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelView;->o:Z
if-eqz v0, :cond_f
invoke-static {p0}, Lcom/admarvel/android/ads/AdMarvelView$j;->a(Landroid/app/Activity;)V
:cond_f
new-instance v0, Lcom/admarvel/android/a/a;
invoke-direct {v0, p0}, Lcom/admarvel/android/a/a;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/admarvel/android/a/a;->a()V
:try_start_17
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: startActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_27
.catch Ljava/lang/Exception; {:try_start_17 .. :try_end_27} :catch_e8
:goto_27
:try_start_27
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: startActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_37
:try_start_37
:try_end_37
.catch Ljava/lang/Exception; {:try_start_27 .. :try_end_37} :catch_e5
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: startActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_47
.catch Ljava/lang/Exception; {:try_start_37 .. :try_end_47} :catch_e2
:goto_47
:try_start_47
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: startActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_57
:try_start_57
:try_end_57
.catch Ljava/lang/Exception; {:try_start_47 .. :try_end_57} :catch_df
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: startActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_67
.catch Ljava/lang/Exception; {:try_start_57 .. :try_end_67} :catch_dd
:goto_67
:try_start_67
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: startActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_77
:try_start_77
:try_end_77
.catch Ljava/lang/Exception; {:try_start_67 .. :try_end_77} :catch_db
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: startActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_87
.catch Ljava/lang/Exception; {:try_start_77 .. :try_end_87} :catch_d9
:goto_87
:try_start_87
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: startActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_start_97
:try_end_97
.catch Ljava/lang/Exception; {:try_start_87 .. :try_end_97} :catch_d7
:goto_97
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: startActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_a7
.catch Ljava/lang/Exception; {:try_start_97 .. :try_end_a7} :catch_d5
:try_start_a7
:goto_a7
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->initialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: startActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_b7
.catch Ljava/lang/Exception; {:try_start_a7 .. :try_end_b7} :catch_d3
:goto_b7
:try_start_b7
const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"
invoke-static {v0, p0}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->start()V
:try_end_c0
.catch Ljava/lang/Exception; {:try_start_b7 .. :try_end_c0} :catch_d1
:goto_c0
new-instance v0, Ljava/lang/Thread;
new-instance v1, Lcom/admarvel/android/ads/AdMarvelView$1;
invoke-direct {v1, p0}, Lcom/admarvel/android/ads/AdMarvelView$1;-><init>(Landroid/app/Activity;)V
invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V
invoke-virtual {v0}, Ljava/lang/Thread;->start()V
invoke-static {p0}, Lcom/admarvel/android/ads/ab;->m(Landroid/content/Context;)V
return-void
:catch_d1
move-exception v0
goto :goto_c0
:catch_d3
move-exception v0
goto :goto_b7
:catch_d5
move-exception v0
goto :goto_a7
:catch_d7
move-exception v0
goto :goto_97
:catch_d9
move-exception v0
goto :goto_87
:catch_db
move-exception v0
goto :goto_77
:catch_dd
move-exception v0
goto :goto_67
:catch_df
move-exception v0
goto/16 :goto_57
:catch_e2
move-exception v0
goto/16 :goto_47
:catch_e5
move-exception v0
goto/16 :goto_37
:catch_e8
move-exception v0
goto/16 :goto_27
.end method
.method public static initializeOfflineSDK(Landroid/app/Activity;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x1
sput-boolean v0, Lcom/admarvel/android/ads/AdMarvelView;->b:Z
const-string v0, "Offline SDK:initializeOfflineSDK "
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelView;->w:Z
if-eqz v0, :cond_29
invoke-static {p0}, Lcom/admarvel/android/ads/ab;->f(Landroid/content/Context;)Z
move-result v0
if-eqz v0, :cond_29
new-instance v0, Lcom/admarvel/android/b/c;
invoke-direct {v0, p1, p0}, Lcom/admarvel/android/b/c;-><init>(Ljava/lang/String;Landroid/app/Activity;)V
sput-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;
invoke-static {}, Lcom/admarvel/android/ads/ac;->a()I
move-result v0
const/16 v1, 0xb
if-lt v0, v1, :cond_2a
new-instance v0, Lcom/admarvel/android/ads/AdMarvelView$g;
invoke-direct {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelView$g;-><init>(Landroid/app/Activity;Ljava/lang/String;)V
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelView$g;->run()V
:goto_29
:cond_29
return-void
:cond_2a
sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->x:Lcom/admarvel/android/b/c;
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/admarvel/android/b/c;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
goto :goto_29
.end method
.method public static pause(Landroid/app/Activity;Ljava/util/Map;Lcom/admarvel/android/ads/AdMarvelView;)V
.registers 6
if-eqz p2, :cond_11
const-string v0, "CURRENT"
invoke-virtual {p2, v0}, Lcom/admarvel/android/ads/AdMarvelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v1, :cond_11
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->a()V
:cond_11
invoke-static {}, Lcom/admarvel/android/ads/b;->a()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_42
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
:try_start_2f
const-string v2, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelAdapter;
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: pause"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_3f
.catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3f} :catch_40
goto :goto_1d
:catch_40
move-exception v0
goto :goto_1d
:cond_42
:try_start_42
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: pause"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_52
:try_start_52
:try_end_52
.catch Ljava/lang/Exception; {:try_start_42 .. :try_end_52} :catch_ef
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: pause"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_62
.catch Ljava/lang/Exception; {:try_start_52 .. :try_end_62} :catch_ec
:goto_62
:try_start_62
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: pause"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_72
:try_start_72
:try_end_72
.catch Ljava/lang/Exception; {:try_start_62 .. :try_end_72} :catch_ea
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: pause"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_82
:try_end_82
.catch Ljava/lang/Exception; {:try_start_72 .. :try_end_82} :catch_e8
:try_start_82
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: pause"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_start_92
:try_end_92
.catch Ljava/lang/Exception; {:try_start_82 .. :try_end_92} :catch_e6
:goto_92
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: pause"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_a2
.catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a2} :catch_e4
:try_start_a2
:goto_a2
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: pause"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_b2
.catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_b2} :catch_e2
:goto_b2
:try_start_b2
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: pause"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_c2
.catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_c2} :catch_e0
:goto_c2
:try_start_c2
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->pause(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: pause"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_d2
.catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_d2} :catch_de
:try_start_d2
:goto_d2
const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"
invoke-static {v0, p0}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->pause()V
:try_end_db
.catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_db} :catch_dc
:goto_db
return-void
:catch_dc
move-exception v0
goto :goto_db
:catch_de
move-exception v0
goto :goto_d2
:catch_e0
move-exception v0
goto :goto_c2
:catch_e2
move-exception v0
goto :goto_b2
:catch_e4
move-exception v0
goto :goto_a2
:catch_e6
move-exception v0
goto :goto_92
:catch_e8
move-exception v0
goto :goto_82
:catch_ea
move-exception v0
goto :goto_72
:catch_ec
move-exception v0
goto/16 :goto_62
:catch_ef
move-exception v0
goto/16 :goto_52
.end method
.method public static resume(Landroid/app/Activity;Ljava/util/Map;Lcom/admarvel/android/ads/AdMarvelView;)V
.registers 6
if-eqz p2, :cond_11
const-string v0, "CURRENT"
invoke-virtual {p2, v0}, Lcom/admarvel/android/ads/AdMarvelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v1, :cond_11
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->b()V
:cond_11
invoke-static {}, Lcom/admarvel/android/ads/b;->a()Ljava/util/Map;
move-result-object v0
invoke-interface {v0}, Ljava/util/Map;->entrySet()Ljava/util/Set;
move-result-object v0
invoke-interface {v0}, Ljava/util/Set;->iterator()Ljava/util/Iterator;
move-result-object v1
:goto_1d
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_42
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map$Entry;
invoke-interface {v0}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/util/Map;
:try_start_2f
const-string v2, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"
invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/admarvel/android/ads/AdMarvelAdapter;
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: resume"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_3f
.catch Ljava/lang/Exception; {:try_start_2f .. :try_end_3f} :catch_40
goto :goto_1d
:catch_40
move-exception v0
goto :goto_1d
:cond_42
:try_start_42
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: resume"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_52
:try_start_52
:try_end_52
.catch Ljava/lang/Exception; {:try_start_42 .. :try_end_52} :catch_ef
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: resume"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_62
.catch Ljava/lang/Exception; {:try_start_52 .. :try_end_62} :catch_ec
:goto_62
:try_start_62
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: resume"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_72
:try_start_72
:try_end_72
.catch Ljava/lang/Exception; {:try_start_62 .. :try_end_72} :catch_ea
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: resume"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_82
:try_end_82
.catch Ljava/lang/Exception; {:try_start_72 .. :try_end_82} :catch_e8
:try_start_82
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: resume"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_start_92
:try_end_92
.catch Ljava/lang/Exception; {:try_start_82 .. :try_end_92} :catch_e6
:goto_92
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: resume"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_a2
.catch Ljava/lang/Exception; {:try_start_92 .. :try_end_a2} :catch_e4
:try_start_a2
:goto_a2
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: resume"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_b2
.catch Ljava/lang/Exception; {:try_start_a2 .. :try_end_b2} :catch_e2
:goto_b2
:try_start_b2
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: resume"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_c2
.catch Ljava/lang/Exception; {:try_start_b2 .. :try_end_c2} :catch_e0
:goto_c2
:try_start_c2
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->resume(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: resume"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_d2
.catch Ljava/lang/Exception; {:try_start_c2 .. :try_end_d2} :catch_de
:try_start_d2
:goto_d2
const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"
invoke-static {v0, p0}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->pause()V
:try_end_db
.catch Ljava/lang/Exception; {:try_start_d2 .. :try_end_db} :catch_dc
:goto_db
return-void
:catch_dc
move-exception v0
goto :goto_db
:catch_de
move-exception v0
goto :goto_d2
:catch_e0
move-exception v0
goto :goto_c2
:catch_e2
move-exception v0
goto :goto_b2
:catch_e4
move-exception v0
goto :goto_a2
:catch_e6
move-exception v0
goto :goto_92
:catch_e8
move-exception v0
goto :goto_82
:catch_ea
move-exception v0
goto :goto_72
:catch_ec
move-exception v0
goto/16 :goto_62
:catch_ef
move-exception v0
goto/16 :goto_52
.end method
.method public static setEnableHardwareAcceleration(Z)V
.registers 1
sput-boolean p0, Lcom/admarvel/android/ads/AdMarvelView;->o:Z
return-void
.end method
.method public static uninitialize(Landroid/app/Activity;Ljava/util/Map;)V
.registers 4
invoke-static {}, Lcom/admarvel/android/ads/n;->a()Lcom/admarvel/android/ads/n;
move-result-object v0
if-eqz v0, :cond_f
invoke-virtual {v0}, Lcom/admarvel/android/ads/n;->b()Z
move-result v1
if-eqz v1, :cond_f
invoke-virtual {v0}, Lcom/admarvel/android/ads/n;->c()V
:cond_f
invoke-static {}, Lcom/admarvel/android/ads/l;->a()Lcom/admarvel/android/ads/l;
move-result-object v0
if-eqz v0, :cond_18
invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/l;->a(Landroid/content/Context;)V
:cond_18
:try_start_18
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelgoogleplayadapter.AdMarvelGooglePlayAdapter: endActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_28
.catch Ljava/lang/Exception; {:try_start_18 .. :try_end_28} :catch_de
:goto_28
:try_start_28
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelrhythmadapter.AdMarvelRhythmAdapter: endActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_38
:try_start_38
:try_end_38
.catch Ljava/lang/Exception; {:try_start_28 .. :try_end_38} :catch_db
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelgreystripeadapter.AdMarvelGreystripeAdapter: endActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_48
.catch Ljava/lang/Exception; {:try_start_38 .. :try_end_48} :catch_d8
:try_start_48
:goto_48
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelmillennialadapter.AdMarvelMillennialAdapter: endActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_58
:try_start_58
:try_end_58
.catch Ljava/lang/Exception; {:try_start_48 .. :try_end_58} :catch_d6
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelamazonadapter.AdMarvelAmazonAdapter: endActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_68
.catch Ljava/lang/Exception; {:try_start_58 .. :try_end_68} :catch_d4
:goto_68
:try_start_68
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarveladcolonyadapter.AdMarvelAdColonyAdapter: endActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_78
:try_start_78
:try_end_78
.catch Ljava/lang/Exception; {:try_start_68 .. :try_end_78} :catch_d2
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelpulse3dadapter.AdMarvelPulse3dAdapter: endActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_88
.catch Ljava/lang/Exception; {:try_start_78 .. :try_end_88} :catch_d0
:goto_88
:try_start_88
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelfacebookadapter.AdMarvelFacebookAdapter: endActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_start_98
:try_end_98
.catch Ljava/lang/Exception; {:try_start_88 .. :try_end_98} :catch_ce
:goto_98
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelinmobiadapter.AdMarvelInmobiAdapter: endActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:try_end_a8
.catch Ljava/lang/Exception; {:try_start_98 .. :try_end_a8} :catch_cc
:try_start_a8
:goto_a8
const-string v0, "ADMARVELGUID"
const-string v1, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter"
invoke-static {v0, v1}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
invoke-virtual {v0, p0, p1}, Lcom/admarvel/android/ads/AdMarvelAdapter;->uninitialize(Landroid/app/Activity;Ljava/util/Map;)V
const-string v0, "com.admarvel.android.admarvelheyzapadapter.AdMarvelHeyzapAdapter: endActivity"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
:goto_b8
:try_start_b8
:try_end_b8
.catch Ljava/lang/Exception; {:try_start_a8 .. :try_end_b8} :catch_ca
const-string v0, "com.admarvel.android.admarvelmologiqadapter.AdMarvelMologiqAdapter"
invoke-static {v0, p0}, Lcom/admarvel/android/ads/c;->a(Ljava/lang/String;Landroid/content/Context;)Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;
move-result-object v0
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelAnalyticsAdapter;->stop()V
:try_end_c1
.catch Ljava/lang/Exception; {:try_start_b8 .. :try_end_c1} :catch_c8
:goto_c1
invoke-static {}, Lcom/admarvel/android/util/e;->a()V
invoke-static {p0}, Lcom/admarvel/android/ads/ab;->m(Landroid/content/Context;)V
return-void
:catch_c8
move-exception v0
goto :goto_c1
:catch_ca
move-exception v0
goto :goto_b8
:catch_cc
move-exception v0
goto :goto_a8
:catch_ce
move-exception v0
goto :goto_98
:catch_d0
move-exception v0
goto :goto_88
:catch_d2
move-exception v0
goto :goto_78
:catch_d4
move-exception v0
goto :goto_68
:catch_d6
move-exception v0
goto :goto_58
:catch_d8
move-exception v0
goto/16 :goto_48
:catch_db
move-exception v0
goto/16 :goto_38
:catch_de
move-exception v0
goto/16 :goto_28
.end method
.method protected a(Lcom/admarvel/android/ads/AdMarvelAd;)V
.registers 11
const/4 v8, -0x2
const-string v0, "CURRENT"
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
instance-of v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;
if-eqz v1, :cond_10
check-cast v0, Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {v0}, Lcom/admarvel/android/ads/AdMarvelWebView;->d()V
:cond_10
const/4 v4, 0x0
sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->a:Ljava/lang/String;
if-eqz v0, :cond_1c
new-instance v4, Ljava/io/File;
sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->a:Ljava/lang/String;
invoke-direct {v4, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:cond_1c
sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->z:Ljava/lang/ref/WeakReference;
if-eqz v0, :cond_83
sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->z:Ljava/lang/ref/WeakReference;
invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v0
if-eqz v0, :cond_83
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView;
sget-object v1, Lcom/admarvel/android/ads/AdMarvelView;->z:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
check-cast v1, Landroid/content/Context;
iget-boolean v2, p0, Lcom/admarvel/android/ads/AdMarvelView;->u:Z
iget-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelView;->v:Z
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getXml()Ljava/lang/String;
move-result-object v5
iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;
move-object v6, p1
invoke-direct/range {v0 .. v7}, Lcom/admarvel/android/ads/AdMarvelWebView;-><init>(Landroid/content/Context;ZZLjava/io/File;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;Landroid/os/Handler;)V
:goto_40
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v1, v8, v8}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->setBackgroundColor(I)V
iget-boolean v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->n:Z
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->setEnableClickRedirect(Z)V
iget-object v1, v0, Lcom/admarvel/android/ads/AdMarvelWebView;->e:Ljava/lang/String;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView;->r:Lcom/admarvel/android/ads/AdMarvelView$l;
invoke-static {v1, v2}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(Ljava/lang/String;Lcom/admarvel/android/ads/s;)V
const-string v1, "PENDING"
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->setTag(Ljava/lang/Object;)V
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/AdMarvelWebView;->setVisibility(I)V
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getTextFontColor()I
move-result v1
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getTextBorderColor()I
move-result v2
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getTextBackgroundColor()I
move-result v3
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getAdMarvelBackgroundColor()I
move-result v4
move-object v5, p0
invoke-virtual/range {v0 .. v5}, Lcom/admarvel/android/ads/AdMarvelWebView;->a(IIIILcom/admarvel/android/ads/AdMarvelView;)V
:goto_77
const-string v1, "PENDING"
invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/AdMarvelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v1
if-nez v1, :cond_98
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->addView(Landroid/view/View;)V
return-void
:cond_83
new-instance v0, Lcom/admarvel/android/ads/AdMarvelWebView;
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;
move-result-object v1
iget-boolean v2, p0, Lcom/admarvel/android/ads/AdMarvelView;->u:Z
iget-boolean v3, p0, Lcom/admarvel/android/ads/AdMarvelView;->v:Z
invoke-virtual {p1}, Lcom/admarvel/android/ads/AdMarvelAd;->getXml()Ljava/lang/String;
move-result-object v5
iget-object v7, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;
move-object v6, p1
invoke-direct/range {v0 .. v7}, Lcom/admarvel/android/ads/AdMarvelWebView;-><init>(Landroid/content/Context;ZZLjava/io/File;Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;Landroid/os/Handler;)V
goto :goto_40
:cond_98
invoke-virtual {p0, v1}, Lcom/admarvel/android/ads/AdMarvelView;->removeView(Landroid/view/View;)V
goto :goto_77
.end method
.method protected a(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V
.registers 13
const/16 v3, 0x130
const/4 v6, 0x0
if-eqz p3, :cond_9b
const/4 v1, 0x0
:try_start_6
invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const/4 v4, 0x0
invoke-virtual {v0, v2, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v0
iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
invoke-virtual {p3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
invoke-virtual {p3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v4
const/4 v5, 0x0
invoke-virtual {v2, v4, v5}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v2
iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
if-eqz v0, :cond_9c
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const-string v5, "duration"
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v4
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getSDKVersion()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_44
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_6 .. :try_end_44} :catch_b8
move-result-object v0
:goto_45
if-eqz v0, :cond_9b
const-string v1, "admarvel"
invoke-static {v1}, Lcom/admarvel/android/ads/ab;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {p3, v1, v6}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;
move-result-object v1
invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;
move-result-object v2
new-instance v4, Ljava/util/Date;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v7
mul-int/lit16 v7, v7, 0x3e8
int-to-long v7, v7
add-long/2addr v5, v7
invoke-direct {v4, v5, v6}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v2, v4}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v2
invoke-static {v0}, Lcom/admarvel/android/ads/ab;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;
invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->commit()Z
const-string v0, "requestNewAd: AD REQUEST BLOCKED, IGNORING REQUEST"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v3}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
move-result-object v4
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;
move-result-object v5
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I
move-result v6
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;
move-result-object v7
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;
move-result-object v8
move-object v2, p0
invoke-virtual/range {v0 .. v8}, Lcom/admarvel/android/ads/r;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
:cond_9b
return-void
:cond_9c
:try_start_9c
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "duration"
invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getSDKVersion()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
:try_end_b6
.catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_9c .. :try_end_b6} :catch_b8
move-result-object v0
goto :goto_45
:catch_b8
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
move-object v0, v1
goto :goto_45
.end method
.method protected a(Ljava/util/Map;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;Landroid/content/Context;)V
.registers 15
const/16 v9, 0x130
if-eqz p2, :cond_6
:try_start_4
iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelView;->A:Lcom/admarvel/android/ads/AdMarvelAd;
:cond_6
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->c:Ljava/lang/String;
invoke-static {v0, p3}, Lcom/admarvel/android/ads/b;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/admarvel/android/ads/AdMarvelAdapter;
move-result-object v0
sget-object v1, Lcom/admarvel/android/ads/AdMarvelView;->z:Ljava/lang/ref/WeakReference;
if-eqz v1, :cond_83
sget-object v1, Lcom/admarvel/android/ads/AdMarvelView;->z:Ljava/lang/ref/WeakReference;
invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v1
if-eqz v1, :cond_83
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->q:Lcom/admarvel/android/ads/AdMarvelView$k;
sget-object v2, Lcom/admarvel/android/ads/AdMarvelView;->z:Ljava/lang/ref/WeakReference;
invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;
move-result-object v2
check-cast v2, Landroid/content/Context;
iget v5, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I
iget v6, p0, Lcom/admarvel/android/ads/AdMarvelView;->g:I
move-object v3, p2
move-object v4, p1
invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/AdMarvelAdapter;->requestNewAd(Lcom/admarvel/android/ads/AdMarvelAdapterListener;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/util/Map;II)Landroid/view/View;
move-result-object v0
move-object v1, v0
:goto_2d
if-eqz v1, :cond_82
:goto_2f
const-string v0, "PENDING"
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->findViewWithTag(Ljava/lang/Object;)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_92
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
iget v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
if-gez v2, :cond_45
const/4 v2, -0x1
iput v2, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
:cond_45
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->setGravity(I)V
new-instance v2, Landroid/widget/FrameLayout;
invoke-direct {v2, p4}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V
new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
const/4 v3, -0x2
const/4 v4, -0x2
const/4 v5, 0x1
invoke-direct {v0, v3, v4, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(III)V
invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
instance-of v0, v0, Landroid/widget/LinearLayout$LayoutParams;
if-eqz v0, :cond_be
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout$LayoutParams;
const/4 v3, 0x1
iput v3, v0, Landroid/widget/LinearLayout$LayoutParams;->gravity:I
invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:goto_6d
:cond_6d
const-string v0, "PENDING"
invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setTag(Ljava/lang/Object;)V
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->isMustBeVisible()Z
move-result v0
if-eqz v0, :cond_ea
const/4 v0, 0x0
invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V
:goto_7c
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->removeAllViews()V
invoke-virtual {p0, v2}, Lcom/admarvel/android/ads/AdMarvelView;->addView(Landroid/view/View;)V
:cond_82
:goto_82
return-void
:cond_83
iget-object v1, p0, Lcom/admarvel/android/ads/AdMarvelView;->q:Lcom/admarvel/android/ads/AdMarvelView$k;
iget v5, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I
iget v6, p0, Lcom/admarvel/android/ads/AdMarvelView;->g:I
move-object v2, p4
move-object v3, p2
move-object v4, p1
invoke-virtual/range {v0 .. v6}, Lcom/admarvel/android/ads/AdMarvelAdapter;->requestNewAd(Lcom/admarvel/android/ads/AdMarvelAdapterListener;Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/util/Map;II)Landroid/view/View;
move-result-object v0
move-object v1, v0
goto :goto_2d
:cond_92
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->removeView(Landroid/view/View;)V
:try_end_95
.catch Ljava/lang/Exception; {:try_start_4 .. :try_end_95} :catch_96
goto :goto_2f
:catch_96
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-static {v9}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
move-result-object v4
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;
move-result-object v5
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I
move-result v6
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;
move-result-object v7
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;
move-result-object v8
move-object v2, p0
move v3, v9
invoke-virtual/range {v0 .. v8}, Lcom/admarvel/android/ads/r;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
goto :goto_82
:try_start_be
:cond_be
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
instance-of v0, v0, Landroid/widget/FrameLayout$LayoutParams;
if-eqz v0, :cond_d3
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/FrameLayout$LayoutParams;
const/4 v3, 0x1
iput v3, v0, Landroid/widget/FrameLayout$LayoutParams;->gravity:I
invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_6d
:cond_d3
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
instance-of v0, v0, Landroid/widget/RelativeLayout$LayoutParams;
if-eqz v0, :cond_6d
invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;
const/16 v3, 0xd
invoke-virtual {v0, v3}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
invoke-virtual {v2, v1, v0}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto :goto_6d
:cond_ea
const/16 v0, 0x8
invoke-virtual {v2, v0}, Landroid/widget/FrameLayout;->setVisibility(I)V
:try_end_ef
.catch Ljava/lang/Exception; {:try_start_be .. :try_end_ef} :catch_96
goto :goto_7c
.end method
.method public a()Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->B:Z
return v0
.end method
.method public adMarvelViewDisplayed()V
.registers 4
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/AdMarvelView$h;
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;
invoke-direct {v1, p0, v2}, Lcom/admarvel/android/ads/AdMarvelView$h;-><init>(Lcom/admarvel/android/ads/AdMarvelView;Landroid/os/Handler;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public b()Z
.registers 2
iget-boolean v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->p:Z
return v0
.end method
.method public destroy()V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/AdMarvelView$d;
invoke-direct {v1, p0}, Lcom/admarvel/android/ads/AdMarvelView$d;-><init>(Lcom/admarvel/android/ads/AdMarvelView;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public displayAd(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelAd;)V
.registers 12
iput-object p2, p0, Lcom/admarvel/android/ads/AdMarvelView;->A:Lcom/admarvel/android/ads/AdMarvelAd;
if-eqz p2, :cond_6
if-nez p1, :cond_7
:goto_6
:cond_6
return-void
:try_start_7
:cond_7
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getAdType()Lcom/admarvel/android/ads/AdMarvelAd$AdType;
move-result-object v0
sget-object v1, Lcom/admarvel/android/ads/AdMarvelAd$AdType;->SDKCALL:Lcom/admarvel/android/ads/AdMarvelAd$AdType;
if-ne v0, v1, :cond_5d
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkNetwork()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_4d
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;
move-result-object v0
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSdkNetwork()Ljava/lang/String;
move-result-object v1
invoke-virtual {p0, v0, p2, v1, p1}, Lcom/admarvel/android/ads/AdMarvelView;->a(Ljava/util/Map;Lcom/admarvel/android/ads/AdMarvelAd;Ljava/lang/String;Landroid/content/Context;)V
:try_end_20
.catch Ljava/lang/Exception; {:try_start_7 .. :try_end_20} :catch_21
goto :goto_6
:catch_21
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
const/16 v0, 0x12f
invoke-static {v0}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
move-result-object v4
invoke-static {v4}, Lcom/admarvel/android/ads/ab;->a(Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;)I
move-result v3
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getListenerImpl()Lcom/admarvel/android/ads/r;
move-result-object v0
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getSiteId()Ljava/lang/String;
move-result-object v5
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getId()I
move-result v6
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getTargetParams()Ljava/util/Map;
move-result-object v7
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getIpAddress()Ljava/lang/String;
move-result-object v8
move-object v1, p1
move-object v2, p0
invoke-virtual/range {v0 .. v8}, Lcom/admarvel/android/ads/r;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
goto :goto_6
:cond_4d
:try_start_4d
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->isDisableAdrequest()Z
move-result v0
if-eqz v0, :cond_5d
invoke-virtual {p2}, Lcom/admarvel/android/ads/AdMarvelAd;->getDisableAdDuration()Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_6
invoke-virtual {p0, v0, p2, p1}, Lcom/admarvel/android/ads/AdMarvelView;->a(Ljava/lang/String;Lcom/admarvel/android/ads/AdMarvelAd;Landroid/content/Context;)V
goto :goto_6
:cond_5d
invoke-virtual {p0, p2}, Lcom/admarvel/android/ads/AdMarvelView;->a(Lcom/admarvel/android/ads/AdMarvelAd;)V
:try_end_60
.catch Ljava/lang/Exception; {:try_start_4d .. :try_end_60} :catch_21
goto :goto_6
.end method
.method public enableAdFetchedModel(Z)V
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->B:Z
return-void
.end method
.method public fetchNewAd(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
.registers 5
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->enableAdFetchedModel(Z)V
invoke-virtual {p0, p1, p2, p3}, Lcom/admarvel/android/ads/AdMarvelView;->requestNewAd(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public fetchNewAd(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
.registers 6
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->enableAdFetchedModel(Z)V
invoke-virtual {p0, p1, p2, p3, p4}, Lcom/admarvel/android/ads/AdMarvelView;->requestNewAd(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
return-void
.end method
.method public focus()V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;
new-instance v1, Lcom/admarvel/android/ads/AdMarvelView$i;
invoke-direct {v1, p0}, Lcom/admarvel/android/ads/AdMarvelView$i;-><init>(Lcom/admarvel/android/ads/AdMarvelView;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public getAdMarvelBackgroundColor()I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I
return v0
.end method
.method  getListenerImpl()Lcom/admarvel/android/ads/r;
.registers 2
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;
return-object v0
.end method
.method public getTextBackgroundColor()I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->f:I
return v0
.end method
.method public getTextBorderColor()I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->h:I
return v0
.end method
.method public getTextFontColor()I
.registers 2
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->g:I
return v0
.end method
.method public requestNewAd(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
.registers 18
:try_start_0
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;
move-result-object v0
const-string v1, "admarvel"
invoke-static {v1}, Lcom/admarvel/android/ads/ab;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;
move-result-object v1
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;
move-result-object v0
invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v0
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v2
const/4 v3, 0x0
invoke-virtual {v0, v2, v3}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v0
iget-object v0, v0, Landroid/content/pm/PackageInfo;->versionName:Ljava/lang/String;
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;
move-result-object v2
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v2, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
move-result-object v2
iget v2, v2, Landroid/content/pm/PackageInfo;->versionCode:I
if-eqz v0, :cond_b6
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "duration"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getSDKVersion()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_5e
if-eqz v0, :cond_d2
invoke-static {v0}, Lcom/admarvel/android/ads/ab;->c(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const/4 v2, 0x0
invoke-interface {v1, v0, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_d2
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v1
if-lez v1, :cond_d2
invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v0
invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;
move-result-object v1
new-instance v2, Ljava/util/Date;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v3
invoke-direct {v2, v3, v4}, Ljava/util/Date;-><init>(J)V
invoke-virtual {v1, v2}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ljava/text/DateFormat;->getDateTimeInstance()Ljava/text/DateFormat;
move-result-object v2
invoke-virtual {v2, v1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;
move-result-object v1
invoke-virtual {v1, v0}, Ljava/util/Date;->before(Ljava/util/Date;)Z
move-result v0
if-eqz v0, :cond_d2
const-string v0, "requestNewAd: AD REQUEST BLOCKED, IGNORING REQUEST"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;
move-result-object v1
const/16 v3, 0x130
const/16 v2, 0x130
invoke-static {v2}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
move-result-object v4
const/4 v6, 0x0
const-string v8, ""
move-object v2, p0
move-object/from16 v5, p3
move-object v7, p1
invoke-virtual/range {v0 .. v8}, Lcom/admarvel/android/ads/r;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
:goto_b5
return-void
:cond_b6
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "duration"
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-static {}, Lcom/admarvel/android/ads/AdMarvelUtils;->getSDKVersion()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_5e
:cond_d2
new-instance v0, Lcom/admarvel/android/a/a;
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, v1}, Lcom/admarvel/android/a/a;-><init>(Landroid/content/Context;)V
invoke-virtual {v0}, Lcom/admarvel/android/a/a;->a()V
invoke-virtual/range {p2 .. p2}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v4
invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->trim()Ljava/lang/String;
move-result-object v5
invoke-static {}, Lcom/admarvel/android/ads/n;->a()Lcom/admarvel/android/ads/n;
move-result-object v0
if-eqz v0, :cond_f5
invoke-virtual {v0}, Lcom/admarvel/android/ads/n;->b()Z
move-result v1
if-eqz v1, :cond_f5
invoke-virtual {v0}, Lcom/admarvel/android/ads/n;->c()V
:cond_f5
invoke-static {}, Lcom/admarvel/android/ads/l;->a()Lcom/admarvel/android/ads/l;
move-result-object v0
if-eqz v0, :cond_102
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/admarvel/android/ads/l;->a(Landroid/content/Context;)V
:cond_102
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v0
iget-object v2, p0, Lcom/admarvel/android/ads/AdMarvelView;->m:Ljava/util/concurrent/atomic/AtomicLong;
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v6
invoke-virtual {v2, v6, v7}, Ljava/util/concurrent/atomic/AtomicLong;->getAndSet(J)J
move-result-wide v2
sub-long/2addr v0, v2
const-wide/16 v2, 0x7d0
cmp-long v0, v0, v2
if-lez v0, :cond_165
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;
invoke-virtual {v0, p0}, Lcom/admarvel/android/ads/r;->a(Lcom/admarvel/android/ads/AdMarvelView;)V
const/4 v1, 0x0
sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->a:Ljava/lang/String;
if-eqz v0, :cond_128
new-instance v1, Ljava/io/File;
sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->a:Ljava/lang/String;
invoke-direct {v1, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
:cond_128
const/4 v6, 0x0
if-eqz p1, :cond_134
const-string v0, "UNIQUE_ID"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
move-object v6, v0
:cond_134
iget-object v13, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;
new-instance v0, Lcom/admarvel/android/ads/AdMarvelView$b;
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;
move-result-object v2
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lcom/admarvel/android/ads/ab;->d(Landroid/content/Context;)I
move-result v7
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;
move-result-object v3
invoke-static {v3}, Lcom/admarvel/android/ads/ab;->a(Landroid/content/Context;)Ljava/lang/String;
move-result-object v8
const/4 v10, 0x0
const-string v11, ""
iget-object v12, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;
move-object v3, p1
move-object v9, p0
invoke-direct/range {v0 .. v12}, Lcom/admarvel/android/ads/AdMarvelView$b;-><init>(Ljava/io/File;Landroid/content/Context;Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Lcom/admarvel/android/ads/AdMarvelView;ILjava/lang/String;Landroid/os/Handler;)V
invoke-virtual {v13, v0}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
:try_end_159
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_159} :catch_15b
goto/16 :goto_b5
:catch_15b
move-exception v0
invoke-static {v0}, Landroid/util/Log;->getStackTraceString(Ljava/lang/Throwable;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
goto/16 :goto_b5
:try_start_165
:cond_165
const-string v0, "requestNewAd: AD REQUEST PENDING, IGNORING REQUEST"
invoke-static {v0}, Lcom/admarvel/android/util/Logging;->log(Ljava/lang/String;)V
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;
move-result-object v1
const/16 v3, 0x130
const/16 v2, 0x130
invoke-static {v2}, Lcom/admarvel/android/ads/ab;->a(I)Lcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;
move-result-object v4
const/4 v6, 0x0
const-string v8, ""
move-object v2, p0
move-object v7, p1
invoke-virtual/range {v0 .. v8}, Lcom/admarvel/android/ads/r;->a(Landroid/content/Context;Lcom/admarvel/android/ads/AdMarvelView;ILcom/admarvel/android/ads/AdMarvelUtils$ErrorReason;Ljava/lang/String;ILjava/util/Map;Ljava/lang/String;)V
:try_end_180
.catch Ljava/lang/Exception; {:try_start_165 .. :try_end_180} :catch_15b
goto/16 :goto_b5
.end method
.method public requestNewAd(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;Landroid/app/Activity;)V
.registers 6
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p4}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
sput-object v0, Lcom/admarvel/android/ads/AdMarvelView;->z:Ljava/lang/ref/WeakReference;
invoke-virtual {p0, p1, p2, p3}, Lcom/admarvel/android/ads/AdMarvelView;->requestNewAd(Ljava/util/Map;Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public setAdMarvelBackgroundColor(I)V
.registers 3
if-nez p1, :cond_b
const/4 v0, 0x0
iput v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I
:goto_5
iget v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I
invoke-virtual {p0, v0}, Lcom/admarvel/android/ads/AdMarvelView;->setBackgroundColor(I)V
return-void
:cond_b
const/high16 v0, -0x100
or-int/2addr v0, p1
iput v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->e:I
goto :goto_5
.end method
.method public setAdmarvelWebViewAsSoftwareLayer(Z)V
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->p:Z
return-void
.end method
.method public setDisableAnimation(Z)V
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->l:Z
return-void
.end method
.method public setDisableSDKImpressionTracking(Z)V
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->y:Z
return-void
.end method
.method public setEnableAutoScaling(Z)V
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->u:Z
return-void
.end method
.method public setEnableClickRedirect(Z)V
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->n:Z
return-void
.end method
.method public setEnableFitToScreenForTablets(Z)V
.registers 2
iput-boolean p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->v:Z
return-void
.end method
.method public setExtendedListener(Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewExtendedListener;)V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;
invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/r;->a(Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewExtendedListener;)V
return-void
.end method
.method public setListener(Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;)V
.registers 3
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->i:Lcom/admarvel/android/ads/r;
invoke-virtual {v0, p1}, Lcom/admarvel/android/ads/r;->a(Lcom/admarvel/android/ads/AdMarvelView$AdMarvelViewListener;)V
return-void
.end method
.method public setOptionalFlags(Ljava/util/Map;)V
.registers 8
iput-object p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->t:Ljava/util/Map;
sget-object v1, Lcom/admarvel/android/ads/AdMarvelView;->a:Ljava/lang/String;
monitor-enter v1
if-eqz p1, :cond_33
:try_start_7
const-string v0, "cached_directory"
invoke-interface {p1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:goto_f
sput-object v0, Lcom/admarvel/android/ads/AdMarvelView;->a:Ljava/lang/String;
sget-object v0, Lcom/admarvel/android/ads/AdMarvelView;->a:Ljava/lang/String;
if-eqz v0, :cond_31
sget-boolean v0, Lcom/admarvel/android/ads/AdMarvelView;->j:Z
if-nez v0, :cond_31
iget-object v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->s:Landroid/os/Handler;
new-instance v2, Lcom/admarvel/android/ads/AdMarvelView$a;
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->getContext()Landroid/content/Context;
move-result-object v3
new-instance v4, Ljava/io/File;
sget-object v5, Lcom/admarvel/android/ads/AdMarvelView;->a:Ljava/lang/String;
invoke-direct {v4, v5}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-direct {v2, v3, v4}, Lcom/admarvel/android/ads/AdMarvelView$a;-><init>(Landroid/content/Context;Ljava/io/File;)V
invoke-virtual {v0, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
const/4 v0, 0x1
sput-boolean v0, Lcom/admarvel/android/ads/AdMarvelView;->j:Z
:cond_31
monitor-exit v1
return-void
:cond_33
const/4 v0, 0x0
goto :goto_f
:catchall_35
move-exception v0
monitor-exit v1
:try_end_37
.catchall {:try_start_7 .. :try_end_37} :catchall_35
throw v0
.end method
.method public setTextBackgroundColor(I)V
.registers 3
const/high16 v0, -0x100
or-int/2addr v0, p1
iput v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->f:I
return-void
.end method
.method public setTextBorderColor(I)V
.registers 2
iput p1, p0, Lcom/admarvel/android/ads/AdMarvelView;->h:I
return-void
.end method
.method public setTextFontColor(I)V
.registers 3
const/high16 v0, -0x100
or-int/2addr v0, p1
iput v0, p0, Lcom/admarvel/android/ads/AdMarvelView;->g:I
return-void
.end method
.method public setVisibility(I)V
.registers 3
const/16 v0, 0x8
if-ne p1, v0, :cond_5
const/4 p1, 0x4
:cond_5
invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V
invoke-virtual {p0}, Lcom/admarvel/android/ads/AdMarvelView;->requestLayout()V
return-void
.end method
.method public updateCurrentActivity(Landroid/app/Activity;)V
.registers 3
if-eqz p1, :cond_9
new-instance v0, Ljava/lang/ref/WeakReference;
invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V
sput-object v0, Lcom/admarvel/android/ads/AdMarvelView;->z:Ljava/lang/ref/WeakReference;
:cond_9
return-void
.end method