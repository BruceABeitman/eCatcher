.class public Lcom/twidroid/activity/f;
.super Landroid/widget/BaseAdapter;
.source "SourceFile"
.field protected a:Landroid/view/LayoutInflater;
.field protected b:Ljava/util/List;
.field protected c:Z
.field protected d:Lcom/twidroid/activity/g;
.field final synthetic e:Lcom/twidroid/activity/FollowerRequests;
.field private f:I
.method public constructor <init>(Lcom/twidroid/activity/FollowerRequests;Ljava/util/List;)V
.registers 4
iput-object p1, p0, Lcom/twidroid/activity/f;->e:Lcom/twidroid/activity/FollowerRequests;
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/twidroid/activity/f;->b:Ljava/util/List;
const/16 v0, 0xc
iput v0, p0, Lcom/twidroid/activity/f;->f:I
const/4 v0, 0x1
iput-boolean v0, p0, Lcom/twidroid/activity/f;->c:Z
invoke-static {p1}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
iput-object v0, p0, Lcom/twidroid/activity/f;->a:Landroid/view/LayoutInflater;
iput-object p2, p0, Lcom/twidroid/activity/f;->b:Ljava/util/List;
return-void
.end method
.method public getCount()I
.registers 2
iget-object v0, p0, Lcom/twidroid/activity/f;->b:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/twidroid/activity/f;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public getItemId(I)J
.registers 4
:try_start_0
iget-object v0, p0, Lcom/twidroid/activity/f;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/model/twitter/User;
iget-wide v0, v0, Lcom/twidroid/model/twitter/User;->b:J
:try_end_a
.catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_a} :catch_b
:goto_a
return-wide v0
:catch_b
move-exception v0
int-to-long v0, p1
goto :goto_a
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 13
const/4 v4, 0x0
const v3, 0x7f090101
const/4 v2, 0x1
if-eqz p2, :cond_d
invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
if-nez v0, :cond_14c
:cond_d
iget-object v0, p0, Lcom/twidroid/activity/f;->a:Landroid/view/LayoutInflater;
const v1, 0x7f030061
invoke-virtual {v0, v1, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object p2
new-instance v0, Lcom/twidroid/activity/g;
invoke-direct {v0, p0}, Lcom/twidroid/activity/g;-><init>(Lcom/twidroid/activity/f;)V
iput-object v0, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
iget-object v1, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
invoke-virtual {p2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/twidroid/activity/g;->a:Landroid/widget/TextView;
iget-object v0, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
iget-object v0, v0, Lcom/twidroid/activity/g;->a:Landroid/widget/TextView;
iget v1, p0, Lcom/twidroid/activity/f;->f:I
int-to-float v1, v1
invoke-virtual {v0, v2, v1}, Landroid/widget/TextView;->setTextSize(IF)V
iget-object v1, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
const v0, 0x7f090040
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/ImageView;
iput-object v0, v1, Lcom/twidroid/activity/g;->b:Landroid/widget/ImageView;
iget-object v1, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
const v0, 0x7f090144
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/twidroid/activity/g;->c:Landroid/widget/TextView;
iget-object v1, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
const v0, 0x7f090141
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/twidroid/activity/g;->d:Landroid/widget/TextView;
iget-object v1, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
const v0, 0x7f09013d
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
iput-object v0, v1, Lcom/twidroid/activity/g;->e:Landroid/widget/TextView;
iget-object v1, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
const v0, 0x7f090145
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, v1, Lcom/twidroid/activity/g;->f:Landroid/widget/Button;
iget-object v1, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
const v0, 0x7f090146
invoke-virtual {p2, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/Button;
iput-object v0, v1, Lcom/twidroid/activity/g;->g:Landroid/widget/Button;
iget-object v0, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
invoke-virtual {p2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V
:goto_84
iget-object v0, p0, Lcom/twidroid/activity/f;->b:Ljava/util/List;
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
move-object v8, v0
check-cast v8, Lcom/twidroid/model/twitter/User;
if-eqz v8, :cond_14b
iget-object v0, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
iget-object v0, v0, Lcom/twidroid/activity/g;->b:Landroid/widget/ImageView;
iget-object v1, v8, Lcom/twidroid/model/twitter/User;->g:Ljava/lang/String;
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setTag(Ljava/lang/Object;)V
iget-object v0, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
iget-object v0, v0, Lcom/twidroid/activity/g;->a:Landroid/widget/TextView;
new-instance v1, Ljava/lang/StringBuilder;
invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V
invoke-virtual {v8}, Lcom/twidroid/model/twitter/User;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\n\nFollowers: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, v8, Lcom/twidroid/model/twitter/User;->k:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, " / Following: "
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-wide v2, v8, Lcom/twidroid/model/twitter/User;->l:J
invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;
move-result-object v1
const-string v2, "\n"
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
iget-object v2, v8, Lcom/twidroid/model/twitter/User;->h:Ljava/lang/String;
invoke-virtual {v2}, Ljava/lang/String;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v1
invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
iget-object v0, v0, Lcom/twidroid/activity/g;->b:Landroid/widget/ImageView;
new-instance v1, Lcom/twidroid/activity/f$1;
invoke-direct {v1, p0}, Lcom/twidroid/activity/f$1;-><init>(Lcom/twidroid/activity/f;)V
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v0, v8, Lcom/twidroid/model/twitter/User;->d:Ljava/lang/String;
iget-object v1, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
iget-object v1, v1, Lcom/twidroid/activity/g;->f:Landroid/widget/Button;
new-instance v2, Lcom/twidroid/activity/f$2;
invoke-direct {v2, p0, v0}, Lcom/twidroid/activity/f$2;-><init>(Lcom/twidroid/activity/f;Ljava/lang/String;)V
invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
iget-object v1, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
iget-object v1, v1, Lcom/twidroid/activity/g;->g:Landroid/widget/Button;
new-instance v2, Lcom/twidroid/activity/f$3;
invoke-direct {v2, p0, v0}, Lcom/twidroid/activity/f$3;-><init>(Lcom/twidroid/activity/f;Ljava/lang/String;)V
invoke-virtual {v1, v2}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V
:try_start_fe
iget-object v0, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
iget-object v1, v0, Lcom/twidroid/activity/g;->b:Landroid/widget/ImageView;
new-instance v0, Ljava/lang/StringBuilder;
invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V
invoke-static {}, Lcom/twidroid/d/v;->d()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v8}, Lcom/twidroid/model/twitter/User;->c()Ljava/lang/String;
move-result-object v2
invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
move-result-object v0
invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;
move-result-object v2
invoke-virtual {v8}, Lcom/twidroid/model/twitter/User;->h()Ljava/lang/String;
move-result-object v3
iget-object v0, p0, Lcom/twidroid/activity/f;->e:Lcom/twidroid/activity/FollowerRequests;
iget v4, v0, Lcom/twidroid/activity/FollowerRequests;->f:I
const/4 v5, 0x0
const/4 v6, 0x1
const/4 v7, 0x1
move-object v0, p0
invoke-static/range {v0 .. v7}, Lcom/twidroid/ui/a;->a(Landroid/widget/BaseAdapter;Landroid/widget/ImageView;Ljava/lang/String;Ljava/lang/String;IZZZ)Z
move-result v0
if-nez v0, :cond_135
iget-object v0, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
iget-object v0, v0, Lcom/twidroid/activity/g;->b:Landroid/widget/ImageView;
const/4 v1, 0x0
invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V
:cond_135
iget-object v0, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
iget-object v0, v0, Lcom/twidroid/activity/g;->c:Landroid/widget/TextView;
invoke-virtual {v8}, Lcom/twidroid/model/twitter/User;->g()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
iget-object v0, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
iget-object v0, v0, Lcom/twidroid/activity/g;->e:Landroid/widget/TextView;
invoke-virtual {v8}, Lcom/twidroid/model/twitter/User;->i()Ljava/lang/String;
move-result-object v1
invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
:cond_14b
:try_end_14b
.catch Ljava/lang/Exception; {:try_start_fe .. :try_end_14b} :catch_156
:goto_14b
return-object p2
:cond_14c
invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/activity/g;
iput-object v0, p0, Lcom/twidroid/activity/f;->d:Lcom/twidroid/activity/g;
goto/16 :goto_84
:catch_156
move-exception v0
goto :goto_14b
.end method