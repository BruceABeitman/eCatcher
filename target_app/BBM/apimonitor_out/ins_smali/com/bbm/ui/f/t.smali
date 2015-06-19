.class final Lcom/bbm/ui/f/t;
.super Lcom/bbm/j/k;
.source "MessageNotificationItem.java"
.implements Lcom/bbm/ui/f/e;
.field private final a:Lcom/bbm/ui/f/g;
.field private b:J
.field private c:Ljava/lang/String;
.field private d:Ljava/lang/String;
.field private e:Ljava/lang/String;
.field private f:Ljava/lang/String;
.field private g:Ljava/lang/String;
.field private m:J
.field private final n:Lcom/bbm/ui/f/u;
.method public constructor <init>(Lcom/bbm/ui/f/g;Lcom/bbm/d/fg;)V
.registers 6
const/4 v2, 0x0
invoke-direct {p0, v2}, Lcom/bbm/j/k;-><init>(B)V
iput-object p1, p0, Lcom/bbm/ui/f/t;->a:Lcom/bbm/ui/f/g;
iget-wide v0, p2, Lcom/bbm/d/fg;->i:J
iput-wide v0, p0, Lcom/bbm/ui/f/t;->b:J
iget-object v0, p2, Lcom/bbm/d/fg;->f:Ljava/lang/String;
iput-object v0, p0, Lcom/bbm/ui/f/t;->c:Ljava/lang/String;
iget-object v0, p2, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
sget-object v1, Lcom/bbm/d/fk;->b:Lcom/bbm/d/fk;
if-ne v0, v1, :cond_1c
new-instance v0, Lcom/bbm/ui/f/u;
invoke-direct {v0, v2}, Lcom/bbm/ui/f/u;-><init>(B)V
iput-object v0, p0, Lcom/bbm/ui/f/t;->n:Lcom/bbm/ui/f/u;
:goto_1b
return-void
:cond_1c
const/4 v0, 0x0
iput-object v0, p0, Lcom/bbm/ui/f/t;->n:Lcom/bbm/ui/f/u;
goto :goto_1b
.end method
.method protected final a()V
.registers 11
const v9, 0x7f0e02b9
const v8, 0x7f0e02b8
const/4 v7, 0x1
const/4 v6, 0x0
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v1
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v2
iget-object v0, p0, Lcom/bbm/ui/f/t;->c:Ljava/lang/String;
iget-wide v3, p0, Lcom/bbm/ui/f/t;->b:J
invoke-virtual {v1, v0, v3, v4}, Lcom/bbm/d/a;->a(Ljava/lang/String;J)Lcom/bbm/d/fg;
move-result-object v3
iget-object v0, v3, Lcom/bbm/d/fg;->v:Lcom/bbm/util/bh;
sget-object v4, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v0, v4, :cond_1f
:goto_1e
:cond_1e
return-void
:cond_1f
iget-object v0, v3, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v0
iget-object v4, v0, Lcom/bbm/d/gp;->B:Lcom/bbm/util/bh;
sget-object v5, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v4, v5, :cond_1e
iget-object v4, v3, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
sget-object v5, Lcom/bbm/d/fk;->e:Lcom/bbm/d/fk;
if-ne v4, v5, :cond_92
iget-object v4, v3, Lcom/bbm/d/fg;->h:Ljava/lang/String;
invoke-virtual {v1, v4}, Lcom/bbm/d/a;->H(Ljava/lang/String;)Lcom/bbm/d/ex;
move-result-object v4
iget-object v4, v4, Lcom/bbm/d/ex;->m:Lcom/bbm/util/bh;
sget-object v5, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-ne v4, v5, :cond_1e
:cond_3d
iget-object v4, v0, Lcom/bbm/d/gp;->A:Ljava/lang/String;
iput-object v4, p0, Lcom/bbm/ui/f/t;->d:Ljava/lang/String;
iget-object v4, v0, Lcom/bbm/d/gp;->a:Ljava/lang/String;
iput-object v4, p0, Lcom/bbm/ui/f/t;->e:Ljava/lang/String;
iget-object v4, v3, Lcom/bbm/d/fg;->o:Ljava/lang/String;
invoke-virtual {v1, v4}, Lcom/bbm/d/a;->b(Ljava/lang/String;)Lcom/bbm/d/gp;
move-result-object v4
invoke-static {v4}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v4
iput-object v4, p0, Lcom/bbm/ui/f/t;->f:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/d/b/a;->b(Lcom/bbm/d/gp;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/TextUtils;->htmlEncode(Ljava/lang/String;)Ljava/lang/String;
move-result-object v0
sget-object v4, Lcom/bbm/d/b/b;->b:[I
iget-object v5, v3, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
invoke-virtual {v5}, Lcom/bbm/d/fk;->ordinal()I
move-result v5
aget v4, v4, v5
packed-switch v4, :pswitch_data_2a4
:pswitch_66
new-instance v1, Landroid/text/SpannedString;
iget-object v0, v3, Lcom/bbm/d/fg;->l:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_29d
iget-boolean v0, v3, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_297
invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_78
invoke-direct {v1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V
move-object v0, v1
:goto_7c
invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;
move-result-object v0
iput-object v0, p0, Lcom/bbm/ui/f/t;->g:Ljava/lang/String;
iget-wide v0, v3, Lcom/bbm/d/fg;->s:J
iput-wide v0, p0, Lcom/bbm/ui/f/t;->m:J
iget-object v0, p0, Lcom/bbm/ui/f/t;->a:Lcom/bbm/ui/f/g;
iget-object v1, p0, Lcom/bbm/ui/f/t;->c:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/am;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/bbm/ui/f/g;->b(Ljava/lang/String;)V
goto :goto_1e
:cond_92
iget-object v4, v3, Lcom/bbm/d/fg;->t:Lcom/bbm/d/fk;
sget-object v5, Lcom/bbm/d/fk;->t:Lcom/bbm/d/fk;
if-ne v4, v5, :cond_3d
iget-object v4, v3, Lcom/bbm/d/fg;->r:Ljava/lang/String;
invoke-virtual {v1, v4}, Lcom/bbm/d/a;->p(Ljava/lang/String;)Lcom/bbm/d/gm;
move-result-object v4
iget-object v4, v4, Lcom/bbm/d/gm;->i:Lcom/bbm/util/bh;
sget-object v5, Lcom/bbm/util/bh;->a:Lcom/bbm/util/bh;
if-eq v4, v5, :cond_3d
goto/16 :goto_1e
:pswitch_a6
const v1, 0x7f0e02b1
new-array v4, v7, [Ljava/lang/Object;
aput-object v0, v4, v6
invoke-virtual {v2, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto :goto_7c
:pswitch_b6
const v1, 0x7f0e02b3
new-array v4, v7, [Ljava/lang/Object;
aput-object v0, v4, v6
invoke-virtual {v2, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto :goto_7c
:pswitch_c6
const v1, 0x7f0e02b4
new-array v4, v7, [Ljava/lang/Object;
aput-object v0, v4, v6
invoke-virtual {v2, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto :goto_7c
:pswitch_d6
const v1, 0x7f0e02b5
new-array v4, v7, [Ljava/lang/Object;
aput-object v0, v4, v6
invoke-virtual {v2, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto :goto_7c
:pswitch_e6
const v1, 0x7f0e02b2
new-array v4, v7, [Ljava/lang/Object;
aput-object v0, v4, v6
invoke-virtual {v2, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto :goto_7c
:pswitch_f6
const v1, 0x7f0e02a6
new-array v4, v7, [Ljava/lang/Object;
aput-object v0, v4, v6
invoke-virtual {v2, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto/16 :goto_7c
:pswitch_107
const v1, 0x7f0e02a7
new-array v4, v7, [Ljava/lang/Object;
aput-object v0, v4, v6
invoke-virtual {v2, v1, v4}, Landroid/content/Context;->getString(I[Ljava/lang/Object;)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto/16 :goto_7c
:pswitch_118
new-instance v0, Landroid/text/SpannableString;
const v1, 0x7f0e02c6
invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
goto/16 :goto_7c
:pswitch_126
iget-boolean v0, v3, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_137
const v0, 0x7f0e02bd
:goto_12d
invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto/16 :goto_7c
:cond_137
const v0, 0x7f0e02be
goto :goto_12d
:pswitch_13b
iget-boolean v0, v3, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_14c
const v0, 0x7f0e035a
:goto_142
invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto/16 :goto_7c
:cond_14c
const v0, 0x7f0e035e
goto :goto_142
:pswitch_150
iget-object v0, v3, Lcom/bbm/d/fg;->h:Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->H(Ljava/lang/String;)Lcom/bbm/d/ex;
move-result-object v4
new-instance v1, Landroid/text/SpannableString;
iget-boolean v0, v3, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_183
const v0, 0x7f0e02ba
:goto_15f
invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
iget-object v0, v4, Lcom/bbm/d/ex;->b:Ljava/lang/String;
const-string v5, "audio/amr"
invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_18b
new-instance v1, Landroid/text/SpannableString;
iget-boolean v0, v3, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_187
const v0, 0x7f0e02c1
:goto_179
invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
move-object v0, v1
goto/16 :goto_7c
:cond_183
const v0, 0x7f0e02bc
goto :goto_15f
:cond_187
const v0, 0x7f0e02c2
goto :goto_179
:cond_18b
iget-object v0, v4, Lcom/bbm/d/ex;->b:Ljava/lang/String;
const-string v5, "text/x-vcard"
invoke-virtual {v0, v5}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_1ac
new-instance v1, Landroid/text/SpannableString;
iget-boolean v0, v3, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_1a8
const v0, 0x7f0e02b6
:goto_19e
invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
move-object v0, v1
goto/16 :goto_7c
:cond_1a8
const v0, 0x7f0e02b7
goto :goto_19e
:cond_1ac
iget-object v0, v4, Lcom/bbm/d/ex;->b:Ljava/lang/String;
const-string v4, "text/x-vcalendar"
invoke-virtual {v0, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_2a1
new-instance v1, Landroid/text/SpannableString;
iget-boolean v0, v3, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_1c9
const v0, 0x7f0e02af
:goto_1bf
invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
move-object v0, v1
goto/16 :goto_7c
:cond_1c9
const v0, 0x7f0e02b0
goto :goto_1bf
:pswitch_1cd
new-instance v1, Landroid/text/SpannableString;
iget-boolean v0, v3, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_1e0
const v0, 0x7f0e02a9
invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_1da
invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
move-object v0, v1
goto/16 :goto_7c
:cond_1e0
const v0, 0x7f0e02aa
invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_1da
:pswitch_1e8
iget-object v0, v3, Lcom/bbm/d/fg;->r:Ljava/lang/String;
invoke-virtual {v1, v0}, Lcom/bbm/d/a;->p(Ljava/lang/String;)Lcom/bbm/d/gm;
move-result-object v0
iget-object v1, v0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
sget-object v4, Lcom/bbm/d/gn;->e:Lcom/bbm/d/gn;
if-ne v1, v4, :cond_20f
new-instance v1, Landroid/text/SpannableString;
iget-boolean v0, v3, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_207
const v0, 0x7f0e038d
invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_201
invoke-direct {v1, v0}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
move-object v0, v1
goto/16 :goto_7c
:cond_207
const v0, 0x7f0e038f
invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_201
:cond_20f
iget-object v0, v0, Lcom/bbm/d/gm;->h:Lcom/bbm/d/gn;
sget-object v1, Lcom/bbm/d/gn;->h:Lcom/bbm/d/gn;
if-ne v0, v1, :cond_22b
iget-boolean v0, v3, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_227
const v0, 0x7f0e0697
:goto_21c
invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
new-instance v0, Landroid/text/SpannableString;
invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
goto/16 :goto_7c
:cond_227
const v0, 0x7f0e0698
goto :goto_21c
:cond_22b
new-instance v0, Landroid/text/SpannableString;
iget-object v1, v3, Lcom/bbm/d/fg;->l:Ljava/lang/String;
invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
goto/16 :goto_7c
:pswitch_234
iget-boolean v0, v3, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_245
const v0, 0x7f0e02bf
:goto_23b
invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
invoke-static {v0}, Landroid/text/Html;->fromHtml(Ljava/lang/String;)Landroid/text/Spanned;
move-result-object v0
goto/16 :goto_7c
:cond_245
const v0, 0x7f0e02c0
goto :goto_23b
:pswitch_249
iget-boolean v0, v3, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_25b
const v0, 0x7f0e01a7
:goto_250
invoke-virtual {v2, v0}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v1
new-instance v0, Landroid/text/SpannableString;
invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
goto/16 :goto_7c
:cond_25b
const v0, 0x7f0e01a8
goto :goto_250
:pswitch_25f
sget-object v0, Lcom/bbm/d/fi;->d:Lcom/bbm/d/fi;
iget-object v4, v3, Lcom/bbm/d/fg;->n:Lcom/bbm/d/fi;
invoke-virtual {v0, v4}, Lcom/bbm/d/fi;->equals(Ljava/lang/Object;)Z
move-result v0
if-eqz v0, :cond_28c
iget-object v0, v3, Lcom/bbm/d/fg;->l:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z
move-result v0
if-eqz v0, :cond_28c
invoke-static {v3}, Lcom/bbm/d/b/a;->a(Lcom/bbm/d/fg;)Z
move-result v0
if-nez v0, :cond_28c
new-instance v1, Landroid/text/SpannedString;
iget-boolean v0, v3, Lcom/bbm/d/fg;->j:Z
if-eqz v0, :cond_287
invoke-virtual {v2, v8}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
:goto_281
invoke-direct {v1, v0}, Landroid/text/SpannedString;-><init>(Ljava/lang/CharSequence;)V
move-object v0, v1
goto/16 :goto_7c
:cond_287
invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto :goto_281
:cond_28c
new-instance v0, Landroid/text/SpannableString;
invoke-static {v2, v1, v3}, Lcom/bbm/d/b/a;->a(Landroid/content/Context;Lcom/bbm/d/a;Lcom/bbm/d/fg;)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v1}, Landroid/text/SpannableString;-><init>(Ljava/lang/CharSequence;)V
goto/16 :goto_7c
:cond_297
invoke-virtual {v2, v9}, Landroid/content/Context;->getString(I)Ljava/lang/String;
move-result-object v0
goto/16 :goto_78
:cond_29d
iget-object v0, v3, Lcom/bbm/d/fg;->l:Ljava/lang/String;
goto/16 :goto_78
:cond_2a1
move-object v0, v1
goto/16 :goto_7c
:pswitch_data_2a4
.packed-switch 0x1
:pswitch_a6
:pswitch_b6
:pswitch_c6
:pswitch_d6
:pswitch_e6
:pswitch_f6
:pswitch_107
:pswitch_118
:pswitch_126
:pswitch_13b
:pswitch_150
:pswitch_1cd
:pswitch_1e8
:pswitch_66
:pswitch_66
:pswitch_234
:pswitch_66
:pswitch_249
:pswitch_25f
.end packed-switch
.end method
.method public final b_()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/f/t;->f:Ljava/lang/String;
return-object v0
.end method
.method public final c_()Landroid/graphics/Bitmap;
.registers 5
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v2
invoke-static {}, Lcom/bbm/Alaska;->e()Lcom/bbm/d/a;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/f/t;->d:Ljava/lang/String;
iget-object v3, p0, Lcom/bbm/ui/f/t;->e:Ljava/lang/String;
invoke-virtual {v0, v1, v3}, Lcom/bbm/d/a;->a(Ljava/lang/String;Ljava/lang/String;)Lcom/bbm/j/r;
move-result-object v0
invoke-interface {v0}, Lcom/bbm/j/r;->e()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/bbm/d/fd;
const/4 v1, 0x0
if-eqz v0, :cond_58
invoke-static {v0}, Lcom/bbm/util/b/h;->a(Lcom/bbm/d/fd;)Lcom/google/b/a/l;
move-result-object v0
invoke-virtual {v0}, Lcom/google/b/a/l;->a()Z
move-result v3
if-eqz v3, :cond_58
invoke-virtual {v0}, Lcom/google/b/a/l;->b()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/graphics/Bitmap;
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v1
const v3, 0x1050005
invoke-virtual {v1, v3}, Landroid/content/res/Resources;->getDimension(I)F
move-result v1
float-to-int v1, v1
invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;
move-result-object v2
const v3, 0x1050006
invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimension(I)F
move-result v2
float-to-int v2, v2
const/4 v3, 0x0
invoke-static {v0, v1, v2, v3}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;
move-result-object v0
:goto_46
if-nez v0, :cond_57
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/Alaska;->getResources()Landroid/content/res/Resources;
move-result-object v0
const v1, 0x7f0200d6
invoke-static {v0, v1}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;
move-result-object v0
:cond_57
return-object v0
:cond_58
move-object v0, v1
goto :goto_46
.end method
.method public final d()Ljava/lang/String;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/f/t;->g:Ljava/lang/String;
return-object v0
.end method
.method public final f()I
.registers 2
const/4 v0, -0x1
return v0
.end method
.method public final g()Ljava/lang/Long;
.registers 3
iget-wide v0, p0, Lcom/bbm/ui/f/t;->m:J
invoke-static {v0, v1}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;
move-result-object v0
return-object v0
.end method
.method public final h()Landroid/app/PendingIntent;
.registers 3
invoke-static {}, Lcom/bbm/Alaska;->o()Lcom/bbm/Alaska;
move-result-object v0
iget-object v1, p0, Lcom/bbm/ui/f/t;->c:Ljava/lang/String;
invoke-static {v1}, Lcom/bbm/am;->b(Ljava/lang/String;)Ljava/lang/String;
move-result-object v1
invoke-static {v0, v1}, Lcom/bbm/ui/f/r;->a(Landroid/content/Context;Ljava/lang/String;)Landroid/app/PendingIntent;
move-result-object v0
return-object v0
.end method
.method public final i()Lcom/bbm/ui/f/f;
.registers 2
iget-object v0, p0, Lcom/bbm/ui/f/t;->n:Lcom/bbm/ui/f/u;
return-object v0
.end method
.method public final j()I
.registers 2
const/4 v0, 0x4
return v0
.end method