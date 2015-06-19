.class final Lcom/bbm/ui/voice/activities/h;
.super Ljava/lang/Object;
.source "IncomingCallActivity.java"
.implements Lcom/bbm/ui/voice/g;
.field final synthetic a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
.method private constructor <init>(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(Lcom/bbm/ui/voice/activities/IncomingCallActivity;B)V
.registers 3
invoke-direct {p0, p1}, Lcom/bbm/ui/voice/activities/h;-><init>(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)V
return-void
.end method
.method public final a()V
.registers 4
const-string v0, "onCallAccepted"
const-class v1, Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->f(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)V
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;
move-result-object v1
iget-object v0, v1, Lcom/bbm/n/b;->a:Lcom/bbm/j/t;
invoke-virtual {v0}, Lcom/bbm/j/t;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/Integer;
invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I
move-result v0
const/4 v2, 0x1
if-ne v0, v2, :cond_39
iget-object v0, v1, Lcom/bbm/n/b;->a:Lcom/bbm/j/t;
const/4 v2, 0x3
invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V
iget-object v0, v1, Lcom/bbm/n/b;->j:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/rim/bbm/BbmMediaCallService;
iget v1, v1, Lcom/bbm/n/b;->g:I
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Lcom/rim/bbm/BbmMediaCallService;->answerCall(IZ)I
:cond_39
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v1}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->a(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->g(Ljava/lang/String;)Lcom/google/b/f/a/l;
move-result-object v0
new-instance v1, Lcom/bbm/ui/voice/activities/i;
invoke-direct {v1, p0, v0}, Lcom/bbm/ui/voice/activities/i;-><init>(Lcom/bbm/ui/voice/activities/h;Lcom/google/b/f/a/l;)V
invoke-static {}, Lcom/google/b/f/a/o;->a()Lcom/google/b/f/a/n;
move-result-object v2
invoke-interface {v0, v1, v2}, Lcom/google/b/f/a/l;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->i(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Z
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-virtual {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->finish()V
return-void
.end method
.method public final a(IZZ)V
.registers 14
const/16 v9, 0x2710
const v8, 0x3ecccccd
const/4 v2, 0x0
const/4 v7, 0x4
const/high16 v6, 0x3f80
const/4 v1, 0x0
const/4 v0, 0x0
iget-object v3, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v3}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->k(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)I
move-result v3
sub-int v3, p1, v3
if-lez v3, :cond_10a
int-to-float v1, v3
const/high16 v3, 0x4380
div-float/2addr v1, v3
invoke-static {v1, v6}, Ljava/lang/Math;->min(FF)F
move-result v1
:goto_1d
:cond_1d
iget-object v3, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v3}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->l(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/ImageView;
move-result-object v3
const/4 v4, 0x0
add-float v5, v0, v1
sub-float v5, v6, v5
invoke-static {v4, v5}, Ljava/lang/Math;->max(FF)F
move-result v4
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V
iget-object v3, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v3}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->m(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/view/View;
move-result-object v3
invoke-virtual {v3, v1}, Landroid/view/View;->setAlpha(F)V
iget-object v3, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v3}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->n(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/view/View;
move-result-object v3
invoke-virtual {v3, v0}, Landroid/view/View;->setAlpha(F)V
iget-object v3, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v3}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->o(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/ImageView;
move-result-object v3
sub-float v4, v6, v0
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V
iget-object v3, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v3}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->p(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/ImageView;
move-result-object v3
mul-float v4, v0, v8
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V
iget-object v3, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v3}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->q(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/ImageView;
move-result-object v3
sub-float v4, v6, v1
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V
iget-object v3, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v3}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->r(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/ImageView;
move-result-object v3
mul-float v4, v1, v8
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V
iget-object v3, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v3}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->s(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/ImageButton;
move-result-object v3
add-float v4, v0, v1
sub-float v4, v6, v4
invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setAlpha(F)V
iget-object v3, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v3}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->t(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/ImageView;
move-result-object v3
mul-float v4, v0, v8
add-float/2addr v4, v1
invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F
move-result v4
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V
iget-object v3, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v3}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->u(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/ImageButton;
move-result-object v3
add-float v4, v0, v1
sub-float v4, v6, v4
invoke-virtual {v3, v4}, Landroid/widget/ImageButton;->setAlpha(F)V
iget-object v3, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v3}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->v(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/ImageView;
move-result-object v3
mul-float v4, v1, v8
add-float/2addr v4, v0
invoke-static {v6, v4}, Ljava/lang/Math;->min(FF)F
move-result v4
invoke-virtual {v3, v4}, Landroid/widget/ImageView;->setAlpha(F)V
iget-object v3, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v3}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->w(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/ImageView;
move-result-object v3
invoke-virtual {v3, v1}, Landroid/widget/ImageView;->setAlpha(F)V
iget-object v1, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v1}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->x(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/ImageView;
move-result-object v1
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setAlpha(F)V
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->y(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/graphics/drawable/ClipDrawable;
move-result-object v0
invoke-virtual {v0}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I
move-result v0
if-ne v0, v9, :cond_11a
const/4 v0, 0x1
:goto_c6
iget-object v1, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v1}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->z(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/graphics/drawable/ClipDrawable;
move-result-object v1
invoke-virtual {v1}, Landroid/graphics/drawable/ClipDrawable;->getLevel()I
move-result v1
if-ne v1, v9, :cond_11c
const/4 v1, 0x1
:goto_d3
if-nez p1, :cond_11e
if-nez v1, :cond_11e
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->z(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/graphics/drawable/ClipDrawable;
move-result-object v0
invoke-virtual {v0, v9}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z
:goto_e0
:cond_e0
if-eqz p2, :cond_151
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->A(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I
move-result v0
if-ne v7, v0, :cond_151
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->A(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->B(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->C(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V
:goto_109
:cond_109
return-void
:cond_10a
if-gez v3, :cond_1d
invoke-static {v3}, Ljava/lang/Math;->abs(I)I
move-result v0
int-to-float v0, v0
const/high16 v3, 0x4380
div-float/2addr v0, v3
invoke-static {v0, v6}, Ljava/lang/Math;->min(FF)F
move-result v0
goto/16 :goto_1d
:cond_11a
move v0, v2
goto :goto_c6
:cond_11c
move v1, v2
goto :goto_d3
:cond_11e
iget-object v3, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v3}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->h(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Lcom/bbm/ui/voice/IncomingCallAnswerBar;
move-result-object v3
invoke-virtual {v3}, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->getMax()I
move-result v3
if-ne p1, v3, :cond_136
if-nez v0, :cond_136
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->y(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/graphics/drawable/ClipDrawable;
move-result-object v0
invoke-virtual {v0, v9}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z
goto :goto_e0
:cond_136
if-nez v0, :cond_13a
if-eqz v1, :cond_e0
:cond_13a
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->y(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/graphics/drawable/ClipDrawable;
move-result-object v0
const/16 v1, 0x1388
invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->z(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/graphics/drawable/ClipDrawable;
move-result-object v0
const/16 v1, 0x1388
invoke-virtual {v0, v1}, Landroid/graphics/drawable/ClipDrawable;->setLevel(I)Z
goto :goto_e0
:cond_151
if-eqz p3, :cond_17b
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->C(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I
move-result v0
if-ne v7, v0, :cond_17b
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->C(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->B(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->A(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V
goto :goto_109
:cond_17b
if-nez p2, :cond_109
if-nez p3, :cond_109
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->B(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0}, Landroid/widget/TextView;->getVisibility()I
move-result v0
if-ne v7, v0, :cond_109
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->B(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v2}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->A(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->C(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/TextView;
move-result-object v0
invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_109
.end method
.method public final b()V
.registers 3
const-string v0, "onCallRejected"
const-class v1, Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0, v1}, Lcom/bbm/x;->b(Ljava/lang/String;Ljava/lang/Class;)V
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->f(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)V
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/n/b;->b()V
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->i(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Z
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-virtual {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->finish()V
return-void
.end method
.method public final c()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->h(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Lcom/bbm/ui/voice/IncomingCallAnswerBar;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->b:Z
if-nez v0, :cond_24
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->h(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Lcom/bbm/ui/voice/IncomingCallAnswerBar;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->c:Z
if-nez v0, :cond_24
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->j(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/LinearLayout;
move-result-object v0
const/4 v1, 0x0
invoke-static {v0, v1}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->a(Landroid/view/View;F)Landroid/animation/Animator;
move-result-object v0
invoke-virtual {v0}, Landroid/animation/Animator;->start()V
:cond_24
return-void
.end method
.method public final d()V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->h(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Lcom/bbm/ui/voice/IncomingCallAnswerBar;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->b:Z
if-nez v0, :cond_25
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->h(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Lcom/bbm/ui/voice/IncomingCallAnswerBar;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/ui/voice/IncomingCallAnswerBar;->c:Z
if-nez v0, :cond_25
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
iget-object v0, p0, Lcom/bbm/ui/voice/activities/h;->a:Lcom/bbm/ui/voice/activities/IncomingCallActivity;
invoke-static {v0}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->j(Lcom/bbm/ui/voice/activities/IncomingCallActivity;)Landroid/widget/LinearLayout;
move-result-object v0
const/high16 v1, 0x3f80
invoke-static {v0, v1}, Lcom/bbm/ui/voice/activities/IncomingCallActivity;->a(Landroid/view/View;F)Landroid/animation/Animator;
move-result-object v0
invoke-virtual {v0}, Landroid/animation/Animator;->start()V
:cond_25
return-void
.end method