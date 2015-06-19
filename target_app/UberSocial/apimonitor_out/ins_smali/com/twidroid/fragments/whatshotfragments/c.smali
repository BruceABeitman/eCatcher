.class public Lcom/twidroid/fragments/whatshotfragments/c;
.super Lcom/twidroid/fragments/whatshotfragments/l;
.source "SourceFile"
.field  a:Landroid/widget/LinearLayout;
.field  b:Landroid/widget/LinearLayout;
.field  c:Landroid/widget/LinearLayout;
.field  d:Lcom/twidroid/ui/widgets/CachedImageView;
.field private e:Lcom/twidroid/UberSocialApplication;
.field private f:Lcom/twidroid/ui/themes/a;
.method public constructor <init>()V
.registers 1
invoke-direct {p0}, Lcom/twidroid/fragments/whatshotfragments/l;-><init>()V
return-void
.end method
.method public constructor <init>(Lcom/twidroid/UberSocialApplication;)V
.registers 3
invoke-direct {p0}, Lcom/twidroid/fragments/whatshotfragments/l;-><init>()V
iput-object p1, p0, Lcom/twidroid/fragments/whatshotfragments/c;->e:Lcom/twidroid/UberSocialApplication;
invoke-virtual {p1}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;
move-result-object v0
instance-of v0, v0, Lcom/twidroid/ui/themes/a;
if-eqz v0, :cond_15
invoke-virtual {p1}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/themes/a;
iput-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->f:Lcom/twidroid/ui/themes/a;
:cond_15
return-void
.end method
.method private a(Lcom/twidroid/ui/themes/c;Landroid/view/LayoutInflater;)Landroid/view/View;
.registers 8
const v0, 0x7f03004f
const/4 v1, 0x0
invoke-virtual {p2, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v3
iget-object v0, p1, Lcom/twidroid/ui/themes/c;->b:Ljava/lang/String;
invoke-virtual {v3, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->f:Lcom/twidroid/ui/themes/a;
invoke-static {v0, p1}, Lcom/twidroid/d/t;->a(Lcom/twidroid/ui/themes/r;Lcom/twidroid/ui/themes/c;)Z
const v0, 0x7f090040
invoke-virtual {v3, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
const v1, 0x7f090109
invoke-virtual {v3, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/TextView;
const v2, 0x7f09010a
invoke-virtual {v3, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v2
check-cast v2, Landroid/widget/TextView;
iget-object v4, p1, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;
invoke-virtual {v1, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p1, Lcom/twidroid/ui/themes/c;->e:Ljava/lang/String;
invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/c;->f:Lcom/twidroid/ui/themes/a;
iget v2, p1, Lcom/twidroid/ui/themes/c;->c:I
invoke-virtual {v1, v2}, Lcom/twidroid/ui/themes/a;->a(I)Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
return-object v3
.end method
.method static synthetic a(Lcom/twidroid/fragments/whatshotfragments/c;Ljava/lang/String;)Lcom/twidroid/uberchannels/models/UberTopic;
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/c;->b(Ljava/lang/String;)Lcom/twidroid/uberchannels/models/UberTopic;
move-result-object v0
return-object v0
.end method
.method static synthetic a(Lcom/twidroid/fragments/whatshotfragments/c;Lcom/twidroid/uberchannels/models/UberTopic;)Lcom/twidroid/ui/c/h;
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/c;->a(Lcom/twidroid/uberchannels/models/UberTopic;)Lcom/twidroid/ui/c/h;
move-result-object v0
return-object v0
.end method
.method private a(Lcom/twidroid/uberchannels/models/UberTopic;)Lcom/twidroid/ui/c/h;
.registers 4
new-instance v0, Lcom/twidroid/ui/c/b;
invoke-direct {v0}, Lcom/twidroid/ui/c/b;-><init>()V
invoke-virtual {p1}, Lcom/twidroid/uberchannels/models/UberTopic;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/c/b;->c(Ljava/lang/String;)Lcom/twidroid/ui/c/h;
iget-object v1, p1, Lcom/twidroid/uberchannels/models/UberTopic;->c:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/twidroid/ui/c/b;->b(Ljava/lang/String;)V
iget v1, p1, Lcom/twidroid/uberchannels/models/UberTopic;->h:I
invoke-virtual {v0, v1}, Lcom/twidroid/ui/c/b;->b(I)V
invoke-virtual {v0, p1}, Lcom/twidroid/ui/c/b;->a(Lcom/twidroid/uberchannels/models/UberTopic;)V
return-object v0
.end method
.method private a(Landroid/widget/LinearLayout;)V
.registers 6
new-instance v0, Landroid/view/View;
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V
new-instance v1, Landroid/widget/LinearLayout$LayoutParams;
const/4 v2, -0x1
const/4 v3, 0x2
invoke-direct {v1, v2, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
const/4 v2, 0x6
new-array v2, v2, [I
fill-array-data v2, :array_22
new-instance v3, Lcom/twidroid/ui/b/f;
invoke-direct {v3, v2}, Lcom/twidroid/ui/b/f;-><init>([I)V
invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
invoke-virtual {p1, v0, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
return-void
:array_22
.array-data 0x4
0xfft 0xfft 0xfft 0xfft
0x4bt 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0x28t 0x0t 0x0t 0x0t
0xfft 0xfft 0xfft 0xfft
0xat 0x0t 0x0t 0x0t
.end array-data
.end method
.method private a(Landroid/widget/LinearLayout;Ljava/lang/String;)V
.registers 5
new-instance v0, Landroid/widget/TextView;
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-direct {v0, v1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V
const/high16 v1, 0x4180
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextSize(F)V
const/4 v1, -0x1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTextColor(I)V
sget-object v1, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;)V
invoke-virtual {v0, p2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p1, v0}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
invoke-direct {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/c;->a(Landroid/widget/LinearLayout;)V
return-void
.end method
.method private a(Ljava/lang/String;)Z
.registers 9
const/4 v2, 0x1
const/4 v1, 0x0
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->e:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->j()Lcom/twidroid/ui/c/g;
move-result-object v3
move v0, v1
:goto_9
invoke-virtual {v3}, Lcom/twidroid/ui/c/g;->b()I
move-result v4
if-ge v0, v4, :cond_37
invoke-virtual {v3, v0}, Lcom/twidroid/ui/c/g;->a(I)Lcom/twidroid/ui/c/h;
move-result-object v4
const/4 v5, 0x5
invoke-virtual {v4}, Lcom/twidroid/ui/c/h;->j()I
move-result v6
if-eq v5, v6, :cond_24
const/4 v5, 0x2
invoke-virtual {v4}, Lcom/twidroid/ui/c/h;->j()I
move-result v6
if-eq v5, v6, :cond_24
:cond_21
add-int/lit8 v0, v0, 0x1
goto :goto_9
:cond_24
invoke-virtual {v4}, Lcom/twidroid/ui/c/h;->g()I
move-result v5
invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;
move-result-object v5
invoke-virtual {v5}, Ljava/lang/Integer;->toString()Ljava/lang/String;
move-result-object v5
invoke-virtual {p1, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v5
if-eqz v5, :cond_38
move v1, v2
:cond_37
:goto_37
return v1
:cond_38
invoke-virtual {v4}, Lcom/twidroid/ui/c/h;->d()Ljava/lang/String;
move-result-object v4
invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v4
if-eqz v4, :cond_21
move v1, v2
goto :goto_37
.end method
.method private b(Ljava/lang/String;)Lcom/twidroid/uberchannels/models/UberTopic;
.registers 6
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
invoke-virtual {v0}, Landroid/support/v4/app/FragmentActivity;->getApplication()Landroid/app/Application;
move-result-object v0
check-cast v0, Lcom/twidroid/UberSocialApplication;
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v1
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0}, Lcom/twidroid/UberSocialApplication;->e()Lcom/twidroid/d/v;
move-result-object v0
invoke-virtual {v0}, Lcom/twidroid/d/v;->bt()Ljava/lang/String;
move-result-object v0
const/4 v3, -0x1
invoke-static {v1, v2, v0, v3}, Lcom/twidroid/uberchannels/a/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;I)Ljava/util/ArrayList;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
:cond_23
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_3e
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/uberchannels/models/UberTopic;
invoke-virtual {v0}, Lcom/twidroid/uberchannels/models/UberTopic;->b()I
move-result v2
invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v2
invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v2
if-eqz v2, :cond_23
:goto_3d
return-object v0
:cond_3e
const/4 v0, 0x0
goto :goto_3d
.end method
.method static synthetic b(Lcom/twidroid/fragments/whatshotfragments/c;Ljava/lang/String;)Z
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/c;->a(Ljava/lang/String;)Z
move-result v0
return v0
.end method
.method static synthetic c(Lcom/twidroid/fragments/whatshotfragments/c;Ljava/lang/String;)Lcom/twidroid/ui/c/h;
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/fragments/whatshotfragments/c;->c(Ljava/lang/String;)Lcom/twidroid/ui/c/h;
move-result-object v0
return-object v0
.end method
.method private c(Ljava/lang/String;)Lcom/twidroid/ui/c/h;
.registers 4
new-instance v0, Lcom/twidroid/ui/c/e;
invoke-direct {v0}, Lcom/twidroid/ui/c/e;-><init>()V
invoke-virtual {v0, p1}, Lcom/twidroid/ui/c/e;->b(Ljava/lang/String;)V
invoke-virtual {v0, p1}, Lcom/twidroid/ui/c/e;->a(Ljava/lang/String;)V
invoke-virtual {p1}, Ljava/lang/String;->hashCode()I
move-result v1
invoke-virtual {v0, v1}, Lcom/twidroid/ui/c/e;->b(I)V
return-object v0
.end method
.method public S()Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v0
if-eqz v0, :cond_a
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->f:Lcom/twidroid/ui/themes/a;
if-nez v0, :cond_d
:cond_a
const-string v0, "PremiumTheme"
:goto_c
return-object v0
:cond_d
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->f:Lcom/twidroid/ui/themes/a;
invoke-virtual {v0}, Lcom/twidroid/ui/themes/a;->c()Ljava/lang/String;
move-result-object v0
const-string v1, "snow"
invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_1e
const-string v0, "Snow White"
goto :goto_c
:cond_1e
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->f:Lcom/twidroid/ui/themes/a;
invoke-virtual {v0}, Lcom/twidroid/ui/themes/a;->c()Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Lcom/ubermedia/b/a/j;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
goto :goto_c
.end method
.method protected b()V
.registers 14
const v12, 0x7f0c0199
const v11, 0x7f0c0094
const/4 v0, 0x1
const/4 v5, 0x0
iget-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/c;->f:Lcom/twidroid/ui/themes/a;
invoke-virtual {v1}, Lcom/twidroid/ui/themes/a;->a()Lcom/twidroid/ui/themes/b;
move-result-object v1
if-nez v1, :cond_11
:cond_10
return-void
:cond_11
invoke-virtual {v1}, Lcom/twidroid/ui/themes/b;->d()Ljava/util/List;
move-result-object v2
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v2
if-eqz v2, :cond_10
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/c;->getActivity()Landroid/support/v4/app/FragmentActivity;
move-result-object v2
invoke-static {v2}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v6
invoke-virtual {v1}, Lcom/twidroid/ui/themes/b;->d()Ljava/util/List;
move-result-object v1
invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v7
move v2, v0
move v3, v0
move v4, v0
:goto_2e
invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_10
invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/themes/c;
invoke-direct {p0, v0, v6}, Lcom/twidroid/fragments/whatshotfragments/c;->a(Lcom/twidroid/ui/themes/c;Landroid/view/LayoutInflater;)Landroid/view/View;
move-result-object v8
const v1, 0x7f09010b
invoke-virtual {v8, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v1
check-cast v1, Landroid/widget/Button;
iget-object v9, v0, Lcom/twidroid/ui/themes/c;->d:Ljava/lang/String;
const-string v10, "channel"
invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_d1
if-eqz v4, :cond_c7
iget-object v4, p0, Lcom/twidroid/fragments/whatshotfragments/c;->f:Lcom/twidroid/ui/themes/a;
invoke-virtual {v4}, Lcom/twidroid/ui/themes/a;->c()Ljava/lang/String;
move-result-object v4
const-string v9, "uncleuber"
invoke-virtual {v4, v9}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_6d
new-instance v4, Lcom/twidroid/fragments/whatshotfragments/f;
iget-object v9, v0, Lcom/twidroid/ui/themes/c;->b:Ljava/lang/String;
invoke-direct {v4, p0, v9}, Lcom/twidroid/fragments/whatshotfragments/f;-><init>(Lcom/twidroid/fragments/whatshotfragments/c;Ljava/lang/String;)V
new-array v9, v5, [Ljava/lang/Void;
invoke-virtual {v4, v9}, Lcom/twidroid/fragments/whatshotfragments/f;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
:cond_6d
iget-object v4, p0, Lcom/twidroid/fragments/whatshotfragments/c;->a:Landroid/widget/LinearLayout;
const-string v9, "Channels"
invoke-direct {p0, v4, v9}, Lcom/twidroid/fragments/whatshotfragments/c;->a(Landroid/widget/LinearLayout;Ljava/lang/String;)V
iget-object v4, p0, Lcom/twidroid/fragments/whatshotfragments/c;->a:Landroid/widget/LinearLayout;
invoke-virtual {v4, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V
move v4, v5
:goto_7a
iget-object v9, p0, Lcom/twidroid/fragments/whatshotfragments/c;->f:Lcom/twidroid/ui/themes/a;
invoke-virtual {v9}, Lcom/twidroid/ui/themes/a;->c()Ljava/lang/String;
move-result-object v9
const-string v10, "uncleuber"
invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v9
if-eqz v9, :cond_9e
iget-object v9, v0, Lcom/twidroid/ui/themes/c;->a:Ljava/lang/String;
const-string v10, "Talk"
invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z
move-result v9
if-eqz v9, :cond_9e
new-instance v9, Lcom/twidroid/fragments/whatshotfragments/f;
iget-object v0, v0, Lcom/twidroid/ui/themes/c;->b:Ljava/lang/String;
invoke-direct {v9, p0, v0}, Lcom/twidroid/fragments/whatshotfragments/f;-><init>(Lcom/twidroid/fragments/whatshotfragments/c;Ljava/lang/String;)V
new-array v0, v5, [Ljava/lang/Void;
invoke-virtual {v9, v0}, Lcom/twidroid/fragments/whatshotfragments/f;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
:cond_9e
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/fragments/whatshotfragments/c;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_cd
invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(I)V
:goto_b2
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->a:Landroid/widget/LinearLayout;
invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v0, Lcom/twidroid/fragments/whatshotfragments/c$1;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/whatshotfragments/c$1;-><init>(Lcom/twidroid/fragments/whatshotfragments/c;)V
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move v0, v2
move v1, v3
move v2, v4
:goto_c2
move v3, v1
move v4, v2
move v2, v0
goto/16 :goto_2e
:cond_c7
iget-object v9, p0, Lcom/twidroid/fragments/whatshotfragments/c;->a:Landroid/widget/LinearLayout;
invoke-direct {p0, v9}, Lcom/twidroid/fragments/whatshotfragments/c;->a(Landroid/widget/LinearLayout;)V
goto :goto_7a
:cond_cd
invoke-virtual {v1, v11}, Landroid/widget/TextView;->setText(I)V
goto :goto_b2
:cond_d1
iget-object v9, v0, Lcom/twidroid/ui/themes/c;->d:Ljava/lang/String;
const-string v10, "url"
invoke-virtual {v9, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v9
if-eqz v9, :cond_106
const/16 v0, 0x8
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setVisibility(I)V
if-eqz v3, :cond_100
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->b:Landroid/widget/LinearLayout;
const-string v1, "Websites"
invoke-direct {p0, v0, v1}, Lcom/twidroid/fragments/whatshotfragments/c;->a(Landroid/widget/LinearLayout;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->b:Landroid/widget/LinearLayout;
invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V
move v3, v5
:goto_ef
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->b:Landroid/widget/LinearLayout;
invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v0, Lcom/twidroid/fragments/whatshotfragments/c$2;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/whatshotfragments/c$2;-><init>(Lcom/twidroid/fragments/whatshotfragments/c;)V
invoke-virtual {v8, v0}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move v0, v2
move v1, v3
move v2, v4
goto :goto_c2
:cond_100
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->b:Landroid/widget/LinearLayout;
invoke-direct {p0, v0}, Lcom/twidroid/fragments/whatshotfragments/c;->a(Landroid/widget/LinearLayout;)V
goto :goto_ef
:cond_106
iget-object v0, v0, Lcom/twidroid/ui/themes/c;->d:Ljava/lang/String;
const-string v9, "list"
invoke-virtual {v0, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_140
if-eqz v2, :cond_145
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->c:Landroid/widget/LinearLayout;
const-string v2, "Twitter Lists"
invoke-direct {p0, v0, v2}, Lcom/twidroid/fragments/whatshotfragments/c;->a(Landroid/widget/LinearLayout;Ljava/lang/String;)V
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->c:Landroid/widget/LinearLayout;
invoke-virtual {v0, v5}, Landroid/widget/LinearLayout;->setVisibility(I)V
move v2, v5
:goto_11f
invoke-virtual {v1, v5}, Landroid/widget/TextView;->setVisibility(I)V
invoke-virtual {v8}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
invoke-direct {p0, v0}, Lcom/twidroid/fragments/whatshotfragments/c;->a(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_14b
invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(I)V
:goto_133
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->c:Landroid/widget/LinearLayout;
invoke-virtual {v0, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V
new-instance v0, Lcom/twidroid/fragments/whatshotfragments/c$3;
invoke-direct {v0, p0}, Lcom/twidroid/fragments/whatshotfragments/c$3;-><init>(Lcom/twidroid/fragments/whatshotfragments/c;)V
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:cond_140
move v0, v2
move v1, v3
move v2, v4
goto/16 :goto_c2
:cond_145
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->c:Landroid/widget/LinearLayout;
invoke-direct {p0, v0}, Lcom/twidroid/fragments/whatshotfragments/c;->a(Landroid/widget/LinearLayout;)V
goto :goto_11f
:cond_14b
invoke-virtual {v1, v12}, Landroid/widget/TextView;->setText(I)V
goto :goto_133
.end method
.method public d()V
.registers 1
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/c;->b()V
return-void
.end method
.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.registers 6
const v0, 0x7f03003e
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
return-object v0
.end method
.method public onResume()V
.registers 3
const-string v1, " + Lcom/twidroid/fragments/whatshotfragments/c; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
invoke-super {p0}, Lcom/twidroid/fragments/whatshotfragments/l;->onResume()V
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/c;->b()V
const-string v1, " - Lcom/twidroid/fragments/whatshotfragments/c; onResume"
invoke-static {}, Ldroidbox/apimonitor/Helper;->elapsedRealtime()Ljava/lang/String;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Ldroidbox/apimonitor/Helper;->log(Ljava/lang/String;)V
return-void
.end method
.method public onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
.registers 9
const v5, 0x7f0a004d
const/high16 v4, 0x6600
const/high16 v3, 0x3300
invoke-super {p0, p1, p2}, Lcom/twidroid/fragments/whatshotfragments/l;->onViewCreated(Landroid/view/View;Landroid/os/Bundle;)V
const v0, 0x7f0900c5
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
if-eqz v0, :cond_2b
iget-object v1, p0, Lcom/twidroid/fragments/whatshotfragments/c;->e:Lcom/twidroid/UberSocialApplication;
invoke-virtual {v1}, Lcom/twidroid/UberSocialApplication;->f()Lcom/twidroid/ui/themes/r;
move-result-object v1
invoke-virtual {v1}, Lcom/twidroid/ui/themes/r;->v()Landroid/graphics/drawable/Drawable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_CROP:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_2b
const v0, 0x7f0900c7
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->b:Landroid/widget/LinearLayout;
const v0, 0x7f0900c8
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->a:Landroid/widget/LinearLayout;
const v0, 0x7f0900c9
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/LinearLayout;
iput-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->c:Landroid/widget/LinearLayout;
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->b:Landroid/widget/LinearLayout;
new-instance v1, Lcom/twidroid/ui/b/d;
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/c;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
invoke-direct {v1, v2, v3, v4}, Lcom/twidroid/ui/b/d;-><init>(III)V
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->a:Landroid/widget/LinearLayout;
new-instance v1, Lcom/twidroid/ui/b/d;
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/c;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
invoke-direct {v1, v2, v3, v4}, Lcom/twidroid/ui/b/d;-><init>(III)V
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
iget-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->c:Landroid/widget/LinearLayout;
new-instance v1, Lcom/twidroid/ui/b/d;
invoke-virtual {p0}, Lcom/twidroid/fragments/whatshotfragments/c;->getResources()Landroid/content/res/Resources;
move-result-object v2
invoke-virtual {v2, v5}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v2
invoke-direct {v1, v2, v3, v4}, Lcom/twidroid/ui/b/d;-><init>(III)V
invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
const v0, 0x7f0900c6
invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/widgets/CachedImageView;
iput-object v0, p0, Lcom/twidroid/fragments/whatshotfragments/c;->d:Lcom/twidroid/ui/widgets/CachedImageView;
return-void
.end method