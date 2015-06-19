.class final Lcom/instagram/ui/widget/c/d;
.super Landroid/widget/LinearLayout;
.source "CustomToastView.java"
.field private a:Ljava/util/List;
.method public constructor <init>(Landroid/content/Context;)V
.registers 3
invoke-direct {p0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lcom/instagram/ui/widget/c/d;->a:Ljava/util/List;
invoke-direct {p0}, Lcom/instagram/ui/widget/c/d;->a()V
return-void
.end method
.method private a()V
.registers 3
const/4 v1, -0x2
sget v0, Lcom/facebook/au;->notification_tooltip:I
invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/c/d;->setBackgroundResource(I)V
new-instance v0, Landroid/widget/LinearLayout$LayoutParams;
invoke-direct {v0, v1, v1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V
invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/c/d;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V
invoke-virtual {p0}, Lcom/instagram/ui/widget/c/d;->getContext()Landroid/content/Context;
move-result-object v0
invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;
move-result-object v0
sget v1, Lcom/facebook/aw;->view_custom_toast:I
invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;
iget-object v1, p0, Lcom/instagram/ui/widget/c/d;->a:Ljava/util/List;
sget v0, Lcom/facebook/av;->toast_inbox_textview_1:I
invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/c/d;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/instagram/ui/widget/c/d;->a:Ljava/util/List;
sget v0, Lcom/facebook/av;->toast_inbox_textview_2:I
invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/c/d;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
iget-object v1, p0, Lcom/instagram/ui/widget/c/d;->a:Ljava/util/List;
sget v0, Lcom/facebook/av;->toast_inbox_textview_3:I
invoke-virtual {p0, v0}, Lcom/instagram/ui/widget/c/d;->findViewById(I)Landroid/view/View;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z
return-void
.end method
.method private static a(Landroid/view/View;)V
.registers 3
invoke-virtual {p0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/View;
const/16 v1, 0x8
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
return-void
.end method
.method private static a(Landroid/widget/TextView;II)V
.registers 5
const/4 v1, 0x0
invoke-virtual {p0}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V
invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;
move-result-object v0
invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
invoke-virtual {p0, p2, v1, v1, v1}, Landroid/widget/TextView;->setCompoundDrawablesWithIntrinsicBounds(IIII)V
return-void
.end method
.method public final a(IIII)V
.registers 8
iget-object v0, p0, Lcom/instagram/ui/widget/c/d;->a:Ljava/util/List;
invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;
move-result-object v1
if-lez p1, :cond_13
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget v2, Lcom/facebook/au;->notification_comment_icon:I
invoke-static {v0, p1, v2}, Lcom/instagram/ui/widget/c/d;->a(Landroid/widget/TextView;II)V
:cond_13
if-lez p2, :cond_20
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget v2, Lcom/facebook/au;->notification_like_icon:I
invoke-static {v0, p2, v2}, Lcom/instagram/ui/widget/c/d;->a(Landroid/widget/TextView;II)V
:cond_20
if-lez p3, :cond_33
if-eqz p1, :cond_28
if-eqz p2, :cond_28
if-nez p4, :cond_33
:cond_28
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget v2, Lcom/facebook/au;->notification_people_icon:I
invoke-static {v0, p3, v2}, Lcom/instagram/ui/widget/c/d;->a(Landroid/widget/TextView;II)V
:cond_33
if-lez p4, :cond_40
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/widget/TextView;
sget v2, Lcom/facebook/au;->notification_tag_icon:I
invoke-static {v0, p4, v2}, Lcom/instagram/ui/widget/c/d;->a(Landroid/widget/TextView;II)V
:goto_40
:cond_40
invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z
move-result v0
if-eqz v0, :cond_50
invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;
move-result-object v0
check-cast v0, Landroid/view/View;
invoke-static {v0}, Lcom/instagram/ui/widget/c/d;->a(Landroid/view/View;)V
goto :goto_40
:cond_50
return-void
.end method