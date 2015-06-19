.class public Lcom/twidroid/uberchannels/a;
.super Landroid/widget/ArrayAdapter;
.source "SourceFile"
.field private a:Lcom/twidroid/fragments/whatshotfragments/a;
.field private b:Ljava/util/ArrayList;
.field private c:Z
.method public constructor <init>(Lcom/twidroid/fragments/whatshotfragments/a;Ljava/util/List;Ljava/util/ArrayList;)V
.registers 6
invoke-virtual {p1}, Lcom/twidroid/fragments/whatshotfragments/a;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
const/4 v1, -0x1
invoke-direct {p0, v0, v1, p2}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;ILjava/util/List;)V
const/4 v0, 0x0
iput-boolean v0, p0, Lcom/twidroid/uberchannels/a;->c:Z
iput-object p1, p0, Lcom/twidroid/uberchannels/a;->a:Lcom/twidroid/fragments/whatshotfragments/a;
if-nez p3, :cond_17
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/uberchannels/a;->b:Ljava/util/ArrayList;
:goto_16
return-void
:cond_17
iput-object p3, p0, Lcom/twidroid/uberchannels/a;->b:Ljava/util/ArrayList;
goto :goto_16
.end method
.method static synthetic a(Lcom/twidroid/uberchannels/a;)Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/twidroid/uberchannels/a;->b:Ljava/util/ArrayList;
return-object v0
.end method
.method private a(Landroid/widget/TextView;Z)V
.registers 4
if-eqz p2, :cond_11
const v0, 0x7f0200aa
:goto_5
invoke-virtual {p1, v0}, Landroid/widget/TextView;->setBackgroundResource(I)V
if-eqz p2, :cond_15
const v0, 0x7f0c0095
:goto_d
invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(I)V
return-void
:cond_11
const v0, 0x7f020098
goto :goto_5
:cond_15
const v0, 0x7f0c0093
goto :goto_d
.end method
.method static synthetic a(Lcom/twidroid/uberchannels/a;Landroid/widget/TextView;Z)V
.registers 3
invoke-direct {p0, p1, p2}, Lcom/twidroid/uberchannels/a;->a(Landroid/widget/TextView;Z)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/uberchannels/a;Z)Z
.registers 2
iput-boolean p1, p0, Lcom/twidroid/uberchannels/a;->c:Z
return p1
.end method
.method static synthetic b(Lcom/twidroid/uberchannels/a;)Lcom/twidroid/fragments/whatshotfragments/a;
.registers 2
iget-object v0, p0, Lcom/twidroid/uberchannels/a;->a:Lcom/twidroid/fragments/whatshotfragments/a;
return-object v0
.end method
.method public a()Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/twidroid/uberchannels/a;->b:Ljava/util/ArrayList;
return-object v0
.end method
.method public a(I)Z
.registers 4
iget-object v0, p0, Lcom/twidroid/uberchannels/a;->b:Ljava/util/ArrayList;
invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v1
invoke-virtual {v0, v1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z
move-result v0
return v0
.end method
.method public b()Z
.registers 2
iget-boolean v0, p0, Lcom/twidroid/uberchannels/a;->c:Z
return v0
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 9
const/4 v4, 0x0
if-nez p2, :cond_12
invoke-virtual {p0}, Lcom/twidroid/uberchannels/a;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f030056
invoke-virtual {v0, v1, p3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object p2
:cond_12
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/uberchannels/b;
if-nez v0, :cond_61
new-instance v0, Lcom/twidroid/uberchannels/b;
invoke-direct {v0, p2}, Lcom/twidroid/uberchannels/b;-><init>(Landroid/view/View;)V
invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object v1, v0
:goto_23
invoke-virtual {p0, p1}, Lcom/twidroid/uberchannels/a;->getItem(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/uberchannels/models/UberTopic;
iget-object v2, v1, Lcom/twidroid/uberchannels/b;->b:Landroid/widget/TextView;
iget-object v3, v0, Lcom/twidroid/uberchannels/models/UberTopic;->c:Ljava/lang/String;
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, v1, Lcom/twidroid/uberchannels/b;->c:Landroid/widget/TextView;
iget-object v3, v0, Lcom/twidroid/uberchannels/models/UberTopic;->d:Ljava/lang/String;
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, v1, Lcom/twidroid/uberchannels/b;->d:Landroid/widget/TextView;
new-instance v3, Lcom/twidroid/uberchannels/a$1;
invoke-direct {v3, p0, v0}, Lcom/twidroid/uberchannels/a$1;-><init>(Lcom/twidroid/uberchannels/a;Lcom/twidroid/uberchannels/models/UberTopic;)V
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v2, v1, Lcom/twidroid/uberchannels/b;->d:Landroid/widget/TextView;
iget v3, v0, Lcom/twidroid/uberchannels/models/UberTopic;->h:I
invoke-virtual {p0, v3}, Lcom/twidroid/uberchannels/a;->a(I)Z
move-result v3
invoke-direct {p0, v2, v3}, Lcom/twidroid/uberchannels/a;->a(Landroid/widget/TextView;Z)V
iget-object v1, v1, Lcom/twidroid/uberchannels/b;->a:Lcom/twidroid/ui/widgets/CachedImageView;
invoke-virtual {v0}, Lcom/twidroid/uberchannels/models/UberTopic;->g()Ljava/lang/String;
move-result-object v0
new-instance v2, Lcom/twidroid/uberchannels/a$2;
invoke-direct {v2, p0}, Lcom/twidroid/uberchannels/a$2;-><init>(Lcom/twidroid/uberchannels/a;)V
invoke-virtual {v1, v0, v2}, Lcom/twidroid/ui/widgets/CachedImageView;->a(Ljava/lang/String;Lcom/twidroid/ui/widgets/d;)V
invoke-virtual {p2, v4}, Landroid/view/View;->setFocusable(Z)V
invoke-virtual {p2, v4}, Landroid/view/View;->setFocusableInTouchMode(Z)V
return-object p2
:cond_61
move-object v1, v0
goto :goto_23
.end method