.class public final Lcom/millennialmedia/android/MMAdView;
.super Lcom/millennialmedia/android/ch;
.source "SourceFile"
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/animation/Animation$AnimationListener;
.field private static final D:Ljava/lang/String; = "MMAdView"
.field static final a:I = -0x32
.field public static final b:I = 0x0
.field public static final c:I = 0x1
.field public static final d:I = 0x2
.field public static final e:I = 0x3
.field public static final f:I = 0x4
.field  g:Landroid/widget/ImageView;
.field  h:I
.field  i:I
.field  j:I
.field  k:I
.field  l:I
.field  m:Lcom/millennialmedia/android/by;
.method public constructor <init>(Landroid/content/Context;)V
.registers 5
const/4 v2, 0x0
const/16 v1, -0x32
invoke-direct {p0, p1}, Lcom/millennialmedia/android/ch;-><init>(Landroid/content/Context;)V
const/4 v0, 0x4
iput v0, p0, Lcom/millennialmedia/android/MMAdView;->h:I
iput v2, p0, Lcom/millennialmedia/android/MMAdView;->i:I
iput v2, p0, Lcom/millennialmedia/android/MMAdView;->j:I
iput v1, p0, Lcom/millennialmedia/android/MMAdView;->k:I
iput v1, p0, Lcom/millennialmedia/android/MMAdView;->l:I
new-instance v0, Lcom/millennialmedia/android/bw;
invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/bw;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V
iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->b(Landroid/content/Context;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/millennialmedia/android/MMAdView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 8
const/16 v1, -0x32
const/4 v3, 0x0
invoke-direct {p0, p1, p2, p3}, Lcom/millennialmedia/android/ch;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
const/4 v0, 0x4
iput v0, p0, Lcom/millennialmedia/android/MMAdView;->h:I
iput v3, p0, Lcom/millennialmedia/android/MMAdView;->i:I
iput v3, p0, Lcom/millennialmedia/android/MMAdView;->j:I
iput v1, p0, Lcom/millennialmedia/android/MMAdView;->k:I
iput v1, p0, Lcom/millennialmedia/android/MMAdView;->l:I
invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->isInEditMode()Z
move-result v0
if-nez v0, :cond_100
const-string v0, "MMAdView"
const-string v1, "Creating MMAdView from XML layout."
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
new-instance v0, Lcom/millennialmedia/android/bw;
invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/bw;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V
iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
if-eqz p2, :cond_f2
const-string v1, "http://millennialmedia.com/android/schema"
const-string v0, "apid"
invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setApid(Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
const-string v2, "ignoreDensityScaling"
invoke-interface {p2, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z
move-result v2
iput-boolean v2, v0, Lcom/millennialmedia/android/bp;->f:Z
const-string v0, "height"
invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const-string v2, "width"
invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
:try_start_48
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v3
if-nez v3, :cond_54
invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/MMAdView;->i:I
:cond_54
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_60
invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/MMAdView;->j:I
:cond_60
:try_end_60
.catch Ljava/lang/NumberFormatException; {:try_start_48 .. :try_end_60} :catch_f6
:goto_60
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->d:Lcom/millennialmedia/android/cn;
if-eqz v0, :cond_ea
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->d:Lcom/millennialmedia/android/cn;
const-string v2, "age"
invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/millennialmedia/android/cn;->N:Ljava/lang/String;
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->d:Lcom/millennialmedia/android/cn;
const-string v2, "children"
invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/millennialmedia/android/cn;->O:Ljava/lang/String;
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->d:Lcom/millennialmedia/android/cn;
const-string v2, "education"
invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/millennialmedia/android/cn;->P:Ljava/lang/String;
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->d:Lcom/millennialmedia/android/cn;
const-string v2, "ethnicity"
invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/millennialmedia/android/cn;->Q:Ljava/lang/String;
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->d:Lcom/millennialmedia/android/cn;
const-string v2, "gender"
invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/millennialmedia/android/cn;->R:Ljava/lang/String;
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->d:Lcom/millennialmedia/android/cn;
const-string v2, "income"
invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/millennialmedia/android/cn;->S:Ljava/lang/String;
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->d:Lcom/millennialmedia/android/cn;
const-string v2, "keywords"
invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/millennialmedia/android/cn;->T:Ljava/lang/String;
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->d:Lcom/millennialmedia/android/cn;
const-string v2, "marital"
invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/millennialmedia/android/cn;->U:Ljava/lang/String;
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->d:Lcom/millennialmedia/android/cn;
const-string v2, "politics"
invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/millennialmedia/android/cn;->V:Ljava/lang/String;
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->d:Lcom/millennialmedia/android/cn;
const-string v2, "vendor"
invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/millennialmedia/android/cn;->W:Ljava/lang/String;
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->d:Lcom/millennialmedia/android/cn;
const-string v2, "zip"
invoke-interface {p2, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v2
iput-object v2, v0, Lcom/millennialmedia/android/cn;->X:Ljava/lang/String;
:cond_ea
const-string v0, "goalId"
invoke-interface {p2, v1, v0}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->q:Ljava/lang/String;
:cond_f2
invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->b(Landroid/content/Context;)V
:goto_f5
return-void
:catch_f6
move-exception v0
const-string v2, "MMAdView"
const-string v3, "Error reading attrs file from xml"
invoke-static {v2, v3, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_60
:cond_100
invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->c(Landroid/content/Context;)V
goto :goto_f5
.end method
.method private a(I)V
.registers 7
:try_start_0
const-class v0, Landroid/view/View;
const-string v1, "setTranslationX"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_1d
:try_end_1d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e
return-void
:catch_1e
move-exception v0
const-string v1, "MMAdView"
const-string v2, "Unable to call setTranslationX"
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1d
.end method
.method private declared-synchronized a(Landroid/view/View;)V
.registers 4
monitor-enter p0
if-eqz p1, :cond_18
:try_start_3
invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eqz v0, :cond_18
instance-of v1, v0, Landroid/view/ViewGroup;
if-eqz v1, :cond_18
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v1
if-eqz v1, :cond_18
invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:try_end_18
.catchall {:try_start_3 .. :try_end_18} :catchall_1a
:cond_18
monitor-exit p0
return-void
:catchall_1a
move-exception v0
monitor-exit p0
throw v0
.end method
.method static synthetic a(Lcom/millennialmedia/android/MMAdView;Landroid/view/View;)V
.registers 2
invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->b(Landroid/view/View;)V
return-void
.end method
.method private b(I)V
.registers 7
:try_start_0
const-class v0, Landroid/view/View;
const-string v1, "setTranslationY"
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Class;
const/4 v3, 0x0
sget-object v4, Ljava/lang/Float;->TYPE:Ljava/lang/Class;
aput-object v4, v2, v3
invoke-virtual {v0, v1, v2}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;
move-result-object v0
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {v0, p0, v1}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
:goto_1d
:try_end_1d
.catch Ljava/lang/Exception; {:try_start_0 .. :try_end_1d} :catch_1e
return-void
:catch_1e
move-exception v0
const-string v1, "MMAdView"
const-string v2, "Unable to call setTranslationY"
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_1d
.end method
.method private b(Landroid/content/Context;)V
.registers 5
const/4 v2, -0x2
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
const-string v1, "b"
iput-object v1, v0, Lcom/millennialmedia/android/bp;->h:Ljava/lang/String;
invoke-virtual {p0, p0}, Lcom/millennialmedia/android/MMAdView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
const/4 v0, 0x1
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setFocusable(Z)V
new-instance v0, Landroid/widget/ImageView;
invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->g:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->g:Landroid/widget/ImageView;
sget-object v1, Landroid/widget/ImageView$ScaleType;->FIT_XY:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->g:Landroid/widget/ImageView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->g:Landroid/widget/ImageView;
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v1, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0, v0, v1}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v0, v2, v2}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method private declared-synchronized b(Landroid/view/View;)V
.registers 4
monitor-enter p0
:try_start_1
invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->a(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;
move-result-object v0
if-eqz v0, :cond_25
instance-of v1, v0, Landroid/app/Activity;
if-eqz v1, :cond_25
check-cast v0, Landroid/app/Activity;
invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;
move-result-object v0
if-eqz v0, :cond_25
invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;
move-result-object v0
if-eqz v0, :cond_25
instance-of v1, v0, Landroid/view/ViewGroup;
if-eqz v1, :cond_25
check-cast v0, Landroid/view/ViewGroup;
invoke-virtual {v0, p1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
:try_end_25
.catchall {:try_start_1 .. :try_end_25} :catchall_27
:cond_25
monitor-exit p0
return-void
:catchall_27
move-exception v0
monitor-exit p0
throw v0
.end method
.method static synthetic b(Lcom/millennialmedia/android/MMAdView;Landroid/view/View;)V
.registers 2
invoke-direct {p0, p1}, Lcom/millennialmedia/android/MMAdView;->a(Landroid/view/View;)V
return-void
.end method
.method private c(Landroid/content/Context;)V
.registers 9
const/4 v1, 0x0
new-instance v4, Landroid/widget/ImageView;
invoke-direct {v4, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
const-string v0, "http://images.millennialmedia.com/9513/192134.gif"
:try_start_8
const-string v0, "java.io.tmpdir"
invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
if-eqz v0, :cond_2b
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z
move-result v2
if-nez v2, :cond_2b
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:cond_2b
new-instance v5, Ljava/io/File;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, "millenial355jns6u3l1nmedia.png"
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {v5, v0}, Ljava/io/File;-><init>(Ljava/lang/String;)V
invoke-virtual {v5}, Ljava/io/File;->exists()Z
move-result v0
if-nez v0, :cond_e4
new-instance v0, Ljava/net/URL;
const-string v2, "http://images.millennialmedia.com/9513/192134.gif"
invoke-direct {v0, v2}, Ljava/net/URL;-><init>(Ljava/lang/String;)V
invoke-virtual {v0}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;
move-result-object v0
check-cast v0, Ljava/net/HttpURLConnection;
const/4 v2, 0x1
invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setDoOutput(Z)V
const/16 v2, 0x2710
invoke-virtual {v0, v2}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V
invoke-static {v0}, Ldroidbox/java/net/HttpURLConnection;->connect(Ljava/net/HttpURLConnection;)V
invoke-virtual {v0}, Ljava/net/HttpURLConnection;->getInputStream()Ljava/io/InputStream;
:try_end_65
.catchall {:try_start_8 .. :try_end_65} :catchall_b7
.catch Ljava/lang/Exception; {:try_start_8 .. :try_end_65} :catch_dc
move-result-object v3
:try_start_66
new-instance v2, Ljava/io/FileOutputStream;
invoke-direct {v2, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
:try_end_6b
.catchall {:try_start_66 .. :try_end_6b} :catchall_d3
.catch Ljava/lang/Exception; {:try_start_66 .. :try_end_6b} :catch_df
const/16 v0, 0x400
:try_start_6d
new-array v0, v0, [B
:goto_6f
invoke-virtual {v3, v0}, Ljava/io/InputStream;->read([B)I
move-result v1
if-lez v1, :cond_92
const/4 v6, 0x0
invoke-virtual {v2, v0, v6, v1}, Ljava/io/OutputStream;->write([BII)V
:try_end_79
.catchall {:try_start_6d .. :try_end_79} :catchall_d6
.catch Ljava/lang/Exception; {:try_start_6d .. :try_end_79} :catch_7a
goto :goto_6f
:catch_7a
move-exception v0
move-object v1, v2
move-object v2, v3
:try_start_7d
:goto_7d
const-string v3, "MMAdView"
const-string v5, "Error with eclipse xml image display: "
invoke-static {v3, v5, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
:try_end_84
.catchall {:try_start_7d .. :try_end_84} :catchall_da
if-eqz v2, :cond_89
:try_start_86
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:cond_89
if-eqz v1, :cond_8e
invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
:cond_8e
:goto_8e
:try_end_8e
.catch Ljava/lang/Exception; {:try_start_86 .. :try_end_8e} :catch_cd
invoke-virtual {p0, v4}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;)V
return-void
:cond_92
move-object v1, v2
move-object v2, v3
:try_start_94
:goto_94
invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v0
if-eqz v4, :cond_a3
if-eqz v0, :cond_a3
invoke-virtual {v4, v0}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:try_end_a3
.catchall {:try_start_94 .. :try_end_a3} :catchall_da
.catch Ljava/lang/Exception; {:try_start_94 .. :try_end_a3} :catch_e2
:cond_a3
if-eqz v2, :cond_a8
:try_start_a5
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:cond_a8
if-eqz v1, :cond_8e
invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
:try_end_ad
.catch Ljava/lang/Exception; {:try_start_a5 .. :try_end_ad} :catch_ae
goto :goto_8e
:catch_ae
move-exception v0
const-string v1, "MMAdView"
const-string v2, "Error closing file"
:goto_b3
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_8e
:catchall_b7
move-exception v0
move-object v2, v1
:goto_b9
if-eqz v2, :cond_be
:try_start_bb
invoke-virtual {v2}, Ljava/io/InputStream;->close()V
:cond_be
if-eqz v1, :cond_c3
invoke-virtual {v1}, Ljava/io/OutputStream;->close()V
:try_end_c3
.catch Ljava/lang/Exception; {:try_start_bb .. :try_end_c3} :catch_c4
:goto_c3
:cond_c3
throw v0
:catch_c4
move-exception v1
const-string v2, "MMAdView"
const-string v3, "Error closing file"
invoke-static {v2, v3, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_c3
:catch_cd
move-exception v0
const-string v1, "MMAdView"
const-string v2, "Error closing file"
goto :goto_b3
:catchall_d3
move-exception v0
move-object v2, v3
goto :goto_b9
:catchall_d6
move-exception v0
move-object v1, v2
move-object v2, v3
goto :goto_b9
:catchall_da
move-exception v0
goto :goto_b9
:catch_dc
move-exception v0
move-object v2, v1
goto :goto_7d
:catch_df
move-exception v0
move-object v2, v3
goto :goto_7d
:catch_e2
move-exception v0
goto :goto_7d
:cond_e4
move-object v2, v1
goto :goto_94
.end method
.method private d()V
.registers 3
invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->f()Z
move-result v0
if-eqz v0, :cond_26
invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
iget v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
iput v1, p0, Lcom/millennialmedia/android/MMAdView;->l:I
iget v0, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
iput v0, p0, Lcom/millennialmedia/android/MMAdView;->k:I
iget v0, p0, Lcom/millennialmedia/android/MMAdView;->l:I
if-gtz v0, :cond_1c
invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getWidth()I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/MMAdView;->l:I
:cond_1c
iget v0, p0, Lcom/millennialmedia/android/MMAdView;->k:I
if-gtz v0, :cond_26
invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getHeight()I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/MMAdView;->k:I
:cond_26
return-void
.end method
.method private f()Z
.registers 3
const/16 v1, -0x32
iget v0, p0, Lcom/millennialmedia/android/MMAdView;->l:I
if-ne v0, v1, :cond_c
iget v0, p0, Lcom/millennialmedia/android/MMAdView;->k:I
if-ne v0, v1, :cond_c
const/4 v0, 0x1
:goto_b
return v0
:cond_c
const/4 v0, 0x0
goto :goto_b
.end method
.method private getAdInternal()V
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
if-eqz v0, :cond_9
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->f()V
:cond_9
return-void
.end method
.method declared-synchronized a()V
.registers 3
monitor-enter p0
:try_start_1
invoke-static {}, Lcom/millennialmedia/android/co;->g()Z
move-result v0
if-eqz v0, :cond_54
invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->m()V
invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->f()Z
move-result v0
if-nez v0, :cond_2c
invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
iget v1, p0, Lcom/millennialmedia/android/MMAdView;->l:I
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->width:I
iget v1, p0, Lcom/millennialmedia/android/MMAdView;->k:I
iput v1, v0, Landroid/view/ViewGroup$LayoutParams;->height:I
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdView;->a(I)V
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdView;->b(I)V
const/16 v0, -0x32
iput v0, p0, Lcom/millennialmedia/android/MMAdView;->l:I
const/16 v0, -0x32
iput v0, p0, Lcom/millennialmedia/android/MMAdView;->k:I
:cond_2c
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->m:Lcom/millennialmedia/android/by;
if-eqz v0, :cond_54
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/millennialmedia/android/MMAdView;->r:Z
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->m:Lcom/millennialmedia/android/by;
invoke-virtual {v0, p0}, Lcom/millennialmedia/android/by;->a(Landroid/view/View;)V
invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eqz v0, :cond_51
instance-of v1, v0, Landroid/view/ViewGroup;
if-eqz v1, :cond_51
check-cast v0, Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->m:Lcom/millennialmedia/android/by;
invoke-virtual {v1}, Lcom/millennialmedia/android/by;->getParent()Landroid/view/ViewParent;
move-result-object v1
if-eqz v1, :cond_51
iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->m:Lcom/millennialmedia/android/by;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V
:cond_51
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/millennialmedia/android/MMAdView;->r:Z
:try_end_54
.catchall {:try_start_1 .. :try_end_54} :catchall_56
:cond_54
monitor-exit p0
return-void
:catchall_56
move-exception v0
monitor-exit p0
throw v0
.end method
.method declared-synchronized a(Lcom/millennialmedia/android/aq;)V
.registers 7
monitor-enter p0
:try_start_1
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->g:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
invoke-static {}, Lcom/millennialmedia/android/co;->g()Z
move-result v0
if-eqz v0, :cond_93
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->m:Lcom/millennialmedia/android/by;
if-nez v0, :cond_36
new-instance v0, Lcom/millennialmedia/android/by;
invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getContext()Landroid/content/Context;
move-result-object v1
invoke-direct {v0, p0, v1}, Lcom/millennialmedia/android/by;-><init>(Lcom/millennialmedia/android/MMAdView;Landroid/content/Context;)V
iput-object v0, p0, Lcom/millennialmedia/android/MMAdView;->m:Lcom/millennialmedia/android/by;
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->m:Lcom/millennialmedia/android/by;
const v1, 0x121f0dbe
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/by;->setId(I)V
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->m:Lcom/millennialmedia/android/by;
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v2, 0x1
const/4 v3, 0x1
invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/by;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->m:Lcom/millennialmedia/android/by;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/by;->setBackgroundColor(I)V
:cond_36
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->m:Lcom/millennialmedia/android/by;
invoke-virtual {v0}, Lcom/millennialmedia/android/by;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-nez v0, :cond_4f
invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getParent()Landroid/view/ViewParent;
move-result-object v0
if-eqz v0, :cond_4f
instance-of v1, v0, Landroid/view/ViewGroup;
if-eqz v1, :cond_4f
check-cast v0, Landroid/view/ViewGroup;
iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->m:Lcom/millennialmedia/android/by;
invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V
:cond_4f
new-instance v0, Lcom/millennialmedia/android/bu;
invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/bu;-><init>(Lcom/millennialmedia/android/MMAdView;Lcom/millennialmedia/android/aq;)V
iget-boolean v1, p1, Lcom/millennialmedia/android/aq;->f:Z
if-nez v1, :cond_5b
invoke-virtual {v0}, Lcom/millennialmedia/android/bu;->a()V
:cond_5b
const/4 v1, 0x2
new-array v1, v1, [I
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/MMAdView;->getLocationInWindow([I)V
invoke-direct {p0, p0}, Lcom/millennialmedia/android/MMAdView;->b(Landroid/view/View;)V
const/4 v2, 0x2
new-array v2, v2, [I
invoke-virtual {p0, v2}, Lcom/millennialmedia/android/MMAdView;->getLocationInWindow([I)V
invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->d()V
const/4 v3, 0x0
aget v3, v1, v3
const/4 v4, 0x0
aget v4, v2, v4
sub-int/2addr v3, v4
const/4 v4, 0x1
aget v1, v1, v4
const/4 v4, 0x1
aget v2, v2, v4
sub-int/2addr v1, v2
invoke-virtual {p0}, Lcom/millennialmedia/android/MMAdView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/millennialmedia/android/bu;->a(Landroid/view/ViewGroup$LayoutParams;)Landroid/view/ViewGroup$LayoutParams;
iget v2, v0, Lcom/millennialmedia/android/bu;->a:I
add-int/2addr v2, v3
invoke-direct {p0, v2}, Lcom/millennialmedia/android/MMAdView;->a(I)V
iget v0, v0, Lcom/millennialmedia/android/bu;->b:I
add-int/2addr v0, v1
invoke-direct {p0, v0}, Lcom/millennialmedia/android/MMAdView;->b(I)V
iget-object v0, p1, Lcom/millennialmedia/android/aq;->c:Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->setCloseArea(Ljava/lang/String;)V
:try_end_93
.catchall {:try_start_1 .. :try_end_93} :catchall_95
:cond_93
monitor-exit p0
return-void
:catchall_95
move-exception v0
monitor-exit p0
throw v0
.end method
.method public a(Lcom/millennialmedia/android/df;)V
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
if-eqz v0, :cond_8
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iput-object p1, v0, Lcom/millennialmedia/android/bp;->e:Lcom/millennialmedia/android/df;
:cond_8
invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->getAdInternal()V
return-void
.end method
.method  b()V
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
invoke-virtual {v0}, Lcom/millennialmedia/android/bp;->s()V
return-void
.end method
.method public bridge synthetic c()V
.registers 1
invoke-super {p0}, Lcom/millennialmedia/android/ch;->c()V
return-void
.end method
.method public getAd()V
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->e:Lcom/millennialmedia/android/df;
if-eqz v0, :cond_12
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->e:Lcom/millennialmedia/android/df;
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->a(Lcom/millennialmedia/android/df;)V
:goto_11
return-void
:cond_12
invoke-direct {p0}, Lcom/millennialmedia/android/MMAdView;->getAdInternal()V
goto :goto_11
.end method
.method public bridge synthetic getApid()Ljava/lang/String;
.registers 2
invoke-super {p0}, Lcom/millennialmedia/android/ch;->getApid()Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic getIgnoresDensityScaling()Z
.registers 2
invoke-super {p0}, Lcom/millennialmedia/android/ch;->getIgnoresDensityScaling()Z
move-result v0
return v0
.end method
.method public bridge synthetic getListener()Lcom/millennialmedia/android/df;
.registers 2
invoke-super {p0}, Lcom/millennialmedia/android/ch;->getListener()Lcom/millennialmedia/android/df;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic getMMRequest()Lcom/millennialmedia/android/cn;
.registers 2
invoke-super {p0}, Lcom/millennialmedia/android/ch;->getMMRequest()Lcom/millennialmedia/android/cn;
move-result-object v0
return-object v0
.end method
.method public bridge synthetic l()V
.registers 1
invoke-super {p0}, Lcom/millennialmedia/android/ch;->l()V
return-void
.end method
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
.registers 4
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->g:Landroid/widget/ImageView;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
return-void
.end method
.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public onAnimationStart(Landroid/view/animation/Animation;)V
.registers 2
return-void
.end method
.method public onClick(Landroid/view/View;)V
.registers 10
move-object/from16 v1, p1
invoke-static {v1}, Ldroidbox/apimonitor/Helper;->toString(Ljava/lang/Object;)Ljava/lang/String;
move-result-object v1
const-string v0, " + Lcom/millennialmedia/android/MMAdView; onClick "
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
const/4 v5, 0x0
const-string v0, "MMAdView"
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "On click for "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {p1}, Landroid/view/View;->getId()I
move-result v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " view, "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " adimpl"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->b(Ljava/lang/String;Ljava/lang/String;)V
const-wide/16 v0, 0x0
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v2
const/4 v4, 0x1
const/4 v7, 0x0
move v6, v5
invoke-static/range {v0 .. v7}, Landroid/view/MotionEvent;->obtain(JJIFFI)Landroid/view/MotionEvent;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->onTouchEvent(Landroid/view/MotionEvent;)Z
const-string v1, " - Lcom/millennialmedia/android/MMAdView; onClick"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 7
invoke-super/range {p0 .. p5}, Lcom/millennialmedia/android/ch;->onLayout(ZIIII)V
new-instance v0, Lcom/millennialmedia/android/MMAdView$1;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/MMAdView$1;-><init>(Lcom/millennialmedia/android/MMAdView;)V
invoke-static {v0}, Lcom/millennialmedia/android/dk;->a(Ljava/lang/Runnable;)V
return-void
.end method
.method public bridge synthetic onTouchEvent(Landroid/view/MotionEvent;)Z
.registers 3
invoke-super {p0, p1}, Lcom/millennialmedia/android/ch;->onTouchEvent(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method public onWindowFocusChanged(Z)V
.registers 5
invoke-super {p0, p1}, Lcom/millennialmedia/android/ch;->onWindowFocusChanged(Z)V
if-eqz p1, :cond_f
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
if-eqz v0, :cond_f
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-nez v0, :cond_10
:goto_f
:cond_f
return-void
:cond_10
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-nez v0, :cond_24
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
invoke-static {v1}, Lcom/millennialmedia/android/bs;->d(Lcom/millennialmedia/android/bp;)Lcom/millennialmedia/android/cq;
move-result-object v1
iput-object v1, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
:cond_24
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_f
iget-object v1, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-wide v1, v1, Lcom/millennialmedia/android/bp;->k:J
invoke-virtual {v0, v1, v2}, Lcom/millennialmedia/android/cq;->a(J)Z
move-result v1
if-nez v1, :cond_f
iget-object v1, v0, Lcom/millennialmedia/android/cq;->g:Ljava/lang/String;
const-string v2, "expanded"
invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_f
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->y()V
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/MMAdView;->addView(Landroid/view/View;)V
goto :goto_f
.end method
.method public bridge synthetic setApid(Ljava/lang/String;)V
.registers 2
invoke-super {p0, p1}, Lcom/millennialmedia/android/ch;->setApid(Ljava/lang/String;)V
return-void
.end method
.method public setBackgroundColor(I)V
.registers 3
invoke-super {p0, p1}, Lcom/millennialmedia/android/ch;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_1e
iget-object v0, p0, Lcom/millennialmedia/android/MMAdView;->p:Lcom/millennialmedia/android/bp;
iget-object v0, v0, Lcom/millennialmedia/android/bp;->n:Lcom/millennialmedia/android/bs;
iget-object v0, v0, Lcom/millennialmedia/android/bs;->c:Lcom/millennialmedia/android/cq;
invoke-virtual {v0, p1}, Lcom/millennialmedia/android/cq;->setBackgroundColor(I)V
:cond_1e
return-void
.end method
.method public setHeight(I)V
.registers 2
iput p1, p0, Lcom/millennialmedia/android/MMAdView;->i:I
return-void
.end method
.method public bridge synthetic setIgnoresDensityScaling(Z)V
.registers 2
invoke-super {p0, p1}, Lcom/millennialmedia/android/ch;->setIgnoresDensityScaling(Z)V
return-void
.end method
.method public bridge synthetic setListener(Lcom/millennialmedia/android/df;)V
.registers 2
invoke-super {p0, p1}, Lcom/millennialmedia/android/ch;->setListener(Lcom/millennialmedia/android/df;)V
return-void
.end method
.method public bridge synthetic setMMRequest(Lcom/millennialmedia/android/cn;)V
.registers 2
invoke-super {p0, p1}, Lcom/millennialmedia/android/ch;->setMMRequest(Lcom/millennialmedia/android/cn;)V
return-void
.end method
.method public setTransitionType(I)V
.registers 2
iput p1, p0, Lcom/millennialmedia/android/MMAdView;->h:I
return-void
.end method
.method public setWidth(I)V
.registers 2
iput p1, p0, Lcom/millennialmedia/android/MMAdView;->j:I
return-void
.end method