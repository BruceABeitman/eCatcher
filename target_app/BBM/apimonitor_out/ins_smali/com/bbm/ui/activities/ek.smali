.class final Lcom/bbm/ui/activities/ek;
.super Lcom/bbm/j/u;
.source "ChannelStatsActivity.java"
.field final synthetic a:Lcom/bbm/ui/activities/ChannelStatsActivity;
.method constructor <init>(Lcom/bbm/ui/activities/ChannelStatsActivity;)V
.registers 2
iput-object p1, p0, Lcom/bbm/ui/activities/ek;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-direct {p0}, Lcom/bbm/j/u;-><init>()V
return-void
.end method
.method protected final b()Z
.registers 8
const/4 v1, 0x0
iget-object v0, p0, Lcom/bbm/ui/activities/ek;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->c(Lcom/bbm/ui/activities/ChannelStatsActivity;)Lcom/bbm/d/a;
move-result-object v0
iget-object v2, p0, Lcom/bbm/ui/activities/ek;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-virtual {v2}, Lcom/bbm/ui/activities/ChannelStatsActivity;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Lcom/bbm/d/a;->T(Ljava/lang/String;)Lcom/bbm/util/bh;
move-result-object v0
sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v2, :cond_17
move v0, v1
:goto_16
return v0
:cond_17
iget-object v0, p0, Lcom/bbm/ui/activities/ek;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
iget-object v2, p0, Lcom/bbm/ui/activities/ek;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-static {v2}, Lcom/bbm/ui/activities/ChannelStatsActivity;->c(Lcom/bbm/ui/activities/ChannelStatsActivity;)Lcom/bbm/d/a;
move-result-object v2
iget-object v3, p0, Lcom/bbm/ui/activities/ek;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-virtual {v3}, Lcom/bbm/ui/activities/ChannelStatsActivity;->b()Ljava/lang/String;
move-result-object v3
const-string v4, "AllTime"
invoke-static {v3, v4}, Lcom/bbm/ui/activities/cd;->a(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Lcom/bbm/d/a;->Q(Ljava/lang/String;)Lcom/bbm/d/em;
move-result-object v2
invoke-static {v0, v2}, Lcom/bbm/ui/activities/ChannelStatsActivity;->a(Lcom/bbm/ui/activities/ChannelStatsActivity;Lcom/bbm/d/em;)Lcom/bbm/d/em;
iget-object v0, p0, Lcom/bbm/ui/activities/ek;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->a(Lcom/bbm/ui/activities/ChannelStatsActivity;)Lcom/bbm/d/em;
move-result-object v0
iget-object v0, v0, Lcom/bbm/d/em;->j:Lcom/bbm/util/bh;
sget-object v2, Lcom/bbm/util/bh;->c:Lcom/bbm/util/bh;
if-ne v0, v2, :cond_40
move v0, v1
goto :goto_16
:cond_40
iget-object v2, p0, Lcom/bbm/ui/activities/ek;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
const v0, 0x7f0a0307
invoke-virtual {v2, v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/views/ShadowFrame;
const v3, 0x7f03006c
invoke-virtual {v0, v3}, Lcom/bbm/ui/views/ShadowFrame;->setViewStub(I)V
const v0, 0x7f0a0323
invoke-virtual {v2, v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->s:Landroid/widget/TextView;
const v0, 0x7f0a0324
invoke-virtual {v2, v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->r:Landroid/widget/TextView;
const v0, 0x7f0a0325
invoke-virtual {v2, v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->q:Landroid/widget/TextView;
const v0, 0x7f0a0322
invoke-virtual {v2, v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
new-instance v3, Lcom/bbm/ui/activities/el;
invoke-direct {v3, v2}, Lcom/bbm/ui/activities/el;-><init>(Lcom/bbm/ui/activities/ChannelStatsActivity;)V
invoke-virtual {v0, v3}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V
invoke-static {}, Ljava/text/NumberFormat;->getNumberInstance()Ljava/text/NumberFormat;
move-result-object v3
iget-object v4, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->s:Landroid/widget/TextView;
iget-object v0, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->p:Lcom/bbm/d/em;
iget-object v0, v0, Lcom/bbm/d/em;->h:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_17b
const-string v0, "0"
:goto_93
invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v4, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->r:Landroid/widget/TextView;
iget-object v0, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->p:Lcom/bbm/d/em;
iget-object v0, v0, Lcom/bbm/d/em;->i:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_189
const-string v0, "0"
:goto_a4
invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v4, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->q:Landroid/widget/TextView;
iget-object v0, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->p:Lcom/bbm/d/em;
iget-object v0, v0, Lcom/bbm/d/em;->f:Ljava/lang/String;
invoke-static {v0}, Lcom/bbm/util/dk;->b(Ljava/lang/String;)Z
move-result v0
if-eqz v0, :cond_197
const-string v0, "0"
:goto_b5
invoke-virtual {v4, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v2, p0, Lcom/bbm/ui/activities/ek;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
const v0, 0x7f0a0309
invoke-virtual {v2, v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/views/ShadowFrame;
const v3, 0x7f03006d
invoke-virtual {v0, v3}, Lcom/bbm/ui/views/ShadowFrame;->setViewStub(I)V
const v0, 0x7f0a0328
invoke-virtual {v2, v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->v:Landroid/widget/TextView;
const v0, 0x7f0a032a
invoke-virtual {v2, v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->u:Landroid/widget/TextView;
const v0, 0x7f0a032c
invoke-virtual {v2, v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->t:Landroid/widget/TextView;
const v0, 0x7f0a030a
invoke-virtual {v2, v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/views/ShadowFrame;
const v3, 0x7f03006e
invoke-virtual {v0, v3}, Lcom/bbm/ui/views/ShadowFrame;->setViewStub(I)V
new-instance v0, Lcom/bbm/ui/activities/en;
invoke-direct {v0, v2, v2}, Lcom/bbm/ui/activities/en;-><init>(Lcom/bbm/ui/activities/ChannelStatsActivity;Landroid/content/Context;)V
iput-object v0, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->w:Lcom/bbm/ui/activities/en;
const v0, 0x7f0a032f
invoke-virtual {v2, v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ListView;
iget-object v3, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->w:Lcom/bbm/ui/activities/en;
invoke-virtual {v0, v3}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V
const v0, 0x7f0a0308
invoke-virtual {v2, v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Spinner;
iput-object v0, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->l:Landroid/widget/Spinner;
new-instance v0, Ljava/util/ArrayList;
invoke-virtual {v2}, Lcom/bbm/ui/activities/ChannelStatsActivity;->getResources()Landroid/content/res/Resources;
move-result-object v3
const v4, 0x7f07000f
invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;
move-result-object v3
invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;
move-result-object v3
invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
new-instance v3, Lcom/bbm/ui/l;
const v4, 0x7f0e0216
invoke-virtual {v2, v4}, Lcom/bbm/ui/activities/ChannelStatsActivity;->getString(I)Ljava/lang/String;
move-result-object v4
invoke-direct {v3, v2, v4, v0}, Lcom/bbm/ui/l;-><init>(Landroid/content/Context;Ljava/lang/String;Ljava/util/List;)V
iput-object v3, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->m:Lcom/bbm/ui/l;
iget-object v0, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->l:Landroid/widget/Spinner;
iget-object v3, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->m:Lcom/bbm/ui/l;
invoke-virtual {v0, v3}, Landroid/widget/Spinner;->setAdapter(Landroid/widget/SpinnerAdapter;)V
new-instance v0, Lcom/bbm/ui/q;
iget-object v3, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->m:Lcom/bbm/ui/l;
new-instance v4, Lcom/bbm/ui/activities/em;
invoke-direct {v4, v2}, Lcom/bbm/ui/activities/em;-><init>(Lcom/bbm/ui/activities/ChannelStatsActivity;)V
invoke-direct {v0, v3, v4}, Lcom/bbm/ui/q;-><init>(Lcom/bbm/ui/l;Lcom/bbm/ui/p;)V
iget-object v3, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->l:Landroid/widget/Spinner;
invoke-virtual {v3, v0}, Landroid/widget/Spinner;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V
iget-object v0, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->l:Landroid/widget/Spinner;
invoke-virtual {v0, v1}, Landroid/widget/Spinner;->setSelection(I)V
const v0, 0x7f0a00be
invoke-virtual {v2, v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/bbm/ui/FooterActionBar;
iput-object v0, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->n:Lcom/bbm/ui/FooterActionBar;
iget-object v0, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->n:Lcom/bbm/ui/FooterActionBar;
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setOverflowEnabled(Z)V
iget-object v0, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->n:Lcom/bbm/ui/FooterActionBar;
iget-object v1, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->o:Lcom/bbm/ui/cj;
invoke-virtual {v0, v1}, Lcom/bbm/ui/FooterActionBar;->setFooterActionBarListener(Lcom/bbm/ui/cj;)V
iget-object v0, p0, Lcom/bbm/ui/activities/ek;->a:Lcom/bbm/ui/activities/ChannelStatsActivity;
invoke-static {v0}, Lcom/bbm/ui/activities/ChannelStatsActivity;->f(Lcom/bbm/ui/activities/ChannelStatsActivity;)Lcom/bbm/j/u;
move-result-object v0
invoke-virtual {v0}, Lcom/bbm/j/u;->c()V
const/4 v0, 0x1
goto/16 :goto_16
:cond_17b
iget-object v0, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->p:Lcom/bbm/d/em;
iget-object v0, v0, Lcom/bbm/d/em;->h:Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v5
invoke-virtual {v3, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;
move-result-object v0
goto/16 :goto_93
:cond_189
iget-object v0, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->p:Lcom/bbm/d/em;
iget-object v0, v0, Lcom/bbm/d/em;->i:Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v5
invoke-virtual {v3, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;
move-result-object v0
goto/16 :goto_a4
:cond_197
iget-object v0, v2, Lcom/bbm/ui/activities/ChannelStatsActivity;->p:Lcom/bbm/d/em;
iget-object v0, v0, Lcom/bbm/d/em;->f:Ljava/lang/String;
invoke-static {v0}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
move-result-wide v5
invoke-virtual {v3, v5, v6}, Ljava/text/NumberFormat;->format(J)Ljava/lang/String;
move-result-object v0
goto/16 :goto_b5
.end method