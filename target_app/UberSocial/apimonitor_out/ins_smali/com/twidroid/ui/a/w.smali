.class public Lcom/twidroid/ui/a/w;
.super Lcom/twidroid/ui/a/am;
.source "SourceFile"
.field private W:Landroid/os/Handler;
.field private X:Ljava/util/HashMap;
.field private Y:Lcom/twidroid/ui/a/x;
.field  a:Ljava/util/ArrayList;
.field  b:Ljava/util/HashMap;
.method public constructor <init>(Landroid/app/Activity;Ljava/util/List;Z)V
.registers 5
invoke-direct {p0, p1, p2, p3}, Lcom/twidroid/ui/a/am;-><init>(Landroid/app/Activity;Ljava/util/List;Z)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/w;->a:Ljava/util/ArrayList;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/w;->b:Ljava/util/HashMap;
new-instance v0, Ljava/util/HashMap;
invoke-direct {v0}, Ljava/util/HashMap;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/w;->X:Ljava/util/HashMap;
new-instance v0, Landroid/os/Handler;
invoke-direct {v0}, Landroid/os/Handler;-><init>()V
iput-object v0, p0, Lcom/twidroid/ui/a/w;->W:Landroid/os/Handler;
const/4 v0, 0x0
invoke-virtual {p0, p2, v0}, Lcom/twidroid/ui/a/w;->a(Ljava/util/List;Lcom/twidroid/ui/a/y;)V
return-void
.end method
.method static synthetic a(Lcom/twidroid/ui/a/w;)Ljava/util/HashMap;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/w;->X:Ljava/util/HashMap;
return-object v0
.end method
.method public a()Ljava/util/ArrayList;
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/w;->a:Ljava/util/ArrayList;
return-object v0
.end method
.method public a(Ljava/util/List;Lcom/twidroid/ui/a/y;)V
.registers 7
const/4 v2, 0x1
iget-object v0, p0, Lcom/twidroid/ui/a/w;->Y:Lcom/twidroid/ui/a/x;
if-eqz v0, :cond_14
iget-object v0, p0, Lcom/twidroid/ui/a/w;->Y:Lcom/twidroid/ui/a/x;
invoke-virtual {v0}, Lcom/twidroid/ui/a/x;->g()Lcom/ubermedia/a/e;
move-result-object v0
sget-object v1, Lcom/ubermedia/a/e;->b:Lcom/ubermedia/a/e;
if-ne v0, v1, :cond_14
iget-object v0, p0, Lcom/twidroid/ui/a/w;->Y:Lcom/twidroid/ui/a/x;
invoke-virtual {v0, v2}, Lcom/twidroid/ui/a/x;->b(Z)Z
:cond_14
new-instance v0, Lcom/twidroid/ui/a/x;
invoke-direct {v0, p0, p2}, Lcom/twidroid/ui/a/x;-><init>(Lcom/twidroid/ui/a/w;Lcom/twidroid/ui/a/y;)V
iput-object v0, p0, Lcom/twidroid/ui/a/w;->Y:Lcom/twidroid/ui/a/x;
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V
iget-object v1, p0, Lcom/twidroid/ui/a/w;->Y:Lcom/twidroid/ui/a/x;
new-array v2, v2, [Ljava/util/List;
const/4 v3, 0x0
aput-object v0, v2, v3
invoke-virtual {v1, v2}, Lcom/twidroid/ui/a/x;->d([Ljava/lang/Object;)Lcom/ubermedia/a/a;
return-void
.end method
.method public areAllItemsEnabled()Z
.registers 2
const/4 v0, 0x1
return v0
.end method
.method public b()V
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/a/w;->W:Landroid/os/Handler;
new-instance v1, Lcom/twidroid/ui/a/w$1;
invoke-direct {v1, p0}, Lcom/twidroid/ui/a/w$1;-><init>(Lcom/twidroid/ui/a/w;)V
invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/twidroid/ui/a/w;->a:Ljava/util/ArrayList;
invoke-virtual {v0}, Ljava/util/ArrayList;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/twidroid/ui/a/w;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
:try_start_0
iget-object v0, p0, Lcom/twidroid/ui/a/w;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;
invoke-virtual {v0}, Lcom/twidroid/model/twitter/DirectMessage;->m()J
:try_end_b
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_b} :catch_d
move-result-wide v0
:goto_c
return-wide v0
:catch_d
move-exception v0
int-to-long v0, p1
goto :goto_c
.end method
.method public getItemViewType(I)I
.registers 3
iget-boolean v0, p0, Lcom/twidroid/ui/a/w;->k:Z
if-eqz v0, :cond_6
const/4 v0, 0x0
:goto_5
return v0
:cond_6
const/4 v0, 0x1
goto :goto_5
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 14
if-nez p2, :cond_1c6
invoke-virtual {p0, p1}, Lcom/twidroid/ui/a/w;->getItemViewType(I)I
move-result v0
if-nez v0, :cond_1b9
iget-object v0, p0, Lcom/twidroid/ui/a/w;->O:Landroid/view/LayoutInflater;
const v1, 0x7f03005b
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
move-object v1, v0
:goto_13
new-instance v2, Lcom/twidroid/ui/a/ao;
invoke-direct {v2}, Lcom/twidroid/ui/a/ao;-><init>()V
const v0, 0x7f090108
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, v2, Lcom/twidroid/ui/a/ao;->b:Landroid/view/View;
const v0, 0x7f090101
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;
iput-object v0, v2, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;
iget-boolean v0, p0, Lcom/twidroid/ui/a/w;->w:Z
if-eqz v0, :cond_42
iget-object v0, v2, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;
iget-object v3, p0, Lcom/twidroid/ui/a/w;->M:Lcom/twidroid/ui/themes/r;
invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->p()I
move-result v3
invoke-virtual {v0, v3}, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;->setLinkTextColor(I)V
iget-object v0, v2, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;
iget v3, p0, Lcom/twidroid/ui/a/w;->H:I
invoke-virtual {v0, v3}, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;->setTextColor(I)V
:cond_42
const v0, 0x7f09008e
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;
iget-object v0, v2, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;
const/4 v3, 0x1
iget v4, p0, Lcom/twidroid/ui/a/w;->l:I
int-to-float v4, v4
invoke-virtual {v0, v3, v4}, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;->setTextSize(IF)V
iget-object v0, v2, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;
invoke-virtual {v0}, Landroid/widget/TextView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;
move-result-object v0
check-cast v0, Landroid/widget/RelativeLayout$LayoutParams;
const/4 v3, 0x0
const v4, 0x7f09013d
invoke-virtual {v0, v3, v4}, Landroid/widget/RelativeLayout$LayoutParams;->addRule(II)V
iget-object v3, v2, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;
invoke-virtual {v3, v0}, Landroid/widget/TextView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
const v0, 0x7f09013d
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v2, Lcom/twidroid/ui/a/ao;->h:Landroid/widget/TextView;
iget-object v0, v2, Lcom/twidroid/ui/a/ao;->h:Landroid/widget/TextView;
iget-object v3, p0, Lcom/twidroid/ui/a/w;->M:Lcom/twidroid/ui/themes/r;
invoke-virtual {v3}, Lcom/twidroid/ui/themes/r;->o()I
move-result v3
invoke-virtual {v0, v3}, Landroid/widget/TextView;->setTextColor(I)V
iget-object v0, v2, Lcom/twidroid/ui/a/ao;->h:Landroid/widget/TextView;
const/4 v3, 0x1
iget-object v4, p0, Lcom/twidroid/ui/a/w;->M:Lcom/twidroid/ui/themes/r;
iget v4, v4, Lcom/twidroid/ui/themes/r;->aF:I
int-to-float v4, v4
invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V
iget-object v0, v2, Lcom/twidroid/ui/a/ao;->h:Landroid/widget/TextView;
const/4 v3, 0x0
iget v4, p0, Lcom/twidroid/ui/a/w;->q:I
invoke-virtual {v0, v3, v4}, Landroid/widget/TextView;->setTypeface(Landroid/graphics/Typeface;I)V
const v0, 0x7f090040
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v2, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;
const v0, 0x7f09013e
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v2, Lcom/twidroid/ui/a/ao;->m:Landroid/widget/ImageView;
const v0, 0x7f09013c
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, v2, Lcom/twidroid/ui/a/ao;->p:Landroid/view/View;
const v0, 0x7f09013f
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, v2, Lcom/twidroid/ui/a/ao;->o:Landroid/view/View;
const v0, 0x7f090137
invoke-virtual {v1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
iput-object v0, v2, Lcom/twidroid/ui/a/ao;->n:Landroid/view/View;
iget-object v0, v2, Lcom/twidroid/ui/a/ao;->n:Landroid/view/View;
if-eqz v0, :cond_d8
iget-object v0, v2, Lcom/twidroid/ui/a/ao;->n:Landroid/view/View;
new-instance v3, Lcom/twidroid/ui/b/c;
iget-object v4, p0, Lcom/twidroid/ui/a/w;->M:Lcom/twidroid/ui/themes/r;
iget v4, v4, Lcom/twidroid/ui/themes/r;->B:I
iget v5, p0, Lcom/twidroid/ui/a/w;->P:I
invoke-direct {v3, v4, v5}, Lcom/twidroid/ui/b/c;-><init>(II)V
invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_d8
iget-object v0, v2, Lcom/twidroid/ui/a/ao;->o:Landroid/view/View;
if-eqz v0, :cond_ea
iget-object v0, v2, Lcom/twidroid/ui/a/ao;->o:Landroid/view/View;
new-instance v3, Lcom/twidroid/ui/b/c;
iget v4, p0, Lcom/twidroid/ui/a/w;->E:I
iget v5, p0, Lcom/twidroid/ui/a/w;->P:I
invoke-direct {v3, v4, v5}, Lcom/twidroid/ui/b/c;-><init>(II)V
invoke-virtual {v0, v3}, Landroid/view/View;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_ea
iget-boolean v0, p0, Lcom/twidroid/ui/a/w;->k:Z
if-nez v0, :cond_f5
iget-object v0, v2, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;
const/16 v3, 0x8
invoke-virtual {v0, v3}, Landroid/widget/ImageView;->setVisibility(I)V
:cond_f5
invoke-virtual {v1, v2}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
move-object v9, v2
move-object p2, v1
:goto_fa
iget-object v0, p0, Lcom/twidroid/ui/a/w;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
move-object v8, v0
check-cast v8, Lcom/twidroid/model/twitter/DirectMessage;
iget-object v0, v9, Lcom/twidroid/ui/a/ao;->h:Landroid/widget/TextView;
invoke-virtual {v8}, Lcom/twidroid/model/twitter/DirectMessage;->l()J
move-result-wide v1
invoke-static {v1, v2}, Lcom/ubermedia/b/a/k;->b(J)Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-wide v0, v8, Lcom/twidroid/model/twitter/DirectMessage;->C:J
iget-wide v2, v8, Lcom/twidroid/model/twitter/DirectMessage;->W:J
cmp-long v0, v0, v2
if-lez v0, :cond_1cf
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, ""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, v8, Lcom/twidroid/model/twitter/DirectMessage;->C:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, v8, Lcom/twidroid/model/twitter/DirectMessage;->W:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
:goto_139
iget-object v1, p0, Lcom/twidroid/ui/a/w;->X:Ljava/util/HashMap;
invoke-virtual {v1, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z
move-result v1
if-eqz v1, :cond_21a
iget-object v1, p0, Lcom/twidroid/ui/a/w;->X:Ljava/util/HashMap;
invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/DirectMessage;
iget-boolean v1, p0, Lcom/twidroid/ui/a/w;->m:Z
if-eqz v1, :cond_1f2
iget-object v1, v9, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;
iget-object v2, v0, Lcom/twidroid/model/twitter/DirectMessage;->z:Ljava/lang/String;
new-instance v3, Ljava/lang/StringBuilder;
invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V
const-string v4, "@"
invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v3
iget-object v0, v0, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;
invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
iget v3, p0, Lcom/twidroid/ui/a/w;->q:I
iget-object v4, p0, Lcom/twidroid/ui/a/w;->r:Landroid/text/style/ForegroundColorSpan;
iget-object v5, p0, Lcom/twidroid/ui/a/w;->s:Landroid/text/style/StyleSpan;
invoke-static {v2, v0, v3, v4, v5}, Lcom/twidroid/ui/a/w;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/text/style/ForegroundColorSpan;Landroid/text/style/StyleSpan;)Landroid/text/Spannable;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:goto_173
iget-object v0, v9, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;
invoke-virtual {v8}, Lcom/twidroid/model/twitter/DirectMessage;->o()Lcom/twidroid/ui/StringUrlSpan;
move-result-object v1
invoke-virtual {v0, v1}, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;->setText(Ljava/lang/CharSequence;)V
iget-boolean v0, p0, Lcom/twidroid/ui/a/w;->k:Z
if-eqz v0, :cond_191
iget-object v0, p0, Lcom/twidroid/ui/a/w;->T:Lcom/twidroid/net/b/f;
if-eqz v0, :cond_276
iget-object v0, p0, Lcom/twidroid/ui/a/w;->T:Lcom/twidroid/net/b/f;
invoke-virtual {v8}, Lcom/twidroid/model/twitter/DirectMessage;->c()Ljava/lang/String;
move-result-object v1
iget v2, p0, Lcom/twidroid/ui/a/w;->B:I
iget-object v3, v9, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;
invoke-virtual {v0, v1, v2, v3}, Lcom/twidroid/net/b/f;->a(Ljava/lang/String;ILandroid/widget/ImageView;)V
:cond_191
:goto_191
const/4 v0, 0x0
invoke-virtual {p0, v8, v9, v0}, Lcom/twidroid/ui/a/w;->a(Lcom/twidroid/model/twitter/CommunicationEntity;Lcom/twidroid/ui/a/ao;Z)V
iget-object v0, p0, Lcom/twidroid/ui/a/w;->J:Lcom/twidroid/d/v;
invoke-virtual {v0}, Lcom/twidroid/d/v;->bJ()Z
move-result v0
if-eqz v0, :cond_2b0
const/4 v0, 0x2
:goto_19e
iget-object v1, p0, Lcom/twidroid/ui/a/w;->J:Lcom/twidroid/d/v;
invoke-virtual {v1}, Lcom/twidroid/d/v;->bK()Z
move-result v1
if-eqz v1, :cond_2b3
const/4 v1, 0x1
:goto_1a7
add-int/2addr v0, v1
iput v0, p0, Lcom/twidroid/ui/a/w;->q:I
iget-object v0, v9, Lcom/twidroid/ui/a/ao;->d:Lcom/ubermedia/ui/widgets/TextViewCrashSafe;
const/4 v1, 0x0
iget v2, p0, Lcom/twidroid/ui/a/w;->q:I
invoke-virtual {v0, v1, v2}, Lcom/ubermedia/ui/widgets/TextViewCrashSafe;->setTypeface(Landroid/graphics/Typeface;I)V
iget-object v0, v9, Lcom/twidroid/ui/a/ao;->o:Landroid/view/View;
const/4 v1, 0x4
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-object p2
:cond_1b9
iget-object v0, p0, Lcom/twidroid/ui/a/w;->O:Landroid/view/LayoutInflater;
const v1, 0x7f03005d
const/4 v2, 0x0
invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
move-object v1, v0
goto/16 :goto_13
:cond_1c6
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/ui/a/ao;
move-object v9, v0
goto/16 :goto_fa
:cond_1cf
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
const-string v1, ""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, v8, Lcom/twidroid/model/twitter/DirectMessage;->W:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
iget-wide v1, v8, Lcom/twidroid/model/twitter/DirectMessage;->C:J
invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v0
const-string v1, ""
invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v0
goto/16 :goto_139
:cond_1f2
iget-object v1, v9, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "@"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
iget-object v3, v0, Lcom/twidroid/model/twitter/DirectMessage;->A:Ljava/lang/String;
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iget-object v0, v0, Lcom/twidroid/model/twitter/DirectMessage;->z:Ljava/lang/String;
iget v3, p0, Lcom/twidroid/ui/a/w;->q:I
iget-object v4, p0, Lcom/twidroid/ui/a/w;->r:Landroid/text/style/ForegroundColorSpan;
iget-object v5, p0, Lcom/twidroid/ui/a/w;->s:Landroid/text/style/StyleSpan;
invoke-static {v2, v0, v3, v4, v5}, Lcom/twidroid/ui/a/w;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/text/style/ForegroundColorSpan;Landroid/text/style/StyleSpan;)Landroid/text/Spannable;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_173
:cond_21a
iget-boolean v0, p0, Lcom/twidroid/ui/a/w;->m:Z
if-eqz v0, :cond_24a
iget-object v0, v9, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;
invoke-virtual {v8}, Lcom/twidroid/model/twitter/DirectMessage;->a()Ljava/lang/String;
move-result-object v1
new-instance v2, Ljava/lang/StringBuilder;
invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V
const-string v3, "@"
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v8}, Lcom/twidroid/model/twitter/DirectMessage;->b()Ljava/lang/String;
move-result-object v3
invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v2
invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
iget v3, p0, Lcom/twidroid/ui/a/w;->q:I
iget-object v4, p0, Lcom/twidroid/ui/a/w;->r:Landroid/text/style/ForegroundColorSpan;
iget-object v5, p0, Lcom/twidroid/ui/a/w;->s:Landroid/text/style/StyleSpan;
invoke-static {v1, v2, v3, v4, v5}, Lcom/twidroid/ui/a/w;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/text/style/ForegroundColorSpan;Landroid/text/style/StyleSpan;)Landroid/text/Spannable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_173
:cond_24a
iget-object v0, v9, Lcom/twidroid/ui/a/ao;->c:Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
const-string v2, "@"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v8}, Lcom/twidroid/model/twitter/DirectMessage;->b()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v8}, Lcom/twidroid/model/twitter/DirectMessage;->a()Ljava/lang/String;
move-result-object v2
iget v3, p0, Lcom/twidroid/ui/a/w;->q:I
iget-object v4, p0, Lcom/twidroid/ui/a/w;->r:Landroid/text/style/ForegroundColorSpan;
iget-object v5, p0, Lcom/twidroid/ui/a/w;->s:Landroid/text/style/StyleSpan;
invoke-static {v1, v2, v3, v4, v5}, Lcom/twidroid/ui/a/w;->a(Ljava/lang/String;Ljava/lang/String;ILandroid/text/style/ForegroundColorSpan;Landroid/text/style/StyleSpan;)Landroid/text/Spannable;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
goto/16 :goto_173
:try_start_276
:cond_276
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
invoke-virtual {v8}, Lcom/twidroid/model/twitter/DirectMessage;->c()Ljava/lang/String;
move-result-object v3
iget v4, p0, Lcom/twidroid/ui/a/w;->B:I
iget-boolean v5, p0, Lcom/twidroid/ui/a/w;->C:Z
const/4 v6, 0x1
const/4 v7, 0x1
move-object v0, p0
invoke-static/range {v0 .. v7}, Lcom/twidroid/ui/a;->a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZZZ)Z
move-result v0
if-nez v0, :cond_191
iget-object v0, v9, Lcom/twidroid/ui/a/ao;->e:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:try_end_2a8
.catch Ljava/lang/Exception; {:try_start_276 .. :try_end_2a8} :catch_2aa
goto/16 :goto_191
:catch_2aa
move-exception v0
invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V
goto/16 :goto_191
:cond_2b0
const/4 v0, 0x0
goto/16 :goto_19e
:cond_2b3
const/4 v1, 0x0
goto/16 :goto_1a7
.end method
.method public getViewTypeCount()I
.registers 2
const/4 v0, 0x2
return v0
.end method
.method public isEnabled(I)Z
.registers 3
const/4 v0, 0x1
return v0
.end method