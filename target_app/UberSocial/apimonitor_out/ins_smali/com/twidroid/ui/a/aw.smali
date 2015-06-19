.class public Lcom/twidroid/ui/a/aw;
.super Lcom/twidroid/ui/a/au;
.source "SourceFile"
.field  h:I
.field  i:I
.field  j:I
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Lcom/twidroid/ui/a/au;-><init>(Landroid/content/Context;)V
const/16 v0, 0xb
iput v0, p0, Lcom/twidroid/ui/a/aw;->h:I
const/4 v0, 0x2
iput v0, p0, Lcom/twidroid/ui/a/aw;->i:I
const/4 v0, -0x1
iput v0, p0, Lcom/twidroid/ui/a/aw;->j:I
return-void
.end method
.method public constructor <init>(Landroid/content/Context;Ljava/util/ArrayList;)V
.registers 4
invoke-direct {p0, p1, p2}, Lcom/twidroid/ui/a/au;-><init>(Landroid/content/Context;Ljava/util/ArrayList;)V
const/16 v0, 0xb
iput v0, p0, Lcom/twidroid/ui/a/aw;->h:I
const/4 v0, 0x2
iput v0, p0, Lcom/twidroid/ui/a/aw;->i:I
const/4 v0, -0x1
iput v0, p0, Lcom/twidroid/ui/a/aw;->j:I
return-void
.end method
.method public a(I)V
.registers 2
iput p1, p0, Lcom/twidroid/ui/a/aw;->j:I
return-void
.end method
.method public a(II)V
.registers 3
iput p1, p0, Lcom/twidroid/ui/a/aw;->h:I
iput p2, p0, Lcom/twidroid/ui/a/aw;->i:I
return-void
.end method
.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 11
iget-object v0, p0, Lcom/twidroid/ui/a/aw;->a:Ljava/util/ArrayList;
invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/twidroid/uberchannels/models/UberTopic;
if-nez p2, :cond_57
iget-object v1, p0, Lcom/twidroid/ui/a/aw;->d:Landroid/view/LayoutInflater;
const v2, 0x7f030093
const/4 v3, 0x0
invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v2
move-object v1, v2
check-cast v1, Landroid/widget/TextView;
iget v3, p0, Lcom/twidroid/ui/a/aw;->i:I
iget v4, p0, Lcom/twidroid/ui/a/aw;->i:I
iget v5, p0, Lcom/twidroid/ui/a/aw;->i:I
iget v6, p0, Lcom/twidroid/ui/a/aw;->i:I
invoke-virtual {v1, v3, v4, v5, v6}, Landroid/widget/TextView;->setPadding(IIII)V
move-object v1, v2
check-cast v1, Landroid/widget/TextView;
const/4 v3, 0x2
iget v4, p0, Lcom/twidroid/ui/a/aw;->h:I
int-to-float v4, v4
invoke-virtual {v1, v3, v4}, Landroid/widget/TextView;->setTextSize(IF)V
:goto_2c
instance-of v1, p3, Landroid/widget/GridView;
if-nez v1, :cond_4e
iget-object v1, p0, Lcom/twidroid/ui/a/aw;->e:Lcom/twidroid/uberchannels/models/UberTopic;
if-eqz v1, :cond_4e
iget-object v1, p0, Lcom/twidroid/ui/a/aw;->e:Lcom/twidroid/uberchannels/models/UberTopic;
invoke-virtual {v1, v0}, Lcom/twidroid/uberchannels/models/UberTopic;->equals(Ljava/lang/Object;)Z
move-result v1
if-nez v1, :cond_4e
move-object v1, v2
check-cast v1, Landroid/widget/TextView;
const v3, -0x777778
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V
:goto_45
move-object v1, v2
check-cast v1, Landroid/widget/TextView;
iget-object v0, v0, Lcom/twidroid/uberchannels/models/UberTopic;->c:Ljava/lang/String;
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
return-object v2
:cond_4e
move-object v1, v2
check-cast v1, Landroid/widget/TextView;
iget v3, p0, Lcom/twidroid/ui/a/aw;->j:I
invoke-virtual {v1, v3}, Landroid/widget/TextView;->setTextColor(I)V
goto :goto_45
:cond_57
move-object v2, p2
goto :goto_2c
.end method