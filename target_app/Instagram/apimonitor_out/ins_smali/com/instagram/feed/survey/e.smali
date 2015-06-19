.class public final Lcom/instagram/feed/survey/e;
.super Landroid/widget/BaseAdapter;
.source "SurveyAdapter.java"
.implements Landroid/widget/ListAdapter;
.field private a:Lcom/instagram/feed/survey/b;
.field private b:Landroid/content/Context;
.method public constructor <init>(Landroid/content/Context;Lcom/instagram/feed/survey/b;)V
.registers 3
invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V
iput-object p1, p0, Lcom/instagram/feed/survey/e;->b:Landroid/content/Context;
iput-object p2, p0, Lcom/instagram/feed/survey/e;->a:Lcom/instagram/feed/survey/b;
return-void
.end method
.method private a(Landroid/content/Context;I)Landroid/view/View;
.registers 5
invoke-virtual {p0, p2}, Lcom/instagram/feed/survey/e;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_18
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "Unhandled view type"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_f
sget v0, Lcom/facebook/aw;->sentiment_tool_answer:I
const/4 v1, 0x0
invoke-static {p1, v0, v1}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;
move-result-object v0
return-object v0
nop
:pswitch_data_18
.packed-switch 0x0
:pswitch_f
.end packed-switch
.end method
.method private a(Landroid/view/View;I)V
.registers 5
invoke-virtual {p0, p2}, Lcom/instagram/feed/survey/e;->getItemViewType(I)I
move-result v0
packed-switch v0, :pswitch_data_36
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "View type unhandled"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
:pswitch_f
iget-object v0, p0, Lcom/instagram/feed/survey/e;->a:Lcom/instagram/feed/survey/b;
invoke-virtual {v0}, Lcom/instagram/feed/survey/b;->g()Ljava/util/List;
move-result-object v0
invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
check-cast v0, Lcom/instagram/feed/survey/c;
move-object v1, p1
check-cast v1, Landroid/widget/TextView;
invoke-virtual {v0}, Lcom/instagram/feed/survey/c;->b()Ljava/lang/String;
move-result-object v0
invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p0}, Lcom/instagram/feed/survey/e;->getCount()I
move-result v0
add-int/lit8 v0, v0, -0x1
if-ne p2, v0, :cond_33
sget v0, Lcom/facebook/au;->dialog_row_bottom:I
:goto_2f
invoke-virtual {p1, v0}, Landroid/view/View;->setBackgroundResource(I)V
return-void
:cond_33
sget v0, Lcom/facebook/au;->bg_simple_row:I
goto :goto_2f
:pswitch_data_36
.packed-switch 0x0
:pswitch_f
.end packed-switch
.end method
.method public final getCount()I
.registers 2
iget-object v0, p0, Lcom/instagram/feed/survey/e;->a:Lcom/instagram/feed/survey/b;
invoke-virtual {v0}, Lcom/instagram/feed/survey/b;->g()Ljava/util/List;
move-result-object v0
invoke-interface {v0}, Ljava/util/List;->size()I
move-result v0
return v0
.end method
.method public final getItem(I)Ljava/lang/Object;
.registers 3
iget-object v0, p0, Lcom/instagram/feed/survey/e;->a:Lcom/instagram/feed/survey/b;
invoke-virtual {v0}, Lcom/instagram/feed/survey/b;->g()Ljava/util/List;
move-result-object v0
invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;
move-result-object v0
return-object v0
.end method
.method public final getItemId(I)J
.registers 4
int-to-long v0, p1
return-wide v0
.end method
.method public final getItemViewType(I)I
.registers 4
invoke-virtual {p0}, Lcom/instagram/feed/survey/e;->getCount()I
move-result v0
if-ge p1, v0, :cond_8
const/4 v0, 0x0
return v0
:cond_8
new-instance v0, Ljava/lang/UnsupportedOperationException;
const-string v1, "View mode not handled (for item view type)"
invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V
throw v0
.end method
.method public final getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
.registers 5
if-nez p2, :cond_8
iget-object v0, p0, Lcom/instagram/feed/survey/e;->b:Landroid/content/Context;
invoke-direct {p0, v0, p1}, Lcom/instagram/feed/survey/e;->a(Landroid/content/Context;I)Landroid/view/View;
move-result-object p2
:cond_8
iget-object v0, p0, Lcom/instagram/feed/survey/e;->b:Landroid/content/Context;
invoke-direct {p0, p2, p1}, Lcom/instagram/feed/survey/e;->a(Landroid/view/View;I)V
return-object p2
.end method