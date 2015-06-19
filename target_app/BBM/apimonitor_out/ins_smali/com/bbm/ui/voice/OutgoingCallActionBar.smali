.class public Lcom/bbm/ui/voice/OutgoingCallActionBar;
.super Landroid/widget/LinearLayout;
.source "OutgoingCallActionBar.java"
.field private a:Landroid/widget/LinearLayout;
.field private b:Landroid/widget/ImageButton;
.field private c:Landroid/widget/ImageButton;
.field private d:Landroid/widget/ImageButton;
.field private e:Landroid/widget/ImageButton;
.field private f:Z
.field private g:Ljava/lang/String;
.field private h:Lcom/google/b/a/l;
.field private final i:Lcom/bbm/n/j;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
const/4 v0, 0x0
invoke-direct {p0, p1, v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.registers 4
const/4 v0, 0x0
invoke-direct {p0, p1, p2, v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.registers 7
invoke-direct {p0, p1, p2, p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->h:Lcom/google/b/a/l;
new-instance v0, Lcom/bbm/ui/voice/h;
invoke-direct {v0, p0}, Lcom/bbm/ui/voice/h;-><init>(Lcom/bbm/ui/voice/OutgoingCallActionBar;)V
iput-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->i:Lcom/bbm/n/j;
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f0300a5
const/4 v2, 0x1
invoke-virtual {v0, v1, p0, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
const v0, 0x7f0a0402
invoke-virtual {p0, v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->a:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->a:Landroid/widget/LinearLayout;
const v1, 0x7f0a0403
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->b:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->a:Landroid/widget/LinearLayout;
const v1, 0x7f0a0404
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->c:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->a:Landroid/widget/LinearLayout;
const v1, 0x7f0a0405
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->d:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->a:Landroid/widget/LinearLayout;
const v1, 0x7f0a0406
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageButton;
iput-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->e:Landroid/widget/ImageButton;
iget-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->b:Landroid/widget/ImageButton;
new-instance v1, Lcom/bbm/ui/voice/i;
invoke-direct {v1, p0}, Lcom/bbm/ui/voice/i;-><init>(Lcom/bbm/ui/voice/OutgoingCallActionBar;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->c:Landroid/widget/ImageButton;
new-instance v1, Lcom/bbm/ui/voice/k;
invoke-direct {v1, p0}, Lcom/bbm/ui/voice/k;-><init>(Lcom/bbm/ui/voice/OutgoingCallActionBar;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->d:Landroid/widget/ImageButton;
new-instance v1, Lcom/bbm/ui/voice/l;
invoke-direct {v1, p0}, Lcom/bbm/ui/voice/l;-><init>(Lcom/bbm/ui/voice/OutgoingCallActionBar;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->e:Landroid/widget/ImageButton;
new-instance v1, Lcom/bbm/ui/voice/m;
invoke-direct {v1, p0}, Lcom/bbm/ui/voice/m;-><init>(Lcom/bbm/ui/voice/OutgoingCallActionBar;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-virtual {p0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->isInEditMode()Z
move-result v0
if-nez v0, :cond_95
invoke-virtual {p0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->i:Lcom/bbm/n/j;
invoke-virtual {v0, v1}, Lcom/bbm/n/b;->a(Lcom/bbm/n/j;)V
:cond_95
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/voice/OutgoingCallActionBar;)Lcom/google/b/a/l;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->h:Lcom/google/b/a/l;
return-object v0
.end method
.method static synthetic a(Lcom/bbm/ui/voice/OutgoingCallActionBar;Z)V
.registers 3
invoke-virtual {p0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->c()V
iget-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->h:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_2a
iget-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->h:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/voice/n;
invoke-interface {v0}, Lcom/bbm/ui/voice/n;->a()V
iget-boolean v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->f:Z
if-eqz v0, :cond_2a
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->f:Z
if-eqz p1, :cond_2a
iget-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->h:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/ui/voice/n;
invoke-interface {v0}, Lcom/bbm/ui/voice/n;->d()V
:cond_2a
return-void
.end method
.method static synthetic b(Lcom/bbm/ui/voice/OutgoingCallActionBar;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->setSpeakerPhoneOn(Z)V
return-void
.end method
.method static synthetic b(Lcom/bbm/ui/voice/OutgoingCallActionBar;)Z
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->f:Z
return v0
.end method
.method static synthetic c(Lcom/bbm/ui/voice/OutgoingCallActionBar;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->g:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/voice/OutgoingCallActionBar;Z)V
.registers 2
invoke-direct {p0, p1}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->setMute(Z)V
return-void
.end method
.method static synthetic d(Lcom/bbm/ui/voice/OutgoingCallActionBar;)Landroid/widget/ImageButton;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->c:Landroid/widget/ImageButton;
return-object v0
.end method
.method static synthetic e(Lcom/bbm/ui/voice/OutgoingCallActionBar;)Landroid/widget/ImageButton;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->d:Landroid/widget/ImageButton;
return-object v0
.end method
.method private setMute(Z)V
.registers 3
invoke-virtual {p0, p1}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->setMuteActivated(Z)V
invoke-virtual {p0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;
move-result-object v0
invoke-virtual {v0, p1}, Lcom/bbm/n/b;->a(Z)V
return-void
.end method
.method private setSpeakerPhoneOn(Z)V
.registers 5
invoke-virtual {p0, p1}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->setSpeakerPhoneActivated(Z)V
invoke-virtual {p0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;
move-result-object v1
iget-object v0, v1, Lcom/bbm/n/b;->d:Lcom/bbm/j/t;
invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/bbm/j/t;->a(Ljava/lang/Object;)V
iget-object v0, v1, Lcom/bbm/n/b;->j:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_2e
iget v0, v1, Lcom/bbm/n/b;->g:I
const/4 v2, -0x1
if-eq v0, v2, :cond_2e
iget-object v0, v1, Lcom/bbm/n/b;->j:Lcom/google/b/a/l;
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/rim/bbm/BbmMediaCallService;
iget v1, v1, Lcom/bbm/n/b;->g:I
invoke-virtual {v0, v1, p1}, Lcom/rim/bbm/BbmMediaCallService;->enableSpeakerphone(IZ)I
:cond_2e
return-void
.end method
.method public final a()Z
.registers 2
invoke-virtual {p0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->getVisibility()I
move-result v0
if-nez v0, :cond_8
const/4 v0, 0x1
:goto_7
return v0
:cond_8
const/4 v0, 0x0
goto :goto_7
.end method
.method public final b()V
.registers 4
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->a()Z
move-result v0
if-nez v0, :cond_22
new-instance v0, Landroid/view/animation/TranslateAnimation;
invoke-virtual {p0}, Landroid/view/View;->getHeight()I
move-result v1
neg-int v1, v1
int-to-float v1, v1
invoke-direct {v0, v2, v2, v1, v2}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V
const-wide/16 v1, 0x12c
invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V
invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
const/4 v0, 0x0
invoke-virtual {p0, v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->setVisibility(I)V
:cond_22
return-void
.end method
.method public final c()V
.registers 4
const/4 v2, 0x0
invoke-virtual {p0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->a()Z
move-result v0
if-eqz v0, :cond_23
new-instance v0, Landroid/view/animation/TranslateAnimation;
invoke-virtual {p0}, Landroid/view/View;->getHeight()I
move-result v1
neg-int v1, v1
int-to-float v1, v1
invoke-direct {v0, v2, v2, v2, v1}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V
const-wide/16 v1, 0x12c
invoke-virtual {v0, v1, v2}, Landroid/view/animation/TranslateAnimation;->setDuration(J)V
const/4 v1, 0x1
invoke-virtual {v0, v1}, Landroid/view/animation/TranslateAnimation;->setFillAfter(Z)V
invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V
const/16 v0, 0x8
invoke-virtual {p0, v0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->setVisibility(I)V
:cond_23
return-void
.end method
.method public setCallConnected()V
.registers 2
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->f:Z
return-void
.end method
.method public setConversationUri(Ljava/lang/String;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->g:Ljava/lang/String;
return-void
.end method
.method public setListener(Lcom/google/b/a/l;)V
.registers 4
iput-object p1, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->h:Lcom/google/b/a/l;
invoke-virtual {p0}, Lcom/bbm/ui/voice/OutgoingCallActionBar;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Lcom/bbm/n/b;->a(Landroid/content/Context;)Lcom/bbm/n/b;
move-result-object v0
invoke-virtual {p1}, Lcom/google/b/a/l;->a()Z
move-result v1
if-eqz v1, :cond_16
iget-object v1, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->i:Lcom/bbm/n/j;
invoke-virtual {v0, v1}, Lcom/bbm/n/b;->a(Lcom/bbm/n/j;)V
:goto_15
return-void
:cond_16
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/n/b;->a(Lcom/bbm/n/j;)V
goto :goto_15
.end method
.method public setMuteActivated(Z)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->d:Landroid/widget/ImageButton;
invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setActivated(Z)V
return-void
.end method
.method public setSpeakerPhoneActivated(Z)V
.registers 3
iget-object v0, p0, Lcom/bbm/ui/voice/OutgoingCallActionBar;->c:Landroid/widget/ImageButton;
invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setActivated(Z)V
return-void
.end method