.class public final Lcom/bbm/ui/e/bx;
.super Ljava/lang/Object;
.source "SharedUrlHolder.java"
.implements Lcom/bbm/ui/e/at;
.field final a:Landroid/content/Context;
.field private b:Lcom/bbm/ui/ObservingImageView;
.field private c:Landroid/widget/TextView;
.field private d:Landroid/widget/TextView;
.field private e:Lcom/bbm/ui/InlineImageTextView;
.field private f:Landroid/widget/TextView;
.field private g:Landroid/widget/TextView;
.field private final h:Lcom/bbm/d/a;
.field private final i:Lcom/bbm/ui/e/cf;
.field private final j:Landroid/view/View$OnTouchListener;
.field private final k:Lcom/bbm/ui/activities/xo;
.field private l:Landroid/view/View;
.method public constructor <init>(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/ui/e/cf;Lcom/bbm/ui/activities/xo;Landroid/view/View$OnTouchListener;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/bbm/ui/e/bx;->h:Lcom/bbm/d/a;
iput-object p1, p0, Lcom/bbm/ui/e/bx;->a:Landroid/content/Context;
iput-object p3, p0, Lcom/bbm/ui/e/bx;->i:Lcom/bbm/ui/e/cf;
iput-object p4, p0, Lcom/bbm/ui/e/bx;->k:Lcom/bbm/ui/activities/xo;
iput-object p5, p0, Lcom/bbm/ui/e/bx;->j:Landroid/view/View$OnTouchListener;
return-void
.end method
.method public final a(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 7
const/4 v3, 0x0
const v0, 0x7f0300e1
invoke-virtual {p1, v0, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;
move-result-object v1
const v0, 0x7f0a0453
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/bx;->c:Landroid/widget/TextView;
const v0, 0x7f0a0454
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/bx;->d:Landroid/widget/TextView;
const v0, 0x7f0a0456
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/InlineImageTextView;
iput-object v0, p0, Lcom/bbm/ui/e/bx;->e:Lcom/bbm/ui/InlineImageTextView;
iget-object v0, p0, Lcom/bbm/ui/e/bx;->e:Lcom/bbm/ui/InlineImageTextView;
iget-object v2, p0, Lcom/bbm/ui/e/bx;->j:Landroid/view/View$OnTouchListener;
invoke-virtual {v0, v2}, Lcom/bbm/ui/InlineImageTextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V
const v0, 0x7f0a04b7
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/ObservingImageView;
iput-object v0, p0, Lcom/bbm/ui/e/bx;->b:Lcom/bbm/ui/ObservingImageView;
iget-object v0, p0, Lcom/bbm/ui/e/bx;->b:Lcom/bbm/ui/ObservingImageView;
if-eqz v0, :cond_44
iget-object v0, p0, Lcom/bbm/ui/e/bx;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v0, v3}, Lcom/bbm/ui/ObservingImageView;->setAnimationAllowed(Z)V
:cond_44
const v0, 0x7f0a04b8
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/bx;->f:Landroid/widget/TextView;
const v0, 0x7f0a04b9
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, p0, Lcom/bbm/ui/e/bx;->g:Landroid/widget/TextView;
iput-object v1, p0, Lcom/bbm/ui/e/bx;->l:Landroid/view/View;
return-object v1
.end method
.method public final a(Lcom/bbm/ui/e/i;Z)V
.registers 19
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/e/bx;->l:Landroid/view/View;
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/e/bx;->k:Lcom/bbm/ui/activities/xo;
move-object/from16 v0, p1
move/from16 v1, p2
invoke-static {v2, v3, v0, v1}, Lcom/bbm/ui/e/b;->a(Landroid/view/View;Lcom/bbm/ui/activities/xo;Lcom/bbm/ui/e/i;Z)V
move-object/from16 v0, p1
iget-object v9, v0, Lcom/bbm/ui/e/i;->a:Lcom/bbm/d/fg;
iget-object v2, v9, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v2, v3, :cond_22
const-string v2, "Shouldn\'t ever get here. Nonexistent messages have their own item type."
const/4 v3, 0x0
new-array v3, v3, [Ljava/lang/Object;
invoke-static {v2, v3}, Lcom/bbm/x;->d(Ljava/lang/Object;[Ljava/lang/Object;)V
:goto_21
:cond_21
return-void
:cond_22
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/e/bx;->h:Lcom/bbm/d/a;
iget-object v3, v9, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v2, v3}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v2
move-object/from16 v0, p0
iget-object v3, v0, Lcom/bbm/ui/e/bx;->h:Lcom/bbm/d/a;
iget-object v4, v9, Lcom/bbm/d/fg;->r:Ljava/lang/String;
invoke-virtual {v3, v4}, Lcom/bbm/d/a;->p(Ljava/lang/String;)Lcom/bbm/d/gm;
move-result-object v3
move-object/from16 v0, p0
iget-object v4, v0, Lcom/bbm/ui/e/bx;->c:Landroid/widget/TextView;
if-eqz v4, :cond_47
move-object/from16 v0, p0
iget-object v4, v0, Lcom/bbm/ui/e/bx;->c:Landroid/widget/TextView;
invoke-static {v2}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v2
invoke-virtual {v4, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_47
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/e/bx;->e:Lcom/bbm/ui/InlineImageTextView;
if-eqz v2, :cond_63
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/e/bx;->e:Lcom/bbm/ui/InlineImageTextView;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/bbm/ui/e/bx;->i:Lcom/bbm/ui/e/cf;
iget v4, v4, Lcom/bbm/ui/e/cf;->n:I
invoke-virtual {v2, v4}, Lcom/bbm/ui/InlineImageTextView;->setTextColor(I)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/e/bx;->e:Lcom/bbm/ui/InlineImageTextView;
iget-object v4, v9, Lcom/bbm/d/fg;->l:Ljava/lang/String;
invoke-virtual {v2, v4}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
:cond_63
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/e/bx;->d:Landroid/widget/TextView;
if-eqz v2, :cond_82
iget-wide v4, v9, Lcom/bbm/d/fg;->s:J
const-wide/16 v6, 0x0
cmp-long v2, v4, v6
if-lez v2, :cond_82
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/e/bx;->d:Landroid/widget/TextView;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/bbm/ui/e/bx;->a:Landroid/content/Context;
iget-wide v5, v9, Lcom/bbm/d/fg;->s:J
invoke-static {v4, v5, v6}, Lcom/bbm/util/bd;->b(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v4
invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_82
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/e/bx;->f:Landroid/widget/TextView;
if-eqz v2, :cond_179
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/e/bx;->f:Landroid/widget/TextView;
move-object/from16 v0, p0
iget-object v4, v0, Lcom/bbm/ui/e/bx;->i:Lcom/bbm/ui/e/cf;
iget v4, v4, Lcom/bbm/ui/e/cf;->n:I
invoke-virtual {v2, v4}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v10, v3, Lcom/bbm/d/gm;->g:Lorg/json/JSONObject;
const-wide/16 v4, 0x0
const-string v7, ""
const-string v8, ""
const-string v6, ""
const-string v2, ""
:try_start_a1
const-string v3, "size"
invoke-virtual {v10, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v3
if-eqz v3, :cond_1fc
const-string v3, "size"
invoke-virtual {v10, v3}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J
:try_end_ae
.catch Lorg/json/JSONException; {:try_start_a1 .. :try_end_ae} :catch_19f
move-result-wide v3
:try_start_af
:goto_af
const-string v5, "url"
invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_bd
const-string v5, "url"
invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v7
:cond_bd
const-string v5, "filename"
invoke-virtual {v10, v5}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v5
if-eqz v5, :cond_1f9
const-string v5, "filename"
invoke-virtual {v10, v5}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_ca
.catch Lorg/json/JSONException; {:try_start_af .. :try_end_ca} :catch_1e9
move-result-object v5
:goto_cb
:try_start_cb
const-string v6, "caption"
invoke-virtual {v10, v6}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_1f6
const-string v6, "caption"
invoke-virtual {v10, v6}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;
:try_end_d8
.catch Lorg/json/JSONException; {:try_start_cb .. :try_end_d8} :catch_1ef
move-result-object v6
:goto_d9
:try_start_d9
const-string v8, "thumbnails"
invoke-virtual {v10, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_ef
const-string v8, "thumbnails"
invoke-virtual {v10, v8}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;
move-result-object v8
const/16 v11, 0x80
const/16 v12, 0x80
invoke-static {v8, v11, v12}, Lcom/bbm/util/dj;->a(Lorg/json/JSONArray;II)Ljava/lang/String;
:try_end_ee
.catch Lorg/json/JSONException; {:try_start_d9 .. :try_end_ee} :catch_1f4
move-result-object v2
:cond_ef
:goto_ef
const-string v8, "caption"
invoke-virtual {v10, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z
move-result v8
if-eqz v8, :cond_1ae
move-object/from16 v0, p0
iget-object v8, v0, Lcom/bbm/ui/e/bx;->e:Lcom/bbm/ui/InlineImageTextView;
invoke-virtual {v8, v6}, Lcom/bbm/ui/InlineImageTextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v8, v0, Lcom/bbm/ui/e/bx;->e:Lcom/bbm/ui/InlineImageTextView;
invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-eqz v6, :cond_1ab
const/16 v6, 0x8
:goto_10a
invoke-virtual {v8, v6}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V
:goto_10d
invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;
move-result-object v6
move-object/from16 v0, p0
iget-object v8, v0, Lcom/bbm/ui/e/bx;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v6, v8}, Lcom/d/a/b/f;->a(Landroid/widget/ImageView;)V
move-object/from16 v0, p0
iget-object v6, v0, Lcom/bbm/ui/e/bx;->b:Lcom/bbm/ui/ObservingImageView;
const v8, 0x7f02036a
invoke-virtual {v6, v8}, Lcom/bbm/ui/ObservingImageView;->setImageResource(I)V
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_133
invoke-static {}, Lcom/d/a/b/f;->a()Lcom/d/a/b/f;
move-result-object v6
move-object/from16 v0, p0
iget-object v8, v0, Lcom/bbm/ui/e/bx;->b:Lcom/bbm/ui/ObservingImageView;
invoke-virtual {v6, v2, v8}, Lcom/d/a/b/f;->a(Ljava/lang/String;Landroid/widget/ImageView;)V
:cond_133
move-object/from16 v0, p0
iget-object v6, v0, Lcom/bbm/ui/e/bx;->b:Lcom/bbm/ui/ObservingImageView;
const/4 v8, 0x0
invoke-virtual {v6, v8}, Lcom/bbm/ui/ObservingImageView;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v6, v0, Lcom/bbm/ui/e/bx;->b:Lcom/bbm/ui/ObservingImageView;
new-instance v8, Lcom/bbm/ui/e/by;
move-object/from16 v0, p0
invoke-direct {v8, v0, v7}, Lcom/bbm/ui/e/by;-><init>(Lcom/bbm/ui/e/bx;Ljava/lang/String;)V
invoke-virtual {v6, v8}, Lcom/bbm/ui/ObservingImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object/from16 v0, p0
iget-object v6, v0, Lcom/bbm/ui/e/bx;->f:Landroid/widget/TextView;
invoke-virtual {v6, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
move-object/from16 v0, p0
iget-object v5, v0, Lcom/bbm/ui/e/bx;->g:Landroid/widget/TextView;
if-eqz v5, :cond_179
move-object/from16 v0, p0
iget-object v5, v0, Lcom/bbm/ui/e/bx;->g:Landroid/widget/TextView;
const/4 v6, 0x0
invoke-virtual {v5, v6}, Landroid/widget/TextView;->setVisibility(I)V
invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v2
if-nez v2, :cond_1cd
const-wide/16 v5, 0x0
cmp-long v2, v3, v5
if-ltz v2, :cond_1cd
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/e/bx;->g:Landroid/widget/TextView;
move-object/from16 v0, p0
iget-object v5, v0, Lcom/bbm/ui/e/bx;->a:Landroid/content/Context;
invoke-static {v5, v3, v4}, Lcom/bbm/util/bj;->a(Landroid/content/Context;J)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_179
:cond_179
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/e/bx;->c:Landroid/widget/TextView;
if-eqz v2, :cond_21
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/e/bx;->d:Landroid/widget/TextView;
if-eqz v2, :cond_21
move-object/from16 v0, p1
iget-boolean v2, v0, Lcom/bbm/ui/e/i;->b:Z
if-eqz v2, :cond_1d7
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/e/bx;->c:Landroid/widget/TextView;
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/e/bx;->d:Landroid/widget/TextView;
const/16 v3, 0x8
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_21
:catch_19f
move-exception v3
move-object v13, v3
move-wide v14, v4
move-wide v3, v14
move-object v5, v6
move-object v6, v8
move-object v8, v13
:goto_1a6
invoke-static {v8}, Lcom/bbm/x;->a(Ljava/lang/Throwable;)V
goto/16 :goto_ef
:cond_1ab
const/4 v6, 0x0
goto/16 :goto_10a
:cond_1ae
move-object/from16 v0, p0
iget-object v8, v0, Lcom/bbm/ui/e/bx;->e:Lcom/bbm/ui/InlineImageTextView;
iget-object v6, v9, Lcom/bbm/d/fg;->l:Ljava/lang/String;
invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v6
if-nez v6, :cond_1c4
iget-object v6, v9, Lcom/bbm/d/fg;->l:Ljava/lang/String;
const-string v9, "https://"
invoke-virtual {v6, v9}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z
move-result v6
if-eqz v6, :cond_1cb
:cond_1c4
const/16 v6, 0x8
:goto_1c6
invoke-virtual {v8, v6}, Lcom/bbm/ui/InlineImageTextView;->setVisibility(I)V
goto/16 :goto_10d
:cond_1cb
const/4 v6, 0x0
goto :goto_1c6
:cond_1cd
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/e/bx;->g:Landroid/widget/TextView;
const-string v3, ""
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto :goto_179
:cond_1d7
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/e/bx;->c:Landroid/widget/TextView;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
move-object/from16 v0, p0
iget-object v2, v0, Lcom/bbm/ui/e/bx;->d:Landroid/widget/TextView;
const/4 v3, 0x0
invoke-virtual {v2, v3}, Landroid/widget/TextView;->setVisibility(I)V
goto/16 :goto_21
:catch_1e9
move-exception v5
move-object v13, v5
move-object v5, v6
move-object v6, v8
move-object v8, v13
goto :goto_1a6
:catch_1ef
move-exception v6
move-object v13, v6
move-object v6, v8
move-object v8, v13
goto :goto_1a6
:catch_1f4
move-exception v8
goto :goto_1a6
:cond_1f6
move-object v6, v8
goto/16 :goto_d9
:cond_1f9
move-object v5, v6
goto/16 :goto_cb
:cond_1fc
move-wide v3, v4
goto/16 :goto_af
.end method