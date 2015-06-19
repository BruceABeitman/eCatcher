.class public final Lcom/bbm/d/b/a;
.super Ljava/lang/Object;
.source "BbmdsUtil.java"
.method public static a(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;Lcom/bbm/d/es;Lcom/bbm/d/gp;Lcom/bbm/d/gp;)Landroid/text/Spanned;
.registers 12
if-nez p3, :cond_c
iget-object v0, p2, Lcom/bbm/d/fg;->f:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/d/a;->d(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/d/a;->K(Ljava/lang/String;)Lcom/bbm/d/es;
move-result-object p3
:cond_c
if-nez p4, :cond_14
iget-object v0, p2, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object p4
:cond_14
if-nez p5, :cond_1c
iget-object v0, p3, Lcom/bbm/d/es;->q:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object p5
:cond_1c
iget-object v2, p3, Lcom/bbm/d/es;->g:Ljava/util/List;
const/4 v0, 0x0
invoke-static {p4}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v1
invoke-static {v1}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {p5}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
sget-object v4, Lcom/bbm/d/b/b;->b:[I
iget-object v5, p2, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
invoke-virtual {v5}, Lcom/bbm/d/fk;->ordinal()I
move-result v5
aget v4, v4, v5
packed-switch v4, :pswitch_data_3c2
new-instance v0, Landroid/text/SpannableString;
iget-object v1, p2, Lcom/bbm/d/fg;->l:Ljava/lang/String;
invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
:pswitch_43
:goto_43
return-object v0
:pswitch_44
const v0, 0x7f0e02c3
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object v1, v2, v4
const/4 v1, 0x1
aput-object v3, v2, v1
invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto :goto_43
:pswitch_59
const v0, 0x7f0e02c4
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object v3, v2, v4
const/4 v3, 0x1
aput-object v1, v2, v3
invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto :goto_43
:pswitch_6e
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v3
if-nez v3, :cond_80
const v0, 0x7f0e02d5
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto :goto_43
:cond_80
if-nez v2, :cond_9d
const-string v0, ""
:goto_84
invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x1
if-ne v3, v1, :cond_d1
const v1, 0x7f0e02a4
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto :goto_43
:cond_9d
new-instance v4, Ljava/lang/StringBuilder;
invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V
const/4 v0, 0x0
move v1, v0
:goto_a4
invoke-interface {v2}, Ljava/util/List;->size()I
move-result v0
if-ge v1, v0, :cond_cc
invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v0
if-lez v1, :cond_c5
invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
move-result v5
if-nez v5, :cond_c5
const-string v5, ", "
invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
:cond_c5
invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
add-int/lit8 v0, v1, 0x1
move v1, v0
goto :goto_a4
:cond_cc
invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_84
:cond_d1
const v1, 0x7f0e028e
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-virtual {p0, v1, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto/16 :goto_43
:pswitch_e4
iget-object v0, p5, Lcom/bbm/d/gp;->A:Ljava/lang/String;
invoke-virtual {p1}, Lcom/bbm/d/a;->h()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_103
const v0, 0x7f0e02d4
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v1, v2, v3
invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto/16 :goto_43
:cond_103
const v0, 0x7f0e02a3
const/4 v2, 0x2
new-array v2, v2, [Ljava/lang/Object;
const/4 v4, 0x0
aput-object v3, v2, v4
const/4 v3, 0x1
aput-object v1, v2, v3
invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto/16 :goto_43
:pswitch_119
const v0, 0x7f0e02a6
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v1, v2, v3
invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto/16 :goto_43
:pswitch_12c
const v0, 0x7f0e02a7
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v1, v2, v3
invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto/16 :goto_43
:pswitch_13f
new-instance v0, Landroid/text/SpannableString;
const v1, 0x7f0e02c6
invoke-virtual {p0, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
goto/16 :goto_43
:pswitch_14d
invoke-static {p2}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/fg;)Z
move-result v0
if-eqz v0, :cond_176
iget-object v0, p2, Lcom/bbm/d/fg;->g:Lorg/json/JSONObject;
const-string v1, "pictureTransferId"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/d/a;->w(Ljava/lang/String;)Lcom/bbm/d/fs;
move-result-object v1
iget-object v0, p2, Lcom/bbm/d/fg;->g:Lorg/json/JSONObject;
const-string v2, "ephemeralMetaDataId"
invoke-virtual {v0, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/d/a;->I(Ljava/lang/String;)Lcom/bbm/d/eu;
move-result-object v2
new-instance v0, Landroid/text/SpannableString;
invoke-static {p0, v1, v2}, Lcom/bbm/ui/e/j;->a(Landroid/content/Context;Lcom/bbm/d/fs;Lcom/bbm/d/eu;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
goto/16 :goto_43
:cond_176
iget-object v0, p2, Lcom/bbm/d/fg;->m:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/bbm/d/a;->w(Ljava/lang/String;)Lcom/bbm/d/fs;
move-result-object v1
new-instance v0, Landroid/text/SpannableString;
invoke-static {p0, v1}, Lcom/bbm/util/bi;->a(Landroid/content/Context;Lcom/bbm/d/fs;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
goto/16 :goto_43
:pswitch_187
iget-object v0, p2, Lcom/bbm/d/fg;->h:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/bbm/d/a;->H(Ljava/lang/String;)Lcom/bbm/d/ex;
move-result-object v1
new-instance v0, Landroid/text/SpannableString;
invoke-static {p0, v1}, Lcom/bbm/util/bi;->a(Landroid/content/Context;Lcom/bbm/d/ex;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
goto/16 :goto_43
:pswitch_198
new-instance v1, Landroid/text/SpannableString;
iget-boolean v0, p2, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_1ab
const v0, 0x7f0e02a9
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_1a5
invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
move-object v0, v1
goto/16 :goto_43
:cond_1ab
const v0, 0x7f0e02aa
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_1a5
:pswitch_1b3
iget-object v0, p2, Lcom/bbm/d/fg;->r:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/bbm/d/a;->p(Ljava/lang/String;)Lcom/bbm/d/gm;
move-result-object v0
iget-object v1, v0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
sget-object v2, Lcom/bbm/d/gn;->e:Lcom/bbm/d/gn;
if-ne v1, v2, :cond_1da
new-instance v1, Landroid/text/SpannableString;
iget-boolean v0, p2, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_1d2
const v0, 0x7f0e038d
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_1cc
invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
move-object v0, v1
goto/16 :goto_43
:cond_1d2
const v0, 0x7f0e038f
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_1cc
:cond_1da
iget-object v0, v0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
sget-object v1, Lcom/bbm/d/gn;->h:Lcom/bbm/d/gn;
if-ne v0, v1, :cond_1f6
iget-boolean v0, p2, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_1f2
const v0, 0x7f0e0697
:goto_1e7
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
new-instance v0, Landroid/text/SpannableString;
invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
goto/16 :goto_43
:cond_1f2
const v0, 0x7f0e0698
goto :goto_1e7
:cond_1f6
new-instance v0, Landroid/text/SpannableString;
iget-object v1, p2, Lcom/bbm/d/fg;->l:Ljava/lang/String;
invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
goto/16 :goto_43
:pswitch_1ff
const v0, 0x7f0e0184
const/4 v2, 0x1
new-array v2, v2, [Ljava/lang/Object;
const/4 v3, 0x0
aput-object v1, v2, v3
invoke-virtual {p0, v0, v2}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto/16 :goto_43
:pswitch_212
iget-object v0, p2, Lcom/bbm/d/fg;->b:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/bbm/d/a;->X(Ljava/lang/String;)Lcom/bbm/d/dx;
move-result-object v1
const-string v0, ""
iget-object v2, v1, Lcom/bbm/d/dx;->c:Lcom/bbm/d/dz;
iget-object v3, v1, Lcom/bbm/d/dx;->a:Lcom/bbm/d/dy;
iget-object v4, v1, Lcom/bbm/d/dx;->g:Ljava/lang/String;
invoke-virtual {p1, v4}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v4
sget-object v5, Lcom/bbm/d/dz;->a:Lcom/bbm/d/dz;
if-ne v2, v5, :cond_25b
iget-wide v1, v1, Lcom/bbm/d/dx;->b:J
sget-object v4, Lcom/bbm/d/dy;->a:Lcom/bbm/d/dy;
if-ne v3, v4, :cond_245
const v0, 0x7f0e0233
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {v1, v2}, Lcom/bbm/util/fb;->b(J)Ljava/lang/String;
move-result-object v1
aput-object v1, v3, v4
invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
:cond_23f
:goto_23f
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto/16 :goto_43
:cond_245
sget-object v4, Lcom/bbm/d/dy;->b:Lcom/bbm/d/dy;
if-ne v3, v4, :cond_23f
const v0, 0x7f0e0232
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {v1, v2}, Lcom/bbm/util/fb;->b(J)Ljava/lang/String;
move-result-object v1
aput-object v1, v3, v4
invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_23f
:cond_25b
sget-object v5, Lcom/bbm/d/dz;->b:Lcom/bbm/d/dz;
if-ne v2, v5, :cond_28d
iget-wide v1, v1, Lcom/bbm/d/dx;->b:J
sget-object v4, Lcom/bbm/d/dy;->a:Lcom/bbm/d/dy;
if-ne v3, v4, :cond_277
const v0, 0x7f0e0231
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {v1, v2}, Lcom/bbm/util/fb;->b(J)Ljava/lang/String;
move-result-object v1
aput-object v1, v3, v4
invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_23f
:cond_277
sget-object v4, Lcom/bbm/d/dy;->b:Lcom/bbm/d/dy;
if-ne v3, v4, :cond_23f
const v0, 0x7f0e0230
const/4 v3, 0x1
new-array v3, v3, [Ljava/lang/Object;
const/4 v4, 0x0
invoke-static {v1, v2}, Lcom/bbm/util/fb;->b(J)Ljava/lang/String;
move-result-object v1
aput-object v1, v3, v4
invoke-virtual {p0, v0, v3}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_23f
:cond_28d
sget-object v1, Lcom/bbm/d/dz;->c:Lcom/bbm/d/dz;
if-ne v2, v1, :cond_2bd
sget-object v1, Lcom/bbm/d/dy;->a:Lcom/bbm/d/dy;
if-ne v3, v1, :cond_2a7
const v0, 0x7f0e0235
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {v4}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_23f
:cond_2a7
sget-object v1, Lcom/bbm/d/dy;->b:Lcom/bbm/d/dy;
if-ne v3, v1, :cond_23f
const v0, 0x7f0e0234
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {v4}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto :goto_23f
:cond_2bd
sget-object v1, Lcom/bbm/d/dz;->d:Lcom/bbm/d/dz;
if-ne v2, v1, :cond_2ef
sget-object v1, Lcom/bbm/d/dy;->a:Lcom/bbm/d/dy;
if-ne v3, v1, :cond_2d8
const v0, 0x7f0e022c
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {v4}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_23f
:cond_2d8
sget-object v1, Lcom/bbm/d/dy;->b:Lcom/bbm/d/dy;
if-ne v3, v1, :cond_23f
const v0, 0x7f0e022c
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {v4}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_23f
:cond_2ef
sget-object v1, Lcom/bbm/d/dz;->e:Lcom/bbm/d/dz;
if-ne v2, v1, :cond_321
sget-object v1, Lcom/bbm/d/dy;->a:Lcom/bbm/d/dy;
if-ne v3, v1, :cond_30a
const v0, 0x7f0e022d
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {v4}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_23f
:cond_30a
sget-object v1, Lcom/bbm/d/dy;->b:Lcom/bbm/d/dy;
if-ne v3, v1, :cond_23f
const v0, 0x7f0e022d
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {v4}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_23f
:cond_321
sget-object v1, Lcom/bbm/d/dz;->f:Lcom/bbm/d/dz;
if-ne v2, v1, :cond_33f
sget-object v1, Lcom/bbm/d/dy;->a:Lcom/bbm/d/dy;
if-ne v3, v1, :cond_332
const v0, 0x7f0e022a
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_23f
:cond_332
sget-object v1, Lcom/bbm/d/dy;->b:Lcom/bbm/d/dy;
if-ne v3, v1, :cond_23f
const v0, 0x7f0e0229
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_23f
:cond_33f
sget-object v1, Lcom/bbm/d/dz;->g:Lcom/bbm/d/dz;
if-ne v2, v1, :cond_371
sget-object v1, Lcom/bbm/d/dy;->a:Lcom/bbm/d/dy;
if-ne v3, v1, :cond_35a
const v0, 0x7f0e022f
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {v4}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_23f
:cond_35a
sget-object v1, Lcom/bbm/d/dy;->b:Lcom/bbm/d/dy;
if-ne v3, v1, :cond_23f
const v0, 0x7f0e022e
const/4 v1, 0x1
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
invoke-static {v4}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v3
aput-object v3, v1, v2
invoke-virtual {p0, v0, v1}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
goto/16 :goto_23f
:cond_371
sget-object v1, Lcom/bbm/d/dz;->h:Lcom/bbm/d/dz;
if-ne v2, v1, :cond_23f
const v0, 0x7f0e022b
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_23f
:pswitch_37e
iget-boolean v0, p2, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_38f
const v0, 0x7f0e0363
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_389
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto/16 :goto_43
:cond_38f
const v0, 0x7f0e0364
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_389
:pswitch_397
new-instance v0, Landroid/text/SpannableString;
iget-object v1, p2, Lcom/bbm/d/fg;->l:Ljava/lang/String;
invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
goto/16 :goto_43
:pswitch_3a0
iget-boolean v0, p2, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_3b2
const v0, 0x7f0e01a7
:goto_3a7
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
new-instance v0, Landroid/text/SpannableString;
invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
goto/16 :goto_43
:cond_3b2
const v0, 0x7f0e01a8
goto :goto_3a7
:pswitch_3b6
new-instance v0, Landroid/text/SpannableString;
invoke-static {p0, p1, p2}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
goto/16 :goto_43
nop
:pswitch_data_3c2
.packed-switch 0x1
:pswitch_43
:pswitch_44
:pswitch_59
:pswitch_6e
:pswitch_e4
:pswitch_119
:pswitch_12c
:pswitch_13f
:pswitch_14d
:pswitch_14d
:pswitch_187
:pswitch_198
:pswitch_1b3
:pswitch_1ff
:pswitch_212
:pswitch_37e
:pswitch_397
:pswitch_3a0
:pswitch_3b6
.end packed-switch
.end method
.method public static a(Ljava/lang/String;Lcom/bbm/d/a;)Lcom/bbm/j/r;
.registers 5
invoke-virtual {p1, p0}, Lcom/bbm/d/a;->h(Ljava/lang/String;)Lcom/bbm/d/fv;
move-result-object v0
iget-object v1, v0, Lcom/bbm/d/fv;->c:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_1b
iget-object v0, v0, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {p1, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
iget-object v1, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_1b
invoke-virtual {p1, v0}, Lcom/bbm/d/a;->a(Lcom/bbm/d/gp;)Lcom/bbm/j/r;
move-result-object v0
:goto_1a
return-object v0
:cond_1b
const/4 v0, 0x0
goto :goto_1a
.end method
.method public static a(Lcom/bbm/g/o;)Lcom/google/b/a/l;
.registers 5
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/g/o;->e:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->h(Ljava/lang/String;)Lcom/bbm/d/fv;
move-result-object v1
iget-object v2, v1, Lcom/bbm/d/fv;->c:Lcom/bbm/util/bh;
sget-object v3, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v2, v3, :cond_21
iget-object v1, v1, Lcom/bbm/d/fv;->b:Ljava/lang/String;
invoke-virtual {v0, v1}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
iget-object v1, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v1, v2, :cond_21
invoke-static {v0}, Lcom/google/b/a/l;->c(Ljava/lang/Object;)Lcom/google/b/a/l;
move-result-object v0
:goto_20
return-object v0
:cond_21
invoke-static {}, Lcom/google/b/a/l;->d()Lcom/google/b/a/l;
move-result-object v0
goto :goto_20
.end method
.method public static a(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;)Ljava/lang/String;
.registers 5
sget-object v0, Lcom/bbm/d/b/b;->a:[I
iget-object v1, p2, Lcom/bbm/d/fg;->n:Lcom/bbm/d/fi;
invoke-virtual {v1}, Lcom/bbm/d/fi;->ordinal()I
move-result v1
aget v0, v0, v1
packed-switch v0, :pswitch_data_58
iget-object v0, p2, Lcom/bbm/d/fg;->l:Ljava/lang/String;
:goto_f
return-object v0
:pswitch_10
invoke-static {p2}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/fg;)Z
move-result v0
if-eqz v0, :cond_42
iget-boolean v0, p2, Lcom/bbm/d/fg;->j:Z
if-nez v0, :cond_22
const v0, 0x7f0e0311
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_f
:cond_22
iget-object v0, p2, Lcom/bbm/d/fg;->g:Lorg/json/JSONObject;
const-string v1, "ephemeralMetaDataId"
invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
invoke-virtual {p1, v0}, Lcom/bbm/d/a;->I(Ljava/lang/String;)Lcom/bbm/d/eu;
move-result-object v0
iget-boolean v0, v0, Lcom/bbm/d/eu;->e:Z
if-eqz v0, :cond_3a
const v0, 0x7f0e0312
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_f
:cond_3a
const v0, 0x7f0e0310
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_f
:cond_42
iget-object v0, p2, Lcom/bbm/d/fg;->l:Ljava/lang/String;
goto :goto_f
:pswitch_45
const v0, 0x7f0e02ad
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_f
:pswitch_4d
const v0, 0x7f0e02ac
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_f
:pswitch_55
iget-object v0, p2, Lcom/bbm/d/fg;->l:Ljava/lang/String;
goto :goto_f
:pswitch_data_58
.packed-switch 0x1
:pswitch_10
:pswitch_45
:pswitch_4d
:pswitch_55
.end packed-switch
.end method
.method public static a(Landroid/content/Context;Lcom/bbm/d/gp;)Ljava/lang/String;
.registers 4
iget-object v0, p1, Lcom/bbm/d/gp;->o:Ljava/lang/String;
iget-object v1, p1, Lcom/bbm/d/gp;->b:Ljava/lang/String;
invoke-static {p0, v0, v1}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;Lcom/bbm/d;)Ljava/lang/String;
.registers 5
iget-object v0, p1, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v0}, Lcom/bbm/d/a;->j()Lcom/bbm/d/gp;
move-result-object v1
iget-object v0, v1, Lcom/bbm/d/gp;->o:Ljava/lang/String;
iget-object v2, p1, Lcom/bbm/d;->b:Lcom/bbm/d/a;
invoke-virtual {v2}, Lcom/bbm/d/a;->f()Z
move-result v2
if-eqz v2, :cond_1a
iget-object v2, v1, Lcom/bbm/d/gp;->n:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z
move-result v2
if-nez v2, :cond_1a
iget-object v0, v1, Lcom/bbm/d/gp;->n:Ljava/lang/String;
:cond_1a
iget-object v1, v1, Lcom/bbm/d/gp;->b:Ljava/lang/String;
invoke-static {p0, v0, v1}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public static a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
.registers 6
const-string v0, "Busy"
invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_16
invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_15
const v0, 0x7f0e04dc
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object p1
:cond_15
:goto_15
return-object p1
:cond_16
const-string v0, "Available"
invoke-virtual {p2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_2c
invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_15
const v0, 0x7f0e04db
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object p1
goto :goto_15
:cond_2c
invoke-virtual {p1}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_34
:goto_32
move-object p1, p2
goto :goto_15
:cond_34
const v0, 0x7f0e04da
invoke-virtual {p0, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
const/4 v1, 0x2
new-array v1, v1, [Ljava/lang/Object;
const/4 v2, 0x0
aput-object p2, v1, v2
const/4 v2, 0x1
aput-object p1, v1, v2
invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;
move-result-object p2
goto :goto_32
.end method
.method public static a(Lcom/bbm/d/gp;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/bbm/d/gp;->s:Ljava/util/List;
if-eqz v0, :cond_12
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v1
if-lez v1, :cond_12
const/4 v1, 0x0
invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Ljava/lang/String;
:goto_11
return-object v0
:cond_12
const-string v0, ""
goto :goto_11
.end method
.method public static a(Lcom/google/b/a/l;Lcom/bbm/g/o;)Ljava/lang/String;
.registers 3
invoke-virtual {p0}, Lcom/google/b/a/l;->a()Z
move-result v0
if-eqz v0, :cond_11
invoke-virtual {p0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/gp;
invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v0
:goto_10
return-object v0
:cond_11
iget-object v0, p1, Lcom/bbm/g/o;->c:Ljava/lang/String;
goto :goto_10
.end method
.method public static a(Lcom/bbm/d/fg;)Z
.registers 2
iget-object v0, p0, Lcom/bbm/d/fg;->g:Lorg/json/JSONObject;
invoke-virtual {v0}, Lorg/json/JSONObject;->length()I
move-result v0
if-lez v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method public static b(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;)Landroid/text/Spanned;
.registers 9
const/4 v3, 0x0
move-object v0, p0
move-object v1, p1
move-object v2, p2
move-object v4, v3
move-object v5, v3
invoke-static/range {v0 .. v5}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;Lcom/bbm/d/es;Lcom/bbm/d/gp;Lcom/bbm/d/gp;)Landroid/text/Spanned;
move-result-object v0
return-object v0
.end method
.method public static b(Lcom/bbm/d/gp;)Ljava/lang/String;
.registers 3
iget-object v0, p0, Lcom/bbm/d/gp;->m:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-nez v1, :cond_9
:goto_8
:cond_8
return-object v0
:cond_9
iget-object v0, p0, Lcom/bbm/d/gp;->d:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-eqz v1, :cond_8
invoke-static {p0}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v1
if-nez v1, :cond_22
sget-object v1, Ljava/util/Locale;->US:Ljava/util/Locale;
invoke-virtual {v0, v1}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;
move-result-object v0
goto :goto_8
:cond_22
iget-object v0, p0, Lcom/bbm/d/gp;->f:Ljava/lang/String;
goto :goto_8
.end method
.method public static c(Lcom/bbm/d/gp;)Ljava/lang/String;
.registers 6
const/16 v4, 0xc
iget-object v0, p0, Lcom/bbm/d/gp;->z:Ljava/lang/String;
invoke-static {v0}, Ljava/util/TimeZone;->getTimeZone(Ljava/lang/String;)Ljava/util/TimeZone;
move-result-object v0
new-instance v1, Ljava/util/GregorianCalendar;
invoke-direct {v1, v0}, Ljava/util/GregorianCalendar;-><init>(Ljava/util/TimeZone;)V
const/16 v0, 0xb
invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I
move-result v2
invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I
move-result v0
const/16 v3, 0xa
if-ge v0, v3, :cond_62
new-instance v0, Ljava/lang/StringBuilder;
const-string v3, "0"
invoke-direct {v0, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I
move-result v3
invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_2e
invoke-virtual {v1}, Ljava/util/Calendar;->getTimeZone()Ljava/util/TimeZone;
move-result-object v1
const/4 v3, 0x1
const/4 v4, 0x0
invoke-virtual {v1, v3, v4}, Ljava/util/TimeZone;->getDisplayName(ZI)Ljava/lang/String;
move-result-object v1
iget-object v3, p0, Lcom/bbm/d/gp;->j:Ljava/lang/String;
invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z
move-result v3
if-eqz v3, :cond_6b
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ":"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_61
return-object v0
:cond_62
invoke-virtual {v1, v4}, Ljava/util/Calendar;->get(I)I
move-result v0
invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
goto :goto_2e
:cond_6b
new-instance v3, Ljava/lang/StringBuilder;
const-string v4, "*"
invoke-direct {v3, v4}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V
iget-object v4, p0, Lcom/bbm/d/gp;->j:Ljava/lang/String;
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
const-string v4, "*"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;
move-result-object v2
const-string v3, ":"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
const-string v2, " "
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto :goto_61
.end method