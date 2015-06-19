.class public Lcom/facebook/widget/ProfilePictureView;
.super Landroid/widget/FrameLayout;
.source "SourceFile"
.field public static final a:Ljava/lang/String;
.field private b:Ljava/lang/String;
.field private c:I
.field private d:I
.field private e:Z
.field private f:Landroid/graphics/Bitmap;
.field private g:Landroid/widget/ImageView;
.field private h:I
.field private i:Lcom/facebook/internal/p;
.field private j:Lcom/facebook/widget/g;
.field private k:Landroid/graphics/Bitmap;
.method static constructor <clinit>()V
.registers 1
const-class v0, Lcom/facebook/widget/ProfilePictureView;
invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;
move-result-object v0
sput-object v0, Lcom/facebook/widget/ProfilePictureView;->a:Ljava/lang/String;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->c:I
iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->d:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->e:Z
const/4 v0, -0x1
iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->h:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->k:Landroid/graphics/Bitmap;
invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->a(Landroid/content/Context;)V
invoke-direct {p0, p2}, Lcom/facebook/widget/ProfilePictureView;->a(Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 5
const/4 v0, 0x0
invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->c:I
iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->d:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->e:Z
const/4 v0, -0x1
iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->h:I
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->k:Landroid/graphics/Bitmap;
invoke-direct {p0, p1}, Lcom/facebook/widget/ProfilePictureView;->a(Landroid/content/Context;)V
invoke-direct {p0, p2}, Lcom/facebook/widget/ProfilePictureView;->a(Landroid/util/AttributeSet;)V
return-void
.end method
.method private a(Landroid/content/Context;)V
.registers 4
const/4 v1, -0x1
invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->removeAllViews()V
new-instance v0, Landroid/widget/ImageView;
invoke-direct {v0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->g:Landroid/widget/ImageView;
new-instance v0, Landroid/widget/FrameLayout$LayoutParams;
invoke-direct {v0, v1, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V
iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->g:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->g:Landroid/widget/ImageView;
sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->g:Landroid/widget/ImageView;
invoke-virtual {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->addView(Landroid/view/View;)V
return-void
.end method
.method private a(Landroid/graphics/Bitmap;)V
.registers 3
iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->g:Landroid/widget/ImageView;
if-eqz v0, :cond_d
if-eqz p1, :cond_d
iput-object p1, p0, Lcom/facebook/widget/ProfilePictureView;->f:Landroid/graphics/Bitmap;
iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->g:Landroid/widget/ImageView;
invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V
:cond_d
return-void
.end method
.method private a(Landroid/util/AttributeSet;)V
.registers 6
const/4 v3, 0x1
invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getContext()Landroid/content/Context;
move-result-object v0
sget-object v1, Lcom/facebook/a/h;->e:[I
invoke-virtual {v0, p1, v1}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[I)Landroid/content/res/TypedArray;
move-result-object v0
const/4 v1, 0x0
const/4 v2, -0x1
invoke-virtual {v0, v1, v2}, Landroid/content/res/TypedArray;->getInt(II)I
move-result v1
packed-switch v1, :pswitch_data_2c
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Must use a predefined preset size"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_1c
iput v1, p0, Lcom/facebook/widget/ProfilePictureView;->h:I
invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->requestLayout()V
invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z
move-result v1
iput-boolean v1, p0, Lcom/facebook/widget/ProfilePictureView;->e:Z
invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V
return-void
nop
:pswitch_data_2c
.packed-switch -0x4
:pswitch_1c
:pswitch_1c
:pswitch_1c
:pswitch_1c
.end packed-switch
.end method
.method static synthetic a(Lcom/facebook/widget/ProfilePictureView;Lcom/facebook/internal/s;)V
.registers 6
invoke-virtual {p1}, Lcom/facebook/internal/s;->a()Lcom/facebook/internal/p;
move-result-object v0
iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->i:Lcom/facebook/internal/p;
if-ne v0, v1, :cond_2f
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->i:Lcom/facebook/internal/p;
invoke-virtual {p1}, Lcom/facebook/internal/s;->c()Landroid/graphics/Bitmap;
move-result-object v0
invoke-virtual {p1}, Lcom/facebook/internal/s;->b()Ljava/lang/Exception;
move-result-object v1
if-eqz v1, :cond_3b
iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->j:Lcom/facebook/widget/g;
if-eqz v0, :cond_30
new-instance v0, Lcom/facebook/FacebookException;
new-instance v2, Ljava/lang/StringBuilder;
const-string v3, "Error in downloading profile picture for profileId: "
invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v3, p0, Lcom/facebook/widget/ProfilePictureView;->b:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v0, v2, v1}, Lcom/facebook/FacebookException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V
:goto_2f
:cond_2f
return-void
:cond_30
sget-object v0, Lcom/facebook/LoggingBehavior;->a:Lcom/facebook/LoggingBehavior;
sget-object v0, Lcom/facebook/widget/ProfilePictureView;->a:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;
invoke-static {}, Lcom/facebook/internal/v;->c()V
goto :goto_2f
:cond_3b
if-eqz v0, :cond_2f
invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->a(Landroid/graphics/Bitmap;)V
invoke-virtual {p1}, Lcom/facebook/internal/s;->d()Z
move-result v0
if-eqz v0, :cond_2f
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->b(Z)V
goto :goto_2f
.end method
.method private a(Z)V
.registers 6
invoke-direct {p0}, Lcom/facebook/widget/ProfilePictureView;->a()Z
move-result v0
iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->b:Ljava/lang/String;
if-eqz v1, :cond_18
iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->b:Ljava/lang/String;
invoke-virtual {v1}, Ljava/lang/String;->length()I
move-result v1
if-eqz v1, :cond_18
iget v1, p0, Lcom/facebook/widget/ProfilePictureView;->d:I
if-nez v1, :cond_43
iget v1, p0, Lcom/facebook/widget/ProfilePictureView;->c:I
if-nez v1, :cond_43
:cond_18
iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->k:Landroid/graphics/Bitmap;
if-nez v0, :cond_31
iget-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->e:Z
if-eqz v0, :cond_2e
sget v0, Lcom/facebook/a/d;->e:I
:goto_22
invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-static {v1, v0}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v0
invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->a(Landroid/graphics/Bitmap;)V
:goto_2d
:cond_2d
return-void
:cond_2e
sget v0, Lcom/facebook/a/d;->d:I
goto :goto_22
:cond_31
invoke-direct {p0}, Lcom/facebook/widget/ProfilePictureView;->a()Z
iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->k:Landroid/graphics/Bitmap;
iget v1, p0, Lcom/facebook/widget/ProfilePictureView;->d:I
iget v2, p0, Lcom/facebook/widget/ProfilePictureView;->c:I
const/4 v3, 0x0
invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object v0
invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->a(Landroid/graphics/Bitmap;)V
goto :goto_2d
:cond_43
if-nez v0, :cond_47
if-eqz p1, :cond_2d
:cond_47
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->b(Z)V
goto :goto_2d
.end method
.method private a()Z
.registers 5
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getHeight()I
move-result v3
invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getWidth()I
move-result v0
if-lez v0, :cond_d
if-gtz v3, :cond_e
:cond_d
:goto_d
return v2
:cond_e
invoke-direct {p0, v2}, Lcom/facebook/widget/ProfilePictureView;->c(Z)I
move-result v1
if-eqz v1, :cond_36
move v3, v1
:goto_15
if-gt v1, v3, :cond_2c
iget-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->e:Z
if-eqz v0, :cond_2a
move v0, v1
:goto_1c
iget v3, p0, Lcom/facebook/widget/ProfilePictureView;->d:I
if-ne v1, v3, :cond_24
iget v3, p0, Lcom/facebook/widget/ProfilePictureView;->c:I
if-eq v0, v3, :cond_25
:cond_24
const/4 v2, 0x1
:cond_25
iput v1, p0, Lcom/facebook/widget/ProfilePictureView;->d:I
iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->c:I
goto :goto_d
:cond_2a
move v0, v2
goto :goto_1c
:cond_2c
iget-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->e:Z
if-eqz v0, :cond_34
move v0, v3
:goto_31
move v1, v0
move v0, v3
goto :goto_1c
:cond_34
move v0, v2
goto :goto_31
:cond_36
move v1, v0
goto :goto_15
.end method
.method private b(Z)V
.registers 11
:try_start_0
new-instance v0, Lcom/facebook/internal/q;
invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getContext()Landroid/content/Context;
move-result-object v1
iget-object v2, p0, Lcom/facebook/widget/ProfilePictureView;->b:Ljava/lang/String;
iget v3, p0, Lcom/facebook/widget/ProfilePictureView;->d:I
iget v4, p0, Lcom/facebook/widget/ProfilePictureView;->c:I
const-string v5, "userId"
invoke-static {v2, v5}, Lcom/facebook/internal/ak;->a(Ljava/lang/String;Ljava/lang/String;)V
const/4 v5, 0x0
invoke-static {v3, v5}, Ljava/lang/Math;->max(II)I
move-result v3
const/4 v5, 0x0
invoke-static {v4, v5}, Ljava/lang/Math;->max(II)I
move-result v4
if-nez v3, :cond_33
if-nez v4, :cond_33
new-instance v0, Ljava/lang/IllegalArgumentException;
const-string v1, "Either width or height must be greater than 0"
invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V
throw v0
:catch_27
:try_end_27
.catch Ljava/net/URISyntaxException; {:try_start_0 .. :try_end_27} :catch_27
move-exception v0
sget-object v1, Lcom/facebook/LoggingBehavior;->a:Lcom/facebook/LoggingBehavior;
sget-object v1, Lcom/facebook/widget/ProfilePictureView;->a:Ljava/lang/String;
invoke-virtual {v0}, Ljava/net/URISyntaxException;->toString()Ljava/lang/String;
invoke-static {}, Lcom/facebook/internal/v;->c()V
:goto_32
return-void
:try_start_33
:cond_33
new-instance v5, Landroid/net/Uri$Builder;
invoke-direct {v5}, Landroid/net/Uri$Builder;-><init>()V
const-string v6, "https://graph.facebook.com/%s/picture"
const/4 v7, 0x1
new-array v7, v7, [Ljava/lang/Object;
const/4 v8, 0x0
aput-object v2, v7, v8
invoke-static {v6, v7}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v5, v2}, Landroid/net/Uri$Builder;->encodedPath(Ljava/lang/String;)Landroid/net/Uri$Builder;
move-result-object v2
if-eqz v4, :cond_53
const-string v5, "height"
invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v5, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
:cond_53
if-eqz v3, :cond_5e
const-string v4, "width"
invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v4, v3}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
:cond_5e
const-string v3, "migration_overrides"
const-string v4, "{october_2012:true}"
invoke-virtual {v2, v3, v4}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;
new-instance v3, Ljava/net/URI;
invoke-virtual {v2}, Landroid/net/Uri$Builder;->toString()Ljava/lang/String;
move-result-object v2
invoke-direct {v3, v2}, Ljava/net/URI;-><init>(Ljava/lang/String;)V
invoke-direct {v0, v1, v3}, Lcom/facebook/internal/q;-><init>(Landroid/content/Context;Ljava/net/URI;)V
invoke-virtual {v0, p1}, Lcom/facebook/internal/q;->a(Z)Lcom/facebook/internal/q;
move-result-object v0
invoke-virtual {v0, p0}, Lcom/facebook/internal/q;->a(Ljava/lang/Object;)Lcom/facebook/internal/q;
move-result-object v0
new-instance v1, Lcom/facebook/widget/ProfilePictureView$1;
invoke-direct {v1, p0}, Lcom/facebook/widget/ProfilePictureView$1;-><init>(Lcom/facebook/widget/ProfilePictureView;)V
invoke-virtual {v0, v1}, Lcom/facebook/internal/q;->a(Lcom/facebook/internal/r;)Lcom/facebook/internal/q;
move-result-object v0
invoke-virtual {v0}, Lcom/facebook/internal/q;->a()Lcom/facebook/internal/p;
move-result-object v0
iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->i:Lcom/facebook/internal/p;
if-eqz v1, :cond_8f
iget-object v1, p0, Lcom/facebook/widget/ProfilePictureView;->i:Lcom/facebook/internal/p;
invoke-static {v1}, Lcom/facebook/internal/k;->b(Lcom/facebook/internal/p;)Z
:cond_8f
iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->i:Lcom/facebook/internal/p;
invoke-static {v0}, Lcom/facebook/internal/k;->a(Lcom/facebook/internal/p;)V
:try_end_94
.catch Ljava/net/URISyntaxException; {:try_start_33 .. :try_end_94} :catch_27
goto :goto_32
.end method
.method private c(Z)I
.registers 4
const/4 v0, 0x0
iget v1, p0, Lcom/facebook/widget/ProfilePictureView;->h:I
packed-switch v1, :pswitch_data_1e
:goto_6
:cond_6
return v0
:pswitch_7
sget v0, Lcom/facebook/a/c;->i:I
:goto_9
invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getResources()Landroid/content/res/Resources;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v0
goto :goto_6
:pswitch_12
sget v0, Lcom/facebook/a/c;->h:I
goto :goto_9
:pswitch_15
sget v0, Lcom/facebook/a/c;->g:I
goto :goto_9
:pswitch_18
if-eqz p1, :cond_6
sget v0, Lcom/facebook/a/c;->h:I
goto :goto_9
nop
:pswitch_data_1e
.packed-switch -0x4
:pswitch_15
:pswitch_12
:pswitch_7
:pswitch_18
.end packed-switch
.end method
.method protected onDetachedFromWindow()V
.registers 2
invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->i:Lcom/facebook/internal/p;
return-void
.end method
.method protected onLayout(ZIIII)V
.registers 7
invoke-super/range {p0 .. p5}, Landroid/widget/FrameLayout;->onLayout(ZIIII)V
const/4 v0, 0x0
invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->a(Z)V
return-void
.end method
.method protected onMeasure(II)V
.registers 11
const/4 v7, -0x2
const/high16 v6, 0x4000
const/4 v2, 0x1
invoke-virtual {p0}, Lcom/facebook/widget/ProfilePictureView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v4
const/4 v1, 0x0
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v0
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I
move-result v3
invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v5
if-eq v5, v6, :cond_24
iget v5, v4, Landroid/view/ViewGroup$LayoutParams;->height:I
if-ne v5, v7, :cond_24
invoke-direct {p0, v2}, Lcom/facebook/widget/ProfilePictureView;->c(Z)I
move-result v0
invoke-static {v0, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result p2
move v1, v2
:cond_24
invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I
move-result v5
if-eq v5, v6, :cond_43
iget v4, v4, Landroid/view/ViewGroup$LayoutParams;->width:I
if-ne v4, v7, :cond_43
invoke-direct {p0, v2}, Lcom/facebook/widget/ProfilePictureView;->c(Z)I
move-result v1
invoke-static {v1, v6}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I
move-result p1
:goto_36
if-eqz v2, :cond_3f
invoke-virtual {p0, v1, v0}, Lcom/facebook/widget/ProfilePictureView;->setMeasuredDimension(II)V
invoke-virtual {p0, p1, p2}, Lcom/facebook/widget/ProfilePictureView;->measureChildren(II)V
:goto_3e
return-void
:cond_3f
invoke-super {p0, p1, p2}, Landroid/widget/FrameLayout;->onMeasure(II)V
goto :goto_3e
:cond_43
move v2, v1
move v1, v3
goto :goto_36
.end method
.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
.registers 4
const-string v1, " + Lcom/facebook/widget/ProfilePictureView; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;
move-result-object v0
const-class v1, Landroid/os/Bundle;
if-eq v0, v1, :cond_c
invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V
:goto_b
:cond_b
const-string v1, " - Lcom/facebook/widget/ProfilePictureView; onRestoreInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
:cond_c
check-cast p1, Landroid/os/Bundle;
const-string v0, "ProfilePictureView_superState"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
invoke-super {p0, v0}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V
const-string v0, "ProfilePictureView_profileId"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->b:Ljava/lang/String;
const-string v0, "ProfilePictureView_presetSize"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->h:I
const-string v0, "ProfilePictureView_isCropped"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/facebook/widget/ProfilePictureView;->e:Z
const-string v0, "ProfilePictureView_width"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->d:I
const-string v0, "ProfilePictureView_height"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/facebook/widget/ProfilePictureView;->c:I
const-string v0, "ProfilePictureView_bitmap"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->a(Landroid/graphics/Bitmap;)V
const-string v0, "ProfilePictureView_refresh"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_b
const/4 v0, 0x1
invoke-direct {p0, v0}, Lcom/facebook/widget/ProfilePictureView;->a(Z)V
goto :goto_b
.end method
.method protected onSaveInstanceState()Landroid/os/Parcelable;
.registers 4
const-string v1, " + Lcom/facebook/widget/ProfilePictureView; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;
move-result-object v0
new-instance v1, Landroid/os/Bundle;
invoke-direct {v1}, Landroid/os/Bundle;-><init>()V
const-string v2, "ProfilePictureView_superState"
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v0, "ProfilePictureView_profileId"
iget-object v2, p0, Lcom/facebook/widget/ProfilePictureView;->b:Ljava/lang/String;
invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V
const-string v0, "ProfilePictureView_presetSize"
iget v2, p0, Lcom/facebook/widget/ProfilePictureView;->h:I
invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "ProfilePictureView_isCropped"
iget-boolean v2, p0, Lcom/facebook/widget/ProfilePictureView;->e:Z
invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
const-string v0, "ProfilePictureView_bitmap"
iget-object v2, p0, Lcom/facebook/widget/ProfilePictureView;->f:Landroid/graphics/Bitmap;
invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
const-string v0, "ProfilePictureView_width"
iget v2, p0, Lcom/facebook/widget/ProfilePictureView;->d:I
invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v0, "ProfilePictureView_height"
iget v2, p0, Lcom/facebook/widget/ProfilePictureView;->c:I
invoke-virtual {v1, v0, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V
const-string v2, "ProfilePictureView_refresh"
iget-object v0, p0, Lcom/facebook/widget/ProfilePictureView;->i:Lcom/facebook/internal/p;
if-eqz v0, :cond_43
const/4 v0, 0x1
:goto_3f
invoke-virtual {v1, v2, v0}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V
move-object v2, v1
const-string v1, " - Lcom/facebook/widget/ProfilePictureView; onSaveInstanceState"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
move-object v1, v2
return-object v1
:cond_43
const/4 v0, 0x0
goto :goto_3f
.end method