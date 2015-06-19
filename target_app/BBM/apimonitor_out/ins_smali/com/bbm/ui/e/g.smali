.class public final Lcom/bbm/ui/e/g;
.super Ljava/lang/Object;
.source "ChannelPostMessageHolder.java"
.implements Lcom/bbm/ui/e/at;
.field private static i:Lcom/bbm/d/fg;
.field private a:Landroid/widget/ImageView;
.field private b:Landroid/widget/TextView;
.field private final c:Lcom/bbm/d/a;
.field private d:Landroid/view/View$OnTouchListener;
.field private final e:Lcom/bbm/ui/activities/xo;
.field private final f:Lcom/bbm/ui/e/cf;
.field private final g:Landroid/content/Context;
.field private h:Lcom/bbm/ui/ChannelPostMessageView;
.field private j:Lcom/bbm/d/fg;
.field private k:Lorg/json/JSONObject;
.field private l:Lcom/bbm/util/o;
.field private m:Ljava/lang/String;
.field private n:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 1
new-instance v0, Lcom/bbm/d/fg;
invoke-direct {v0}, Lcom/bbm/d/fg;-><init>()V
sput-object v0, Lcom/bbm/ui/e/g;->i:Lcom/bbm/d/fg;
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/ui/activities/xo;Landroid/view/View$OnTouchListener;Lcom/bbm/ui/e/cf;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/e/g;->d:Landroid/view/View$OnTouchListener;
sget-object v0, Lcom/bbm/ui/e/g;->i:Lcom/bbm/d/fg;
iput-object v0, p0, Lcom/bbm/ui/e/g;->j:Lcom/bbm/d/fg;
iput-object p1, p0, Lcom/bbm/ui/e/g;->g:Landroid/content/Context;
iput-object p2, p0, Lcom/bbm/ui/e/g;->c:Lcom/bbm/d/a;
iput-object p3, p0, Lcom/bbm/ui/e/g;->e:Lcom/bbm/ui/activities/xo;
iput-object p4, p0, Lcom/bbm/ui/e/g;->d:Landroid/view/View$OnTouchListener;
iput-object p5, p0, Lcom/bbm/ui/e/g;->f:Lcom/bbm/ui/e/cf;
return-void
.end method
.method static synthetic a(Lcom/bbm/ui/e/g;)Landroid/content/Context;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/g;->g:Landroid/content/Context;
return-object v0
.end method
.method static synthetic b(Lcom/bbm/ui/e/g;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/g;->n:Ljava/lang/String;
return-object v0
.end method
.method static synthetic c(Lcom/bbm/ui/e/g;)Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/g;->m:Ljava/lang/String;
return-object v0
.end method
.method static synthetic d(Lcom/bbm/ui/e/g;)Lorg/json/JSONObject;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/e/g;->k:Lorg/json/JSONObject;
return-object v0
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
const v0, 0x7f0300d4
const/4 v1, 0x0
invoke-virtual {p1, v0, p2, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ChannelPostMessageView;
iput-object v0, p0, Lcom/bbm/ui/e/g;->h:Lcom/bbm/ui/ChannelPostMessageView;
iget-object v0, p0, Lcom/bbm/ui/e/g;->h:Lcom/bbm/ui/ChannelPostMessageView;
const v1, 0x7f0a0455
invoke-virtual {v0, v1}, Lcom/bbm/ui/ChannelPostMessageView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, p0, Lcom/bbm/ui/e/g;->a:Landroid/widget/ImageView;
iget-object v0, p0, Lcom/bbm/ui/e/g;->h:Lcom/bbm/ui/ChannelPostMessageView;
const v1, 0x7f0a0456
invoke-virtual {v0, v1}, Lcom/bbm/ui/ChannelPostMessageView;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/g;->b:Landroid/widget/TextView;
iget-object v0, p0, Lcom/bbm/ui/e/g;->b:Landroid/widget/TextView;
iget-object v1, p0, Lcom/bbm/ui/e/g;->d:Landroid/view/View$OnTouchListener;
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
iget-object v0, p0, Lcom/bbm/ui/e/g;->h:Lcom/bbm/ui/ChannelPostMessageView;
new-instance v1, Lcom/bbm/ui/e/h;
invoke-direct {v1, p0}, Lcom/bbm/ui/e/h;-><init>(Lcom/bbm/ui/e/g;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/ChannelPostMessageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/e/g;->h:Lcom/bbm/ui/ChannelPostMessageView;
return-object v0
.end method
.method public final a(Lcom/bbm/ui/e/i;Z)V
.registers 13
iget-object v0, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iput-object v0, p0, Lcom/bbm/ui/e/g;->j:Lcom/bbm/d/fg;
iget-object v0, p0, Lcom/bbm/ui/e/g;->h:Lcom/bbm/ui/ChannelPostMessageView;
iget-object v1, p0, Lcom/bbm/ui/e/g;->e:Lcom/bbm/ui/activities/xo;
invoke-static {v0, p1}, Lcom/bbm/ui/e/b;->a(Landroid/view/View;Lcom/bbm/ui/e/i;)V
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/e/g;->l:Lcom/bbm/util/o;
iget-object v0, p0, Lcom/bbm/ui/e/g;->a:Landroid/widget/ImageView;
if-eqz v0, :cond_28
const/4 v0, 0x0
iget-object v1, p0, Lcom/bbm/ui/e/g;->j:Lcom/bbm/d/fg;
iget-boolean v1, v1, Lcom/bbm/d/fg;->j:Z
if-eqz v1, :cond_ad
iget-object v0, p0, Lcom/bbm/ui/e/g;->j:Lcom/bbm/d/fg;
iget-object v0, v0, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v1, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;
if-ne v0, v1, :cond_a9
sget-object v0, Lcom/bbm/ui/e/cf;->d:Landroid/graphics/drawable/Drawable;
:goto_23
:cond_23
iget-object v1, p0, Lcom/bbm/ui/e/g;->a:Landroid/widget/ImageView;
invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_28
iget-object v0, p0, Lcom/bbm/ui/e/g;->c:Lcom/bbm/d/a;
iget-object v1, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->r:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->p(Ljava/lang/String;)Lcom/bbm/d/gm;
move-result-object v0
iget-object v1, p1, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iget-object v2, p0, Lcom/bbm/ui/e/g;->c:Lcom/bbm/d/a;
iget-object v3, v1, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/e/g;->h:Lcom/bbm/ui/ChannelPostMessageView;
invoke-static {v2}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v3, v2}, Lcom/bbm/ui/ChannelPostMessageView;->setSenderText(Ljava/lang/String;)V
iget-object v2, p0, Lcom/bbm/ui/e/g;->h:Lcom/bbm/ui/ChannelPostMessageView;
iget-wide v3, v1, Lcom/bbm/d/fg;->s:J
invoke-virtual {v2, v3, v4}, Lcom/bbm/ui/ChannelPostMessageView;->setDateText(J)V
iget-object v1, v0, Lcom/bbm/d/gm;->i:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_1a1
iget-object v0, v0, Lcom/bbm/d/gm;->f:Lorg/json/JSONObject;
iput-object v0, p0, Lcom/bbm/ui/e/g;->k:Lorg/json/JSONObject;
iget-object v0, p0, Lcom/bbm/ui/e/g;->k:Lorg/json/JSONObject;
const-string v1, "channelUri"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/e/g;->m:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/e/g;->k:Lorg/json/JSONObject;
const-string v1, "postId"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/e/g;->n:Ljava/lang/String;
iget-object v0, p0, Lcom/bbm/ui/e/g;->k:Lorg/json/JSONObject;
const-string v1, "sharedText"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_103
iget-object v0, p0, Lcom/bbm/ui/e/g;->h:Lcom/bbm/ui/ChannelPostMessageView;
iget-object v1, p0, Lcom/bbm/ui/e/g;->k:Lorg/json/JSONObject;
const-string v2, "sharedText"
invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/ChannelPostMessageView;->setBodyText(Ljava/lang/String;)V
:goto_81
iget-object v0, p0, Lcom/bbm/ui/e/g;->k:Lorg/json/JSONObject;
const-string v1, "channelDisplayName"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v6
iget-object v0, p0, Lcom/bbm/ui/e/g;->k:Lorg/json/JSONObject;
const-string v1, "postImages"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v1
new-instance v2, Ljava/util/ArrayList;
invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V
if-eqz v1, :cond_11e
const/4 v0, 0x0
:goto_99
invoke-virtual {v1}, Lorg/json/JSONArray;->length()I
move-result v3
if-ge v0, v3, :cond_11e
invoke-virtual {v1, v0}, Lorg/json/JSONArray;->optJSONObject(I)Lorg/json/JSONObject;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
add-int/lit8 v0, v0, 0x1
goto :goto_99
:cond_a9
sget-object v0, Lcom/bbm/ui/e/cf;->e:Landroid/graphics/drawable/Drawable;
goto/16 :goto_23
:cond_ad
iget-object v1, p0, Lcom/bbm/ui/e/g;->j:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->a:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_b9
sget-object v0, Lcom/bbm/ui/e/cf;->f:Landroid/graphics/drawable/Drawable;
goto/16 :goto_23
:cond_b9
iget-object v1, p0, Lcom/bbm/ui/e/g;->j:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->c:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_c5
sget-object v0, Lcom/bbm/ui/e/cf;->g:Landroid/graphics/drawable/Drawable;
goto/16 :goto_23
:cond_c5
iget-object v1, p0, Lcom/bbm/ui/e/g;->j:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->d:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_d1
sget-object v0, Lcom/bbm/ui/e/cf;->h:Landroid/graphics/drawable/Drawable;
goto/16 :goto_23
:cond_d1
iget-object v1, p0, Lcom/bbm/ui/e/g;->j:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->f:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_e3
if-eqz p2, :cond_df
sget-object v0, Lcom/bbm/ui/e/cf;->d:Landroid/graphics/drawable/Drawable;
goto/16 :goto_23
:cond_df
sget-object v0, Lcom/bbm/ui/e/cf;->i:Landroid/graphics/drawable/Drawable;
goto/16 :goto_23
:cond_e3
iget-object v1, p0, Lcom/bbm/ui/e/g;->j:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->e:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_f5
if-eqz p2, :cond_f1
sget-object v0, Lcom/bbm/ui/e/cf;->e:Landroid/graphics/drawable/Drawable;
goto/16 :goto_23
:cond_f1
sget-object v0, Lcom/bbm/ui/e/cf;->j:Landroid/graphics/drawable/Drawable;
goto/16 :goto_23
:cond_f5
iget-object v1, p0, Lcom/bbm/ui/e/g;->j:Lcom/bbm/d/fg;
iget-object v1, v1, Lcom/bbm/d/fg;->p:Lcom/bbm/d/fj;
sget-object v2, Lcom/bbm/d/fj;->b:Lcom/bbm/d/fj;
if-ne v1, v2, :cond_23
if-nez p2, :cond_23
sget-object v0, Lcom/bbm/ui/e/cf;->k:Landroid/graphics/drawable/Drawable;
goto/16 :goto_23
:cond_103
iget-object v0, p0, Lcom/bbm/ui/e/g;->h:Lcom/bbm/ui/ChannelPostMessageView;
const v1, 0x7f0a0456
invoke-virtual {v0, v1}, Lcom/bbm/ui/ChannelPostMessageView;->findViewById(I)Landroid/view/View;
move-result-object v1
const/16 v2, 0x8
invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V
const v1, 0x7f0a0495
invoke-virtual {v0, v1}, Lcom/bbm/ui/ChannelPostMessageView;->findViewById(I)Landroid/view/View;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
goto/16 :goto_81
:cond_11e
iget-object v0, p0, Lcom/bbm/ui/e/g;->k:Lorg/json/JSONObject;
const-string v1, "postContent"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
iget-object v0, p0, Lcom/bbm/ui/e/g;->k:Lorg/json/JSONObject;
const-string v1, "postTitle"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v8
iget-object v0, p0, Lcom/bbm/ui/e/g;->k:Lorg/json/JSONObject;
const-string v1, "channelBadge"
const/4 v3, 0x0
invoke-virtual {v0, v1, v3}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z
move-result v9
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v0
if-lez v0, :cond_1a2
iget-object v0, p0, Lcom/bbm/ui/e/g;->m:Ljava/lang/String;
iget-object v1, p0, Lcom/bbm/ui/e/g;->n:Ljava/lang/String;
invoke-static {v2, v0, v1}, Lcom/bbm/util/r;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/o;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/e/g;->l:Lcom/bbm/util/o;
iget-object v0, p0, Lcom/bbm/ui/e/g;->h:Lcom/bbm/ui/ChannelPostMessageView;
invoke-virtual {v0}, Lcom/bbm/ui/ChannelPostMessageView;->getChannelPostImage()Lcom/bbm/ui/ObservingImageView;
move-result-object v0
const/4 v1, 0x0
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V
iget-object v0, p0, Lcom/bbm/ui/e/g;->l:Lcom/bbm/util/o;
iget v3, v0, Lcom/bbm/util/o;->a:I
iget-object v0, p0, Lcom/bbm/ui/e/g;->l:Lcom/bbm/util/o;
iget v0, v0, Lcom/bbm/util/o;->b:I
iget-object v1, p0, Lcom/bbm/ui/e/g;->g:Landroid/content/Context;
invoke-static {v1}, Lcom/bbm/util/b/h;->a(Landroid/content/Context;)I
move-result v4
if-le v0, v4, :cond_1b0
int-to-double v0, v4
iget-object v2, p0, Lcom/bbm/ui/e/g;->l:Lcom/bbm/util/o;
iget v2, v2, Lcom/bbm/util/o;->b:I
int-to-double v2, v2
div-double/2addr v0, v2
iget-object v2, p0, Lcom/bbm/ui/e/g;->l:Lcom/bbm/util/o;
iget v2, v2, Lcom/bbm/util/o;->a:I
int-to-double v2, v2
mul-double/2addr v0, v2
invoke-static {v0, v1}, Ljava/lang/Math;->ceil(D)D
move-result-wide v0
double-to-int v3, v0
:goto_173
iget-object v0, p0, Lcom/bbm/ui/e/g;->l:Lcom/bbm/util/o;
iget-object v1, p0, Lcom/bbm/ui/e/g;->h:Lcom/bbm/ui/ChannelPostMessageView;
invoke-virtual {v1}, Lcom/bbm/ui/ChannelPostMessageView;->getChannelPostImage()Lcom/bbm/ui/ObservingImageView;
move-result-object v1
const/4 v2, 0x0
const/4 v5, 0x1
invoke-virtual/range {v0 .. v5}, Lcom/bbm/util/o;->a(Lcom/bbm/ui/ObservingImageView;Lcom/bbm/util/b/d;IIZ)V
:goto_180
iget-object v0, p0, Lcom/bbm/ui/e/g;->h:Lcom/bbm/ui/ChannelPostMessageView;
invoke-virtual {v0, v7}, Lcom/bbm/ui/ChannelPostMessageView;->setChannelPostText(Ljava/lang/String;)V
iget-object v1, p0, Lcom/bbm/ui/e/g;->h:Lcom/bbm/ui/ChannelPostMessageView;
invoke-static {v8}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1ae
const/16 v0, 0x8
:goto_18f
invoke-virtual {v1, v0}, Lcom/bbm/ui/ChannelPostMessageView;->setChannelPostTitleVisibility(I)V
iget-object v0, p0, Lcom/bbm/ui/e/g;->h:Lcom/bbm/ui/ChannelPostMessageView;
invoke-virtual {v0, v8}, Lcom/bbm/ui/ChannelPostMessageView;->setChannelPostTitleText(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/e/g;->h:Lcom/bbm/ui/ChannelPostMessageView;
invoke-virtual {v0, v6}, Lcom/bbm/ui/ChannelPostMessageView;->setChannelNameText(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/e/g;->h:Lcom/bbm/ui/ChannelPostMessageView;
invoke-virtual {v0, v9}, Lcom/bbm/ui/ChannelPostMessageView;->setChannelVerified(Z)V
:cond_1a1
return-void
:cond_1a2
iget-object v0, p0, Lcom/bbm/ui/e/g;->h:Lcom/bbm/ui/ChannelPostMessageView;
invoke-virtual {v0}, Lcom/bbm/ui/ChannelPostMessageView;->getChannelPostImage()Lcom/bbm/ui/ObservingImageView;
move-result-object v0
const/16 v1, 0x8
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
goto :goto_180
:cond_1ae
const/4 v0, 0x0
goto :goto_18f
:cond_1b0
move v4, v0
goto :goto_173
.end method