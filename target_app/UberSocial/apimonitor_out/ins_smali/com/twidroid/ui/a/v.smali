.class public Lcom/twidroid/ui/a/v;
.super Lcom/twidroid/ui/a/am;
.source "SourceFile"
.field private static final W:I = 0x0
.field private static final X:I = 0x1
.field private a:Landroid/os/Handler;
.field private final b:Ljava/lang/String;
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Z)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/twidroid/ui/a/am;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V
const-string v0, "MessageAdapter"
iput-object v0, p0, Lcom/twidroid/ui/a/v;->b:Ljava/lang/String;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/v;->a:Landroid/os/Handler;
return-void
.end method
.method public a()V
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/a/v;->a:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/ui/a/v$1;
invoke-direct {v1, p0}, Lcom/twidroid/ui/a/v$1;-><init>(Lcom/twidroid/ui/a/v;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/v;->c:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/a/v;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
if-ltz p1, :cond_8
invoke-virtual {p0}, Lcom/twidroid/ui/a/v;->getCount()I
move-result v0
if-le p1, v0, :cond_b
:cond_8
const-wide/16 v0, -0x1
:goto_a
return-wide v0
:cond_b
iget-object v0, p0, Lcom/twidroid/ui/a/v;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/DirectMessage;->m()J
move-result-wide v0
goto :goto_a
.end method
.method public getItemViewType(I)I
.registers 9
const/4 v1, 0x1
const/4 v2, 0x0
iget-object v0, p0, Lcom/twidroid/ui/a/v;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;
iget-wide v3, v0, Lcom/twidroid/model/twitter/DirectMessage;->W:J
iget-wide v5, v0, Lcom/twidroid/model/twitter/DirectMessage;->C:J
cmp-long v0, v3, v5
if-lez v0, :cond_17
move v0, v1
:goto_13
if-eqz v0, :cond_19
move v0, v1
:goto_16
return v0
:cond_17
move v0, v2
goto :goto_13
:cond_19
move v0, v2
goto :goto_16
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 15
const/16 v6, 0x8
const/4 v10, 0x0
const/4 v2, 0x0
if-nez p2, :cond_10d
invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/v;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_188
:goto_d
invoke-virtual {p0, p2}, Lcom/twidroid/ui/a/v;->a(Landroid/view/View;)Lcom/twidroid/ui/a/ao;
move-result-object v0
iget-object v1, v0, Lcom/twidroid/ui/a/ao;->n:Landroid/view/View;
if-eqz v1, :cond_25
iget-object v1, v0, Lcom/twidroid/ui/a/ao;->n:Landroid/view/View;
new-instance v2, Lcom/twidroid/ui/b/c;
iget-object v3, p0, Lcom/twidroid/ui/a/v;->M:Lcom/twidroid/ui/themes/r;
iget v3, v3, Lcom/twidroid/ui/themes/r;->B:I
iget v4, p0, Lcom/twidroid/ui/a/v;->P:I
invoke-direct {v2, v3, v4}, Lcom/twidroid/ui/b/c;-><init>(II)V
invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_25
iget-object v1, v0, Lcom/twidroid/ui/a/ao;->o:Landroid/view/View;
if-eqz v1, :cond_37
iget-object v1, v0, Lcom/twidroid/ui/a/ao;->o:Landroid/view/View;
new-instance v2, Lcom/twidroid/ui/b/c;
iget v3, p0, Lcom/twidroid/ui/a/v;->E:I
iget v4, p0, Lcom/twidroid/ui/a/v;->P:I
invoke-direct {v2, v3, v4}, Lcom/twidroid/ui/b/c;-><init>(II)V
invoke-virtual {v1, v2}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_37
iget-boolean v1, p0, Lcom/twidroid/ui/a/v;->w:Z
if-eqz v1, :cond_49
iget-object v1, v0, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;
iget v2, p0, Lcom/twidroid/ui/a/v;->x:I
invoke-virtual {v1, v2}, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;->setLinkTextColor(I)V
iget-object v1, v0, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;
iget v2, p0, Lcom/twidroid/ui/a/v;->y:I
invoke-virtual {v1, v2}, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;->setTextColor(I)V
:cond_49
invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
iget-object v1, v0, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;
new-instance v2, Lcom/twidroid/ui/a/v$2;
invoke-direct {v2, p0, p3}, Lcom/twidroid/ui/a/v$2;-><init>(Lcom/twidroid/ui/a/v;Landroid/view/ViewGroup;)V
invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
move-object v9, v0
:goto_57
iget-object v0, p0, Lcom/twidroid/ui/a/v;->c:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
move-object v8, v0
check-cast v8, Lcom/twidroid/model/twitter/DirectMessage;
iget-object v0, v9, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;
if-eqz v0, :cond_6b
iget-object v0, v9, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;
iget-object v1, v8, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
:cond_6b
iget-boolean v0, p0, Lcom/twidroid/ui/a/v;->m:Z
if-eqz v0, :cond_116
iget-object v0, v8, Lcom/twidroid/model/twitter/DirectMessage;->z:Ljava/lang/String;
if-eqz v0, :cond_116
iget-object v0, v9, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;
iget-object v1, v8, Lcom/twidroid/model/twitter/DirectMessage;->z:Ljava/lang/String;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "@"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, v8, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iget v3, p0, Lcom/twidroid/ui/a/v;->q:I
iget-object v4, p0, Lcom/twidroid/ui/a/v;->r:Landroid/text/style/ForegroundColorSpan;
iget-object v5, p0, Lcom/twidroid/ui/a/v;->s:Landroid/text/style/StyleSpan;
invoke-static {v1, v2, v3, v4, v5}, Lcom/twidroid/ui/a/v;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/text/style/ForegroundColorSpan;Landroid/text/style/StyleSpan;)Landroid/text/Spannable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_99
iget-object v0, v9, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;
invoke-virtual {v8}, Lcom/twidroid/model/twitter/DirectMessage;->o()Lcom/twidroid/ui/StringUrlSpan;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;->setText(Ljava/lang/CharSequence;)V
iget-object v0, v9, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;
new-instance v1, Ljava/lang/Long;
invoke-virtual {v8}, Lcom/twidroid/model/twitter/DirectMessage;->m()J
move-result-wide v2
invoke-direct {v1, v2, v3}, Ljava/lang/Long;-><init>(J)V
invoke-virtual {v0, v1}, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;->setTag(Ljava/lang/Object;)V
iget-object v0, v9, Lcom/twidroid/ui/a/ao;->i:Landroid/view/View;
if-eqz v0, :cond_c3
iget-wide v0, p0, Lcom/twidroid/ui/a/v;->V:J
invoke-virtual {v8}, Lcom/twidroid/model/twitter/DirectMessage;->m()J
move-result-wide v2
cmp-long v0, v0, v2
if-nez v0, :cond_13e
iget-object v0, v9, Lcom/twidroid/ui/a/ao;->i:Landroid/view/View;
invoke-virtual {v0, v10}, Landroid/view/View;->setVisibility(I)V
:goto_c3
:cond_c3
iget-object v0, v9, Lcom/twidroid/ui/a/ao;->h:Landroid/widget/TextView;
invoke-virtual {v8}, Lcom/twidroid/model/twitter/DirectMessage;->l()J
move-result-wide v1
invoke-static {v1, v2}, Lcom/ubermedia/b/a/k;->b(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-boolean v0, p0, Lcom/twidroid/ui/a/v;->k:Z
if-eqz v0, :cond_17b
iget-object v0, p0, Lcom/twidroid/ui/a/v;->T:Lcom/twidroid/net/b/f;
if-eqz v0, :cond_144
iget-object v0, p0, Lcom/twidroid/ui/a/v;->T:Lcom/twidroid/net/b/f;
invoke-virtual {v8}, Lcom/twidroid/model/twitter/DirectMessage;->d()Ljava/lang/String;
move-result-object v1
iget v2, p0, Lcom/twidroid/ui/a/v;->B:I
iget-object v3, v9, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;
invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/net/b/f;->a(Ljava/lang/String;ILandroid/widget/ImageView;)V
:goto_e5
:cond_e5
invoke-virtual {p0, v8, v9, v10}, Lcom/twidroid/ui/a/v;->a(Lcom/twidroid/model/twitter/CommunicationEntity;Lcom/twidroid/ui/a/ao;Z)V
iget-object v0, v9, Lcom/twidroid/ui/a/ao;->o:Landroid/view/View;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-object p2
:pswitch_ef
iget-object v0, p0, Lcom/twidroid/ui/a/v;->d:Landroid/app/Activity;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03005b
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
goto/16 :goto_d
:pswitch_fe
iget-object v0, p0, Lcom/twidroid/ui/a/v;->d:Landroid/app/Activity;
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
const v1, 0x7f03005c
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
goto/16 :goto_d
:cond_10d
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/a/ao;
move-object v9, v0
goto/16 :goto_57
:cond_116
iget-object v0, v9, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "@"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, v8, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
iget-object v2, v8, Lcom/twidroid/model/twitter/DirectMessage;->z:Ljava/lang/String;
iget v3, p0, Lcom/twidroid/ui/a/v;->q:I
iget-object v4, p0, Lcom/twidroid/ui/a/v;->r:Landroid/text/style/ForegroundColorSpan;
iget-object v5, p0, Lcom/twidroid/ui/a/v;->s:Landroid/text/style/StyleSpan;
invoke-static {v1, v2, v3, v4, v5}, Lcom/twidroid/ui/a/v;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/text/style/ForegroundColorSpan;Landroid/text/style/StyleSpan;)Landroid/text/Spannable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_99
:cond_13e
iget-object v0, v9, Lcom/twidroid/ui/a/ao;->i:Landroid/view/View;
invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V
goto :goto_c3
:cond_144
:try_start_144
iget-object v1, v9, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v8}, Lcom/twidroid/model/twitter/DirectMessage;->u()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v8}, Lcom/twidroid/model/twitter/DirectMessage;->d()Ljava/lang/String;
move-result-object v3
iget v4, p0, Lcom/twidroid/ui/a/v;->B:I
iget-boolean v5, p0, Lcom/twidroid/ui/a/v;->C:Z
const/4 v6, 0x1
const/4 v7, 0x1
move-object v0, p0
invoke-static/range {v0 .. v7}, Lcom/twidroid/ui/a;->a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZZZ)Z
move-result v0
if-nez v0, :cond_e5
iget-object v0, v9, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:try_end_176
.catch Ljava/lang/Exception; {:try_start_144 .. :try_end_176} :catch_178
goto/16 :goto_e5
:catch_178
move-exception v0
goto/16 :goto_e5
:cond_17b
const v0, 0x7f090136
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
invoke-virtual {v0, v6}, Landroid/view/View;->setVisibility(I)V
goto/16 :goto_e5
nop
:pswitch_data_188
.packed-switch 0x0
:pswitch_ef
:pswitch_fe
.end packed-switch
.end method