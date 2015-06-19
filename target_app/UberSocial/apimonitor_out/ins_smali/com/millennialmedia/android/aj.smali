.class  Lcom/millennialmedia/android/aj;
.super Lcom/millennialmedia/android/dn;
.source "SourceFile"
.implements Landroid/os/Handler$Callback;
.field private static final F:Ljava/lang/String; = "CachedVideoPlayerActivity"
.field private static final v:I = 0x192
.field private static final w:I = 0x191
.field private A:Landroid/widget/TextView;
.field private B:Landroid/widget/TextView;
.field private C:Landroid/widget/RelativeLayout;
.field private D:I
.field private E:Z
.field  a:Z
.field  b:Z
.field private x:Landroid/os/Handler;
.field private y:Lcom/millennialmedia/android/VideoAd;
.field private z:Lcom/millennialmedia/android/cq;
.method constructor <init>()V
.registers 2
invoke-direct {p0}, Lcom/millennialmedia/android/dn;-><init>()V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/millennialmedia/android/aj;->E:Z
return-void
.end method
.method private A()Ljava/lang/String;
.registers 5
iget v0, p0, Lcom/millennialmedia/android/aj;->j:I
if-eqz v0, :cond_d
iget v0, p0, Lcom/millennialmedia/android/aj;->j:I
div-int/lit16 v0, v0, 0x3e8
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
:goto_c
return-object v0
:cond_d
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
if-eqz v0, :cond_1d
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->w:J
const-wide/16 v2, 0x3e8
div-long/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
goto :goto_c
:cond_1d
const-string v0, ""
goto :goto_c
.end method
.method private B()V
.registers 3
const/4 v1, 0x4
iget-object v0, p0, Lcom/millennialmedia/android/aj;->B:Landroid/widget/TextView;
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/millennialmedia/android/aj;->B:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
:cond_a
iget-object v0, p0, Lcom/millennialmedia/android/aj;->A:Landroid/widget/TextView;
if-eqz v0, :cond_13
iget-object v0, p0, Lcom/millennialmedia/android/aj;->A:Landroid/widget/TextView;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V
:cond_13
return-void
.end method
.method static synthetic a(Lcom/millennialmedia/android/aj;)Lcom/millennialmedia/android/cq;
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/aj;->z:Lcom/millennialmedia/android/cq;
return-object v0
.end method
.method private a(J)V
.registers 5
iget-object v0, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
new-instance v1, Lcom/millennialmedia/android/aj$1;
invoke-direct {v1, p0}, Lcom/millennialmedia/android/aj$1;-><init>(Lcom/millennialmedia/android/aj;)V
invoke-virtual {v0, v1, p1, p2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z
return-void
.end method
.method private a(Landroid/view/ViewGroup;)V
.registers 7
const/4 v4, -0x2
const/4 v3, 0x0
const/4 v2, 0x0
new-instance v0, Landroid/widget/TextView;
iget-object v1, p0, Lcom/millennialmedia/android/aj;->c:Lcom/millennialmedia/android/MMActivity;
invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/millennialmedia/android/aj;->B:Landroid/widget/TextView;
iget-object v0, p0, Lcom/millennialmedia/android/aj;->B:Landroid/widget/TextView;
const-string v1, " seconds remaining ..."
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->B:Landroid/widget/TextView;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->B:Landroid/widget/TextView;
const/4 v1, 0x5
invoke-virtual {v0, v2, v2, v1, v2}, Landroid/widget/TextView;->setPadding(IIII)V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->B:Landroid/widget/TextView;
const/16 v1, 0x192
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->B:Landroid/widget/TextView;
const/high16 v1, 0x3f80
const/high16 v2, -0x100
invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v1, 0xa
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
const/16 v1, 0xb
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
iget-object v1, p0, Lcom/millennialmedia/android/aj;->B:Landroid/widget/TextView;
invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method static synthetic a(Lcom/millennialmedia/android/aj;Ljava/lang/String;)V
.registers 2
invoke-direct {p0, p1}, Lcom/millennialmedia/android/aj;->g(Ljava/lang/String;)V
return-void
.end method
.method private b(Landroid/view/ViewGroup;)V
.registers 7
const/4 v4, -0x2
const/4 v3, 0x0
new-instance v0, Landroid/widget/TextView;
iget-object v1, p0, Lcom/millennialmedia/android/aj;->c:Lcom/millennialmedia/android/MMActivity;
invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/millennialmedia/android/aj;->A:Landroid/widget/TextView;
iget-object v0, p0, Lcom/millennialmedia/android/aj;->A:Landroid/widget/TextView;
invoke-direct {p0}, Lcom/millennialmedia/android/aj;->A()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->A:Landroid/widget/TextView;
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->A:Landroid/widget/TextView;
const/16 v1, 0x191
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setId(I)V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->A:Landroid/widget/TextView;
const/high16 v1, 0x3f80
const/high16 v2, -0x100
invoke-virtual {v0, v1, v3, v3, v2}, Landroid/widget/TextView;->setShadowLayer(FFFI)V
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v1, 0xa
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
const/4 v1, 0x0
const/16 v2, 0x192
invoke-virtual {v0, v1, v2}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
iget-object v1, p0, Lcom/millennialmedia/android/aj;->A:Landroid/widget/TextView;
invoke-virtual {p1, v1, v0}, Landroid/view/ViewGroup;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
.end method
.method private b(Lcom/millennialmedia/android/VideoImage;)V
.registers 6
const/4 v3, 0x1
new-instance v0, Landroid/view/animation/AlphaAnimation;
iget v1, p1, Lcom/millennialmedia/android/VideoImage;->q:F
iget v2, p1, Lcom/millennialmedia/android/VideoImage;->r:F
invoke-direct {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
iget-wide v1, p1, Lcom/millennialmedia/android/VideoImage;->s:J
invoke-virtual {v0, v1, v2}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V
invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V
invoke-virtual {v0, v3}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V
iget-object v1, p1, Lcom/millennialmedia/android/VideoImage;->u:Landroid/widget/ImageButton;
invoke-virtual {v1, v0}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V
return-void
.end method
.method private g(Ljava/lang/String;)V
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/aj;->l:Landroid/widget/VideoView;
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/millennialmedia/android/aj;->l:Landroid/widget/VideoView;
invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z
move-result v0
if-nez v0, :cond_24
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->p:Ljava/lang/String;
if-eqz v0, :cond_24
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->p:Ljava/lang/String;
invoke-virtual {p1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_24
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/aj;->a(I)V
:cond_24
return-void
.end method
.method private x()V
.registers 8
const/4 v3, 0x0
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
if-eqz v0, :cond_7d
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
if-eqz v0, :cond_7d
move v2, v3
:goto_c
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v2, v0, :cond_7d
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoImage;
iget-boolean v1, v0, Lcom/millennialmedia/android/VideoImage;->t:Z
if-nez v1, :cond_2b
iget-object v1, v0, Lcom/millennialmedia/android/VideoImage;->u:Landroid/widget/ImageButton;
iget v4, v0, Lcom/millennialmedia/android/VideoImage;->q:F
invoke-virtual {p0, v1, v4}, Lcom/millennialmedia/android/aj;->a(Landroid/widget/ImageButton;F)V
:cond_2b
iget-object v1, v0, Lcom/millennialmedia/android/VideoImage;->u:Landroid/widget/ImageButton;
invoke-virtual {v1}, Landroid/widget/ImageButton;->getParent()Landroid/view/ViewParent;
move-result-object v1
if-nez v1, :cond_3c
iget-object v1, p0, Lcom/millennialmedia/android/aj;->C:Landroid/widget/RelativeLayout;
iget-object v4, v0, Lcom/millennialmedia/android/VideoImage;->u:Landroid/widget/ImageButton;
iget-object v5, v0, Lcom/millennialmedia/android/VideoImage;->v:Landroid/widget/RelativeLayout$LayoutParams;
invoke-virtual {v1, v4, v5}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:cond_3c
move v4, v3
:goto_3d
iget-object v1, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v1, v1, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {v1}, Ljava/util/ArrayList;->size()I
move-result v1
if-ge v4, v1, :cond_5c
iget-object v5, p0, Lcom/millennialmedia/android/aj;->C:Landroid/widget/RelativeLayout;
iget-object v1, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v1, v1, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v1
check-cast v1, Lcom/millennialmedia/android/VideoImage;
iget-object v1, v1, Lcom/millennialmedia/android/VideoImage;->u:Landroid/widget/ImageButton;
invoke-virtual {v5, v1}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V
add-int/lit8 v1, v4, 0x1
move v4, v1
goto :goto_3d
:cond_5c
const-string v1, "CachedVideoPlayerActivity"
const-string v4, "Button: %d alpha: %f"
const/4 v5, 0x2
new-array v5, v5, [Ljava/lang/Object;
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v6
aput-object v6, v5, v3
const/4 v6, 0x1
iget v0, v0, Lcom/millennialmedia/android/VideoImage;->q:F
invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;
move-result-object v0
aput-object v0, v5, v6
invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
add-int/lit8 v0, v2, 0x1
move v2, v0
goto :goto_c
:cond_7d
return-void
.end method
.method private y()V
.registers 6
const/4 v4, -0x1
new-instance v0, Lcom/millennialmedia/android/cq;
iget-object v1, p0, Lcom/millennialmedia/android/aj;->c:Lcom/millennialmedia/android/MMActivity;
iget-object v2, p0, Lcom/millennialmedia/android/aj;->c:Lcom/millennialmedia/android/MMActivity;
iget-wide v2, v2, Lcom/millennialmedia/android/MMActivity;->a:J
invoke-direct {v0, v1, v2, v3}, Lcom/millennialmedia/android/cq;-><init>(Landroid/content/Context;J)V
iput-object v0, p0, Lcom/millennialmedia/android/aj;->z:Lcom/millennialmedia/android/cq;
iget-object v0, p0, Lcom/millennialmedia/android/aj;->z:Lcom/millennialmedia/android/cq;
const/16 v1, 0x19d
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/cq;->setId(I)V
new-instance v0, Lcom/millennialmedia/android/ak;
invoke-direct {v0, p0}, Lcom/millennialmedia/android/ak;-><init>(Lcom/millennialmedia/android/aj;)V
iget-object v1, p0, Lcom/millennialmedia/android/aj;->z:Lcom/millennialmedia/android/cq;
new-instance v2, Lcom/millennialmedia/android/bm;
iget-object v3, p0, Lcom/millennialmedia/android/aj;->m:Lcom/millennialmedia/android/az;
invoke-direct {v2, v0, v3}, Lcom/millennialmedia/android/bm;-><init>(Lcom/millennialmedia/android/cv;Lcom/millennialmedia/android/az;)V
invoke-virtual {v1, v2}, Lcom/millennialmedia/android/cq;->setWebViewClient(Landroid/webkit/WebViewClient;)V
new-instance v0, Landroid/widget/RelativeLayout$LayoutParams;
invoke-direct {v0, v4, v4}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const/16 v1, 0xd
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(I)V
iget-object v1, p0, Lcom/millennialmedia/android/aj;->z:Lcom/millennialmedia/android/cq;
invoke-virtual {v1, v0}, Lcom/millennialmedia/android/cq;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->z:Lcom/millennialmedia/android/cq;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/cq;->setBackgroundColor(I)V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->p:Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/aj;->c(Ljava/lang/String;)V
return-void
.end method
.method private z()V
.registers 7
const/4 v5, 0x0
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/millennialmedia/android/aj;->A:Landroid/widget/TextView;
iget-object v1, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-wide v1, v1, Lcom/millennialmedia/android/VideoAd;->w:J
const-wide/16 v3, 0x3e8
div-long/2addr v1, v3
invoke-static {v1, v2}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_15
iget-object v0, p0, Lcom/millennialmedia/android/aj;->B:Landroid/widget/TextView;
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->A:Landroid/widget/TextView;
invoke-virtual {v0, v5}, Landroid/widget/TextView;->setVisibility(I)V
return-void
.end method
.method protected a()V
.registers 3
const/4 v1, 0x1
invoke-super {p0}, Lcom/millennialmedia/android/dn;->a()V
iget-boolean v0, p0, Lcom/millennialmedia/android/aj;->a:Z
if-nez v0, :cond_19
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
if-eqz v0, :cond_19
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->s:Z
if-ne v0, v1, :cond_19
iget-boolean v0, p0, Lcom/millennialmedia/android/aj;->k:Z
if-ne v0, v1, :cond_19
invoke-direct {p0}, Lcom/millennialmedia/android/aj;->x()V
:cond_19
return-void
.end method
.method protected a(I)V
.registers 6
const/4 v2, 0x2
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
if-nez v0, :cond_12
iget-object v0, p0, Lcom/millennialmedia/android/aj;->c:Lcom/millennialmedia/android/MMActivity;
const-string v1, "Sorry. There was a problem playing the video"
const/4 v2, 0x1
invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/Toast;->show()V
:goto_11
return-void
:cond_12
iget-object v0, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z
move-result v0
if-nez v0, :cond_2b
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
if-eqz v0, :cond_2b
iget-object v0, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
iget-object v1, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v1
const-wide/16 v2, 0x3e8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:cond_2b
invoke-super {p0, p1}, Lcom/millennialmedia/android/dn;->a(I)V
goto :goto_11
.end method
.method public a(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/millennialmedia/android/dn;->a(Landroid/os/Bundle;)V
const-string v0, "CachedVideoPlayerActivity"
const-string v1, "Is Cached Ad"
invoke-static {v0, v1}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method protected a(Ljava/lang/String;)V
.registers 5
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
if-eqz v0, :cond_b
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->B:[Ljava/lang/String;
invoke-static {v0}, Lcom/millennialmedia/android/aw;->a([Ljava/lang/String;)V
:cond_b
iget-object v0, p0, Lcom/millennialmedia/android/aj;->z:Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_2d
iget-object v0, p0, Lcom/millennialmedia/android/aj;->z:Lcom/millennialmedia/android/cq;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "javascript:MMJS.cachedVideo.setError("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ");"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V
:cond_2d
invoke-super {p0, p1}, Lcom/millennialmedia/android/dn;->a(Ljava/lang/String;)V
return-void
.end method
.method public a(Landroid/view/MotionEvent;)Z
.registers 9
const/4 v6, 0x1
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
if-eqz v0, :cond_7f
iget-object v0, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
if-eqz v0, :cond_e
iget-object v0, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
invoke-virtual {v0, v6}, Landroid/os/Handler;->removeMessages(I)V
:cond_e
iget-boolean v0, p0, Lcom/millennialmedia/android/aj;->a:Z
if-nez v0, :cond_7f
const/4 v0, 0x0
move v1, v0
:goto_14
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_7f
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoImage;
iget-object v2, v0, Lcom/millennialmedia/android/VideoImage;->u:Landroid/widget/ImageButton;
iget v3, v0, Lcom/millennialmedia/android/VideoImage;->q:F
invoke-virtual {p0, v2, v3}, Lcom/millennialmedia/android/aj;->a(Landroid/widget/ImageButton;F)V
iget-wide v2, v0, Lcom/millennialmedia/android/VideoImage;->p:J
const-wide/16 v4, 0x0
cmp-long v2, v2, v4
if-lez v2, :cond_48
iget-object v2, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
invoke-static {v2, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
move-result-object v2
iget-object v3, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
iget-wide v4, v0, Lcom/millennialmedia/android/VideoImage;->p:J
invoke-virtual {v3, v2, v4, v5}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:cond_44
:goto_44
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_14
:cond_48
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v2
if-ne v2, v6, :cond_71
invoke-virtual {p0}, Lcom/millennialmedia/android/aj;->m()Z
move-result v2
if-eqz v2, :cond_44
new-instance v2, Landroid/view/animation/AlphaAnimation;
iget v3, v0, Lcom/millennialmedia/android/VideoImage;->q:F
iget v4, v0, Lcom/millennialmedia/android/VideoImage;->r:F
invoke-direct {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V
iget-wide v3, v0, Lcom/millennialmedia/android/VideoImage;->s:J
invoke-virtual {v2, v3, v4}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V
invoke-virtual {v2, v6}, Landroid/view/animation/AlphaAnimation;->setFillEnabled(Z)V
invoke-virtual {v2, v6}, Landroid/view/animation/AlphaAnimation;->setFillBefore(Z)V
invoke-virtual {v2, v6}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V
iget-object v0, v0, Lcom/millennialmedia/android/VideoImage;->u:Landroid/widget/ImageButton;
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->startAnimation(Landroid/view/animation/Animation;)V
goto :goto_44
:cond_71
invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I
move-result v2
if-nez v2, :cond_44
iget-object v2, v0, Lcom/millennialmedia/android/VideoImage;->u:Landroid/widget/ImageButton;
iget v0, v0, Lcom/millennialmedia/android/VideoImage;->q:F
invoke-virtual {p0, v2, v0}, Lcom/millennialmedia/android/aj;->a(Landroid/widget/ImageButton;F)V
goto :goto_44
:cond_7f
invoke-super {p0, p1}, Lcom/millennialmedia/android/dn;->a(Landroid/view/MotionEvent;)Z
move-result v0
return v0
.end method
.method protected b()Landroid/widget/RelativeLayout;
.registers 13
invoke-super {p0}, Lcom/millennialmedia/android/dn;->b()Landroid/widget/RelativeLayout;
move-result-object v4
new-instance v0, Landroid/os/Handler;
invoke-direct {v0, p0}, Landroid/os/Handler;-><init>(Landroid/os/Handler$Callback;)V
iput-object v0, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/aj;->b(I)V
iget-boolean v0, p0, Lcom/millennialmedia/android/aj;->E:Z
if-eqz v0, :cond_1c
invoke-direct {p0, v4}, Lcom/millennialmedia/android/aj;->a(Landroid/view/ViewGroup;)V
invoke-direct {p0, v4}, Lcom/millennialmedia/android/aj;->b(Landroid/view/ViewGroup;)V
invoke-direct {p0}, Lcom/millennialmedia/android/aj;->z()V
:cond_1c
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
if-eqz v0, :cond_36
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->p:Ljava/lang/String;
if-eqz v0, :cond_36
invoke-direct {p0}, Lcom/millennialmedia/android/aj;->y()V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->z:Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/millennialmedia/android/aj;->z:Lcom/millennialmedia/android/cq;
invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;)V
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/millennialmedia/android/aj;->a:Z
:goto_35
:cond_35
return-object v4
:cond_36
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/millennialmedia/android/aj;->a:Z
new-instance v0, Landroid/widget/RelativeLayout;
iget-object v1, p0, Lcom/millennialmedia/android/aj;->c:Lcom/millennialmedia/android/MMActivity;
invoke-direct {v0, v1}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;)V
iput-object v0, p0, Lcom/millennialmedia/android/aj;->C:Landroid/widget/RelativeLayout;
iget-object v0, p0, Lcom/millennialmedia/android/aj;->C:Landroid/widget/RelativeLayout;
const/16 v1, 0x3e8
invoke-virtual {v0, v1}, Landroid/widget/RelativeLayout;->setId(I)V
const/4 v0, 0x0
iget-object v1, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
if-eqz v1, :cond_1f5
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
move-object v3, v0
:goto_53
if-eqz v3, :cond_1e1
iget-object v0, p0, Lcom/millennialmedia/android/aj;->c:Lcom/millennialmedia/android/MMActivity;
invoke-static {v0}, Lcom/millennialmedia/android/a;->h(Landroid/content/Context;)Ljava/io/File;
move-result-object v5
const/4 v0, 0x0
move v1, v0
:goto_5d
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_1d5
invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoImage;
new-instance v6, Landroid/widget/ImageButton;
iget-object v2, p0, Lcom/millennialmedia/android/aj;->c:Lcom/millennialmedia/android/MMActivity;
invoke-direct {v6, v2}, Landroid/widget/ImageButton;-><init>(Landroid/content/Context;)V
iput-object v6, v0, Lcom/millennialmedia/android/VideoImage;->u:Landroid/widget/ImageButton;
:try_start_72
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v7
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v7, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
invoke-virtual {v7}, Lcom/millennialmedia/android/VideoAd;->e()Ljava/lang/String;
move-result-object v7
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v7, v0, Lcom/millennialmedia/android/VideoImage;->b:Ljava/lang/String;
invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v7
invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v7
const-string v8, "\\.[^\\.]*$"
const-string v9, ".dat"
invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;
move-result-object v2
if-eqz v2, :cond_121
invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setImageBitmap(Landroid/graphics/Bitmap;)V
:try_end_b2
.catch Ljava/lang/Exception; {:try_start_72 .. :try_end_b2} :catch_161
:goto_b2
iget v2, v0, Lcom/millennialmedia/android/VideoImage;->q:F
invoke-virtual {p0, v6, v2}, Lcom/millennialmedia/android/aj;->a(Landroid/widget/ImageButton;F)V
add-int/lit8 v2, v1, 0x1
invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setId(I)V
const/4 v2, 0x0
const/4 v7, 0x0
const/4 v8, 0x0
const/4 v9, 0x0
invoke-virtual {v6, v2, v7, v8, v9}, Landroid/widget/ImageButton;->setPadding(IIII)V
iget-boolean v2, v0, Lcom/millennialmedia/android/VideoImage;->t:Z
if-eqz v2, :cond_16b
sget-object v2, Landroid/widget/ImageView$ScaleType;->FIT_CENTER:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
const/high16 v2, -0x100
invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V
new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v7, -0x1
const/4 v8, -0x1
invoke-direct {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
:goto_d8
iget-object v7, v0, Lcom/millennialmedia/android/VideoImage;->e:Ljava/lang/String;
invoke-static {v7}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v7
if-nez v7, :cond_e8
new-instance v7, Lcom/millennialmedia/android/aj$2;
invoke-direct {v7, p0, v6, v0}, Lcom/millennialmedia/android/aj$2;-><init>(Lcom/millennialmedia/android/aj;Landroid/widget/ImageButton;Lcom/millennialmedia/android/VideoImage;)V
invoke-virtual {v6, v7}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_e8
iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->o:J
const-wide/16 v9, 0x0
cmp-long v7, v7, v9
if-lez v7, :cond_1ce
iput-object v2, v0, Lcom/millennialmedia/android/VideoImage;->v:Landroid/widget/RelativeLayout$LayoutParams;
iget-object v2, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
const/4 v6, 0x3
invoke-static {v2, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
move-result-object v2
iget-object v6, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->o:J
invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:goto_100
iget-wide v6, v0, Lcom/millennialmedia/android/VideoImage;->p:J
const-wide/16 v8, 0x0
cmp-long v2, v6, v8
if-lez v2, :cond_11c
iget-object v2, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
const/4 v6, 0x1
invoke-static {v2, v6, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
move-result-object v2
iget-object v6, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->p:J
iget-wide v9, v0, Lcom/millennialmedia/android/VideoImage;->o:J
add-long/2addr v7, v9
iget-wide v9, v0, Lcom/millennialmedia/android/VideoImage;->s:J
add-long/2addr v7, v9
invoke-virtual {v6, v2, v7, v8}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:cond_11c
add-int/lit8 v0, v1, 0x1
move v1, v0
goto/16 :goto_5d
:cond_121
:try_start_121
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v5}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;
move-result-object v7
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
sget-object v7, Ljava/io/File;->separator:Ljava/lang/String;
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v7, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
invoke-virtual {v7}, Lcom/millennialmedia/android/VideoAd;->e()Ljava/lang/String;
move-result-object v7
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v7, v0, Lcom/millennialmedia/android/VideoImage;->b:Ljava/lang/String;
invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v7
invoke-virtual {v7}, Landroid/net/Uri;->getLastPathSegment()Ljava/lang/String;
move-result-object v7
const-string v8, "\\.[^\\.]*$"
const-string v9, ".dat"
invoke-virtual {v7, v8, v9}, Ljava/lang/String;->replaceFirst(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
move-result-object v2
invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setImageURI(Landroid/net/Uri;)V
:try_end_15f
.catch Ljava/lang/Exception; {:try_start_121 .. :try_end_15f} :catch_161
goto/16 :goto_b2
:catch_161
move-exception v2
const-string v7, "CachedVideoPlayerActivity"
const-string v8, "Problem creating layout with bitmap buttons: "
invoke-static {v7, v8, v2}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_b2
:cond_16b
const/4 v2, 0x0
invoke-virtual {v6, v2}, Landroid/widget/ImageButton;->setBackgroundColor(I)V
new-instance v2, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v7, -0x2
const/4 v8, -0x2
invoke-direct {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
const-string v7, "CachedVideoPlayerActivity"
const-string v8, "Button: %d Anchor: %d Position: %d Anchor2: %d Position2: %d"
const/4 v9, 0x5
new-array v9, v9, [Ljava/lang/Object;
const/4 v10, 0x0
invoke-virtual {v6}, Landroid/widget/ImageButton;->getId()I
move-result v11
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v11
aput-object v11, v9, v10
const/4 v10, 0x1
iget v11, v0, Lcom/millennialmedia/android/VideoImage;->l:I
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v11
aput-object v11, v9, v10
const/4 v10, 0x2
iget v11, v0, Lcom/millennialmedia/android/VideoImage;->k:I
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v11
aput-object v11, v9, v10
const/4 v10, 0x3
iget v11, v0, Lcom/millennialmedia/android/VideoImage;->n:I
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v11
aput-object v11, v9, v10
const/4 v10, 0x4
iget v11, v0, Lcom/millennialmedia/android/VideoImage;->m:I
invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v11
aput-object v11, v9, v10
invoke-static {v8, v9}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v8
invoke-static {v7, v8}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
iget v7, v0, Lcom/millennialmedia/android/VideoImage;->k:I
iget v8, v0, Lcom/millennialmedia/android/VideoImage;->l:I
invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
iget v7, v0, Lcom/millennialmedia/android/VideoImage;->m:I
iget v8, v0, Lcom/millennialmedia/android/VideoImage;->n:I
invoke-virtual {v2, v7, v8}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
iget v7, v0, Lcom/millennialmedia/android/VideoImage;->i:I
iget v8, v0, Lcom/millennialmedia/android/VideoImage;->g:I
iget v9, v0, Lcom/millennialmedia/android/VideoImage;->j:I
iget v10, v0, Lcom/millennialmedia/android/VideoImage;->h:I
invoke-virtual {v2, v7, v8, v9, v10}, Landroid/widget/RelativeLayout$LayoutParams;->setMargins(IIII)V
goto/16 :goto_d8
:cond_1ce
iget-object v7, p0, Lcom/millennialmedia/android/aj;->C:Landroid/widget/RelativeLayout;
invoke-virtual {v7, v6, v2}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
goto/16 :goto_100
:cond_1d5
iget-object v0, p0, Lcom/millennialmedia/android/aj;->C:Landroid/widget/RelativeLayout;
new-instance v1, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v2, -0x1
const/4 v3, -0x1
invoke-direct {v1, v2, v3}, Landroid/widget/RelativeLayout$LayoutParams;-><init>(II)V
invoke-virtual {v4, v0, v1}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:cond_1e1
iget-object v0, p0, Lcom/millennialmedia/android/aj;->C:Landroid/widget/RelativeLayout;
if-eqz v0, :cond_1ea
iget-object v0, p0, Lcom/millennialmedia/android/aj;->C:Landroid/widget/RelativeLayout;
invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V
:cond_1ea
iget-object v0, p0, Lcom/millennialmedia/android/aj;->z:Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_35
iget-object v0, p0, Lcom/millennialmedia/android/aj;->z:Lcom/millennialmedia/android/cq;
invoke-virtual {v4, v0}, Landroid/widget/RelativeLayout;->bringChildToFront(Landroid/view/View;)V
goto/16 :goto_35
:cond_1f5
move-object v3, v0
goto/16 :goto_53
.end method
.method protected b(Landroid/os/Bundle;)V
.registers 4
const-string v0, "videoAd"
iget-object v1, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V
invoke-super {p0, p1}, Lcom/millennialmedia/android/dn;->b(Landroid/os/Bundle;)V
return-void
.end method
.method protected b(Ljava/lang/String;)V
.registers 6
if-eqz p1, :cond_5
invoke-virtual {p0, p1}, Lcom/millennialmedia/android/aj;->f(Ljava/lang/String;)V
:cond_5
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
if-eqz v0, :cond_17
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->g()V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->s:Z
if-nez v0, :cond_18
invoke-virtual {p0}, Lcom/millennialmedia/android/aj;->u()V
:cond_17
:goto_17
return-void
:cond_18
iget-boolean v0, p0, Lcom/millennialmedia/android/aj;->a:Z
if-nez v0, :cond_30
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
if-eqz v0, :cond_30
invoke-direct {p0}, Lcom/millennialmedia/android/aj;->x()V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->h()Z
move-result v0
if-nez v0, :cond_30
invoke-virtual {p0}, Lcom/millennialmedia/android/aj;->u()V
:cond_30
iget-object v0, p0, Lcom/millennialmedia/android/aj;->z:Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_6e
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->q:Ljava/lang/String;
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v0
if-nez v0, :cond_6e
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->q:Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/aj;->c(Ljava/lang/String;)V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->z:Lcom/millennialmedia/android/cq;
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->bringToFront()V
:goto_4a
:cond_4a
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->y:J
const-wide/16 v2, 0x0
cmp-long v0, v0, v2
if-eqz v0, :cond_5b
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->y:J
invoke-direct {p0, v0, v1}, Lcom/millennialmedia/android/aj;->a(J)V
:cond_5b
iget-object v0, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
goto :goto_17
:cond_6e
iget-boolean v0, p0, Lcom/millennialmedia/android/aj;->a:Z
if-eqz v0, :cond_4a
invoke-virtual {p0}, Lcom/millennialmedia/android/aj;->u()V
goto :goto_4a
.end method
.method protected c()V
.registers 3
invoke-super {p0}, Lcom/millennialmedia/android/dn;->c()V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
const/4 v1, 0x2
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
const/4 v1, 0x3
invoke-virtual {v0, v1}, Landroid/os/Handler;->removeMessages(I)V
return-void
.end method
.method protected c(Landroid/os/Bundle;)V
.registers 3
const-string v0, "videoAd"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoAd;
iput-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
invoke-super {p0, p1}, Lcom/millennialmedia/android/dn;->c(Landroid/os/Bundle;)V
return-void
.end method
.method  c(Ljava/lang/String;)V
.registers 4
new-instance v0, Lcom/millennialmedia/android/al;
invoke-direct {v0, p0, p1}, Lcom/millennialmedia/android/al;-><init>(Lcom/millennialmedia/android/aj;Ljava/lang/String;)V
const/4 v1, 0x0
new-array v1, v1, [Ljava/lang/Void;
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/al;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;
return-void
.end method
.method protected d(Landroid/os/Bundle;)V
.registers 4
invoke-super {p0, p1}, Lcom/millennialmedia/android/dn;->d(Landroid/os/Bundle;)V
if-nez p1, :cond_2a
invoke-virtual {p0}, Lcom/millennialmedia/android/aj;->o()Landroid/content/Intent;
move-result-object v0
const-string v1, "videoId"
invoke-virtual {v0, v1}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iget-object v1, p0, Lcom/millennialmedia/android/aj;->c:Lcom/millennialmedia/android/MMActivity;
invoke-static {v1, v0}, Lcom/millennialmedia/android/a;->i(Landroid/content/Context;Ljava/lang/String;)Lcom/millennialmedia/android/ai;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoAd;
iput-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
if-eqz v0, :cond_29
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->m:Z
iput-boolean v0, p0, Lcom/millennialmedia/android/aj;->i:Z
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->t:Z
iput-boolean v0, p0, Lcom/millennialmedia/android/aj;->E:Z
:goto_29
:cond_29
return-void
:cond_2a
const-string v0, "videoAd"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoAd;
iput-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
const-string v0, "shouldShowBottomBar"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z
move-result v0
iput-boolean v0, p0, Lcom/millennialmedia/android/aj;->i:Z
const-string v0, "lastVideoPosition"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/aj;->D:I
const-string v0, "currentVideoPosition"
invoke-virtual {p1, v0}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I
move-result v0
iput v0, p0, Lcom/millennialmedia/android/aj;->j:I
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->t:Z
iput-boolean v0, p0, Lcom/millennialmedia/android/aj;->E:Z
goto :goto_29
.end method
.method protected e()V
.registers 2
invoke-super {p0}, Lcom/millennialmedia/android/dn;->e()V
iget-object v0, p0, Lcom/millennialmedia/android/aj;->z:Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_c
iget-object v0, p0, Lcom/millennialmedia/android/aj;->z:Lcom/millennialmedia/android/cq;
invoke-virtual {v0}, Lcom/millennialmedia/android/cq;->bringToFront()V
:cond_c
iget-object v0, p0, Lcom/millennialmedia/android/aj;->C:Landroid/widget/RelativeLayout;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/millennialmedia/android/aj;->C:Landroid/widget/RelativeLayout;
invoke-virtual {v0}, Landroid/widget/RelativeLayout;->bringToFront()V
:cond_15
return-void
.end method
.method public handleMessage(Landroid/os/Message;)Z
.registers 12
const/4 v7, 0x2
const/4 v9, 0x1
const/4 v2, 0x0
iget v0, p1, Landroid/os/Message;->what:I
packed-switch v0, :pswitch_data_13c
:goto_8
:cond_8
return v9
:pswitch_9
invoke-virtual {p0}, Lcom/millennialmedia/android/aj;->m()Z
move-result v0
if-eqz v0, :cond_8
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/millennialmedia/android/VideoImage;
invoke-direct {p0, v0}, Lcom/millennialmedia/android/aj;->b(Lcom/millennialmedia/android/VideoImage;)V
goto :goto_8
:pswitch_17
iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;
check-cast v0, Lcom/millennialmedia/android/VideoImage;
:try_start_1b
iget-object v1, p0, Lcom/millennialmedia/android/aj;->C:Landroid/widget/RelativeLayout;
iget-object v3, v0, Lcom/millennialmedia/android/VideoImage;->u:Landroid/widget/ImageButton;
invoke-virtual {v1, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I
move-result v1
const/4 v3, -0x1
if-ne v1, v3, :cond_2f
iget-object v1, p0, Lcom/millennialmedia/android/aj;->C:Landroid/widget/RelativeLayout;
iget-object v3, v0, Lcom/millennialmedia/android/VideoImage;->u:Landroid/widget/ImageButton;
iget-object v4, v0, Lcom/millennialmedia/android/VideoImage;->v:Landroid/widget/RelativeLayout$LayoutParams;
invoke-virtual {v1, v3, v4}, Landroid/widget/RelativeLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
:goto_2f
:cond_2f
:try_end_2f
.catch Ljava/lang/IllegalStateException; {:try_start_1b .. :try_end_2f} :catch_65
invoke-virtual {p0}, Lcom/millennialmedia/android/aj;->m()Z
move-result v1
if-eqz v1, :cond_8
invoke-direct {p0, v0}, Lcom/millennialmedia/android/aj;->b(Lcom/millennialmedia/android/VideoImage;)V
const-string v1, "CachedVideoPlayerActivity"
const-string v3, "Beginning animation to visibility. Fade duration: %d Button: %d Time: %d"
const/4 v4, 0x3
new-array v4, v4, [Ljava/lang/Object;
iget-wide v5, v0, Lcom/millennialmedia/android/VideoImage;->s:J
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v5
aput-object v5, v4, v2
iget-object v0, v0, Lcom/millennialmedia/android/VideoImage;->u:Landroid/widget/ImageButton;
invoke-virtual {v0}, Landroid/widget/ImageButton;->getId()I
move-result v0
invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v0
aput-object v0, v4, v9
invoke-static {}, Ljava/lang/System;->currentTimeMillis()J
move-result-wide v5
invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
aput-object v0, v4, v7
invoke-static {v3, v4}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v1, v0}, Lcom/millennialmedia/android/ck;->a(Ljava/lang/String;Ljava/lang/String;)V
goto :goto_8
:catch_65
move-exception v1
const-string v3, "CachedVideoPlayerActivity"
const-string v4, "Problem adding buttons"
invoke-static {v3, v4, v1}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto :goto_2f
:try_start_6e
:pswitch_6e
iget-object v0, p0, Lcom/millennialmedia/android/aj;->l:Landroid/widget/VideoView;
if-eqz v0, :cond_11e
iget-object v0, p0, Lcom/millennialmedia/android/aj;->l:Landroid/widget/VideoView;
invoke-virtual {v0}, Landroid/widget/VideoView;->isPlaying()Z
move-result v0
if-eqz v0, :cond_11e
iget-object v0, p0, Lcom/millennialmedia/android/aj;->l:Landroid/widget/VideoView;
invoke-virtual {v0}, Landroid/widget/VideoView;->getCurrentPosition()I
move-result v4
iget v0, p0, Lcom/millennialmedia/android/aj;->D:I
if-le v4, v0, :cond_ce
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
if-eqz v0, :cond_cc
iget v0, p0, Lcom/millennialmedia/android/aj;->D:I
if-nez v0, :cond_91
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
invoke-virtual {v0}, Lcom/millennialmedia/android/VideoAd;->f()V
:cond_91
move v3, v2
:goto_92
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->E:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v3, v0, :cond_cc
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->E:Ljava/util/ArrayList;
invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoLogEvent;
if-eqz v0, :cond_c8
iget-wide v5, v0, Lcom/millennialmedia/android/VideoLogEvent;->b:J
iget v1, p0, Lcom/millennialmedia/android/aj;->D:I
int-to-long v7, v1
cmp-long v1, v5, v7
if-ltz v1, :cond_c8
iget-wide v5, v0, Lcom/millennialmedia/android/VideoLogEvent;->b:J
int-to-long v7, v4
cmp-long v1, v5, v7
if-gez v1, :cond_c8
move v1, v2
:goto_b9
iget-object v5, v0, Lcom/millennialmedia/android/VideoLogEvent;->c:[Ljava/lang/String;
array-length v5, v5
if-ge v1, v5, :cond_c8
iget-object v5, v0, Lcom/millennialmedia/android/VideoLogEvent;->c:[Ljava/lang/String;
aget-object v5, v5, v1
invoke-static {v5}, Lcom/millennialmedia/android/cp;->a(Ljava/lang/String;)V
add-int/lit8 v1, v1, 0x1
goto :goto_b9
:cond_c8
add-int/lit8 v0, v3, 0x1
move v3, v0
goto :goto_92
:cond_cc
iput v4, p0, Lcom/millennialmedia/android/aj;->D:I
:cond_ce
iget-boolean v0, p0, Lcom/millennialmedia/android/aj;->a:Z
if-eqz v0, :cond_fe
iget-object v0, p0, Lcom/millennialmedia/android/aj;->z:Lcom/millennialmedia/android/cq;
if-eqz v0, :cond_fe
iget-object v0, p0, Lcom/millennialmedia/android/aj;->z:Lcom/millennialmedia/android/cq;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "javascript:MMJS.cachedVideo.updateVideoSeekTime("
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
int-to-float v2, v4
const/high16 v3, 0x447a
div-float/2addr v2, v3
float-to-double v2, v2
invoke-static {v2, v3}, Ljava/lang/Math;->floor(D)D
move-result-wide v2
double-to-float v2, v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, ");"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/millennialmedia/android/cq;->loadUrl(Ljava/lang/String;)V
:cond_fe
iget-boolean v0, p0, Lcom/millennialmedia/android/aj;->E:Z
if-eqz v0, :cond_11e
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->w:J
int-to-long v2, v4
sub-long/2addr v0, v2
const-wide/16 v2, 0x3e8
div-long/2addr v0, v2
const-wide/16 v2, 0x0
cmp-long v2, v0, v2
if-lez v2, :cond_138
iget-object v2, p0, Lcom/millennialmedia/android/aj;->A:Landroid/widget/TextView;
if-eqz v2, :cond_11e
iget-object v2, p0, Lcom/millennialmedia/android/aj;->A:Landroid/widget/TextView;
invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_11e
:goto_11e
iget-object v0, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
iget-object v1, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
const/4 v2, 0x2
invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v1
const-wide/16 v2, 0x1f4
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:try_end_12c
.catch Ljava/lang/IllegalStateException; {:try_start_6e .. :try_end_12c} :catch_12e
goto/16 :goto_8
:catch_12e
move-exception v0
const-string v1, "CachedVideoPlayerActivity"
const-string v2, "Error with video check"
invoke-static {v1, v2, v0}, Lcom/millennialmedia/android/ck;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V
goto/16 :goto_8
:try_start_138
:cond_138
invoke-direct {p0}, Lcom/millennialmedia/android/aj;->B()V
:try_end_13b
.catch Ljava/lang/IllegalStateException; {:try_start_138 .. :try_end_13b} :catch_12e
goto :goto_11e
:pswitch_data_13c
.packed-switch 0x1
:pswitch_9
:pswitch_6e
:pswitch_17
.end packed-switch
.end method
.method protected j()V
.registers 11
const-wide/16 v6, 0x3e8
const/4 v2, 0x2
const-wide/16 v4, 0x0
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
if-eqz v0, :cond_a3
iget-object v0, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
invoke-virtual {v0, v2}, Landroid/os/Handler;->hasMessages(I)Z
move-result v0
if-nez v0, :cond_1c
iget-object v0, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
iget-object v1, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
invoke-static {v1, v2}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v1
invoke-virtual {v0, v1, v6, v7}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:cond_1c
iget-boolean v0, p0, Lcom/millennialmedia/android/aj;->a:Z
if-nez v0, :cond_a3
iget-boolean v0, p0, Lcom/millennialmedia/android/aj;->E:Z
if-eqz v0, :cond_3e
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-wide v0, v0, Lcom/millennialmedia/android/VideoAd;->w:J
iget v2, p0, Lcom/millennialmedia/android/aj;->j:I
int-to-long v2, v2
sub-long/2addr v0, v2
div-long/2addr v0, v6
cmp-long v2, v0, v4
if-lez v2, :cond_9f
iget-object v2, p0, Lcom/millennialmedia/android/aj;->A:Landroid/widget/TextView;
if-eqz v2, :cond_3e
iget-object v2, p0, Lcom/millennialmedia/android/aj;->A:Landroid/widget/TextView;
invoke-static {v0, v1}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;
move-result-object v0
invoke-virtual {v2, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_3e
:cond_3e
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
if-eqz v0, :cond_a3
const/4 v0, 0x0
move v1, v0
:goto_46
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
if-ge v1, v0, :cond_a3
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoImage;
iget-wide v2, v0, Lcom/millennialmedia/android/VideoImage;->o:J
cmp-long v2, v2, v4
if-lez v2, :cond_a7
iget-object v2, p0, Lcom/millennialmedia/android/aj;->C:Landroid/widget/RelativeLayout;
iget-object v3, v0, Lcom/millennialmedia/android/VideoImage;->u:Landroid/widget/ImageButton;
invoke-virtual {v2, v3}, Landroid/widget/RelativeLayout;->indexOfChild(Landroid/view/View;)I
move-result v2
const/4 v3, -0x1
if-ne v2, v3, :cond_a7
iget-object v2, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
const/4 v3, 0x3
invoke-static {v2, v3, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
move-result-object v6
iget-wide v2, v0, Lcom/millennialmedia/android/VideoImage;->o:J
iget v7, p0, Lcom/millennialmedia/android/aj;->j:I
int-to-long v7, v7
sub-long/2addr v2, v7
cmp-long v7, v2, v4
if-gez v7, :cond_7e
const-wide/16 v2, 0x1f4
:cond_7e
iget-object v7, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
invoke-virtual {v7, v6, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:goto_83
iget-wide v6, v0, Lcom/millennialmedia/android/VideoImage;->p:J
cmp-long v6, v6, v4
if-lez v6, :cond_9b
iget-object v6, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
const/4 v7, 0x1
invoke-static {v6, v7, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
move-result-object v6
iget-object v7, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
iget-wide v8, v0, Lcom/millennialmedia/android/VideoImage;->p:J
add-long/2addr v2, v8
iget-wide v8, v0, Lcom/millennialmedia/android/VideoImage;->s:J
add-long/2addr v2, v8
invoke-virtual {v7, v6, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:cond_9b
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_46
:cond_9f
invoke-direct {p0}, Lcom/millennialmedia/android/aj;->B()V
goto :goto_3e
:cond_a3
invoke-super {p0}, Lcom/millennialmedia/android/dn;->j()V
return-void
:cond_a7
move-wide v2, v4
goto :goto_83
.end method
.method protected k()V
.registers 15
const-wide/16 v12, 0x0
const/4 v11, 0x3
const/4 v10, 0x2
const/4 v9, 0x1
const/4 v0, 0x0
iget-object v1, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
if-eqz v1, :cond_a4
iget-boolean v1, p0, Lcom/millennialmedia/android/aj;->b:Z
if-nez v1, :cond_14
iget-object v1, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-boolean v1, v1, Lcom/millennialmedia/android/VideoAd;->C:Z
if-eqz v1, :cond_27
:cond_14
iget-object v1, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v1, v1, Lcom/millennialmedia/android/VideoAd;->p:Ljava/lang/String;
if-eqz v1, :cond_27
iget-object v1, p0, Lcom/millennialmedia/android/aj;->z:Lcom/millennialmedia/android/cq;
if-eqz v1, :cond_27
iget-object v1, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v1, v1, Lcom/millennialmedia/android/VideoAd;->p:Ljava/lang/String;
invoke-virtual {p0, v1}, Lcom/millennialmedia/android/aj;->c(Ljava/lang/String;)V
iput-boolean v0, p0, Lcom/millennialmedia/android/aj;->b:Z
:cond_27
iget-object v1, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v2, v1, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
iget-object v1, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
invoke-virtual {v1, v9}, Landroid/os/Handler;->removeMessages(I)V
iget-object v1, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
invoke-virtual {v1, v10}, Landroid/os/Handler;->removeMessages(I)V
iget-object v1, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
invoke-virtual {v1, v11}, Landroid/os/Handler;->removeMessages(I)V
iput v0, p0, Lcom/millennialmedia/android/aj;->D:I
iget-boolean v1, p0, Lcom/millennialmedia/android/aj;->a:Z
if-nez v1, :cond_8c
iget-object v1, p0, Lcom/millennialmedia/android/aj;->C:Landroid/widget/RelativeLayout;
if-eqz v1, :cond_8c
if-eqz v2, :cond_8c
move v1, v0
:goto_47
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_8c
invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoImage;
if-eqz v0, :cond_88
iget-wide v3, v0, Lcom/millennialmedia/android/VideoImage;->o:J
cmp-long v3, v3, v12
if-lez v3, :cond_6f
iget-object v3, v0, Lcom/millennialmedia/android/VideoImage;->u:Landroid/widget/ImageButton;
iget-object v4, p0, Lcom/millennialmedia/android/aj;->C:Landroid/widget/RelativeLayout;
invoke-virtual {v4, v3}, Landroid/widget/RelativeLayout;->removeView(Landroid/view/View;)V
iget-object v3, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
invoke-static {v3, v11, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
move-result-object v3
iget-object v4, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
iget-wide v5, v0, Lcom/millennialmedia/android/VideoImage;->o:J
invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:cond_6f
iget-wide v3, v0, Lcom/millennialmedia/android/VideoImage;->p:J
cmp-long v3, v3, v12
if-lez v3, :cond_88
iget-object v3, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
invoke-static {v3, v9, v0}, Landroid/os/Message;->obtain(Landroid/os/Handler;ILjava/lang/Object;)Landroid/os/Message;
move-result-object v3
iget-object v4, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
iget-wide v5, v0, Lcom/millennialmedia/android/VideoImage;->p:J
iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->o:J
add-long/2addr v5, v7
iget-wide v7, v0, Lcom/millennialmedia/android/VideoImage;->s:J
add-long/2addr v5, v7
invoke-virtual {v4, v3, v5, v6}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:cond_88
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_47
:cond_8c
iget-object v0, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
if-eqz v0, :cond_9d
iget-object v0, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
iget-object v1, p0, Lcom/millennialmedia/android/aj;->x:Landroid/os/Handler;
invoke-static {v1, v10}, Landroid/os/Message;->obtain(Landroid/os/Handler;I)Landroid/os/Message;
move-result-object v1
const-wide/16 v2, 0x3e8
invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->sendMessageDelayed(Landroid/os/Message;J)Z
:cond_9d
iget-boolean v0, p0, Lcom/millennialmedia/android/aj;->E:Z
if-eqz v0, :cond_a4
invoke-direct {p0}, Lcom/millennialmedia/android/aj;->z()V
:cond_a4
invoke-super {p0}, Lcom/millennialmedia/android/dn;->k()V
return-void
.end method
.method protected l()V
.registers 4
invoke-super {p0}, Lcom/millennialmedia/android/dn;->l()V
iget-boolean v0, p0, Lcom/millennialmedia/android/aj;->a:Z
if-nez v0, :cond_11
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
if-eqz v0, :cond_11
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
if-nez v0, :cond_12
:cond_11
return-void
:cond_12
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->D:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_1a
:goto_1a
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_11
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/millennialmedia/android/VideoImage;
iget-object v2, v0, Lcom/millennialmedia/android/VideoImage;->u:Landroid/widget/ImageButton;
if-eqz v2, :cond_1a
iget-object v0, v0, Lcom/millennialmedia/android/VideoImage;->u:Landroid/widget/ImageButton;
const/4 v2, 0x1
invoke-virtual {v0, v2}, Landroid/widget/ImageButton;->setEnabled(Z)V
goto :goto_1a
.end method
.method protected m()Z
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-boolean v0, v0, Lcom/millennialmedia/android/VideoAd;->s:Z
if-eqz v0, :cond_c
invoke-super {p0}, Lcom/millennialmedia/android/dn;->m()Z
move-result v0
if-nez v0, :cond_e
:cond_c
const/4 v0, 0x1
:goto_d
return v0
:cond_e
const/4 v0, 0x0
goto :goto_d
.end method
.method public onCompletion(Landroid/media/MediaPlayer;)V
.registers 3
invoke-super {p0, p1}, Lcom/millennialmedia/android/dn;->onCompletion(Landroid/media/MediaPlayer;)V
iget-boolean v0, p0, Lcom/millennialmedia/android/aj;->E:Z
if-eqz v0, :cond_a
invoke-direct {p0}, Lcom/millennialmedia/android/aj;->B()V
:cond_a
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
if-eqz v0, :cond_15
iget-object v0, p0, Lcom/millennialmedia/android/aj;->y:Lcom/millennialmedia/android/VideoAd;
iget-object v0, v0, Lcom/millennialmedia/android/VideoAd;->o:Ljava/lang/String;
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/aj;->b(Ljava/lang/String;)V
:cond_15
return-void
.end method
.method public onError(Landroid/media/MediaPlayer;II)Z
.registers 8
const-string v0, "Error while playing, %d - %d"
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
const/4 v2, 0x1
invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v3
aput-object v3, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Lcom/millennialmedia/android/aj;->a(Ljava/lang/String;)V
invoke-super {p0, p1, p2, p3}, Lcom/millennialmedia/android/dn;->onError(Landroid/media/MediaPlayer;II)Z
move-result v0
return v0
.end method