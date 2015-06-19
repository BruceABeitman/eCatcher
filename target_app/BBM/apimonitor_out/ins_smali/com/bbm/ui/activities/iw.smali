.class final Lcom/bbm/ui/activities/iw;
.super Lcom/bbm/j/u;
.source "ConversationActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ConversationActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ConversationActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 8
const/4 v2, 0x1
const/4 v1, 0x0
sget-object v0, Lcom/bbm/ui/activities/ConversationActivity;->a:Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->n(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_bb
iget-object v0, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v3, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->o(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/bbm/d/a;->t(Ljava/lang/String;)Lcom/bbm/d/fz;
move-result-object v3
iget-object v0, v3, Lcom/bbm/d/fz;->i:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v4, :cond_28
move v0, v1
:goto_27
return v0
:cond_28
iget-object v0, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->p(Lcom/bbm/ui/activities/ConversationActivity;)Z
iget-object v0, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
new-instance v4, Lcom/bbm/ui/AttachmentView;
iget-object v5, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {v4, v5}, Lcom/bbm/ui/AttachmentView;-><init>(Landroid/content/Context;)V
invoke-static {v0, v4}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Lcom/bbm/ui/AttachmentView;)Lcom/bbm/ui/AttachmentView;
iget-object v0, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/AttachmentView;
move-result-object v0
new-instance v4, Lcom/bbm/ui/activities/ix;
invoke-direct {v4, p0}, Lcom/bbm/ui/activities/ix;-><init>(Lcom/bbm/ui/activities/iw;)V
invoke-virtual {v0, v4}, Lcom/bbm/ui/AttachmentView;->setCancelButtonOnClickListener(Landroid/view/View$OnClickListener;)V
const-string v0, ""
sget-object v4, Lcom/bbm/ui/activities/it;->a:[I
iget-object v5, v3, Lcom/bbm/d/fz;->g:Lcom/bbm/d/ga;
invoke-virtual {v5}, Lcom/bbm/d/ga;->ordinal()I
move-result v5
aget v4, v4, v5
packed-switch v4, :pswitch_data_25a
:goto_56
iget-object v4, v3, Lcom/bbm/d/fz;->b:Ljava/lang/String;
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_76
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-nez v4, :cond_b8
iget-object v4, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
const v5, 0x7f0e04f1
const/4 v6, 0x2
new-array v6, v6, [Ljava/lang/Object;
aput-object v0, v6, v1
iget-object v0, v3, Lcom/bbm/d/fz;->b:Ljava/lang/String;
aput-object v0, v6, v2
invoke-virtual {v4, v5, v6}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:goto_76
:cond_76
iget-object v1, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/AttachmentView;
move-result-object v1
invoke-virtual {v1, v0}, Lcom/bbm/ui/AttachmentView;->setPrimaryText(Ljava/lang/String;)V
iget-object v0, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->r(Lcom/bbm/ui/activities/ConversationActivity;)V
:goto_84
:cond_84
move v0, v2
goto :goto_27
:pswitch_86
iget-object v0, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
const v4, 0x7f0e04f6
invoke-virtual {v0, v4}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_56
:pswitch_90
iget-object v0, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
const v4, 0x7f0e04f5
invoke-virtual {v0, v4}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_56
:pswitch_9a
iget-object v0, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
const v4, 0x7f0e04f2
invoke-virtual {v0, v4}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_56
:pswitch_a4
iget-object v0, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
const v4, 0x7f0e04f4
invoke-virtual {v0, v4}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_56
:pswitch_ae
iget-object v0, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
const v4, 0x7f0e04f3
invoke-virtual {v0, v4}, Lcom/bbm/ui/activities/ConversationActivity;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_56
:cond_b8
iget-object v0, v3, Lcom/bbm/d/fz;->b:Ljava/lang/String;
goto :goto_76
:cond_bb
const-string v0, "contextContentType_shareAd"
iget-object v3, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->n(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_179
invoke-static {}, Lcom/bbm/Alaska;->d()Lcom/bbm/b/q;
move-result-object v0
iget-object v3, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->o(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/bbm/b/q;->b(Ljava/lang/String;)Lcom/bbm/b/a;
move-result-object v0
iget-object v3, v0, Lcom/bbm/b/a;->u:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v3, v4, :cond_e0
move v0, v1
goto/16 :goto_27
:cond_e0
iget-object v3, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
iget-object v4, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v4}, Lcom/bbm/ui/activities/ConversationActivity;->o(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v4
invoke-static {v3, v4}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Ljava/lang/String;)Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
new-instance v4, Lcom/bbm/ui/AttachmentView;
iget-object v5, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {v4, v5}, Lcom/bbm/ui/AttachmentView;-><init>(Landroid/content/Context;)V
invoke-static {v3, v4}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Lcom/bbm/ui/AttachmentView;)Lcom/bbm/ui/AttachmentView;
iget-object v3, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/AttachmentView;
move-result-object v3
iget-object v4, v0, Lcom/bbm/b/a;->q:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/bbm/ui/AttachmentView;->setPrimaryText(Ljava/lang/String;)V
iget-object v3, v0, Lcom/bbm/b/a;->j:Lorg/json/JSONObject;
const-string v4, "interstitialImage"
invoke-virtual {v3, v4}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_143
iget-object v4, v0, Lcom/bbm/b/a;->i:Ljava/lang/String;
invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v4
if-eqz v4, :cond_143
iget-object v0, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/AttachmentView;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/AttachmentView;->getThumbnail()Lcom/bbm/ui/ObservingImageView;
move-result-object v0
const/16 v3, 0x8
invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
const-string v0, "shared ads in thumbnail has no image"
new-array v1, v1, [Ljava/lang/Object;
invoke-static {v0, v1}, Lcom/bbm/x;->a(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_12e
:cond_12e
iget-object v0, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/AttachmentView;
move-result-object v0
new-instance v1, Lcom/bbm/ui/activities/iy;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/iy;-><init>(Lcom/bbm/ui/activities/iw;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/AttachmentView;->setCancelButtonOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->r(Lcom/bbm/ui/activities/ConversationActivity;)V
goto/16 :goto_84
:cond_143
iget-object v4, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v4}, Lcom/bbm/ui/activities/ConversationActivity;->q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/AttachmentView;
move-result-object v4
invoke-virtual {v4}, Lcom/bbm/ui/AttachmentView;->getThumbnail()Lcom/bbm/ui/ObservingImageView;
move-result-object v4
invoke-virtual {v4, v1}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
sget-object v1, Landroid/widget/ImageView$ScaleType;->CENTER_INSIDE:Landroid/widget/ImageView$ScaleType;
invoke-virtual {v4, v1}, Lcom/bbm/ui/ObservingImageView;->setScaleType(Landroid/widget/ImageView$ScaleType;)V
invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_165
iget-object v0, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->s(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/b/g;
move-result-object v0
invoke-virtual {v0, v3, v4}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
goto :goto_12e
:cond_165
iget-object v1, v0, Lcom/bbm/b/a;->i:Ljava/lang/String;
invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v1
if-nez v1, :cond_12e
iget-object v1, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v1}, Lcom/bbm/ui/activities/ConversationActivity;->s(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/util/b/g;
move-result-object v1
iget-object v0, v0, Lcom/bbm/b/a;->i:Ljava/lang/String;
invoke-virtual {v1, v0, v4}, Lcom/bbm/util/b/g;->a(Ljava/lang/Object;Landroid/widget/ImageView;)V
goto :goto_12e
:cond_179
const-string v0, "contextContentType_sharePost"
iget-object v3, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->n(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_84
iget-object v0, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v3, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->o(Lcom/bbm/ui/activities/ConversationActivity;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v0, v3}, Lcom/bbm/d/a;->v(Ljava/lang/String;)Lcom/bbm/d/fw;
move-result-object v0
iget-object v3, v0, Lcom/bbm/d/fw;->t:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v3, v4, :cond_1a0
move v0, v1
goto/16 :goto_27
:cond_1a0
iget-object v3, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
new-instance v4, Lcom/bbm/ui/AttachmentView;
iget-object v5, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-direct {v4, v5}, Lcom/bbm/ui/AttachmentView;-><init>(Landroid/content/Context;)V
invoke-static {v3, v4}, Lcom/bbm/ui/activities/ConversationActivity;->a(Lcom/bbm/ui/activities/ConversationActivity;Lcom/bbm/ui/AttachmentView;)Lcom/bbm/ui/AttachmentView;
iget-object v3, v0, Lcom/bbm/d/fw;->s:Ljava/lang/String;
invoke-static {v3}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_218
iget-object v3, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/AttachmentView;
move-result-object v3
iget-object v4, v0, Lcom/bbm/d/fw;->s:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/bbm/ui/AttachmentView;->setPrimaryText(Ljava/lang/String;)V
:goto_1bf
iget-object v3, v0, Lcom/bbm/d/fw;->k:Ljava/util/List;
if-eqz v3, :cond_1cb
iget-object v3, v0, Lcom/bbm/d/fw;->k:Ljava/util/List;
invoke-interface {v3}, Ljava/util/List;->size()I
move-result v3
if-nez v3, :cond_224
:cond_1cb
iget-object v3, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v3
iget-object v0, v0, Lcom/bbm/d/fw;->b:Ljava/lang/String;
invoke-virtual {v3, v0}, Lcom/bbm/d/a;->U(Ljava/lang/String;)Lcom/bbm/d/ec;
move-result-object v0
iget-object v3, v0, Lcom/bbm/d/ec;->o:Ljava/lang/String;
invoke-static {v3}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v3
if-nez v3, :cond_203
iget-object v3, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/AttachmentView;
move-result-object v3
invoke-virtual {v3}, Lcom/bbm/ui/AttachmentView;->getThumbnail()Lcom/bbm/ui/ObservingImageView;
move-result-object v3
iget-object v4, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v4}, Lcom/bbm/ui/activities/ConversationActivity;->j(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/d/a;
move-result-object v4
invoke-virtual {v4, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/ec;)Lcom/bbm/j/r;
move-result-object v0
invoke-virtual {v3, v0}, Lcom/bbm/ui/ObservingImageView;->setObservableImage(Lcom/bbm/j/r;)V
iget-object v0, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/AttachmentView;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/ui/AttachmentView;->getThumbnail()Lcom/bbm/ui/ObservingImageView;
move-result-object v0
invoke-virtual {v0, v1}, Lcom/bbm/ui/ObservingImageView;->setLimitedLengthAnimation(Z)V
:cond_203
:goto_203
iget-object v0, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/AttachmentView;
move-result-object v0
new-instance v1, Lcom/bbm/ui/activities/iz;
invoke-direct {v1, p0}, Lcom/bbm/ui/activities/iz;-><init>(Lcom/bbm/ui/activities/iw;)V
invoke-virtual {v0, v1}, Lcom/bbm/ui/AttachmentView;->setCancelButtonOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ConversationActivity;->r(Lcom/bbm/ui/activities/ConversationActivity;)V
goto/16 :goto_84
:cond_218
iget-object v3, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/AttachmentView;
move-result-object v3
iget-object v4, v0, Lcom/bbm/d/fw;->d:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/bbm/ui/AttachmentView;->setPrimaryText(Ljava/lang/String;)V
goto :goto_1bf
:cond_224
iget-object v3, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/AttachmentView;
move-result-object v3
invoke-virtual {v3}, Lcom/bbm/ui/AttachmentView;->getThumbnail()Lcom/bbm/ui/ObservingImageView;
move-result-object v3
invoke-virtual {v3, v1}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
iget-object v1, v0, Lcom/bbm/d/fw;->k:Ljava/util/List;
iget-object v3, v0, Lcom/bbm/d/fw;->b:Ljava/lang/String;
iget-object v0, v0, Lcom/bbm/d/fw;->j:Ljava/lang/String;
invoke-static {v1, v3, v0}, Lcom/bbm/util/r;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/util/o;
move-result-object v0
if-eqz v0, :cond_203
iget-object v1, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-virtual {v1}, Lcom/bbm/ui/activities/ConversationActivity;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v3, 0x7f0b0034
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I
move-result v1
iget-object v3, p0, Lcom/bbm/ui/activities/iw;->a:Lcom/bbm/ui/activities/ConversationActivity;
invoke-static {v3}, Lcom/bbm/ui/activities/ConversationActivity;->q(Lcom/bbm/ui/activities/ConversationActivity;)Lcom/bbm/ui/AttachmentView;
move-result-object v3
invoke-virtual {v3}, Lcom/bbm/ui/AttachmentView;->getThumbnail()Lcom/bbm/ui/ObservingImageView;
move-result-object v3
const/4 v4, 0x0
invoke-virtual {v0, v3, v4, v1, v1}, Lcom/bbm/util/o;->a(Lcom/bbm/ui/ObservingImageView;Lcom/bbm/util/b/d;II)V
goto :goto_203
nop
:pswitch_data_25a
.packed-switch 0x1
:pswitch_86
:pswitch_90
:pswitch_9a
:pswitch_a4
:pswitch_ae
.end packed-switch
.end method